uint64_t sub_1B2180D3C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC8];
  v54 = MEMORY[0x1E69E7CC8];
  v46 = a2;
  v47 = sub_1B2116B08(a1);
  v4 = 0;
  v44 = a1 & 0xFFFFFFFFFFFFFF8;
  v45 = a1 & 0xC000000000000001;
  v40 = a1;
  v42 = v46 + 32;
  v43 = a1 + 32;
  v41 = xmmword_1B2257570;
  while (1)
  {
    if (v4 == v47)
    {

      return v3;
    }

    if (v45)
    {
      v5 = MEMORY[0x1B27427E0](v4, v40);
    }

    else
    {
      if (v4 >= *(v44 + 16))
      {
        goto LABEL_27;
      }

      v5 = *(v43 + 8 * v4);
    }

    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
      break;
    }

    v7 = *(v46 + 16);
    if (v7)
    {
      v48 = v4;
      v49 = v3;
      v52 = MEMORY[0x1E69E7CC0];
      sub_1B2114114();
      v8 = v52;
      v9 = v42;
      do
      {
        v10 = *v9++;
        v12 = v5[5];
        v11 = v5[6];
        sub_1B21139A0(v5 + 2, v12);
        (*(v11 + 48))(&v50, v10, v12, v11);
        v13 = v50;
        v14 = v51;
        v52 = v8;
        v15 = *(v8 + 16);
        if (v15 >= *(v8 + 24) >> 1)
        {
          v37 = v50;
          sub_1B2114114();
          v13 = v37;
          v8 = v52;
        }

        *(v8 + 16) = v15 + 1;
        v16 = v8 + 24 * v15;
        *(v16 + 32) = v13;
        *(v16 + 48) = v14;
        --v7;
      }

      while (v7);
      v4 = v48;
      v3 = v49;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v24 = sub_1B2190D8C();
    v25 = v3[2];
    v26 = (v17 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_28;
    }

    v28 = v17;
    if (v3[3] < v27)
    {
      sub_1B2246220(v27, 1, v18, v19, v20, v21, v22, v23, v37, *(&v37 + 1), *v38, v38[4], v39, v40, v41, *(&v41 + 1), v42, v43, v44, v45, v46, v47, v48, v49, v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56, v57, v58);
      v3 = v54;
      v29 = sub_1B2190D8C();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_30;
      }

      v24 = v29;
    }

    if (v28)
    {

      v32 = (v3[7] + 8 * v24);
      MEMORY[0x1B2742060](v31);
      if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B22525E0();
      }

      sub_1B2252630();
    }

    else
    {
      sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
      v33 = swift_allocObject();
      *(v33 + 16) = v41;
      *(v33 + 32) = v5;
      v3[(v24 >> 6) + 8] |= 1 << v24;
      *(v3[6] + 8 * v24) = v8;
      *(v3[7] + 8 * v24) = v33;
      v34 = v3[2];
      v6 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v6)
      {
        goto LABEL_29;
      }

      v3[2] = v35;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);

  result = sub_1B2253390();
  __break(1u);
  return result;
}

uint64_t sub_1B2181098()
{
  sub_1B2117340();
  sub_1B2117F74(&qword_1EB7A1370, &unk_1B2257580, v1, v8);
  sub_1B21619D8(&qword_1EB7A1390, &qword_1B2257E28);
  sub_1B2111904();
  swift_allocObject();
  sub_1B21118E8();

  result = sub_1B2112894(v2, v3);
  if (!v0)
  {
    sub_1B212216C();
    v5 = sub_1B223CC34();
    v7 = v6;

    if ((v7 & 0x100) != 0)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t sub_1B2181150()
{
  sub_1B2117340();
  sub_1B2117F74(&qword_1EB7A1370, &unk_1B2257580, v1, v6);
  sub_1B21619D8(&qword_1EB7A1398, &qword_1B2257E30);
  sub_1B2111904();
  swift_allocObject();
  sub_1B21118E8();

  result = sub_1B2112894(v2, v3);
  if (!v0)
  {
    sub_1B212216C();
    v5 = sub_1B223CCB4();

    if (v5 == 3)
    {
      return 2;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

double sub_1B2181244(char *a1)
{
  v2 = *(v1 + 16);
  *&result = sub_1B217F0F4(a1).n128_u64[0];
  return result;
}

uint64_t sub_1B2181398(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21813D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B2181410()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B218144C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 162))
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

uint64_t sub_1B218148C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B2181500(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 203))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B2181540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 202) = 0;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 203) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 203) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B2181640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {

    return sub_1B2181698(a3);
  }
}

uint64_t sub_1B2181698(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B21816DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {

    return sub_1B211A378(a3);
  }
}

uint64_t sub_1B2181784(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B218184C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x180000u) >> 16;
  return result;
}

uint64_t sub_1B2181890(uint64_t result)
{
  v1 = *(result + 104) & 1;
  v2 = *(result + 160) & 0x81FF | 0x4000;
  *(result + 64) &= 1uLL;
  *(result + 104) = v1;
  *(result + 160) = v2;
  return result;
}

unint64_t sub_1B2181918()
{
  result = qword_1ED85D388[0];
  if (!qword_1ED85D388[0])
  {
    sub_1B2161A20(&qword_1EB7A10C0, &unk_1B2257E70);
    sub_1B216B078();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85D388);
  }

  return result;
}

uint64_t sub_1B2181A68()
{
  sub_1B2114F84();

  return swift_deallocObject();
}

void *sub_1B2181B1C()
{
  sub_1B2114FD4();
  WitnessTable = swift_getWitnessTable();
  return sub_1B21128B8(WitnessTable);
}

void *FetchRequest.databaseRegion(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = (*(a3 + 32))(v9, a1, 0, a2);
  if (!v4)
  {
    v7 = v9[0];

    sub_1B2142D18(v9);
    swift_beginAccess();
    v8 = *(v7 + 32);

    *a4 = v8;
  }

  return result;
}

uint64_t PreparedRequest.statement.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FetchRequest.adapted(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B21155F0(a1, a2, a3);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v4);
  sub_1B2181D70(v13, a1, a2, a3, a4);
}

uint64_t sub_1B2181D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for AdaptedFetchRequest();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t AdaptedFetchRequest.makePreparedRequest(_:forSingleResult:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = (*(*(a3 + 24) + 32))(a1, a2, *(a3 + 16));
  if (!v5)
  {
    sub_1B2122784(a4 + 8, &v18);
    if (v19)
    {
      sub_1B2134D5C(&v18, v21);
      sub_1B211EE68(v21, v17);
      v10 = v4 + *(a3 + 36);
      v11 = *(v10 + 8);
      (*v10)(v16, a1);
      sub_1B2113208(v21);
      v19 = &unk_1F296EE20;
      v20 = &off_1F296EE60;
      v14 = swift_allocObject();
      *&v18 = v14;
      sub_1B2134D5C(v17, v14 + 16);
      sub_1B2134D5C(v16, v14 + 56);
      v15 = &v18;
    }

    else
    {
      sub_1B211EA78(&v18);
      v12 = v4 + *(a3 + 36);
      v13 = *(v12 + 8);
      (*v12)(v21, a1);
      v15 = v21;
    }

    return sub_1B2142B5C(v15, a4 + 8);
  }

  return result;
}

uint64_t AnyFetchRequest.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1B21155F0(a1, a2, a3);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConcreteFetchRequestEraser();
  (*(v8 + 16))(v13, a1, a3);
  v14 = sub_1B21822B8(v13);
  result = (*(v8 + 8))(a1, a3);
  *a4 = v14;
  return result;
}

uint64_t sub_1B21822B8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1B2182AC0(a1);
}

__n128 sub_1B2182344(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B2182358(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B2182398(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B21823F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1B2173DAC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B2182480(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B21825BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
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

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21827A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B2182940(uint64_t a1)
{
  v1 = *(a1 + 112);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B2182B34()
{
  v1 = *(*(*(*v0 + 120) + 16) + 16);
  v2 = *(*v0 + 112);
  v3 = v0 + *(*v0 + 128);
  return v1(v2);
}

uint64_t sub_1B2182BAC(uint64_t a1)
{
  v2 = *(*(*v1 + 120) + 40);
  v3 = *(*v1 + 112);
  v4 = v1 + *(*v1 + 128);
  return v2(a1, v3);
}

uint64_t sub_1B2182C20(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 120) + 32);
  v4 = *(*v2 + 112);
  v5 = v2 + *(*v2 + 128);
  return v3(a1, a2, v4);
}

uint64_t sub_1B2182D5C()
{
  v0 = sub_1B2182CEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B2182DB0()
{
  sub_1B2114FD4();
  WitnessTable = swift_getWitnessTable();
  return sub_1B21128B8(WitnessTable);
}

BOOL static RowKey.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_24;
      }

      v38 = sub_1B2112FD0();
      sub_1B2183028(v38, v39, 1u);
      v40 = sub_1B2115FBC();
      sub_1B2183028(v40, v41, 1u);
      return v2 == v5;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_21;
      }

      v20 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v10 = sub_1B211D580();
        v22 = sub_1B2115FBC();
        v24 = sub_1B21128DC(v22, v23, 2u);
        v26 = sub_1B21128DC(v24, v25, 2u);
        sub_1B2183028(v26, v27, 2u);
        v17 = sub_1B2115FBC();
        v19 = 2;
        goto LABEL_20;
      }

      v48 = sub_1B21128DC(v20, v3, 2u);
      v50 = sub_1B21128DC(v48, v49, 2u);
      sub_1B2183028(v50, v51, 2u);
      v52 = sub_1B2112FD0();
      v54 = 2;
      goto LABEL_28;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_21;
      }

      v28 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v10 = sub_1B211D580();
        v30 = sub_1B2115FBC();
        v32 = sub_1B21128DC(v30, v31, 3u);
        v34 = sub_1B21128DC(v32, v33, 3u);
        sub_1B2183028(v34, v35, 3u);
        v17 = sub_1B2115FBC();
        v19 = 3;
        goto LABEL_20;
      }

      v55 = sub_1B21128DC(v28, v3, 3u);
      v57 = sub_1B21128DC(v55, v56, 3u);
      sub_1B2183028(v57, v58, 3u);
      v52 = sub_1B2112FD0();
      v54 = 3;
      goto LABEL_28;
    default:
      if (*(a2 + 16))
      {
LABEL_21:
        v37 = *(a1 + 8);

LABEL_24:
        v42 = sub_1B2115FBC();
        v44 = sub_1B21128DC(v42, v43, v7);
        sub_1B2183028(v44, v45, v4);
        v46 = sub_1B2115FBC();
        sub_1B2183028(v46, v47, v7);
        return 0;
      }

      else
      {
        v8 = *a1;
        if (v2 == v5 && v3 == v6)
        {
          v59 = sub_1B21128DC(v8, v3, 0);
          v61 = sub_1B21128DC(v59, v60, 0);
          sub_1B2183028(v61, v62, 0);
          v52 = sub_1B2112FD0();
          v54 = 0;
LABEL_28:
          sub_1B2183028(v52, v53, v54);
          return 1;
        }

        else
        {
          v10 = sub_1B211D580();
          v11 = sub_1B2115FBC();
          v13 = sub_1B21128DC(v11, v12, 0);
          v15 = sub_1B21128DC(v13, v14, 0);
          sub_1B2183028(v15, v16, 0);
          v17 = sub_1B2115FBC();
          v19 = 0;
LABEL_20:
          sub_1B2183028(v17, v18, v19);
          return v10 & 1;
        }
      }
  }
}

uint64_t sub_1B218300C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u && a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1B2183028(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u && a3 != 1)
  {
  }

  return result;
}

uint64_t RowKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      MEMORY[0x1B2742F10](1);
      return MEMORY[0x1B2742F10](v1);
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      v3 = 3;
      goto LABEL_5;
    default:
      v3 = 0;
LABEL_5:
      MEMORY[0x1B2742F10](v3);

      return sub_1B2252370();
  }
}

uint64_t RowKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B2253420();
  switch(v3)
  {
    case 1:
      MEMORY[0x1B2742F10](1);
      MEMORY[0x1B2742F10](v1);
      return sub_1B2253470();
    case 2:
      v4 = 2;
      goto LABEL_5;
    case 3:
      v4 = 3;
      goto LABEL_5;
    default:
      v4 = 0;
LABEL_5:
      MEMORY[0x1B2742F10](v4);
      sub_1B2252370();
      return sub_1B2253470();
  }
}

uint64_t sub_1B21831B4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1B2253420();
  RowKey.hash(into:)();
  return sub_1B2253470();
}

uint64_t RowDecodingError.Context.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B2112FD0();
}

uint64_t sub_1B2183238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v16 = a2[2];
  v17 = a2[1];
  v20 = a2[6];
  v21 = a2[4];
  v18 = a2[5];
  v19 = a2[7];
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 16);
  v10 = *(a2 + 24);
  sub_1B2252CD0();

  v11 = sub_1B2253510();
  MEMORY[0x1B2741EB0](v11);

  MEMORY[0x1B2741EB0](0xD000000000000015, 0x80000001B226D670);
  *&v22 = v7;
  *(&v22 + 1) = v8;
  v12 = DatabaseValue.description.getter();
  MEMORY[0x1B2741EB0](v12);

  v13 = sub_1B2183FE0();
  *a4 = a1;
  *(a4 + 8) = 0xD000000000000011;
  *(a4 + 16) = 0x80000001B226D650;
  *(a4 + 24) = v13;
  *(a4 + 32) = v17;
  *(a4 + 40) = v16;
  *(a4 + 48) = v10;
  *(a4 + 56) = v21;
  *(a4 + 64) = v18;
  *(a4 + 72) = v20;
  *(a4 + 80) = v19;
  *(a4 + 88) = v22;
  *(a4 + 104) = 1;
  sub_1B21841CC(v17, v16, v10);

  v14 = sub_1B2112FD0();

  return sub_1B211CF8C(v14);
}

uint64_t static RowDecodingError.valueMismatch(_:sqliteStatement:index:context:)@<X0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B21320F0(a2, a3, &v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  sub_1B2183238(a1, a4, v12, a5);

  return sub_1B2113A44(v8, v9, v10);
}

uint64_t sub_1B2183444@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a2[2];
  v9 = Statement.columnNames.getter();
  sub_1B2113624(v8, v9, v10, v11, v12, v13, v14, v15, v29, v30, v31, v32, v33, v34, SDWORD2(v34), SHIDWORD(v34), v35, v36, *(&v36 + 1), v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, v43);
  v17 = v16;
  v19 = v18;
  type metadata accessor for Row();
  v20 = swift_allocObject();
  v21 = sub_1B211EF2C(v17, v19, v20);
  v22 = Statement.sql.getter();
  result = a2[13];
  v24 = a2[14];
  *&v34 = v21;
  *(&v34 + 1) = a3;
  *&v35 = 0;
  BYTE8(v35) = 1;
  *&v36 = v22;
  *(&v36 + 1) = v25;
  *&v37 = result;
  *(&v37 + 1) = v24;
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {

    sub_1B21320F0(v8, a3, &v31 + 8);
    v26 = *(&v31 + 1);
    v27 = v32;
    v28 = v33;
    v29 = *(&v31 + 1);
    v30 = v32;
    LOBYTE(v31) = v33;
    sub_1B2183238(a1, &v34, &v29, a4);
    sub_1B2113A44(v26, v27, v28);
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    return sub_1B218450C(&v38);
  }

  __break(1u);
  return result;
}

uint64_t static RowDecodingError.columnNotFound(_:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v17 = a3[6];
  v18 = a3[4];
  v15 = a3[5];
  v16 = a3[7];
  v10 = *(a3 + 24);
  sub_1B2252CD0();

  v11 = sub_1B2252330();
  MEMORY[0x1B2741EB0](v11);

  v12 = sub_1B2183FE0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xD000000000000012;
  *(a4 + 32) = 0x80000001B226D630;
  *(a4 + 40) = v12;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  *(a4 + 72) = v18;
  *(a4 + 80) = v15;
  *(a4 + 88) = v17;
  *(a4 + 96) = v16;
  *(a4 + 104) = 0;

  sub_1B21841CC(v8, v9, v10);

  v13 = sub_1B2112FD0();
  return sub_1B211CF8C(v13);
}

uint64_t RowDecodingContext.init(row:key:)@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *a2;
  v5 = *(a2 + 16);
  v6 = a1[7];
  if (v6)
  {
    v7 = a1[5];
    v8 = a1[6];
    sub_1B21139A0(a1 + 2, v7);
    v9 = *(v8 + 112);

    v10 = v9(a1, v7, v8);
    v11 = Statement.sql.getter();
    v13 = v12;

    v15 = *(v6 + 104);
    v14 = *(v6 + 112);

LABEL_9:
    *a3 = v10;
    *(a3 + 8) = v21;
    *(a3 + 24) = v5;
    *(a3 + 32) = v11;
    *(a3 + 40) = v13;
    *(a3 + 48) = v15;
    *(a3 + 56) = v14;
    return result;
  }

  v11 = a1[8];
  v17 = a1[5];
  v18 = a1[6];
  sub_1B21139A0(a1 + 2, v17);
  v10 = (*(v18 + 112))(a1, v17, v18);
  if (!v11)
  {

    v14 = 0;
    v15 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  result = sqlite3_sql(v11);
  if (result)
  {
    sub_1B22523F0();
    if (qword_1ED85D650 != -1)
    {
      swift_once();
    }

    v19 = sub_1B2251B80();
    sub_1B2156958(v19, qword_1ED8618E8);
    sub_1B2156990();
    v11 = sub_1B2252B80();
    v13 = v20;

    v14 = 0;
    v15 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t RowDecodingError.description.getter()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v11)
  {
    v12 = *(v0 + 8);
    v83 = *(v0 + 16);
    v13 = *v0;
    v14 = *(v0 + 48);
    v86 = v3;
    v89 = v13;
    v90 = v12;
    v91 = v83;
    v92 = v2;
    v93 = v1;
    v94 = v3;
    v95 = v4;
    v96 = v5;
    v81 = v5;
    v97 = v6;
    v98 = v8;
    v99 = v7;
    v100 = v9;
    v101 = v10;
    v102 = v11;
    sub_1B21841E0(&v89, &v87);
    v15 = v12;
    v16 = v14;
    v84 = v1;
    v9 = v8;
    v10 = v7;
  }

  else
  {
    v17 = *(v0 + 56);

    v84 = v4;
    sub_1B21841CC(v4, v17, v6);

    sub_1B211CF8C(v9);
    v83 = v1;
    v86 = v17;
    v16 = v6;
    v81 = v8;
    v6 = v7;
    v15 = v2;
  }

  v85 = v9;
  type metadata accessor for Row();
  inited = swift_initStackObject();

  v20 = sub_1B21840C8(v19, inited);
  v21 = MEMORY[0x1E69E7CC0];
  v82 = v16;
  if (v16 - 2 < 2)
  {
    v22 = v84;
    goto LABEL_21;
  }

  v22 = v84;
  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_21;
    }

    v78 = v10;
    v80 = v15;
    sub_1B2183FB4(0, v84, &v87);

    Row.subscript.getter();
    v24 = v23;
    v21 = v25;
    v89 = v23;
    v90 = v25;
    v26 = v91;
    v27 = v92;
    v28 = v93;

    v29 = sub_1B211429C();
    sub_1B2113A20(v29, v30, v31);

    v32 = sub_1B211429C();
    sub_1B2113A20(v32, v33, v34);

    v35 = sub_1B211429C();
    sub_1B2113A44(v35, v36, v37);
    v38 = v91;
    v39 = v92;
    v40 = v93;

    sub_1B2113A44(v38, v39, v40);
    sub_1B2113A44(v26, v27, v28);

    sub_1B21182AC();
    v89 = v41 & 0xFFFFFFFFFFFFLL | 0x203A000000000000;
    v90 = 0xE800000000000000;
    v87 = v24;
    v88 = v21;
    sub_1B2252330();
    sub_1B2117F8C();

    sub_1B214400C();
    sub_1B2117C24(v42);
    if (v43)
    {
      sub_1B2117368();
      v21 = v74;
    }

    sub_1B2114FE8();
    sub_1B2115B88();

    sub_1B21182AC();
    sub_1B2111F8C(v44);
    v87 = v84;
    sub_1B2252FD0();
    sub_1B2117F8C();

    sub_1B2115604();
    v45 = v86;
    v10 = v78;
    v15 = v80;
    if (v43)
    {
      sub_1B214400C();
      v45 = v86;
      v21 = v75;
    }

    v22 = v84;
    v46 = v84;
    v86 = v45;
    v47 = 1;
  }

  else
  {
    v21 = v20[5];
    v48 = v20[6];
    sub_1B21139A0(v20 + 2, v21);
    v49 = *(v48 + 88);
    sub_1B21841CC(v84, v86, 0);
    v50 = sub_1B2122178();
    sub_1B218300C(v50, v51, v52);
    v53 = v49(v84, v86, v21, v48);
    if (v54)
    {
      v55 = sub_1B2122178();
      sub_1B2184250(v55, v56, v57);
      v58 = sub_1B2122178();
      sub_1B2184250(v58, v59, v60);
      v21 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    v79 = v53;
    sub_1B21182AC();
    v89 = v61 & 0xFFFFFFFFFFFFLL | 0x203A000000000000;
    v90 = 0xE800000000000000;
    v87 = v84;
    v88 = v86;
    sub_1B2252330();
    sub_1B2117F8C();

    sub_1B214400C();
    sub_1B2117C24(v62);
    if (v43)
    {
      sub_1B2117368();
      v21 = v76;
    }

    sub_1B2114FE8();
    sub_1B2115B88();

    sub_1B21182AC();
    sub_1B2111F8C(v63);
    v87 = v79;
    sub_1B2252FD0();
    sub_1B2117F8C();

    sub_1B2115604();
    if (v43)
    {
      sub_1B2117368();
      v21 = v77;
    }

    v45 = v86;
    v46 = v84;
    v47 = 0;
  }

  sub_1B2184250(v46, v45, v47);
  sub_1B2114FE8();
LABEL_21:
  v89 = 0x203A776F72;
  v90 = 0xE500000000000000;
  Row.description.getter();
  sub_1B2117F8C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = *(v21 + 16);
    sub_1B214400C();
    v21 = v70;
  }

  if (*(v21 + 16) >= *(v21 + 24) >> 1)
  {
    sub_1B2117368();
    v21 = v71;
  }

  sub_1B2114FE8();
  if (v6)
  {
    v89 = 0x60203A6C7173;
    v90 = 0xE600000000000000;

    MEMORY[0x1B2741EB0](v81, v6);

    MEMORY[0x1B2741EB0](96, 0xE100000000000000);
    sub_1B2115604();
    if (v43)
    {
      sub_1B2117368();
      v21 = v72;
    }

    sub_1B2114FE8();
  }

  v64 = v85;
  if (v85)
  {
    v89 = 0x746E656D75677261;
    v90 = 0xEB00000000203A73;
    v87 = v85;
    v88 = v10;
    StatementArguments.description.getter();
    sub_1B2117F8C();

    sub_1B2115604();
    if (v43)
    {
      sub_1B2117368();
      v21 = v73;
    }

    sub_1B2114FE8();
    v64 = v85;
  }

  sub_1B2184250(v22, v86, v82);

  sub_1B211A378(v64);
  v89 = v15;
  v90 = v83;
  MEMORY[0x1B2741EB0](2108704, 0xE300000000000000);
  v87 = v21;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v65 = sub_1B2252250();
  v67 = v66;

  MEMORY[0x1B2741EB0](v65, v67);

  return v89;
}

uint64_t sub_1B2183FB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  *a3 = v4;
  if (v4 < 0 || *(v3 + 72) < v4)
  {
    goto LABEL_6;
  }

  return result;
}

const void *sub_1B2183FE0()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 72);
  v3 = sub_1B219DF74();
  sub_1B21A064C(&v7, v3 + 32, v1);
  v5 = v4;

  if (v5 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

const void *sub_1B2184060(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B2131C40(a1, a2);

  return v2;
}

uint64_t sub_1B21840C8(uint64_t a1, uint64_t a2)
{
  v8[3] = &unk_1F29773E8;
  v8[4] = &off_1F2977480;
  v8[0] = a1;
  v4 = sub_1B211DF80(MEMORY[0x1E69E7CC0]);
  sub_1B2111910(v4, v5, v6);
  *(a2 + 72) = *(a1 + 16);
  sub_1B2113208(v8);
  return a2;
}

uint64_t sub_1B2184130(_OWORD *a1, uint64_t a2)
{
  v11[3] = &unk_1F296EED8;
  v11[4] = &off_1F296EEF8;
  v4 = swift_allocObject();
  v11[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  v7 = sub_1B211DF80(MEMORY[0x1E69E7CC0]);
  sub_1B2111910(v7, v8, v9);
  *(a2 + 72) = *(*(v4 + 8) + 16);
  sub_1B2113208(v11);
  return a2;
}

uint64_t sub_1B21841CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B218300C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B21841E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B21619D8(&qword_1EB7A1558, &unk_1B22581C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B2184250(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B2183028(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1B2184268()
{
  result = qword_1EB7A1560;
  if (!qword_1EB7A1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1560);
  }

  return result;
}

uint64_t sub_1B21842C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B2184308(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B2184360(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2184374(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B21843A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 105))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 104);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21843E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B2184460(uint64_t a1, int a2)
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

uint64_t sub_1B21844A0(uint64_t result, int a2, int a3)
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

Swift::Int32 __swiftcall String.bind(to:at:)(Swift::OpaquePointer to, Swift::Int32 at)
{
  if (qword_1ED85E010 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED861908;
  v5 = sub_1B2252350();
  v6 = sqlite3_bind_text(to._rawValue, at, (v5 + 32), -1, v4);

  return v6;
}

uint64_t static Double.fromDatabaseValue(_:)(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 16) != 1)
  {
    v1 = 0;
  }

  if (*(a1 + 16))
  {
    return v1;
  }

  else
  {
    *&result = *a1;
  }

  return result;
}

BOOL sub_1B2184644@<W0>(Swift::OpaquePointer a1@<X0>, Swift::Int32 a2@<W1>, _BYTE *a3@<X8>)
{
  result = Bool.init(sqliteStatement:index:)(a1, a2);
  *a3 = result;
  return result;
}

Swift::Int_optional __swiftcall Int.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_int64(sqliteStatement._rawValue, index);
  v3 = 0;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

Swift::Int8_optional __swiftcall Int8.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  sqlite3_column_int64(sqliteStatement._rawValue, index);
  sub_1B2115BA8();
  v4 = v3;
  if (!v5)
  {
    v4 = 0;
  }

  return (v4 | (v2 << 8));
}

void static Int8.fromDatabaseValue(_:)(uint64_t a1)
{
  if (!*(a1 + 16) || *(a1 + 16) != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1B211D868(*a1);
  v4 = v4 == v3 && v2 < 9.22337204e18;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    if (v2 > -9.22337204e18)
    {
LABEL_10:
      sub_1B21182BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B2184770(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  static Int8.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  a2[1] = v4 & 1;
}

void sub_1B21847A0(sqlite3_stmt *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  sqlite3_column_int64(a1, a2);
  sub_1B2115BA8();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  a3[1] = v5;
}

Swift::Int16_optional __swiftcall Int16.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  sqlite3_column_int64(sqliteStatement._rawValue, index);
  sub_1B2115BA8();
  v4 = v3;
  if (!v5)
  {
    v4 = 0;
  }

  return (v4 | (v2 << 16));
}

void static Int16.fromDatabaseValue(_:)(uint64_t a1)
{
  if (!*(a1 + 16) || *(a1 + 16) != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1B211D868(*a1);
  v4 = v4 == v3 && v2 < 9.22337204e18;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    if (v2 > -9.22337204e18)
    {
LABEL_10:
      sub_1B21182BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B21848B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Int16.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  *(a2 + 2) = v4 & 1;
}

void sub_1B21848E8(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sqlite3_column_int64(a1, a2);
  sub_1B2115BA8();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 2) = v5;
}

Swift::Int32_optional __swiftcall Int32.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_int64(sqliteStatement._rawValue, index);
  v3 = v2;
  if (v2 != v2)
  {
    v3 = 0;
  }

  return (v3 | ((v2 != v2) << 32));
}

void static Int32.fromDatabaseValue(_:)(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 16) == 1)
  {
    v2 = sub_1B211D868(*a1);
    v4 = v4 == v3 && v2 < 9.22337204e18;
    if (v4)
    {
      if ((~v1 & 0x7FF0000000000000) != 0)
      {
        if (v2 > -9.22337204e18)
        {
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1B2184A18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Int32.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  *(a2 + 4) = v4 & 1;
}

sqlite3_int64 sub_1B2184A48@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  v5 = result;
  if (result != result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 4) = result != result;
  return result;
}

uint64_t sub_1B2184A90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = static Int64.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int64 sub_1B2184AC0@<X0>(Swift::OpaquePointer a1@<X0>, Swift::Int32 a2@<W1>, uint64_t a3@<X8>)
{
  result = Int64.init(sqliteStatement:index:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

Swift::UInt_optional __swiftcall UInt.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_int64(sqliteStatement._rawValue, index);
  v3 = v2 >> 63;
  v4 = v2 & ~(v2 >> 63);
  result.is_nil = v3;
  result.value = v4;
  return result;
}

Swift::UInt8_optional __swiftcall UInt8.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v2 = sqlite3_column_int64(sqliteStatement._rawValue, index);
  v3 = v2;
  if (v2 > 0xFF)
  {
    v3 = 0;
  }

  return (v3 | ((v2 > 0xFF) << 8));
}

void static UInt8.fromDatabaseValue(_:)(uint64_t a1)
{
  if (!*(a1 + 16) || *(a1 + 16) != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1B211D868(*a1);
  v4 = v4 == v3 && v2 < 9.22337204e18;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    if (v2 > -9.22337204e18)
    {
LABEL_10:
      sub_1B21182BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B2184BF0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  static UInt8.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  a2[1] = v4 & 1;
}

unint64_t sub_1B2184C20@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  if (result <= 0xFF)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  a3[1] = result > 0xFF;
  return result;
}

Swift::UInt16_optional __swiftcall UInt16.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  sqlite3_column_int64(sqliteStatement._rawValue, index);
  sub_1B21224B8();
  v4 = v3;
  if (!v5)
  {
    v4 = 0;
  }

  return (v4 | (v2 << 16));
}

void static UInt16.fromDatabaseValue(_:)(uint64_t a1)
{
  if (!*(a1 + 16) || *(a1 + 16) != 1)
  {
    goto LABEL_10;
  }

  v2 = sub_1B211D868(*a1);
  v4 = v4 == v3 && v2 < 9.22337204e18;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    if (v2 > -9.22337204e18)
    {
LABEL_10:
      sub_1B21182BC();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B2184D38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static UInt16.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  *(a2 + 2) = v4 & 1;
}

void sub_1B2184D68(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sqlite3_column_int64(a1, a2);
  sub_1B21224B8();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 2) = v5;
}

Swift::UInt32_optional __swiftcall UInt32.init(sqliteStatement:index:)(Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  sqlite3_column_int64(sqliteStatement._rawValue, index);
  sub_1B21224B8();
  v4 = v3;
  if (!v5)
  {
    v4 = 0;
  }

  return (v4 | (v2 << 32));
}

void static UInt32.fromDatabaseValue(_:)(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1 || ((v3 = sub_1B211D868(*&v1), v5 == v4) ? (v5 = v3 < 9.22337204e18) : (v5 = 0), !v5))
    {
      sub_1B2116564(0);
      return;
    }

    if ((~v2 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        v1 = v3;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_11:
  v6 = HIDWORD(v1) == 0;
  v1 = v1;
  if (!v6)
  {
    v1 = 0;
  }

  sub_1B2116564(v1);
}

void sub_1B2184E84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static UInt32.fromDatabaseValue(_:)(a1);
  *a2 = v3;
  *(a2 + 4) = v4 & 1;
}

void sub_1B2184EB4(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sqlite3_column_int64(a1, a2);
  sub_1B21224B8();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 4) = v5;
}

uint64_t sub_1B2184EF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return _sSi12GRDBInternalE13databaseValueAA08DatabaseC0Vvg_0(result, a2);
  }

  __break(1u);
  return result;
}

void _sSu12GRDBInternalE17fromDatabaseValueySuSgAA0cD0VFZ_0(uint64_t a1)
{
  if (*(a1 + 16) && *(a1 + 16) == 1)
  {
    v2 = sub_1B211D868(*a1);
    v4 = v4 == v3 && v2 < 9.22337204e18;
    if (v4)
    {
      if ((~v1 & 0x7FF0000000000000) != 0)
      {
        if (v2 > -9.22337204e18)
        {
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

sqlite3_stmt *sub_1B2184F78(sqlite3_stmt *result, int a2, sqlite3_int64 a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    return sqlite3_bind_int64(result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2184F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Double.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t static Float.fromDatabaseValue(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = v1;
  if (*(a1 + 16) != 1)
  {
    v2 = 0.0;
  }

  if (*(a1 + 16))
  {
    return sub_1B2116564(LODWORD(v2));
  }

  else
  {
    return sub_1B2116564(COERCE_UNSIGNED_INT(*a1));
  }
}

unint64_t sub_1B2185050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Float.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B21850B4(Swift::OpaquePointer to, Swift::Int32 at)
{
  v3 = *v2;
  v4 = v2[1];
  return String.bind(to:at:)(to, at);
}

uint64_t sub_1B21850BC()
{
  sub_1B211D59C();
  sub_1B21142AC();
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(22, v0, v1, v2, v3);
  qword_1ED85E840 = result;
  return result;
}

uint64_t sub_1B2185168()
{
  sub_1B211D59C();
  sub_1B21142AC();
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(20, v0, v1, v2, v3);
  qword_1ED85E838 = result;
  return result;
}

uint64_t sub_1B2185214()
{
  sub_1B211D59C();
  sub_1B21142AC();
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(20, v0, v1, v2, v3);
  qword_1ED85E730 = result;
  return result;
}

void sub_1B218529C(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B22522F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B2111930();
  if (v8)
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v11 == 3)
    {
      v14 = sub_1B21146D8();
      sub_1B2113A20(v14, v15, 3);
      sub_1B22522E0();
      sub_1B21146D8();
      sub_1B22522C0();
      v17 = v16;
      v18 = sub_1B21146D8();
      sub_1B2113A44(v18, v19, 3);
      if (v17)
      {
        goto LABEL_6;
      }
    }

    else if (v11 == 2)
    {
      v12 = sub_1B21146D8();
      sub_1B2113A20(v12, v13, 2);
LABEL_6:
      v20 = sub_1B21146D8();
      v21 = a2(v20);
      v23 = v22;

      *(a3 + 24) = MEMORY[0x1E69E6158];
      *(a3 + 32) = &protocol witness table for String;
      *a3 = v21;
      *(a3 + 8) = v23;
      return;
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B21853F4()
{
  sub_1B211D59C();
  sub_1B21142AC();
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(31, v0, v1, v2, v3);
  qword_1ED85E748 = result;
  return result;
}

uint64_t sub_1B21854A0()
{
  sub_1B211D59C();
  sub_1B21142AC();
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(29, v0, v1, v2, v3);
  qword_1ED85E768 = result;
  return result;
}

uint64_t sub_1B218554C()
{
  sub_1B211D59C();
  sub_1B21142AC();
  sub_1B211738C();
  sub_1B2116034();
  result = sub_1B2114FF8(29, v0, v1, v2, v3);
  qword_1ED85E758 = result;
  return result;
}

void sub_1B21855D4(uint64_t a1@<X0>, uint64_t (*a2)(void, unint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B22522F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1B2111930();
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v11 == 3)
    {
      v14 = sub_1B2117C38();
      sub_1B2113A20(v14, v15, 3);
      sub_1B22522E0();
      sub_1B2117C38();
      sub_1B22522C0();
      v17 = v16;
      v18 = sub_1B2117C38();
      sub_1B2113A44(v18, v19, 3);
      if (v17)
      {
        goto LABEL_6;
      }
    }

    else if (v11 == 2)
    {
      v12 = sub_1B2117C38();
      sub_1B2113A20(v12, v13, 2);
LABEL_6:
      v20 = sub_1B2156990();
      v21 = MEMORY[0x1E69E6158];
      v22 = a2(MEMORY[0x1E69E6158], v20);
      v24 = v23;
      *(a3 + 24) = v21;
      *(a3 + 32) = &protocol witness table for String;

      *a3 = v22;
      *(a3 + 8) = v24;
      return;
    }

    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B2185740(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t sub_1B218578C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  if (sub_1B22531F0())
  {
    return -1;
  }

  return (sub_1B22531F0() & 1) == 0;
}

uint64_t sub_1B2185948()
{
  sub_1B2112904();
  v18[0] = v0;
  v16 = v1;
  v17 = v2;
  sub_1B212FF14(v15);
  sub_1B211562C();
  v4 = *(v3 + 16);
  sub_1B211194C();
  v6 = v5();
  sub_1B2115014(v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v16, v17, v18[0]);
  sub_1B2113208(v15);
  return sub_1B212AC5C(v18, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21859D4()
{
  sub_1B2112904();
  v18[0] = v0;
  v16 = v1;
  v17 = v2;
  sub_1B212FF14(v15);
  sub_1B211562C();
  v4 = *(v3 + 16);
  sub_1B211194C();
  v6 = v5();
  sub_1B2115014(v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v16, v17, v18[0]);
  sub_1B2113208(v15);
  return sub_1B212AC5C(v18, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185A60()
{
  sub_1B2112904();
  v18[0] = v0;
  v16 = v1;
  v17 = v2;
  sub_1B212FF14(v15);
  sub_1B211562C();
  v4 = *(v3 + 16);
  sub_1B211194C();
  v6 = v5();
  sub_1B2115014(v6, v7, v8, v9, v10, v11, v12, v13, v15[0], v15[1], v15[2], v16, v17, v18[0]);
  sub_1B2113208(v15);
  return sub_1B212AC5C(v18, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10[3] = a4;
  v10[4] = a6;
  v8 = sub_1B212FF14(v10);
  (*(*(a4 - 8) + 16))(v8, a1, a4);
  sub_1B21443FC(v11, v10);
  sub_1B212AC5C(v11, &qword_1EB7A0E30, &unk_1B2259360);
  return sub_1B2113208(v10);
}

uint64_t sub_1B2185BA4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 2)
  {
    v9 = 0;
    v10 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOBYTE(v14[0]) = a1 & 1;
    v10 = &protocol witness table for Bool;
    v9 = MEMORY[0x1E69E6370];
  }

  v14[3] = v9;
  v14[4] = v10;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185C88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for Int;
    v10 = MEMORY[0x1E69E6530];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185D60(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOBYTE(v14[0]) = a1;
    v9 = &protocol witness table for Int8;
    v10 = MEMORY[0x1E69E7230];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185E3C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x10000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOWORD(v14[0]) = a1;
    v9 = &protocol witness table for Int16;
    v10 = MEMORY[0x1E69E7290];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100000000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LODWORD(v14[0]) = a1;
    v9 = &protocol witness table for Int32;
    v10 = MEMORY[0x1E69E72F0];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2185FEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for Int64;
    v10 = MEMORY[0x1E69E7360];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21860C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for UInt;
    v10 = MEMORY[0x1E69E6810];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B218619C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOBYTE(v14[0]) = a1;
    v9 = &protocol witness table for UInt8;
    v10 = MEMORY[0x1E69E7508];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2186278(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x10000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LOWORD(v14[0]) = a1;
    v9 = &protocol witness table for UInt16;
    v10 = MEMORY[0x1E69E75F8];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2186350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100000000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LODWORD(v14[0]) = a1;
    v9 = &protocol witness table for UInt32;
    v10 = MEMORY[0x1E69E7668];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2186428(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for UInt64;
    v10 = MEMORY[0x1E69E76D8];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2186500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x100000000) != 0)
  {
    v10 = 0;
    v9 = 0;
    memset(v14, 0, 24);
  }

  else
  {
    LODWORD(v14[0]) = a1;
    v9 = &protocol witness table for Float;
    v10 = MEMORY[0x1E69E6448];
  }

  v14[3] = v10;
  v14[4] = v9;
  v13[3] = a5;
  v13[4] = a7;
  v11 = sub_1B212FF14(v13);
  (*(*(a5 - 8) + 16))(v11, a2, a5);
  sub_1B21443FC(v14, v13);
  sub_1B2113208(v13);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21865D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a1 = 0;
    v10 = 0;
    v11 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for Double;
    v10 = MEMORY[0x1E69E63B0];
  }

  v14[4] = a8;
  v15[0] = a1;
  v15[3] = v10;
  v15[4] = v11;
  v14[3] = a6;
  v12 = sub_1B212FF14(v14);
  (*(*(a6 - 8) + 16))(v12, a3, a6);
  sub_1B21443FC(v15, v14);
  sub_1B2113208(v14);
  return sub_1B212AC5C(v15, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21866B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = &protocol witness table for String;
    v11 = MEMORY[0x1E69E6158];
    v12 = a2;
  }

  else
  {
    a1 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v16[2] = 0;
  }

  v16[0] = a1;
  v16[1] = v12;
  v16[3] = v11;
  v16[4] = v10;
  v15[3] = a6;
  v15[4] = a8;
  v13 = sub_1B212FF14(v15);
  (*(*(a6 - 8) + 16))(v13, a3, a6);

  sub_1B21443FC(v16, v15);
  sub_1B2113208(v15);
  return sub_1B212AC5C(v16, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B218686C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for RecordEncoder();
  a2[4] = swift_getWitnessTable();
  *a2 = a1;
}

uint64_t sub_1B21868D8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for RecordEncoder();
  a2[4] = swift_getWitnessTable();
  *a2 = a1;
}

uint64_t sub_1B2186948(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return sub_1B2185884();
}

void sub_1B2186F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *v5;
  v7 = a5[2];
  v8 = a5[3];
  v9 = a5[4];
  v10 = a5[5];
  sub_1B21867A4();
}

uint64_t sub_1B2186F64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return sub_1B218686C(*v2, a2);
}

uint64_t sub_1B2186FAC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a3;
  v8 = sub_1B22522F0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *(v7 + 80);
  v11 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v12 = sub_1B22534D0();
  (*(*(v7 + 88) + 24))(v12);

  v13 = sub_1B2251AF0();
  v15 = v14;

  if (v20)
  {
    *a6 = v20;
  }

  else
  {
    sub_1B22522E0();
    result = sub_1B22522C0();
    if (v17)
    {
      v19[3] = MEMORY[0x1E69E6158];
      v19[4] = &protocol witness table for String;
      v19[0] = result;
      v19[1] = v17;
      sub_1B21443FC(v19, a1);
      sub_1B21267A8(v13, v15);
      return sub_1B212AC5C(v19, &qword_1EB7A0E30, &unk_1B2259360);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B2187234()
{
  sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B22546B0;
  sub_1B211EE68(v0 + 24, v1 + 32);
  return v1;
}

uint64_t sub_1B21872F0()
{
  *(v0 + 64) = 1;
  v1 = sub_1B2187234();
  nullsub_1(v1);
  type metadata accessor for JSONRequiredEncoder.KeyedContainer();
  swift_getWitnessTable();
  return sub_1B2252FA0();
}

unint64_t sub_1B218738C@<X0>(uint64_t *a1@<X8>)
{
  *(v1 + 64) = 1;
  v3 = sub_1B2187234();
  a1[3] = &type metadata for JSONRequiredEncoder;
  result = sub_1B2187B18();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1B218741C()
{
  v1 = *(v0 + 16);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_1B211EE68(v0 + 24, v3);

  sub_1B21443FC(v4, v3);

  sub_1B2113208(v3);
  return sub_1B212AC5C(v4, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21874AC(char a1)
{
  v2 = *(v1 + 16);
  v6 = MEMORY[0x1E69E6370];
  v7 = &protocol witness table for Bool;
  v5[0] = a1;
  sub_1B211EE68(v1 + 24, v4);

  sub_1B21443FC(v5, v4);

  sub_1B2113208(v4);
  return sub_1B212AC5C(v5, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2187548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  sub_1B2116040();
  v21[0] = v3;
  sub_1B2114704(v3, v4, v5, v6, v7, v8, v9, v10, v20[0]);

  sub_1B2115014(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4], v21[0]);

  sub_1B2113208(v20);
  return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21875B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  sub_1B2116040();
  LOBYTE(v21[0]) = v3;
  sub_1B2114704(v3, v4, v5, v6, v7, v8, v9, v10, v20[0]);

  sub_1B2115014(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4], v21[0]);

  sub_1B2113208(v20);
  return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2187628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  sub_1B2116040();
  LOBYTE(v21[0]) = v3;
  sub_1B2114704(v3, v4, v5, v6, v7, v8, v9, v10, v20[0]);

  sub_1B2115014(v11, v12, v13, v14, v15, v16, v17, v18, v20[0], v20[1], v20[2], v20[3], v20[4], v21[0]);

  sub_1B2113208(v20);
  return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2187698(float a1)
{
  v2 = *(v1 + 16);
  v6 = MEMORY[0x1E69E6448];
  v7 = &protocol witness table for Float;
  *v5 = a1;
  sub_1B211EE68(v1 + 24, v4);

  sub_1B21443FC(v5, v4);

  sub_1B2113208(v4);
  return sub_1B212AC5C(v5, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B2187734(double a1)
{
  v2 = *(v1 + 16);
  v5[3] = MEMORY[0x1E69E63B0];
  v5[4] = &protocol witness table for Double;
  *v5 = a1;
  sub_1B211EE68(v1 + 24, v4);

  sub_1B21443FC(v5, v4);

  sub_1B2113208(v4);
  return sub_1B212AC5C(v5, &qword_1EB7A0E30, &unk_1B2259360);
}

uint64_t sub_1B21877D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  sub_1B211EE68(v3 + 24, v9);

  sub_1B2144B88(a1, v9, a2, a3);
  sub_1B2113208(v9);
}

unint64_t sub_1B2187B18()
{
  result = qword_1ED85BF90[0];
  if (!qword_1ED85BF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85BF90);
  }

  return result;
}

void sub_1B2187B6C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t SQLSelectable<>.sqlSelection.getter()
{
  sub_1B211563C();
  v0 = sub_1B2116050();
  sub_1B211280C(v0);
  v2 = *(v1 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2112920();
  v4 = sub_1B2115030();
  v5(v4);
  v6 = sub_1B211658C();
  return v7(v6);
}

uint64_t SQLOrderingTerm<>.sqlOrdering.getter()
{
  sub_1B211563C();
  v0 = sub_1B2116050();
  sub_1B211280C(v0);
  v2 = *(v1 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2112920();
  v4 = sub_1B2115030();
  v5(v4);
  v6 = sub_1B211658C();
  return v7(v6);
}

uint64_t SQLExpressible<>.sqlExpression.getter()
{
  sub_1B211563C();
  v0 = sub_1B2116050();
  sub_1B211280C(v0);
  v2 = *(v1 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2112920();
  v4 = sub_1B2115030();
  v5(v4);
  v6 = sub_1B211658C();
  return v7(v6);
}

uint64_t StatementBinding<>.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1B2252560();
  v17 = (*(a6 + 8))(a1, a2, AssociatedTypeWitness, a6);
  (*(v11 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

uint64_t DatabaseValueConvertible<>.databaseValue.getter()
{
  sub_1B211563C();
  v1 = sub_1B2116050();
  sub_1B211280C(v1);
  v3 = *(v2 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2112920();
  (*(v0 + 24))(v1, v0);
  v5 = sub_1B211658C();
  return v6(v5);
}

uint64_t static DatabaseValueConvertible<>.fromDatabaseValue(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1B2252B00();
  sub_1B211280C(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  LOBYTE(v20) = *(a1 + 16);
  v31 = *a1;
  v32 = v20;
  (*(a5 + 32))(&v31, AssociatedTypeWitness, a5);
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = v7;
  sub_1B212C6C8(sub_1B2188278, MEMORY[0x1E69E73E0], a2, v22, v25);
  return (*(v16 + 8))(v21, v14);
}

uint64_t sub_1B2188170(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_1B2252570();
}

uint64_t sub_1B2188278(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1B2188170(a1);
}

uint64_t RangeReplaceableCollection.init<A>(_:minimumCapacity:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1B2252980();
  sub_1B2252950();
  sub_1B211F33C();
  v5 = sub_1B211401C();
  v6(v5);
  result = swift_unknownObjectRelease();
  if (v2)
  {
    sub_1B2111808(a1);
    return (*(v8 + 8))(a2, a1);
  }

  return result;
}

uint64_t Dictionary.init<A>(grouping:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  sub_1B2144060();
  sub_1B22526A0();
  sub_1B2252150();
  v9 = *(a7 + 24);
  v10 = sub_1B211401C();
  v11(v10);
  swift_unknownObjectRelease();
  if (v7)
  {
  }

  return sub_1B2122C74();
}

uint64_t Dictionary.init<A>(minimumCapacity:grouping:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  sub_1B2144060();
  v13 = sub_1B22526A0();
  MEMORY[0x1B2741C60](a1, a5, v13, a7);
  v14 = *(a8 + 24);
  v15 = sub_1B211401C();
  v16(v15);
  swift_unknownObjectRelease();
  if (v8)
  {
  }

  return sub_1B2122C74();
}

void sub_1B21885D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B2111640();
  v85 = v24;
  v26 = v25;
  v28 = v27;
  v83 = v29;
  v31 = v30;
  v80 = v32;
  v81 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B211280C(AssociatedTypeWitness);
  v79 = v34;
  v36 = *(v35 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v37);
  v84 = v77 - v38;
  sub_1B21115E0();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1B2112FA8();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v77 - v48;
  v28(v31);
  if (v23)
  {
LABEL_10:
    sub_1B2112FDC();
    return;
  }

  v77[0] = v46;
  v77[1] = 0;
  v78 = v40;
  v50 = swift_allocObject();
  v52 = v80;
  v51 = v81;
  v50[2] = v26;
  v50[3] = v52;
  v53 = v85;
  v50[4] = v85;
  v50[5] = v51;
  (v79[2])(v84, v31, AssociatedTypeWitness);
  v54 = swift_allocObject();
  v54[2] = v26;
  v54[3] = v52;
  v54[4] = v53;
  v54[5] = v51;
  v54[6] = a23;
  v54[7] = v50;
  v79 = v50;
  v55 = v83;
  v56 = *v83;
  swift_isUniquelyReferenced_nonNull_native();
  v57 = *v55;
  v86 = *v55;
  *v55 = 0x8000000000000000;
  v80 = v49;
  v58 = sub_1B2111658();
  v81 = sub_1B218E094(v58, v59, v53);
  if (!__OFADD__(*(v57 + 16), (v60 & 1) == 0))
  {
    v61 = v60;
    sub_1B22526A0();
    sub_1B2252EB0();
    if (sub_1B2252E70())
    {
      v62 = sub_1B211A254();
      v81 = sub_1B218E094(v62, v63, v85);
      v65 = v83;
      if ((v61 & 1) == (v64 & 1))
      {
LABEL_7:
        v66 = *v65;
        *v65 = v86;

        v68 = *v65;
        if ((v61 & 1) == 0)
        {
          v69 = v54[7];
          (v54[6])(v67);
          v70 = *(v78 + 16);
          v71 = sub_1B2126070();
          v72(v71);
          sub_1B2252EA0();
        }

        v73 = *(v68 + 56) + 8 * v81;
        sub_1B2252660();
        v74 = *(v78 + 8);
        v75 = sub_1B211A254();
        v76(v75);

        goto LABEL_10;
      }

      sub_1B2253390();
      __break(1u);
    }

    v65 = v83;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Dictionary.init<A>(uniqueKeysWithValues:)()
{
  sub_1B213CAB4();
  v2 = sub_1B2252150();
  sub_1B212346C(v2);
  v3 = *(v1 + 24);
  sub_1B211401C();
  sub_1B2121F48();
  v4();
  swift_unknownObjectRelease();
  if (v0)
  {
  }

  return sub_1B2122C74();
}

uint64_t Dictionary.init<A>(minimumCapacity:uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = MEMORY[0x1B2741C60](a1, a3, a4, a6);
  sub_1B212346C(v9);
  v10 = *(a7 + 24);
  sub_1B211401C();
  sub_1B2121F48();
  v11();
  swift_unknownObjectRelease();
  if (v7)
  {
  }

  return sub_1B2122C74();
}

uint64_t sub_1B2188B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B21115E0();
  v37 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v36 = v13 - v12;
  sub_1B21115E0();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B2111844();
  sub_1B218E814();
  v19 = sub_1B2252B00();
  sub_1B211280C(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v24);
  sub_1B211504C();
  v25 = *(v15 + 16);
  v26 = sub_1B2117214();
  v27(v26);
  v28 = a4;
  sub_1B22521D0();
  sub_1B211A254();
  sub_1B2252170();
  v29 = sub_1B21142C4();
  LODWORD(a4) = sub_1B2122A98(v29, v30, a5);
  v31 = *(v21 + 8);
  v32 = sub_1B2111658();
  result = v33(v32);
  if (a4 != 1)
  {
    sub_1B2252CD0();

    (*(v37 + 16))(v36, a1, v28);
    v35 = sub_1B2252310();
    MEMORY[0x1B2741EB0](v35);

    MEMORY[0x1B2741EB0](39, 0xE100000000000000);
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B2188E20(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  return sub_1B2188B74(a1, a2, v2[7], v2[2], v2[3]);
}

uint64_t sub_1B2188E54(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[7];
  v5 = v1[8];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t Set.init<A>(_:)()
{
  sub_1B2252160();
  sub_1B21211E8();
  sub_1B211401C();
  sub_1B2121F48();
  v1();
  swift_unknownObjectRelease();
  if (v0)
  {
  }

  return sub_1B2122C74();
}

uint64_t Set.init<A>(_:minimumCapacity:)()
{
  sub_1B213CAB4();
  MEMORY[0x1B27422D0](v1, v2, v3);
  sub_1B21211E8();
  sub_1B211401C();
  sub_1B2121F48();
  v4();
  swift_unknownObjectRelease();
  if (v0)
  {
  }

  return sub_1B2122C74();
}

uint64_t sub_1B2188FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B21115E0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B2112FA8();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  (*(v5 + 16))(v11);
  sub_1B2111634();
  sub_1B2252810();
  sub_1B2252800();
  return (*(v5 + 8))(v14, a3);
}

uint64_t sub_1B2189120(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1B2188FEC(a1, v1[6], v1[2]);
}

uint64_t Sequence.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B21115E0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B2111844();
  sub_1B218E814();
  swift_getAssociatedTypeWitness();
  sub_1B2144060();
  v16 = type metadata accessor for AnyCursor();
  (*(v12 + 16))(v7, v6, a3);
  sub_1B2117214();
  AnyCursor.__allocating_init<A>(_:)();
  sub_1B211D87C();
  swift_getWitnessTable();
  v17 = sub_1B2122C80();
  v20 = Cursor.flatMap<A>(_:)(v17, v18, v16, a4, v19, a6);

  return v20;
}

uint64_t AnyCursor.__allocating_init<A>(_:)()
{
  sub_1B211D530();
  sub_1B21115E0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B2111844();
  v9 = v8 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111808(AssociatedTypeWitness);
  v12 = *(v11 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B218E814();
  (*(v3 + 16))(v9, v1, v0);
  sub_1B22524B0();
  swift_getAssociatedConformanceWitness();
  v14 = sub_1B2117214();
  v17 = AnyCursor.__allocating_init<A>(iterator:)(v14, v15, v16);
  (*(v3 + 8))(v1, v0);
  return v17;
}

{
  sub_1B211D5B4();
  sub_1B2117A4C();
  v0 = swift_allocObject();
  AnyCursor.init<A>(_:)();
  return v0;
}

uint64_t Cursor.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  Cursor.map<A>(_:)();

  sub_1B211314C();
  type metadata accessor for MapCursor();
  sub_1B21224C4();
  swift_getWitnessTable();
  v13 = Cursor<>.joined()();

  return v13;
}

{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  sub_1B21262CC();
  swift_getAssociatedTypeWitness();
  sub_1B2144060();
  v13 = type metadata accessor for AnyCursor();

  sub_1B211D87C();
  WitnessTable = swift_getWitnessTable();
  v15 = Cursor.flatMap<A>(_:)(sub_1B218E2B8, v12, a3, v13, a5, WitnessTable);

  return v15;
}

uint64_t sub_1B2189518(void (*a1)(uint64_t *))
{
  while (1)
  {
    result = sub_1B211B804();
    if (v1 || !result)
    {
      break;
    }

    v4 = result;
    a1(&v4);
  }

  return result;
}

void Cursor.forEach(_:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v4 = v3;
  v24 = v5;
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  v6 = sub_1B2132550();
  sub_1B211280C(v6);
  v8 = *(v7 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B211504C();
  sub_1B21115E0();
  v11 = *(v10 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B21182D8();
  v13 = *(v4 + 16);
  while (1)
  {
    v14 = sub_1B2117FB0();
    v13(v14);
    if (v0)
    {
      break;
    }

    v15 = sub_1B21142C4();
    sub_1B2115BB4(v15, v16, v2);
    if (v17)
    {
      v22 = sub_1B211ACF8();
      v23(v22);
      break;
    }

    v18 = sub_1B211F174();
    v19(v18);
    v24(v1);
    v20 = sub_1B211F61C();
    v21(v20);
  }

  sub_1B2111FB4();
  sub_1B2112FDC();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Cursor.isEmpty()()
{
  v2 = v0;
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  v4 = sub_1B2252B00();
  sub_1B211280C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *(v2 + 16);
  v13 = sub_1B2117214();
  v14(v13);
  if (!v1)
  {
    sub_1B2115BB4(v11, 1, AssociatedTypeWitness);
    if (v15)
    {
      LOBYTE(AssociatedTypeWitness) = 1;
    }

    else
    {
      LOBYTE(AssociatedTypeWitness) = 0;
    }

    (*(v6 + 8))(v11, v4);
  }

  return AssociatedTypeWitness & 1;
}

void Cursor.contains(where:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v4 = v3;
  v24 = v5;
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  v6 = sub_1B2132550();
  sub_1B211280C(v6);
  v8 = *(v7 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B211504C();
  sub_1B21115E0();
  v11 = *(v10 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B21182D8();
  v25 = *(v4 + 16);
  do
  {
    v13 = sub_1B2117FB0();
    v25(v13);
    if (v0)
    {
      break;
    }

    v14 = sub_1B21142C4();
    sub_1B2115BB4(v14, v15, v2);
    if (v16)
    {
      v22 = sub_1B211ACF8();
      v23(v22);
      break;
    }

    v17 = sub_1B211F174();
    v18(v17);
    v19 = v24(v1);
    v20 = sub_1B211F61C();
    v21(v20);
  }

  while ((v19 & 1) == 0);
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t Cursor.enumerated()()
{
  sub_1B2144060();
  type metadata accessor for EnumeratedCursor();
  v1 = sub_1B2113B28();
  sub_1B2189A64(v1);
  sub_1B2113B28();
  swift_unknownObjectRetain();
  return v0;
}

uint64_t sub_1B2189A64(uint64_t a1)
{
  sub_1B2112820();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

void *sub_1B2189ABC()
{
  sub_1B211D5B4();
  sub_1B2114ED8();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v1;
  result[4] = v0;
  return result;
}

void Cursor.first(where:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v4 = v3;
  v31 = v5;
  v32 = v6;
  v30 = v7;
  sub_1B2117A40();
  v34 = v8;
  swift_getAssociatedTypeWitness();
  v9 = sub_1B2115E58();
  v10 = sub_1B211280C(v9);
  v28 = v11;
  v29 = v10;
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B21352EC();
  sub_1B21115E0();
  v16 = *(v15 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v35 = v4;
  v33 = *(v4 + 16);
  v21 = (v20 + 32);
  for (i = (v20 + 8); ; (*i)(v19, v2))
  {
    v23 = sub_1B2117FB0();
    v33(v23);
    if (v0)
    {
      break;
    }

    sub_1B211471C(v1);
    if (v24)
    {
      v26 = (*(v28 + 8))(v1, v29);
      v27 = 1;
LABEL_8:
      sub_1B214CBC0(v26, v27);
      break;
    }

    v25 = *v21;
    sub_1B21262CC();
    v25();
    if (v31(v19))
    {
      v26 = (v25)(v30, v19, v2);
      v27 = 0;
      goto LABEL_8;
    }
  }

  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t Cursor.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B2252B00();
  sub_1B211314C();
  Cursor.map<A>(_:)();
  sub_1B2117C44();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;
  sub_1B2111634();
  v9 = type metadata accessor for MapCursor();
  sub_1B21224C4();
  WitnessTable = swift_getWitnessTable();
  Cursor.filter(_:)(sub_1B218C478, v8, v9, WitnessTable);

  sub_1B2117C44();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  type metadata accessor for FilterCursor();
  sub_1B214CB7C();
  swift_getWitnessTable();
  v12 = Cursor.map<A>(_:)();

  return v12;
}

uint64_t Cursor.map<A>(_:)()
{
  sub_1B213CCFC();
  v0 = type metadata accessor for MapCursor();
  sub_1B2189ABC();
  sub_1B2113B28();
  swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_1B2189ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1B2252B00();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1);
  result = sub_1B2122A98(v9, 1, a2);
  if (result != 1)
  {
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B218A028()
{
  sub_1B211D5B4();
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = v2;
  *(result + 24) = v1;
  *(result + 32) = v0;
  return result;
}

uint64_t Cursor.dropFirst(_:)()
{
  sub_1B213CCFC();
  type metadata accessor for DropFirstCursor();
  sub_1B213CC48();
  sub_1B218A0A8();
  sub_1B2113B28();
  swift_unknownObjectRetain();
  return v0;
}

uint64_t sub_1B218A0A8()
{
  sub_1B211D530();
  sub_1B2114ED8();
  v2 = swift_allocObject();
  sub_1B218C8B4(v1, v0);
  return v2;
}

void Cursor.dropLast(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  a19 = v23;
  a20 = v24;
  v74 = v20;
  v26 = v25;
  sub_1B2117A40();
  v75 = v28;
  v76 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B212D540();
  v30 = sub_1B2252B00();
  sub_1B211280C(v30);
  v32 = *(v31 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B211504C();
  sub_1B21115E0();
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1B2112FA8();
  v41 = v39 - v40;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v46 = v66 - v45;
  if (v26 < 0)
  {
    sub_1B212E278();
    sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    if (v26)
    {
      v68 = v44;
      v69 = v43;
      v71 = v26;
      sub_1B212D540();
      a10 = sub_1B2252600();
      sub_1B212D540();
      v77 = sub_1B2252600();

      v70 = sub_1B2252590();

      v72 = *(v76 + 16);
      v73 = v76 + 16;
      v47 = (v35 + 32);
      v66[2] = v35 + 24;
      v67 = v35;
      v48 = (v35 + 8);
      v49 = (v35 + 16);
      while (1)
      {
        v72(v75, v76);
        if (v21)
        {

          goto LABEL_14;
        }

        v50 = sub_1B21142C4();
        sub_1B2115BB4(v50, v51, AssociatedTypeWitness);
        if (v52)
        {
          break;
        }

        (*v47)(v46, v22, AssociatedTypeWitness);
        sub_1B2126070();
        if (sub_1B2252640() >= v71)
        {
          sub_1B22526E0();
          sub_1B212D540();
          v66[1] = sub_1B22526A0();
          sub_1B2252660();
          sub_1B22525F0();
          v56 = v77;
          sub_1B218E264(v70, v77);
          isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
          v58 = v56 & 0xFFFFFFFFFFFFFF8;
          if ((isClassOrObjCExistentialType & 1) == 0)
          {
            v58 = v56;
          }

          v59 = v67;
          (*(v67 + 24))(v58 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v70, v46, AssociatedTypeWitness);
          v70 = sub_1B2252650();
          v60 = *(v59 + 8);
          v61 = sub_1B21497E8();
          v62(v61);
          v70 %= v71;
        }

        else
        {
          (*v49)(v41, v46, AssociatedTypeWitness);
          sub_1B212D540();
          sub_1B22526A0();
          sub_1B2252660();
          v53 = *v48;
          v54 = sub_1B21497E8();
          v55(v54);
        }
      }

      v64 = sub_1B211ACF8();
      v65(v64);
    }

    else
    {
      sub_1B212D540();
      v63 = sub_1B22526A0();
      swift_unknownObjectRetain();
      sub_1B214CB7C();
      swift_getWitnessTable();
      RangeReplaceableCollection.init<A>(_:)(v63, &a10);
    }

LABEL_14:
    sub_1B2111FB4();
    sub_1B2112FDC();
  }
}

uint64_t sub_1B218A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  result = v8(v7);
  if (!v5)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for AnyCursor();
    return AnyCursor.__allocating_init<A>(_:)();
  }

  return result;
}

uint64_t Cursor<>.joined()()
{
  sub_1B2144060();
  type metadata accessor for FlattenCursor();
  v1 = sub_1B2113B28();
  sub_1B2189A64(v1);
  sub_1B2113B28();
  swift_unknownObjectRetain();
  return v0;
}

{
  sub_1B211D5B4();
  sub_1B2117C44();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0;
  swift_getAssociatedTypeWitness();
  sub_1B211314C();
  v8 = Cursor.flatMap<A>(_:)(v4, v5, v6, v7, v1, v0);

  return v8;
}

void Cursor.max(by:)()
{
  sub_1B2111640();
  sub_1B218E7F0(v4, v5, v6);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B2252B00();
  v9 = sub_1B211280C(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2112FA8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B213CB4C();
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B21241D4();
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1B212DE24(v17);
  v2(v18);
  if (!v1)
  {
    v19 = sub_1B218E820();
    sub_1B2115BB4(v19, v20, AssociatedTypeWitness);
    if (v21)
    {
      v22 = sub_1B212D624();
      v23(v22);
      v24 = v49;
      v25 = 1;
    }

    else
    {
      v26 = sub_1B2146AA4();
      v27(v26);
      while (1)
      {
        v28 = sub_1B211EAE0();
        v29(v28);
        v30 = sub_1B21142C4();
        sub_1B2115BB4(v30, v31, AssociatedTypeWitness);
        if (v21)
        {
          break;
        }

        sub_1B21145A0();
        v34(v32, v33);
        v35 = v50(v2, v3);
        v36 = *(v0 - 24);
        if (v35)
        {
          v37 = sub_1B211A254();
          v38(v37);
          sub_1B21145A0();
          v41(v39, v40);
        }

        else
        {
          v42 = sub_1B21263CC();
          v43(v42);
        }
      }

      v44 = sub_1B211ACF8();
      v45(v44);
      sub_1B2126070();
      sub_1B21145A0();
      v48(v46, v47);
      v24 = v49;
      v25 = 0;
    }

    sub_1B21117B4(v24, v25, 1, AssociatedTypeWitness);
  }

  sub_1B2112FDC();
}

void Cursor.min(by:)()
{
  sub_1B2111640();
  sub_1B218E7F0(v4, v5, v6);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B2252B00();
  v9 = sub_1B211280C(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2112FA8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B213CB4C();
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B21241D4();
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1B212DE24(v17);
  v2(v18);
  if (!v1)
  {
    v19 = sub_1B218E820();
    sub_1B2115BB4(v19, v20, AssociatedTypeWitness);
    if (v21)
    {
      v22 = sub_1B212D624();
      v23(v22);
      v24 = v49;
      v25 = 1;
    }

    else
    {
      v26 = sub_1B2146AA4();
      v27(v26);
      while (1)
      {
        v28 = sub_1B211EAE0();
        v29(v28);
        v30 = sub_1B21142C4();
        sub_1B2115BB4(v30, v31, AssociatedTypeWitness);
        if (v21)
        {
          break;
        }

        sub_1B21145A0();
        v34(v32, v33);
        v35 = v50(v3, v2);
        v36 = *(v0 - 24);
        if (v35)
        {
          v37 = sub_1B211A254();
          v38(v37);
          sub_1B21145A0();
          v41(v39, v40);
        }

        else
        {
          v42 = sub_1B21263CC();
          v43(v42);
        }
      }

      v44 = sub_1B211ACF8();
      v45(v44);
      sub_1B2126070();
      sub_1B21145A0();
      v48(v46, v47);
      v24 = v49;
      v25 = 0;
    }

    sub_1B21117B4(v24, v25, 1, AssociatedTypeWitness);
  }

  sub_1B2112FDC();
}

uint64_t Cursor.prefix(_:)()
{
  sub_1B213CCFC();
  type metadata accessor for PrefixCursor();
  sub_1B213CC48();
  sub_1B218ACE4();
  sub_1B2113B28();
  swift_unknownObjectRetain();
  return v0;
}

void *sub_1B218ACE4()
{
  sub_1B211D530();
  sub_1B2114ED8();
  result = swift_allocObject();
  result[3] = v0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

uint64_t sub_1B218AD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1B213CCFC();
  v12(v9, v10, v11);
  v13 = a6(v6, v6, a2);
  swift_unknownObjectRetain();

  return v13;
}

void Cursor.reduce<A>(_:_:)()
{
  sub_1B2111640();
  v54 = v2;
  v4 = v3;
  v6 = v5;
  v47 = v7;
  v48 = v8;
  v55 = v9;
  sub_1B21115E0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v17 = v16 - v15;
  sub_1B2117A40();
  v53 = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1B2252B00();
  v21 = sub_1B211280C(v20);
  v46[0] = v22;
  v46[1] = v21;
  v24 = *(v23 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v46 - v26;
  sub_1B21115E0();
  v29 = v28;
  v31 = *(v30 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v32);
  sub_1B218E814();
  v33 = *(v11 + 16);
  v11 += 16;
  v50 = v6;
  v33(v55, v54, v6);
  v54 = v4;
  v34 = v17;
  v51 = *(v4 + 16);
  v52 = v4 + 16;
  v35 = (v29 + 32);
  v46[2] = v29 + 8;
  v49 = (v11 - 8);
  for (i = (v11 + 16); ; (*i)(v55, v34, v42))
  {
    v51(v53, v54);
    if (v0)
    {
      v43 = v55;
      v44 = v50;
      v45 = *v49;
      goto LABEL_7;
    }

    v37 = sub_1B218E820();
    sub_1B2115BB4(v37, v38, AssociatedTypeWitness);
    if (v39)
    {
      break;
    }

    (*v35)(v1, v27, AssociatedTypeWitness);
    v47(v55, v1);
    v40 = sub_1B2124B80();
    v41(v40);
    v42 = v50;
    (*v49)(v55, v50);
  }

  v43 = sub_1B212D624();
LABEL_7:
  v45(v43, v44);
  sub_1B2111FB4();
  sub_1B2112FDC();
}

void Cursor.reduce<A>(into:_:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v3 = v2;
  v5 = v4;
  v39 = v6;
  v40 = v7;
  v9 = v8;
  sub_1B2117A40();
  v42 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  v12 = sub_1B2252B00();
  v13 = sub_1B211280C(v12);
  v35 = v14;
  v36 = v13;
  v16 = *(v15 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  sub_1B21115E0();
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v24);
  sub_1B211504C();
  v37 = *(v5 - 8);
  v38 = v5;
  v25 = *(v37 + 16);
  v41 = v9;
  v26 = sub_1B21497E8();
  v27(v26);
  v43 = v3;
  v28 = *(v3 + 16);
  while (1)
  {
    v29 = sub_1B2117FB0();
    v28(v29);
    if (v0)
    {
      break;
    }

    sub_1B2115BB4(v19, 1, AssociatedTypeWitness);
    if (v30)
    {
      (*(v35 + 8))(v19, v36);
      goto LABEL_7;
    }

    v31 = *(v21 + 32);
    v32 = sub_1B2111658();
    v33(v32);
    v39(v41, v1);
    (*(v21 + 8))(v1, AssociatedTypeWitness);
  }

  (*(v37 + 8))(v41, v38);
LABEL_7:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

void Cursor.suffix(_:)()
{
  sub_1B2111640();
  v72 = v0;
  v73 = v3;
  v5 = v4;
  sub_1B2117A40();
  v71 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  v8 = sub_1B2252B00();
  sub_1B211280C(v8);
  v10 = *(v9 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B211504C();
  sub_1B21115E0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1B2112FA8();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  if (v5 < 0)
  {
LABEL_20:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  if (v5)
  {
    v64 = v19;
    v65 = v18;
    sub_1B2111634();
    v76 = sub_1B2252600();
    sub_1B2111634();
    v67 = sub_1B22526A0();
    v68 = v5;
    sub_1B22525D0();
    v66 = sub_1B2252590();
    v69 = *(v73 + 16);
    v70 = v73 + 16;
    v22 = v13;
    v23 = (v13 + 32);
    v62 = v22 + 40;
    v63 = v22;
    v24 = (v22 + 16);
    v25 = (v22 + 8);
    while (1)
    {
      v69(v71, v73);
      if (v1)
      {

        goto LABEL_16;
      }

      v26 = sub_1B21142C4();
      sub_1B2115BB4(v26, v27, AssociatedTypeWitness);
      if (v28)
      {
        break;
      }

      (*v23)(v21, v2, AssociatedTypeWitness);
      if (sub_1B2252640() >= v68)
      {
        sub_1B22525F0();
        sub_1B218E264(v66, v76);
        _swift_isClassOrObjCExistentialType();
        v35 = *(v63 + 80);
        v36 = *(v63 + 72);
        v37 = v66;
        v38 = *(v63 + 40);
        sub_1B211314C();
        v40(v39);
        if (__OFADD__(v37, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v66 = (v37 + 1) % v68;
      }

      else
      {
        v29 = *v24;
        sub_1B211314C();
        v31(v30);
        sub_1B2252660();
        v32 = *v25;
        v33 = sub_1B2122C80();
        v34(v33);
      }
    }

    v41 = sub_1B211ACF8();
    v42(v41);
    sub_1B2122C80();
    v43 = sub_1B2252590();
    v44 = v66;
    if (v66 == v43)
    {
      goto LABEL_16;
    }

    sub_1B2122C80();
    if (sub_1B2252640() < v44)
    {
      goto LABEL_18;
    }

    v45 = sub_1B22526D0();
    v72 = v47;
    v73 = v46;
    v71 = v48;
    if ((v44 & 0x8000000000000000) == 0)
    {
      v49 = v45;
      v50 = sub_1B22526D0();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      sub_1B2252BA0();
      sub_1B213CCFC();
      sub_1B2252FE0();
      swift_allocObject();
      v57 = sub_1B22525B0();
      v59 = v72;
      v58 = v73;
      *v60 = v49;
      v60[1] = v58;
      v61 = v71;
      v60[2] = v59;
      v60[3] = v61;
      v60[4] = v50;
      v60[5] = v52;
      v60[6] = v54;
      v60[7] = v56;
      sub_1B2152E00();
      v74 = v57;
      sub_1B22526A0();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_getWitnessTable();
      sub_1B214CB7C();
      swift_getWitnessTable();
      sub_1B21497E8();
      sub_1B2252540();
      v74 = v75;
      sub_1B2252DF0();
      sub_1B214CB7C();
      swift_getWitnessTable();
      sub_1B22526C0();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1B2111634();
  sub_1B2252600();
LABEL_16:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

void Cursor<>.contains(_:)()
{
  sub_1B2111640();
  sub_1B2117208();
  v29[3] = v3;
  v29[4] = v4;
  v6 = v5;
  sub_1B2117A40();
  v31 = v7;
  swift_getAssociatedTypeWitness();
  v8 = sub_1B2132550();
  v9 = sub_1B211280C(v8);
  v29[1] = v10;
  v29[2] = v9;
  v12 = *(v11 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B211504C();
  sub_1B21115E0();
  v15 = *(v14 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  v32 = v6;
  v30 = *(v6 + 16);
  v20 = (v19 + 32);
  v21 = (v19 + 8);
  do
  {
    v22 = sub_1B2117FB0();
    v30(v22);
    if (v0)
    {
      break;
    }

    v23 = sub_1B21142C4();
    sub_1B2115BB4(v23, v24, v1);
    if (v25)
    {
      v27 = sub_1B211ACF8();
      v28(v27);
      break;
    }

    (*v20)(v18, v2, v1);
    v26 = sub_1B2252270();
    (*v21)(v18, v1);
  }

  while ((v26 & 1) == 0);
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t sub_1B218BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return a5(a4, &v8, v9, v10);
}

void Cursor<>.joined(separator:)()
{
  sub_1B2111640();
  v1 = v0;
  v79 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  v12 = sub_1B2252B00();
  v13 = sub_1B211280C(v12);
  v69 = v14;
  v70 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - v21;
  v84 = AssociatedTypeWitness;
  v23 = *(*(AssociatedTypeWitness - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v81 = &v65 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v34 = &v65 - v33;
  v35 = HIBYTE(v8) & 0xF;
  v77 = v10;
  v78 = v8;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v35 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v36 = (v4 + 16);
  if (v35)
  {
    v66 = v32;
    v37 = v31;
    v82 = 0;
    v83 = 0xE000000000000000;
    v38 = *(v4 + 16);
    v39 = v30;
    v38(v6, v4);
    v68 = v0;
    if (!v0)
    {
      v76 = v4 + 16;
      sub_1B2115BB4(v39, 1, v84);
      if (v48)
      {
        (*(v69 + 8))(v39, v70);
      }

      else
      {
        v80 = v6;
        v52 = v37;
        v53 = *(v37 + 32);
        v54 = v66;
        v55 = sub_1B21497E8();
        v74 = v56;
        v75 = v38;
        v73 = v57;
        (v57)(v55);
        v72 = *(v52 + 16);
        v72(v81, v54, v84);
        sub_1B213CDFC();
        v79 = v58;
        v71 = v59;
        v60 = sub_1B2252490();
        MEMORY[0x1B2741EB0](v60);

        v61 = (v52 + 8);
        v63 = v67;
        v62 = v68;
        while (1)
        {
          v75(v80, v4);
          if (v62)
          {
            (*v61)(v66, v84);

            goto LABEL_20;
          }

          sub_1B2115BB4(v63, 1, v84);
          if (v48)
          {
            break;
          }

          v73(v26, v63, v84);
          MEMORY[0x1B2741EB0](v77, v78);
          v72(v81, v26, v84);
          sub_1B2126070();
          v64 = sub_1B2252490();
          MEMORY[0x1B2741EB0](v64);

          (*v61)(v26, v84);
        }

        (*v61)(v66, v84);
        (*(v69 + 8))(v63, v70);
      }
    }
  }

  else
  {
    v80 = v6;
    v82 = 0;
    v83 = 0xE000000000000000;
    v77 = *v36;
    v78 = v4;
    v40 = (v31 + 32);
    v41 = (v31 + 16);
    v42 = (v31 + 8);
    v43 = v84;
    while (1)
    {
      v44 = v1;
      v45 = v36;
      v77(v80, v78);
      if (v44)
      {

        goto LABEL_20;
      }

      v46 = sub_1B218E820();
      sub_1B2115BB4(v46, v47, v43);
      if (v48)
      {
        break;
      }

      (*v40)(v34, v22, v43);
      (*v41)(v81, v34, v43);
      sub_1B213CDFC();
      v49 = sub_1B2252490();
      MEMORY[0x1B2741EB0](v49);
      v43 = v84;

      (*v42)(v34, v84);
      v36 = v45;
      v1 = 0;
    }

    v50 = sub_1B212D624();
    v51(v50);
  }

LABEL_20:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

void *AnyCursor.init<A>(_:)()
{
  sub_1B211D5B4();
  v4 = *(*v1 + 80);
  v1[2] = sub_1B218C1E8(v5, v4, v2, v0);
  v1[3] = v6;
  v7 = sub_1B218C268(v3, v4, v2, v0);
  v9 = v8;
  swift_unknownObjectRelease();
  v1[4] = v7;
  v1[5] = v9;
  return v1;
}

uint64_t (*sub_1B218C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return sub_1B218E6F4;
}

uint64_t (*sub_1B218C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  swift_unknownObjectRetain();
  return sub_1B218E6BC;
}

uint64_t AnyCursor.__allocating_init<A>(iterator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocBox();
  sub_1B21115E0();
  v9 = v8;
  (*(v10 + 16))();
  v11 = swift_allocObject();
  v11[2] = *(v3 + 80);
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v7;

  v12 = AnyCursor.__allocating_init(_:)();
  (*(v9 + 8))(a1, a2);

  return v12;
}

uint64_t sub_1B218C3FC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B218C4F8()
{
  swift_projectBox();
  swift_beginAccess();
  sub_1B2252B50();
  return swift_endAccess();
}

uint64_t AnyCursor.__allocating_init(_:)()
{
  sub_1B211D530();
  sub_1B2117A4C();
  v0 = swift_allocObject();
  AnyCursor.init(_:)();
  return v0;
}

uint64_t *AnyCursor.init(_:)()
{
  sub_1B211D530();
  v3 = *v1;
  v1[2] = v4;
  v1[3] = v5;
  sub_1B2117C44();
  v6 = swift_allocObject();
  v6[2] = *(v3 + 80);
  v6[3] = v2;
  v6[4] = v0;
  v1[4] = sub_1B218E384;
  v1[5] = v6;

  return v1;
}

uint64_t sub_1B218C634(void (*a1)(char *), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v24 = a1;
  v8 = sub_1B2252B00();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *(*(a5 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v17 + 32);
  for (i = (v17 + 8); ; v14 = (*i)(v16, a5))
  {
    result = a3(v14);
    if (v5)
    {
      break;
    }

    if (sub_1B2122A98(v12, 1, a5) == 1)
    {
      return (*(v22 + 8))(v12, v23);
    }

    (*v18)(v16, v12, a5);
    v24(v16);
  }

  return result;
}

uint64_t AnyCursor.next()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t AnyCursor.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AnyCursor.__deallocating_deinit()
{
  AnyCursor.deinit();
  v0 = sub_1B2117A4C();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B218C8B4(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  if (a2 < 0)
  {
    sub_1B212E278();
    result = sub_1B2252EC0();
    __break(1u);
  }

  else
  {
    v2[2] = a1;
    v2[3] = a2;
    return v2;
  }

  return result;
}

void DropFirstCursor.next()()
{
  sub_1B2111640();
  v3 = v0;
  v25 = v4;
  sub_1B2111958();
  v6 = *(v5 + 88);
  v8 = *(v7 + 80);
  sub_1B2117A40();
  v28 = v9;
  swift_getAssociatedTypeWitness();
  sub_1B2144060();
  v27 = v10;
  v26 = sub_1B2252B00();
  sub_1B211280C(v26);
  v12 = *(v11 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B211504C();
  v14 = *(v6 + 16);
  v16 = (v15 + 8);
  v18 = *(v0 + 24);
  for (i = *(v0 + 32); ; *(v3 + 32) = i)
  {
    v19 = *(v3 + 16);
    if (i >= v18)
    {
      v14(v28, v6);
LABEL_9:
      sub_1B2111FB4();
      sub_1B2112FDC();
      return;
    }

    v14(v28, v6);
    if (v1)
    {
      goto LABEL_9;
    }

    v20 = sub_1B21142C4();
    v22 = sub_1B2122A98(v20, v21, v27);
    (*v16)(v2, v26);
    if (v22 == 1)
    {
      *(v3 + 32) = v18;
      sub_1B21117B4(v25, 1, 1, v27);
      goto LABEL_9;
    }

    v23 = *(v3 + 32);
    v24 = __OFADD__(v23, 1);
    i = v23 + 1;
    if (v24)
    {
      break;
    }
  }

  __break(1u);
}

void DropWhileCursor.next()()
{
  sub_1B2111640();
  v4 = v0;
  v6 = v5;
  sub_1B2111958();
  v8 = *(v7 + 88);
  v10 = *(v9 + 80);
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  v11 = sub_1B2115E58();
  sub_1B211280C(v11);
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B211504C();
  v15 = *(*(v2 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v21 = v36 - v20;
  if (*(v0 + 40) != 1)
  {
    v36[1] = v19;
    v36[2] = v17;
    v36[5] = *(v8 + 16);
    v36[6] = v8 + 16;
    v36[7] = v10;
    v23 = *(v0 + 16);
    v36[3] = v6;
    v36[4] = v23;
    v24 = (v18 + 32);
    while (1)
    {
      v25 = sub_1B218E7CC();
      v26(v25);
      if (v1)
      {
        goto LABEL_11;
      }

      sub_1B211471C(v3);
      if (v27)
      {
        break;
      }

      v28 = *v24;
      sub_1B218E808();
      v28();
      v29 = *(v4 + 32);
      if (((*(v4 + 24))(v21) & 1) == 0)
      {
        *(v4 + 40) = 1;
        sub_1B21262CC();
        v34 = (v28)();
        v35 = 0;
        goto LABEL_10;
      }

      v30 = sub_1B2116A00();
      v31(v30);
    }

    v32 = sub_1B211ACF8();
    v34 = v33(v32);
    v35 = 1;
LABEL_10:
    sub_1B214CBC0(v34, v35);
    goto LABEL_11;
  }

  v22 = *(v0 + 16);
  (*(v8 + 16))(v10, v8);
LABEL_11:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t DropWhileCursor.__deallocating_deinit()
{
  FilterCursor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

void EnumeratedCursor.next()()
{
  sub_1B2111640();
  v4 = v0;
  v34 = v5;
  sub_1B2111958();
  v7 = *(v6 + 88);
  v9 = *(v8 + 80);
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  v10 = sub_1B2115E58();
  sub_1B211280C(v10);
  v33 = v11;
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B211504C();
  sub_1B21115E0();
  v16 = v15;
  v18 = *(v17 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = *(v0 + 16);
  (*(v7 + 16))(v9, v7);
  if (v1)
  {
    goto LABEL_7;
  }

  v24 = v33;
  v23 = v34;
  sub_1B211471C(v3);
  if (v25)
  {
    (*(v24 + 8))(v3, v10);
    v26 = sub_1B218E82C();
    sub_1B21117B4(v23, 1, 1, v26);
LABEL_7:
    sub_1B2112FDC();
    return;
  }

  v27 = *(v16 + 32);
  sub_1B218E808();
  v27();
  v28 = sub_1B218E82C();
  v29 = *(v28 + 48);
  *v23 = *(v4 + 24);
  (v27)(v23 + v29, v21, v2);
  sub_1B21117B4(v23, 0, 1, v28);
  v30 = *(v4 + 24);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v4 + 24) = v32;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B218CFD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  result = a3(*(a2 + 24), a1);
  v6 = *(a2 + 24);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  v9 = v7;
  if (v3)
  {
    if (!v9)
    {
LABEL_8:
      *(a2 + 24) = v8;
      return result;
    }

    __break(1u);
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t EnumeratedCursor.__deallocating_deinit()
{
  PrefixCursor.deinit();
  v0 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B218D06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *(a3 + 80);
  v5 = a1;
  v6 = a2;
  return EnumeratedCursor.forEach(_:)(sub_1B218E69C, v4);
}

uint64_t sub_1B218D0B0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v14[-v11];
  *&v14[-v11] = a1;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v14[*(v10 + 48) - v11], a2, AssociatedTypeWitness);
  a3(v12);
  return (*(v8 + 8))(v12, TupleTypeMetadata2);
}

void FilterCursor.next()()
{
  sub_1B2111640();
  v4 = v0;
  sub_1B2111958();
  v6 = *(v5 + 88);
  v8 = *(v7 + 80);
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  v9 = sub_1B2115E58();
  sub_1B211280C(v9);
  v11 = *(v10 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B211504C();
  sub_1B21115E0();
  v14 = *(v13 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1B21352EC();
  v30 = *(v6 + 16);
  v29 = *(v4 + 16);
  v17 = (v16 + 32);
  while (1)
  {
    v18 = sub_1B218E7CC();
    v19(v18);
    if (v1)
    {
      break;
    }

    sub_1B211471C(v3);
    if (v20)
    {
      v25 = sub_1B211ACF8();
      v27 = v26(v25);
      v28 = 1;
LABEL_8:
      sub_1B214CBC0(v27, v28);
      break;
    }

    v21 = *v17;
    sub_1B218E808();
    v21();
    v22 = *(v4 + 32);
    if ((*(v4 + 24))(v2))
    {
      sub_1B21262CC();
      v27 = (v21)();
      v28 = 0;
      goto LABEL_8;
    }

    v23 = sub_1B2116A00();
    v24(v23);
  }

  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t sub_1B218D450(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[2];
  v11[3] = a1;
  v11[4] = a2;
  sub_1B212CD74();
  v6 = *(*(v5 + 88) + 24);
  sub_1B212CD74();
  return v9(v8, v11, *(v7 + 80));
}

uint64_t sub_1B218D4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(a2 + 32);
  result = (*(a2 + 24))();
  if (!v3 && (result & 1) != 0)
  {
    return a3(a1);
  }

  return result;
}

void FlattenCursor.next()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v50 = v26;
  sub_1B2111958();
  v28 = *(v27 + 96);
  v30 = *(v29 + 88);
  v53 = *(v29 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2111634();
  v52 = sub_1B2252B00();
  sub_1B211280C(v52);
  v33 = *(v32 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v34);
  sub_1B211504C();
  v36 = (v35 + 8);
  v51 = v28;
  while (1)
  {
    if (*(v25 + 24))
    {
      v37 = *(v51 + 16);
      v38 = *(v25 + 24);
      swift_unknownObjectRetain();
      v39 = swift_checkMetadataState();
      v37(v39, v51);
      swift_unknownObjectRelease();
      if (v21)
      {
        goto LABEL_12;
      }

      v40 = sub_1B21142C4();
      sub_1B2115BB4(v40, v41, AssociatedTypeWitness);
      if (!v42)
      {
        sub_1B2111808(AssociatedTypeWitness);
        v48 = v50;
        (*(v47 + 32))(v50, v22, AssociatedTypeWitness);
        v49 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v43 = sub_1B21142C4();
      sub_1B21117B4(v43, v44, 1, AssociatedTypeWitness);
    }

    (*v36)(v22, v52);
    v45 = *(v25 + 16);
    (*(v30 + 16))(&a10, v53, v30);
    if (v21)
    {
      goto LABEL_12;
    }

    if (!a10)
    {
      break;
    }

    v46 = *(v25 + 24);
    *(v25 + 24) = a10;
    swift_unknownObjectRelease();
  }

  v49 = 1;
  v48 = v50;
LABEL_11:
  sub_1B21117B4(v48, v49, 1, AssociatedTypeWitness);
LABEL_12:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t FlattenCursor.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FlattenCursor.__deallocating_deinit()
{
  FlattenCursor.deinit();
  v0 = sub_1B2112820();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void MapCursor.next()()
{
  sub_1B2111640();
  v3 = v0;
  v34 = v4;
  sub_1B2111958();
  v33 = v5;
  v7 = *(v6 + 96);
  v8 = *(v6 + 80);
  sub_1B2117A40();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B212D540();
  v10 = sub_1B2252B00();
  sub_1B211280C(v10);
  v32 = v11;
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  sub_1B21115E0();
  v31 = v17;
  v19 = *(v18 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1B211504C();
  v21 = *(v0 + 16);
  (*(v7 + 16))(v8, v7);
  if (!v1)
  {
    v22 = v31;
    v23 = v32;
    sub_1B2115BB4(v16, 1, AssociatedTypeWitness);
    if (v24)
    {
      (*(v23 + 8))(v16, v10);
      v29 = 1;
      v27 = v34;
      v28 = v33;
    }

    else
    {
      v25 = v22;
      (*(v22 + 32))(v2, v16, AssociatedTypeWitness);
      v26 = *(v3 + 32);
      v27 = v34;
      (*(v3 + 24))(v2);
      v28 = v33;
      (*(v25 + 8))(v2, AssociatedTypeWitness);
      v29 = 0;
    }

    sub_1B21117B4(v27, v29, 1, *(v28 + 88));
  }

  sub_1B2112FDC();
}

uint64_t MapCursor.forEach(_:)()
{
  v1 = *v0;
  v2 = v0[2];
  sub_1B212CD74();
  v4 = *(*(v3 + 96) + 24);
  sub_1B212CD74();
  v6 = *(v5 + 80);
  v7 = sub_1B211401C();
  return v8(v7);
}

uint64_t sub_1B218DAF4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = *(*a4 + 88);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = &v15 - v10;
  v13 = *(v12 + 32);
  result = (*(v12 + 24))(v9);
  if (!v4)
  {
    a2(v11);
    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

void PrefixCursor.next()()
{
  sub_1B2111640();
  sub_1B211FDE0();
  v6 = *(v5 + 88);
  v8 = *(v7 + 80);
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  v9 = sub_1B2115E58();
  sub_1B211280C(v9);
  v11 = *(v10 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B211504C();
  v14 = v3[3];
  v13 = v3[4];
  if (v13 >= v14)
  {
    v22 = v1;
    goto LABEL_7;
  }

  v24 = v1;
  v3[4] = v13 + 1;
  v15 = v3[2];
  (*(v6 + 16))(v8, v6);
  if (!v0)
  {
    sub_1B211471C(v4);
    if (!v16)
    {
      sub_1B2111808(v2);
      v20 = *(v19 + 32);
      sub_1B218E808();
      v21();
      v22 = v24;
      v23 = 0;
LABEL_8:
      sub_1B21117B4(v22, v23, 1, v2);
      goto LABEL_9;
    }

    v17 = sub_1B211ACF8();
    v18(v17, v9);
    v3[4] = v14;
    v22 = v24;
LABEL_7:
    v23 = 1;
    goto LABEL_8;
  }

LABEL_9:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

uint64_t PrefixCursor.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PrefixCursor.__deallocating_deinit()
{
  PrefixCursor.deinit();
  v0 = sub_1B2114ED8();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void PrefixWhileCursor.next()()
{
  sub_1B2111640();
  sub_1B211FDE0();
  v7 = *(v6 + 88);
  v9 = *(v8 + 80);
  sub_1B2117A40();
  swift_getAssociatedTypeWitness();
  v10 = sub_1B2115E58();
  sub_1B211280C(v10);
  v12 = *(v11 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B21352EC();
  sub_1B21115E0();
  v15 = *(v14 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1B21182D8();
  if (*(v4 + 40))
  {
    v20 = 1;
  }

  else
  {
    v29 = v19;
    v30 = v18;
    v31 = v1;
    v21 = *(v4 + 16);
    v22 = *(v7 + 16);
    v23 = sub_1B2111658();
    v24(v23);
    if (v0)
    {
      goto LABEL_5;
    }

    sub_1B211471C(v2);
    if (v25)
    {
      v17 = (*(v29 + 8))(v2, v10);
      v20 = 1;
    }

    else
    {
      v26 = *(v30 + 32);
      sub_1B21262CC();
      v26();
      v27 = *(v4 + 32);
      v28 = (*(v4 + 24))(v5);
      if (v28)
      {
        v17 = (v26)(v31, v5, v3);
        v20 = 0;
      }

      else
      {
        v17 = (*(v30 + 8))(v5, v3);
        v20 = 1;
        *(v4 + 40) = 1;
      }
    }
  }

  sub_1B214CBC0(v17, v20);
LABEL_5:
  sub_1B2111FB4();
  sub_1B2112FDC();
}

unint64_t sub_1B218E094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1B2252210();

  return sub_1B218E0F0(a1, v9, a2, a3);
}

unint64_t sub_1B218E0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v17 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v4;
  v19 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v19 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v18 + 48) + *(v6 + 72) * i, a3);
    v13 = *(v17 + 8);
    v14 = sub_1B2252270();
    (*(v6 + 8))(v9, a3);
    if (v14)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B218E264(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B218E2B8(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1B218A60C(a1, v1[6], v1[7], v1[2], v1[3]);
}

uint64_t sub_1B218E324()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_1B215B910() & 1;
}

uint64_t sub_1B218E364()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_1B218C4F8();
}

uint64_t sub_1B218E69C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1B218D0B0(a1, a2, *(v2 + 32));
}

uint64_t sub_1B218E6BC(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return (*(v4 + 24))(a1, a2, v3);
}

uint64_t sub_1B218E6F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return (*(v2 + 16))(v1);
}

uint64_t sub_1B218E72C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1B215B8C4();
}

uint64_t sub_1B218E7CC()
{
  v2 = *(v0 - 112);
  v1 = *(v0 - 104);
  v4 = *(v0 - 96);
  result = *(v0 - 88);
  v5 = *(v0 - 72);
  return result;
}

void sub_1B218E7E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1B218E7F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v4 - 72) = v3;
  *(v4 - 112) = result;
  *(v4 - 104) = a2;
  *(v4 - 144) = a3;
  return result;
}

uint64_t sub_1B218E82C()
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_1B218E84C()
{
  sub_1B2117FC0();
  sub_1B21115E0();
  v1 = v0;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v5 = *(v1 + 16);
  sub_1B211473C();
  v6();
  sub_1B211D894(v12);

  v7 = Row.__allocating_init(_:)(v12[1]);
  v8 = *(v1 + 8);
  v9 = sub_1B2111F44();
  v10(v9);
  return v7;
}

uint64_t sub_1B218E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0E30, &unk_1B2259360);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1B2252190();
  *a4 = v8;
  a4[1] = v9;
  v10 = *(a3 + 8);
  v11 = sub_1B2111F44();
  v12(v11);
  v13 = *(*(a2 - 8) + 8);

  return v13(a1, a2);
}

uint64_t sub_1B218EA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B218FA48(v3[1], v28);
  v8 = v29;
  sub_1B212AC5C(v28, qword_1EB7A1570, &qword_1B225A4D0);
  if (v8 == 1)
  {
    v27 = a1;
    v25 = a2;
    v26 = a3;
    result = sub_1B2252220();
    v10 = result;
    v12 = v11;
    v13 = 0;
    v14 = *(v7 + 16);
    for (i = (v7 + 40); ; i += 2)
    {
      if (v14 == v13)
      {

        v22 = v27;
        sub_1B21446E0(v27, v28);
        v23 = v25;
        v24 = v26;
        goto LABEL_15;
      }

      if (v13 >= *(v7 + 16))
      {
        break;
      }

      v17 = *(i - 1);
      v16 = *i;
      if (sub_1B2252220() == v10 && v18 == v12)
      {

LABEL_14:

        v22 = v27;
        sub_1B21446E0(v27, v28);
        v23 = v17;
        v24 = v16;
LABEL_15:
        sub_1B21A3D20(v28, v23, v24);
        v21 = v22;
        return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
      }

      v20 = sub_1B22531F0();

      if (v20)
      {
        goto LABEL_14;
      }

      ++v13;
    }

    __break(1u);
  }

  else
  {
    sub_1B21446E0(a1, v28);
    sub_1B21A3D20(v28, a2, a3);
    v21 = a1;
    return sub_1B212AC5C(v21, &qword_1EB7A0E30, &unk_1B2259360);
  }

  return result;
}

uint64_t static EncodableRecord.databaseEncodingUserInfo.getter()
{
  sub_1B2252E60();

  return sub_1B2252190();
}

uint64_t static EncodableRecord.databaseJSONEncoder(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B2251A70();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B2111844();
  v37 = sub_1B2251AD0();
  v6 = sub_1B211280C(v37);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B2111844();
  v13 = v12 - v11;
  v14 = sub_1B2251AA0();
  v15 = sub_1B211280C(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B2111844();
  v22 = v21 - v20;
  v23 = sub_1B2251A90();
  v24 = sub_1B211280C(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1B2111844();
  v31 = v30 - v29;
  v32 = sub_1B2251B20();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_1B2251B10();
  (*(v26 + 104))(v31, *MEMORY[0x1E6967F98], v23);
  sub_1B2251AB0();
  (*(v17 + 104))(v22, *MEMORY[0x1E6967FB0], v14);
  sub_1B2251AC0();
  (*(v8 + 104))(v13, *MEMORY[0x1E6967FE8], v37);
  sub_1B2251AE0();
  sub_1B2251A60();
  sub_1B2251A80();
  (*(a4 + 16))(a3);
  sub_1B2225128();

  sub_1B2251B00();
  return v35;
}

void static EncodableRecord.databaseDateEncodingStrategy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t PersistenceContainer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2144750(a1, a2, a3, v5);

  sub_1B212AC5C(a1, &qword_1EB7A0E30, &unk_1B2259360);
  return sub_1B212AC5C(v5, qword_1EB7A1570, &qword_1B225A4D0);
}

void sub_1B218EF84(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = *(v1 + 8);
      v3();
    }

    else
    {
      v11 = *v1;
      switch(v3)
      {
        case 1uLL:
          sub_1B2251E40();
          goto LABEL_21;
        case 2uLL:
          goto LABEL_14;
        case 3uLL:
          sub_1B2251E70();
          v19 = sub_1B2115BCC(v24);
          if (!(v21 ^ v22 | v20))
          {
            goto LABEL_25;
          }

          if (v19 <= -9.22337204e18)
          {
            goto LABEL_28;
          }

          if (v19 < 9.22337204e18)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        case 4uLL:
          sub_1B2251E70();
          v19 = sub_1B2115BCC(v18 * 1000.0);
          if (v21 ^ v22 | v20)
          {
            if (v19 <= -9.22337204e18)
            {
              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
            }

            else if (v19 < 9.22337204e18)
            {
LABEL_19:
              *(a1 + 24) = MEMORY[0x1E69E7360];
              *(a1 + 32) = &protocol witness table for Int64;
              *a1 = v19;
            }

            else
            {
              __break(1u);
LABEL_14:
              sub_1B2251E70();
LABEL_21:
              *(a1 + 24) = MEMORY[0x1E69E63B0];
              *(a1 + 32) = &protocol witness table for Double;
              *a1 = v23;
            }
          }

          else
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            swift_once();
LABEL_8:
            v12 = qword_1ED85D6E8;
            v13 = sub_1B2251E50();
            v14 = [v12 stringFromDate_];

            v15 = sub_1B22522A0();
            v17 = v16;

            *a1 = v15;
            *(a1 + 8) = v17;
            *(a1 + 16) = 2;
          }

          break;
        case 5uLL:
          if (qword_1EB7A0D40 != -1)
          {
            swift_once();
          }

          v25 = qword_1EB7A18F8;
          v5 = sub_1B2251E50();
          v6 = [v25 stringFromDate_];
          goto LABEL_5;
        default:
          *(a1 + 24) = &type metadata for DatabaseValue;
          *(a1 + 32) = &protocol witness table for DatabaseValue;
          if (qword_1ED85D6E0 == -1)
          {
            goto LABEL_8;
          }

          goto LABEL_26;
      }
    }
  }

  else
  {
    v5 = sub_1B2251E50();
    v6 = [v3 stringFromDate_];
LABEL_5:
    v7 = v6;

    v8 = sub_1B22522A0();
    v10 = v9;

    *(a1 + 24) = MEMORY[0x1E69E6158];
    *(a1 + 32) = &protocol witness table for String;
    *a1 = v8;
    *(a1 + 8) = v10;
  }
}

uint64_t EncodableRecord.databaseDictionary.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B211280C(a1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  v7 = *(v6 + 16);
  sub_1B21142D0();
  v8();
  v9 = sub_1B2111F44();
  sub_1B218E934(v9, v10, a2, v11);

  sub_1B21619D8(&qword_1EB7A1900, &qword_1B2259370);
  result = sub_1B2252EE0();
  v13 = result;
  v14 = 0;
  v15 = v48 + 64;
  v16 = 1 << *(v48 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v48 + 64);
  v19 = (v16 + 63) >> 6;
  v37 = result + 64;
  v38 = v48;
  if (v18)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v14 << 6);
      v24 = (*(v38 + 48) + 16 * v23);
      v40 = *v24;
      v41 = v24[1];
      sub_1B21446E0(*(v38 + 56) + 40 * v23, &v47);
      sub_1B21446E0(&v47, v44);
      v25 = v45;
      if (v45)
      {
        v26 = v13;
        v27 = v46;
        sub_1B21139A0(v44, v45);
        v28 = *(v27 + 24);

        v29 = v27;
        v13 = v26;
        v28(v42, v25, v29);
        v30 = v42[0];
        v25 = v42[1];
        v31 = v43;
        sub_1B2113208(v44);
      }

      else
      {

        sub_1B212AC5C(v44, &qword_1EB7A0E30, &unk_1B2259360);
        v30 = 0;
        v31 = 4;
      }

      result = sub_1B212AC5C(&v47, &qword_1EB7A0E30, &unk_1B2259360);
      *(v37 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v32 = (v13[6] + 16 * v23);
      *v32 = v40;
      v32[1] = v41;
      v33 = v13[7] + 24 * v23;
      *v33 = v30;
      *(v33 + 8) = v25;
      *(v33 + 16) = v31;
      v34 = v13[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v13[2] = v36;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        return v13;
      }

      v22 = *(v15 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL EncodableRecord.databaseEquals(_:)()
{
  sub_1B2117FC0();
  sub_1B21115E0();
  v1 = v0;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v5 = *(v1 + 16);
  sub_1B21142D0();
  v5();
  sub_1B211D894(&v12);
  sub_1B211473C();
  v5();
  sub_1B211D894(v11);
  v6 = v11[0];
  v7 = v11[1];
  sub_1B2117C44();
  v8 = swift_allocObject();
  *(v8 + 16) = v12;
  *(v8 + 32) = 0;

  sub_1B21903D4(v8, v6, v7, &v13);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v9 = v14;
  if (v14)
  {
    sub_1B21906DC(v13, v14, v15, v16, v17);
  }

  return v9 == 0;
}

uint64_t EncodableRecord.databaseChanges<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v17 + 16))(&v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)], v18, a2);
  sub_1B211314C();
  sub_1B218E934(v19, v20, v21, v22);
  (*(v9 + 16))(v13, a1, a3);
  sub_1B218E934(v13, a3, a5, &v29);
  sub_1B2117C44();
  v23 = swift_allocObject();
  *(v23 + 16) = v30;
  *(v23 + 32) = 0;
  sub_1B2117C44();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v29;
  sub_1B21619D8(&qword_1EB7A1908, &qword_1B2259378);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B2190738;
  *(v25 + 24) = v24;
  *&v30 = MEMORY[0x1E69E7CC8];

  sub_1B2192304(v26, 1, &v30);

  return v30;
}

double PersistenceContainer.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 8) + 16) && (v3 = sub_1B211E590(), (v4 & 1) != 0))
  {
    v5 = sub_1B2115650(v3);
    v6 = sub_1B21446E0(v5, &v17);
    *&result = sub_1B211D5C4(v6, v7, v8, v9, v10, v11, v12, v13, v16, v14, v17, v18).n128_u64[0];
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1B218F93C@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *a1;
  return PersistenceContainer.subscript.getter(a3);
}

uint64_t sub_1B218F978(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1B21446E0(a1, v6);

  return PersistenceContainer.subscript.setter(v6, v3, v4);
}

void sub_1B218F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v5 = sub_1B211E590();
    if (v6)
    {
      v7 = (*(a4 + 56) + 24 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
    }
  }

  sub_1B21142D0();
}

double sub_1B218FA48@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B211E590(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 40 * v4;

    sub_1B21446E0(v6, a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&result = 1;
    *(a2 + 24) = xmmword_1B2259350;
  }

  return result;
}

uint64_t sub_1B218FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1B212CF80();
  sub_1B21C7908();
  v9 = v8;
  if (!v10)
  {

    sub_1B21449A8();
    v11 = *(*v5 + 16);
    sub_1B2144A08();
    v12 = *v5;
    *(v12 + 16) = v11 + 1;
    v13 = v12 + 16 * v11;
    *(v13 + 32) = a4;
    *(v13 + 40) = a5;
    *v5 = v12;
  }

  return v9;
}

void (*PersistenceContainer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v7 = sub_1B2170FB8(0x90uLL);
  *a1 = v7;
  *(v7 + 16) = a3;
  *(v7 + 17) = v3;
  *(v7 + 15) = a2;
  if (*(*(v3 + 8) + 16) && (v8 = sub_1B211E590(), (v9 & 1) != 0))
  {
    v10 = sub_1B2115650(v8);
    sub_1B21446E0(v10, (v7 + 40));
    v11 = *(v7 + 56);
    *v7 = *(v7 + 40);
    *(v7 + 1) = v11;
    *(v7 + 4) = *(v7 + 9);
  }

  else
  {
    *(v7 + 4) = 0;
    *v7 = 0u;
    *(v7 + 1) = 0u;
  }

  return sub_1B218FC44;
}

void sub_1B218FC44(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[16];
    v3 = v2[17];
    v5 = v2[15];
    sub_1B21446E0(*a1, (v2 + 5));
    sub_1B211473C();
    sub_1B2144750(v6, v7, v8, v9);
    sub_1B212AC5C((v2 + 10), qword_1EB7A1570, &qword_1B225A4D0);
    sub_1B21142D0();
    sub_1B212AC5C(v10, v11, v12);
    sub_1B21142D0();
  }

  else
  {
    v16 = v2[17];
    sub_1B2144750(*a1, v2[15], v2[16], (v2 + 5));
    sub_1B212AC5C((v2 + 5), qword_1EB7A1570, &qword_1B225A4D0);
    v14 = &qword_1EB7A0E30;
    v15 = &unk_1B2259360;
    v13 = v2;
  }

  sub_1B212AC5C(v13, v14, v15);

  free(v2);
}

uint64_t PersistenceContainer.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  (*(a2 + 16))(a1, a2);
  if (*(v5 + 16) && (v6 = sub_1B211E590(), (v7 & 1) != 0))
  {
    v8 = sub_1B21446E0(*(v5 + 56) + 40 * v6, &v19);
    sub_1B211D5C4(v8, v9, v10, v11, v12, v13, v14, v15, v18, v16, v19, v20);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_1B218FE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14[-v8 - 8];
  (*(v10 + 16))(&v14[-v8 - 8], v11, v5);
  sub_1B21446E0(a1, v14);
  return PersistenceContainer.subscript.setter(v14, v9, v5, v6);
}

uint64_t PersistenceContainer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 16))(a3, a4);
  v8 = v7;
  sub_1B21446E0(a1, v14);
  sub_1B2144750(v14, v6, v8, v13);

  v9 = *(*(a3 - 8) + 8);
  v10 = sub_1B2111F44();
  v11(v10);
  sub_1B212AC5C(a1, &qword_1EB7A0E30, &unk_1B2259360);
  sub_1B212AC5C(v13, qword_1EB7A1570, &qword_1B225A4D0);
  return sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
}

void (*PersistenceContainer.subscript.modify())(uint64_t *a1, char a2)
{
  sub_1B2111FC0();
  v4 = v3;
  v5 = sub_1B2170FB8(0x80uLL);
  *v4 = v5;
  v5[11] = v1;
  v5[12] = v0;
  v5[10] = v2;
  sub_1B21115E0();
  v7 = v6;
  *(v8 + 104) = v6;
  v10 = *(v9 + 64);
  v5[14] = sub_1B2170FB8(v10);
  v5[15] = sub_1B2170FB8(v10);
  v11 = *(v7 + 16);
  sub_1B211314C();
  v12();
  v17 = *v0;
  sub_1B211473C();
  PersistenceContainer.subscript.getter(v13, v14, v15);
  return sub_1B2190134;
}

void sub_1B2190134(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[14];
    v3 = v2[15];
    v5 = v2[12];
    v6 = v2[13];
    v8 = v2[10];
    v7 = v2[11];
    sub_1B21446E0(*a1, (v2 + 5));
    v9 = *(v6 + 32);
    v10 = sub_1B2111F44();
    v11(v10);
    PersistenceContainer.subscript.setter((v2 + 5), v4, v8, v7);
    sub_1B212AC5C(v2, &qword_1EB7A0E30, &unk_1B2259360);
  }

  else
  {
    v4 = v2[14];
    v3 = v2[15];
    v12 = v2[12];
    PersistenceContainer.subscript.setter(*a1, v3, v2[10], v2[11]);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1B219020C()
{
  sub_1B2117FC0();
  v2 = v1;
  v4 = *v0;
  v3 = v0[1];
  if (*(v3 + 16) && (sub_1B2111F44(), v5 = sub_1B211E590(), (v6 & 1) != 0))
  {
    v7 = sub_1B2115650(v5);
    result = sub_1B21446E0(v7, &v27);
    v9 = v28;
    *v2 = v27;
    *(v2 + 16) = v9;
    *(v2 + 32) = v29;
  }

  else
  {
    v26 = v2;
    sub_1B2111F44();
    result = sub_1B2252220();
    v10 = result;
    v12 = v11;
    v13 = 0;
    v14 = *(v4 + 16);
    for (i = (v4 + 40); ; i += 2)
    {
      if (v14 == v13)
      {
LABEL_16:

        *(v26 + 32) = 0;
        *v26 = 0u;
        *(v26 + 16) = 0u;
        return result;
      }

      if (v13 >= *(v4 + 16))
      {
        break;
      }

      if (!*(v3 + 16))
      {
        goto LABEL_21;
      }

      v17 = *(i - 1);
      v16 = *i;

      result = sub_1B211E590();
      if ((v18 & 1) == 0)
      {
        goto LABEL_22;
      }

      v19 = sub_1B2115650(result);
      sub_1B21446E0(v19, &v28);
      if (!v16)
      {
        goto LABEL_16;
      }

      v27 = v28;
      v28 = v29;
      *&v29 = v30;
      v20 = sub_1B2252220();
      v22 = v21;

      if (v20 == v10 && v22 == v12)
      {

LABEL_18:

        v25 = v28;
        *v26 = v27;
        *(v26 + 16) = v25;
        *(v26 + 32) = v29;
        return result;
      }

      v24 = sub_1B22531F0();

      if (v24)
      {
        goto LABEL_18;
      }

      result = sub_1B212AC5C(&v27, &qword_1EB7A0E30, &unk_1B2259360);
      ++v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21903D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1;
  v5 = &qword_1EB7A0E30;
  for (i = &unk_1B2259360; ; i = v36)
  {
    result = swift_beginAccess();
    v8 = v4[2];
    v9 = *(v8 + 16);
    v10 = v4[4];
    if (v10 == v9)
    {
      v11 = 0;
      v12 = 0;
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v13 = 1;
      v50 = 0u;
      goto LABEL_8;
    }

    if (v10 >= v9)
    {
      break;
    }

    if (!*(v4[3] + 16))
    {
      goto LABEL_21;
    }

    v14 = v8 + 16 * v10;
    v12 = *(v14 + 32);
    v11 = *(v14 + 40);

    result = sub_1B211E590();
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

    v16 = sub_1B2115650(result);
    sub_1B21446E0(v16, &v44);
    v51 = v44;
    v52 = v45;
    v53 = v46;
    *&v50 = v12;
    *(&v50 + 1) = v11;
    v4[4] = v10 + 1;
    v13 = v11 == 0;
LABEL_8:
    swift_endAccess();
    if (v13)
    {
      result = sub_1B212AC5C(&v50, &qword_1EB7A10D8, &qword_1B2254918);
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    v54[0] = v51;
    v54[1] = v52;
    v55 = v53;
    v42 = a2;
    v43 = a3;
    sub_1B219020C();
    sub_1B21446E0(&v50, &v42);
    v17 = *(&v44 + 1);
    v38 = v12;
    if (*(&v44 + 1))
    {
      v18 = v45;
      sub_1B21139A0(&v42, *(&v44 + 1));
      (*(v18 + 24))(&v47, v17, v18);
      v19 = v47;
      v17 = v48;
      v20 = v49;
      sub_1B2113208(&v42);
    }

    else
    {
      sub_1B212CF80();
      sub_1B212AC5C(v21, v22, v23);
      v19 = 0;
      v20 = 4;
    }

    sub_1B21446E0(v54, &v42);
    v24 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v25 = v5;
      v26 = v45;
      sub_1B21139A0(&v42, *(&v44 + 1));
      (*(v26 + 24))(&v47, v24, v26);
      v27 = v47;
      v24 = v48;
      v28 = v49;
      sub_1B2113208(&v42);
    }

    else
    {
      sub_1B212CF80();
      sub_1B212AC5C(v29, v30, v31);
      v27 = 0;
      v25 = v5;
      v28 = 4;
    }

    v42 = v27;
    v43 = v24;
    LOBYTE(v44) = v28;
    v47 = v19;
    v48 = v17;
    v49 = v20;
    v32 = static DatabaseValue.== infix(_:_:)(&v42, &v47);
    sub_1B212AC5C(&v50, v25, i);
    v33 = i;
    v34 = v25;
    v35 = v25;
    v36 = v33;
    sub_1B212AC5C(v54, v35, v33);
    result = sub_1B2113A44(v27, v24, v28);
    if ((v32 & 1) == 0)
    {
      *a4 = v38;
      *(a4 + 8) = v11;
      *(a4 + 16) = v19;
      *(a4 + 24) = v17;
      *(a4 + 32) = v20;
      return result;
    }

    sub_1B2113A44(v19, v17, v20);
    v5 = v34;
    v4 = a1;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_1B21906DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a2)
  {

    sub_1B2113A44(a3, a4, a5);
  }
}

id sub_1B2190744()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1EB7A18F8 = v0;
  return result;
}

uint64_t DatabaseUUIDEncodingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

uint64_t sub_1B2190834(uint64_t a1, unint64_t a2)
{
  v59 = sub_1B2251B80();
  v5 = sub_1B211280C(v59);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v12 = v11 - v10;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    return a1;
  }

  v14 = sub_1B2252390();
  v61 = a2;
  v15 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v15 = 11;
  }

  v57 = 4 * v13;
  if (4 * v13 < v14 >> 14)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    v60 = v15 | (v13 << 16);
    v58 = (v7 + 8);
    v16 = MEMORY[0x1E69E7CC0];
    v2 = 15;
    while (1)
    {
      sub_1B2251B50();
      sub_1B2156990();
      v17 = sub_1B2252B70();
      v19 = v18;
      v20 = *v58;
      (*v58)(v12, v59);
      if (v19)
      {
        v21 = v2 >> 14;
        goto LABEL_27;
      }

      v21 = v17 >> 14;
      if (v17 >> 14 < v2 >> 14)
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

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B212DE50();
        v16 = v35;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        v36 = sub_1B211156C(v22);
        sub_1B216270C(v36, v23 + 1, 1, v16);
        v16 = v37;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v2;
      *(v24 + 40) = v17;
      if (v57 < v21)
      {
        goto LABEL_38;
      }

      v2 = v61;
      sub_1B2251B40();
      v25 = sub_1B2252B70();
      v27 = v26;
      v29 = v28;
      v20(v12, v59);
      if (v29)
      {
        break;
      }

      if ((sub_1B2252390() ^ v25) >= 0x4000)
      {
        v30 = sub_1B22523A0();
        if (v21 > v30 >> 14)
        {
          goto LABEL_40;
        }

        v31 = v30;
        v33 = *(v16 + 16);
        v32 = *(v16 + 24);
        if (v33 >= v32 >> 1)
        {
          v38 = sub_1B211156C(v32);
          sub_1B216270C(v38, v33 + 1, 1, v16);
          v16 = v39;
        }

        *(v16 + 16) = v33 + 1;
        v34 = v16 + 16 * v33;
        *(v34 + 32) = v17;
        *(v34 + 40) = v31;
        v17 = v31;
      }

      v2 = v17;
      if (v57 < v27 >> 14)
      {
        goto LABEL_39;
      }
    }

    v2 = v17;
LABEL_27:
    if (v57 < v21)
    {
      goto LABEL_42;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_29;
    }
  }

  sub_1B212DE50();
  v16 = v54;
LABEL_29:
  v41 = *(v16 + 16);
  v40 = *(v16 + 24);
  v42 = v41 + 1;
  if (v41 >= v40 >> 1)
  {
    v55 = sub_1B211156C(v40);
    sub_1B216270C(v55, v41 + 1, 1, v16);
    v16 = v56;
  }

  *(v16 + 16) = v42;
  v43 = v16 + 16 * v41;
  *(v43 + 32) = v2;
  *(v43 + 40) = v60;
  v62 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10();
  v44 = (v16 + 40);
  do
  {
    v45 = *(v44 - 1);
    v46 = *v44;
    sub_1B22524A0();
    v47 = sub_1B2252B10();
    v49 = v48;

    v51 = *(v62 + 16);
    v50 = *(v62 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_1B211156C(v50);
      sub_1B2116B10();
    }

    v44 += 2;
    *(v62 + 16) = v51 + 1;
    v52 = v62 + 16 * v51;
    *(v52 + 32) = v47;
    *(v52 + 40) = v49;
    --v42;
  }

  while (v42);

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  a1 = sub_1B2252250();

  return a1;
}

unint64_t sub_1B2190C9C()
{
  sub_1B211606C();
  sub_1B2138CB8();
  v1 = sub_1B2253470();

  return sub_1B2190DE8(v0, v1);
}

uint64_t sub_1B2190CF8()
{
  sub_1B211606C();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_1B2145DB0();
  sub_1B2252370();
  sub_1B2145E84(v8, v3);
  sub_1B2145E84(v8, v4);
  v6 = sub_1B2253470();

  return sub_1B2190EAC(v0, v6);
}

unint64_t sub_1B2190D8C()
{
  sub_1B211606C();
  sub_1B2192880(v3, v0);
  v1 = sub_1B2253470();

  return sub_1B219122C(v0, v1);
}

unint64_t sub_1B2190DE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for TableAlias();
    v7 = *(*(v3 + 48) + 8 * i);

    v8 = static TableAlias.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1B2190EAC(void *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v32 = v2 + 64;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v31 = ~v3;
  v5 = 0x4B4341424C4C4F52;
  v33 = *a1;
  v35 = a1[2];
  v36 = a1[1];
  v6 = a1[3];
  v30 = a1[4];
  while (1)
  {
    v7 = *(v34 + 48) + 40 * v4;
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    v10 = *(v7 + 24);
    v11 = *(v7 + 32);
    v12 = 0xE800000000000000;
    v13 = v5;
    switch(*v7)
    {
      case 1:
        v12 = 0xE500000000000000;
        v13 = 0x54524F4241;
        break;
      case 2:
        v12 = 0xE400000000000000;
        v13 = 1279869254;
        break;
      case 3:
        v12 = 0xE600000000000000;
        v13 = 0x45524F4E4749;
        break;
      case 4:
        v12 = 0xE700000000000000;
        v13 = 0x4543414C504552;
        break;
      default:
        break;
    }

    v14 = 0xE800000000000000;
    v15 = v5;
    switch(v33)
    {
      case 1:
        v14 = 0xE500000000000000;
        v5 = 0x54524F4241;
        break;
      case 2:
        v14 = 0xE400000000000000;
        v5 = 1279869254;
        break;
      case 3:
        v14 = 0xE600000000000000;
        v5 = 0x45524F4E4749;
        break;
      case 4:
        v14 = 0xE700000000000000;
        v5 = 0x4543414C504552;
        break;
      default:
        break;
    }

    if (v13 == v5 && v12 == v14)
    {
      v19 = *(v7 + 16);
    }

    else
    {
      v17 = sub_1B22531F0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v9 != v36 || v8 != v35)
    {
      result = sub_1B22531F0();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v21 = *(v10 + 16);
    if (v21 != *(v6 + 16))
    {
      goto LABEL_49;
    }

    if (v21 && v10 != v6)
    {
      break;
    }

LABEL_38:
    v26 = *(v11 + 16);
    if (v26 == *(v30 + 16))
    {
      if (!v26 || v11 == v30)
      {
LABEL_51:

        return v4;
      }

      v27 = (v11 + 40);
      v28 = (v30 + 40);
      while (1)
      {
        v29 = *(v27 - 1) == *(v28 - 1) && *v27 == *v28;
        if (!v29 && (sub_1B22531F0() & 1) == 0)
        {
          break;
        }

        v27 += 2;
        v28 += 2;
        if (!--v26)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_49:

    v4 = (v4 + 1) & v31;
    v5 = v15;
    if (((*(v32 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  v23 = (v10 + 40);
  v24 = (v6 + 40);
  while (v21)
  {
    result = *(v23 - 1);
    if (result != *(v24 - 1) || *v23 != *v24)
    {
      result = sub_1B22531F0();
      if ((result & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v23 += 2;
    v24 += 2;
    if (!--v21)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B219122C(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  result = a2 & ~v5;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = *(a1 + 16);
    v43 = (a1 + 48);
    v39 = ~v5;
    v40 = v2 + 64;
    v45 = v8;
LABEL_3:
    v9 = *(*(v2 + 48) + 8 * result);
    if (*(v9 + 16) != v8)
    {
      goto LABEL_71;
    }

    if (v8 && v9 != a1)
    {
      v44 = result;

      v10 = 0;
      v11 = (v9 + 48);
      v12 = v43;
      v46 = v9;
      while (1)
      {
        if (v10 >= *(v9 + 16))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }

        if (v8 == v10)
        {
          goto LABEL_77;
        }

        ++v10;
        v13 = *(v11 - 2);
        v14 = *(v11 - 1);
        v15 = *v11;
        v16 = *(v12 - 2);
        v17 = *(v12 - 1);
        v18 = *v12;
        switch(*v11)
        {
          case 1:
            v31 = *(v11 - 2);
            if (*v12)
            {
              if (v18 != 1)
              {
                goto LABEL_68;
              }

              v32 = *(v12 - 2);
              sub_1B2113A44(*(v11 - 2), *(v11 - 1), 1);
              sub_1B2113A44(v16, v17, 1);
              sub_1B2113A44(v13, v14, 1);
              v33 = *&v13 == *&v16;
            }

            else
            {
              sub_1B2113A44(*(v11 - 2), *(v11 - 1), 1);
              sub_1B2113A44(v16, v17, 0);
              sub_1B2113A44(v13, v14, 1);
              if (*&v13 <= -9.22337204e18 || *&v13 >= 9.22337204e18 || trunc(*&v13) != *&v13)
              {
                goto LABEL_69;
              }

              v33 = v16 == *&v13;
            }

            goto LABEL_48;
          case 2:
            if (v18 != 2)
            {
              sub_1B2113A20(*(v11 - 2), *(v11 - 1), 2);

LABEL_68:
              sub_1B2113A20(v16, v17, v18);
              sub_1B2113A44(v13, v14, v15);
              sub_1B2113A44(v16, v17, v18);
              sub_1B2113A44(v13, v14, v15);
LABEL_69:

              result = v44;
LABEL_70:
              a1 = v41;
              v2 = v42;
              v7 = v39;
              v4 = v40;
LABEL_71:
              result = (result + 1) & v7;
              if (((*(v4 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_3;
            }

            if (v13 == v16 && v14 == v17)
            {
              sub_1B2113A20(*(v11 - 2), *(v11 - 1), 2);
              sub_1B2113A20(v13, v14, 2);
              sub_1B2113A44(v13, v14, 2);
              v21 = v13;
              v22 = v14;
              v23 = 2;
LABEL_51:
              sub_1B2113A44(v21, v22, v23);
LABEL_62:
              v9 = v46;
            }

            else
            {
              v25 = *(v12 - 2);
              v26 = *(v12 - 1);
              v27 = sub_1B22531F0();
              sub_1B2113A20(v16, v17, 2);
              sub_1B2113A20(v13, v14, 2);
              sub_1B2113A44(v13, v14, 2);
              sub_1B2113A44(v16, v17, 2);
              v9 = v46;
              if ((v27 & 1) == 0)
              {
                goto LABEL_69;
              }
            }

LABEL_63:
            v12 += 3;
            v11 += 24;
            if (v8 == v10)
            {

              result = v44;
              goto LABEL_74;
            }

            break;
          case 3:
            if (v18 != 3)
            {
              sub_1B2113A20(*(v11 - 2), *(v11 - 1), 3);
              sub_1B2126638(v13, v14);
              goto LABEL_68;
            }

            if (*&v13 == 0.0 && (v14 == 0xC000000000000000 ? (v28 = v17 >> 62 == 3) : (v28 = 0), v28 && *&v16 == 0.0 && v17 == 0xC000000000000000))
            {
              sub_1B2113A20(0, 0xC000000000000000, 3);
              sub_1B2113A20(0, 0xC000000000000000, 3);
              sub_1B2113A44(0, 0xC000000000000000, 3);
              v29 = 0;
              v30 = 0xC000000000000000;
            }

            else
            {
              switch(v17 >> 62)
              {
                case 1uLL:
                  LODWORD(v34) = HIDWORD(v16) - v16;
                  if (__OFSUB__(HIDWORD(v16), v16))
                  {
                    goto LABEL_78;
                  }

                  v34 = v34;
LABEL_59:
                  if (v34)
                  {
                    sub_1B2113A20(*(v12 - 2), *(v12 - 1), 3);
                    sub_1B2113A20(v13, v14, 3);
                    sub_1B2113A44(v13, v14, 3);
                    sub_1B2113A44(v16, v17, 3);

                    result = v44;
                    v8 = v45;
                    goto LABEL_70;
                  }

LABEL_60:
                  sub_1B2113A20(*(v12 - 2), *(v12 - 1), 3);
                  sub_1B2113A20(v13, v14, 3);
                  sub_1B2113A44(v13, v14, 3);
                  v29 = v16;
                  v30 = v17;
                  break;
                case 2uLL:
                  v36 = *(v16 + 16);
                  v35 = *(v16 + 24);
                  v37 = __OFSUB__(v35, v36);
                  v34 = v35 - v36;
                  if (!v37)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_79;
                case 3uLL:
                  goto LABEL_60;
                default:
                  v34 = BYTE6(v17);
                  goto LABEL_59;
              }
            }

            sub_1B2113A44(v29, v30, 3);
            v8 = v45;
            goto LABEL_62;
          case 4:
            if (v18 != 4 || (v17 | v16) != 0)
            {
              goto LABEL_68;
            }

            sub_1B2113A44(*(v11 - 2), *(v11 - 1), 4);
            sub_1B2113A44(0, 0, 4);
            v21 = v13;
            v22 = v14;
            v23 = 4;
            goto LABEL_51;
          default:
            if (*v12)
            {
              if (v18 != 1)
              {
                goto LABEL_68;
              }

              v19 = *(v12 - 2);
              sub_1B2113A44(*(v11 - 2), *(v11 - 1), 0);
              sub_1B2113A44(v16, v17, 1);
              sub_1B2113A44(v13, v14, 0);
              if (*&v16 <= -9.22337204e18)
              {
                goto LABEL_69;
              }

              v9 = v46;
              if (*&v16 >= 9.22337204e18 || trunc(*&v16) != *&v16 || v13 != *&v16)
              {
                goto LABEL_69;
              }
            }

            else
            {
              sub_1B2113A44(*(v11 - 2), *(v11 - 1), 0);
              sub_1B2113A44(v16, v17, 0);
              sub_1B2113A44(v13, v14, 0);
              v33 = v13 == v16;
LABEL_48:
              v9 = v46;
              if (!v33)
              {
                goto LABEL_69;
              }
            }

            goto LABEL_63;
        }
      }
    }
  }

LABEL_74:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B2192304(uint64_t a1, char a2, void *a3)
{
  while (1)
  {
    sub_1B2252F10();
    if (!v24)
    {

      return;
    }

    v4 = *a3;
    v6 = sub_1B211E590();
    v7 = v4[2];
    v8 = (v5 & 1) == 0;
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      sub_1B2253390();
      __break(1u);
      goto LABEL_18;
    }

    v10 = v5;
    if (v4[3] < v9)
    {
      break;
    }

    if (a2)
    {
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
      sub_1B2252E80();
      if (v10)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v14 = *a3;
    *(*a3 + 8 * (v6 >> 6) + 64) |= 1 << v6;
    v15 = (v14[6] + 16 * v6);
    *v15 = v23;
    v15[1] = v24;
    v16 = v14[7] + 24 * v6;
    *v16 = v25;
    *(v16 + 8) = v26;
    *(v16 + 16) = v27;
    v17 = v14[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_16;
    }

    v14[2] = v19;
    a2 = 1;
  }

  sub_1B2245C58(v9, a2 & 1);
  v11 = *a3;
  v12 = sub_1B211E590();
  if ((v10 & 1) != (v13 & 1))
  {
    goto LABEL_17;
  }

  v6 = v12;
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v20 = swift_allocError();
  swift_willThrow();
  v21 = v20;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B2113A44(v25, v26, v27);

    return;
  }

LABEL_18:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

unint64_t sub_1B21925D4()
{
  result = qword_1EB7A1910;
  if (!qword_1EB7A1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1910);
  }

  return result;
}

uint64_t sub_1B21926AC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

_BYTE *storeEnumTagSinglePayload for DatabaseUUIDEncodingStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B21927AC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B21927C4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B2192818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1B2192880(uint64_t a1, uint64_t a2)
{
  sub_1B211AD04(a1, a2);
  if (v2)
  {
    v4 = (v3 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v8 = *v4;
      v4 += 24;
      v7 = v8;
      switch(v8)
      {
        case 1:
          if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v9 = *&v5;
          }

          else
          {
            v9 = 0.0;
          }

          goto LABEL_11;
        case 2:
          sub_1B2113A20(v5, v6, 2);
          sub_1B2114748();
          sub_1B2252370();
          break;
        case 3:
          sub_1B2113A20(v5, v6, 3);
          sub_1B2114748();
          sub_1B2251DF0();
          break;
        case 4:
          MEMORY[0x1B2742F10](0);
          break;
        default:
          v9 = v5;
LABEL_11:
          MEMORY[0x1B2742F40](*&v9);
          break;
      }

      sub_1B2113A44(v5, v6, v7);
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1B219296C()
{
  v1 = v0;
  type metadata accessor for SchedulingWatchdog();
  v2 = sub_1B21114CC();
  if (v2 && (v3 = *(v2 + 24), , , v3))
  {
    sub_1B2195714(v1, v3);
  }

  else
  {
    result = sub_1B2252EC0();
    __break(1u);
  }

  return result;
}

uint64_t DatabaseRegionObservation.init(tracking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B2115660();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = 0;
  *(a2 + 8) = sub_1B219487C;
  *(a2 + 16) = result;
  return result;
}

{
  sub_1B2115660();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = 0;
  *(a2 + 8) = sub_1B21958B0;
  *(a2 + 16) = result;
  return result;
}

void *DatabaseRegionObservation.start(in:onChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  ObjectType = swift_getObjectType();
  v14[16] = v9;
  v15 = *(v4 + 8);
  v16 = a3;
  v17 = a4;
  v11 = *(a2 + 64);
  v12 = sub_1B21619D8(qword_1EB7A1920, &qword_1B22595C0);
  result = v11(&v18, sub_1B2194898, v14, v12, ObjectType, a2);
  if (!v5)
  {
    return v18;
  }

  return result;
}

void *sub_1B2192BE0@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  result = a1(&v11);
  if (!v4)
  {
    if (v11)
    {
      sub_1B21E79E0(v11);
    }

    sub_1B21C9D20(&v12);

    v9 = v12;
    type metadata accessor for DatabaseRegionObserver();
    v10 = swift_allocObject();
    *(v10 + 40) = 0;
    *(v10 + 16) = v9;
    *(v10 + 24) = a2;
    *(v10 + 32) = a3;

    sub_1B2177C58();

    *a4 = v10;
    a4[1] = &off_1F296D0C0;
  }

  return result;
}

uint64_t DatabaseRegionObservation.publisher(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;
  *(a3 + 32) = v6;

  return swift_unknownObjectRetain();
}

BOOL sub_1B2192D40(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v11 = *(v4 + 16);

  v9 = DatabaseRegion.isModified(byEventsOfKind:)(a1, a2, a3, a4);

  return v9;
}

uint64_t sub_1B2192DB8(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v5 = a1[3];
    v6 = a1[4];
    sub_1B21139A0(a1, v5);
    v7 = *(v6 + 16);

    v8 = v7(v5, v6);
    v10 = v9;
    v11 = sub_1B2252220();
    v13 = sub_1B214A5A8(v11, v12, v8, v10, v3);
    v15 = v14;

    if (v13 != 1)
    {
      if (v15)
      {
        v16 = sub_1B21CA838(a1[6], v15);

        if ((v16 & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_10:
  *(v2 + 40) = 1;

  return sub_1B219296C();
}

uint64_t sub_1B2192EF0()
{
  if (*(v0 + 40) == 1)
  {
    *(v0 + 40) = 0;
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    return v1();
  }

  return result;
}

uint64_t sub_1B2192F30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1B2192F58()
{
  v0 = sub_1B2192F30();

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t DatabasePublishers.DatabaseRegion.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = _s26DatabaseRegionSubscriptionCMa();
  LOBYTE(v19[0]) = v12;
  v19[1] = v13;
  v19[2] = v14;
  (*(v6 + 16))(v9, a1, a2);
  swift_unknownObjectRetain();

  v16 = sub_1B2193100(v10, v11, v19, v9);
  v19[3] = v15;
  v19[4] = swift_getWitnessTable();
  v19[0] = v16;
  sub_1B2251FD0();
  return sub_1B2113208(v19);
}

char *sub_1B2193100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_1B21932B8(a1, a2, a3, a4);
}

__n128 sub_1B2193164@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v11 = _s26DatabaseRegionSubscriptionC16WaitingForDemandVMa();
  v12 = (a6 + *(v11 + 36));
  *v12 = a2;
  v12[1] = a3;
  v13 = a6 + *(v11 + 40);
  *v13 = v10;
  result = *(a4 + 8);
  *(v13 + 8) = result;
  return result;
}

uint64_t sub_1B2193218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = _s26DatabaseRegionSubscriptionC9ObservingVMa();
  v11 = (a6 + *(result + 36));
  *v11 = a2;
  v11[1] = a3;
  *(a6 + *(result + 40)) = a4;
  return result;
}

char *sub_1B21932B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v20 = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(*v4 + 88);
  v10 = _s26DatabaseRegionSubscriptionC5StateOMa();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = v7;
  LOBYTE(v7) = *a3;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  v16 = *(v15 + 112);
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v21[0] = v7;
  v22 = *(a3 + 8);
  sub_1B2193164(v19, a1, v20, v21, v8, v14);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 32))(&v4[*(*v4 + 104)], v14, v10);
  return v4;
}

uint64_t sub_1B21934A0(char *a1, void *a2)
{
  v72 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = _s26DatabaseRegionSubscriptionC9ObservingVMa();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v73 = v63 - v9;
  v69 = *(v4 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v8);
  ObjectType = v63 - v11;
  v12 = _s26DatabaseRegionSubscriptionC16WaitingForDemandVMa();
  v74 = *(v12 - 8);
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v63 - v14;
  v16 = _s26DatabaseRegionSubscriptionC5StateOMa();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v76 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v63 - v21;
  v23 = *(v3 + 104);
  swift_beginAccess();
  v79 = v17;
  (*(v17 + 16))(v22, &a1[v23], v16);
  v75 = v16;
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v25 = v71;
    v26 = *(v70 + 32);
    v27 = v73;
    v26(v73, v22, v71);
    v28 = *(v25 + 40);
    v29 = *&v27[v28];
    sub_1B2252030();
    v30 = sub_1B2252010();
    v31 = v75;
    if (v30)
    {
      goto LABEL_20;
    }

    sub_1B2252030();
    v32 = sub_1B2252010();
    v33 = sub_1B2252030();
    if (v32)
    {
      v27 = v73;
LABEL_19:
      *&v27[v28] = v33;
LABEL_20:
      v62 = v76;
      v26(v76, v27, v25);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v79 + 40))(&a1[v23], v62, v31);
      return swift_endAccess();
    }

    v61 = v72;
    result = sub_1B2252010();
    v27 = v73;
    if (result)
    {
      goto LABEL_16;
    }

    if (((v29 | v61) & 0x8000000000000000) == 0)
    {
      v33 = v29 + v61;
      if (!__OFADD__(v29, v61))
      {
        v25 = v71;
        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_16:
      v33 = sub_1B2252030();
      v25 = v71;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v66 = v23;
  v67 = v15;
  (*(v74 + 32))(v15, v22, v12);
  sub_1B2252030();
  v34 = v72;
  result = sub_1B2252010();
  v35 = v79;
  v36 = v5;
  v37 = v4;
  v38 = ObjectType;
  if ((result & 1) == 0)
  {
    if (v34 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!v34)
    {
      return (*(v74 + 8))(v67, v12);
    }
  }

  v39 = *(v69 + 16);
  v40 = v67;
  v41 = v76;
  v65 = v37;
  v42 = v36;
  v63[1] = v36;
  v39(ObjectType, v67, v37);
  v43 = &v40[*(v12 + 36)];
  v44 = *v43;
  v71 = v43[1];
  sub_1B2193218(v38, v44, v71, v34, v37, v41);
  v45 = v75;
  swift_storeEnumTagMultiPayload();
  v46 = v66;
  swift_beginAccess();
  v47 = *(v35 + 40);
  v79 = v35 + 40;
  swift_unknownObjectRetain();
  v64 = v47;
  v47(&a1[v46], v41, v45);
  swift_endAccess();
  v73 = v12;
  v48 = &v40[*(v12 + 40)];
  LODWORD(v70) = *v48;
  v49 = *(v48 + 2);
  v69 = *(v48 + 1);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = v65;
  v51[3] = v42;
  v51[4] = v50;
  ObjectType = swift_getObjectType();
  v72 = v63;
  MEMORY[0x1EEE9AC00](ObjectType);
  LOBYTE(v63[-6]) = v70;
  v63[-5] = v69;
  v63[-4] = v49;
  v63[-3] = sub_1B21955DC;
  v63[-2] = v51;
  v52 = v71;
  v70 = *(v71 + 64);

  v53 = sub_1B21619D8(qword_1EB7A1920, &qword_1B22595C0);
  v54 = v77;
  (v70)(&v78, sub_1B2195898, &v63[-8], v53, ObjectType, v52);
  v55 = (v74 + 8);

  if (v54)
  {
    v56 = v75;
    v57 = v76;
    swift_storeEnumTagMultiPayload();
    v58 = v66;
    swift_beginAccess();
    v64(&a1[v58], v57, v56);
    swift_endAccess();
    *&v78 = v54;
    v59 = v67;
    sub_1B2251FC0();

    return (*v55)(v59, v73);
  }

  else
  {
    v60 = *(a1 + 2);
    *(a1 + 1) = v78;
    swift_unknownObjectRelease();
    return (*v55)(v67, v73);
  }
}

uint64_t sub_1B2193C34(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B2193E94(a1);
  }

  return result;
}

void sub_1B2193C94()
{
  v1 = *(v0 + *(*v0 + 112));
  sub_1B21E8980(sub_1B2193D34, 0, sub_1B21955A4);
}

uint64_t sub_1B2193D4C(char *a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = _s26DatabaseRegionSubscriptionC5StateOMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *(a1 + 2);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v10 = *(*a1 + 104);
  swift_beginAccess();
  (*(v5 + 40))(&a1[v10], v8, v4);
  return swift_endAccess();
}

void sub_1B2193EC0(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  v6 = *(v3 + *(*v3 + 112));
  sub_1B21E8980(a2, 0, a3);
}

uint64_t sub_1B2193F54(uint64_t *a1, uint64_t a2)
{
  v56 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = _s26DatabaseRegionSubscriptionC5StateOMa();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v58 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v57 = v4;
  v55 = v5;
  v15 = _s26DatabaseRegionSubscriptionC9ObservingVMa();
  v61 = *(v15 - 8);
  v16 = *(v61 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = v3;
  v22 = v7;
  v23 = *(v21 + 104);
  swift_beginAccess();
  v24 = *(v7 + 16);
  v59 = a1;
  v60 = v23;
  v24(v14, a1 + v23, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v22 + 8))(v14, v6);
  }

  v50 = v22;
  v51 = v6;
  v25 = v61;
  v26 = v61 + 32;
  v27 = *(v61 + 32);
  v27(v20, v14, v15);
  v52 = v15;
  v28 = *&v20[*(v15 + 40)];
  v29 = sub_1B2252020();
  sub_1B2252030();
  if (sub_1B2252010())
  {
    sub_1B2252030();
    if (sub_1B2252010())
    {
      return (*(v25 + 8))(v20, v52);
    }
  }

  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    if ((sub_1B2252010() & 1) != 0 || v29 >= v28)
    {
      return (*(v25 + 8))(v20, v52);
    }
  }

  v48 = v27;
  v49 = v26;
  v30 = v25;
  v62 = v56;
  v31 = sub_1B2251FE0();
  v32 = v59;
  v33 = v58;
  v34 = v51;
  v24(v58, v59 + v60, v51);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v30 + 8))(v20, v52);
    return (*(v50 + 8))(v33, v34);
  }

  v57 = v20;
  v35 = v54;
  v36 = v52;
  v48(v54, v33, v52);
  v37 = *(v36 + 40);
  v38 = *&v35[v37];
  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    v39 = v37;
    sub_1B2252030();
    v40 = sub_1B2252010();
    v41 = sub_1B2252030();
    if (v40)
    {
      v37 = v39;
    }

    else
    {
      result = sub_1B2252010();
      v37 = v39;
      if (result)
      {
        goto LABEL_18;
      }

      if ((v38 | v31) < 0)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v41 = v38 + v31;
      if (__OFADD__(v38, v31))
      {
LABEL_18:
        v41 = sub_1B2252030();
      }

      else if (v41 < 0)
      {
LABEL_34:
        __break(1u);
        return result;
      }
    }

    *&v35[v37] = v41;
    v38 = v41;
  }

  v43 = v50;
  sub_1B2252030();
  if ((sub_1B2252010() & 1) == 0)
  {
    sub_1B2252030();
    if (sub_1B2252010())
    {
      v44 = sub_1B2252030();
      (*(v30 + 8))(v57, v36);
LABEL_28:
      *&v35[v37] = v44;
      goto LABEL_29;
    }

    result = (*(v30 + 8))(v57, v36);
    if (v38 < 0)
    {
      __break(1u);
    }

    else if (v38)
    {
      v44 = v38 - 1;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_33;
  }

  (*(v30 + 8))(v57, v36);
LABEL_29:
  v45 = v53;
  v48(v53, v35, v36);
  swift_storeEnumTagMultiPayload();
  v46 = v60;
  swift_beginAccess();
  (*(v43 + 40))(v32 + v46, v45, v34);
  return swift_endAccess();
}

char *sub_1B21944B0()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = _s26DatabaseRegionSubscriptionC5StateOMa();
  (*(*(v6 - 8) + 8))(&v0[v3], v6);

  return v0;
}

uint64_t sub_1B2194574()
{
  v0 = sub_1B21944B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B2194634(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 32); ; i += 3)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:

  return v4;
}

void sub_1B21946B0()
{
  sub_1B21173C4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B219560C(v0);
    v0 = v5;
  }

  if (*(v0 + 16) <= v1)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1B2112948();
    sub_1B2160924(v2, v3, v4);
    sub_1B211505C();
  }
}

void sub_1B2194714()
{
  sub_1B21173C4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B2195620(v0);
    v0 = v9;
  }

  v3 = *(v0 + 16);
  if (v3 <= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v3 - 1;
    v5 = v3 - 1 - v2;
    v6 = v0 + 16 * v2;
    v7 = *(v6 + 32);
    v8 = *(v6 + 40);
    sub_1B215A618((v6 + 48), v5, (v6 + 32));
    *(v0 + 16) = v4;
    *v1 = v0;
  }
}

uint64_t sub_1B2194794()
{
  sub_1B21173C4();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v0 & 0x8000000000000000) != 0 || (v0 & 0x4000000000000000) != 0)
  {
    result = sub_1B2195638(v0);
    v0 = result;
  }

  v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - v2;
    v7 = (v0 & 0xFFFFFFFFFFFFFF8) + 8 * v2;
    v8 = *(v7 + 0x20);
    sub_1B224B140((v7 + 40), v6, (v7 + 32));
    *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    *v1 = v0;
    return v8;
  }

  return result;
}

void sub_1B2194818()
{
  sub_1B21173C4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B219569C(v0);
    v0 = v5;
  }

  if (*(v0 + 16) <= v1)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_1B2112948();
    sub_1B224B150(v2, v3, v4);
    sub_1B211505C();
  }
}

uint64_t sub_1B21948C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B2194908(uint64_t result, int a2, int a3)
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

uint64_t sub_1B219497C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B21949BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B2194A14(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = _s26DatabaseRegionSubscriptionC5StateOMa();
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

uint64_t sub_1B2194AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = _s26DatabaseRegionSubscriptionC16WaitingForDemandVMa();
  if (v4 <= 0x3F)
  {
    result = _s26DatabaseRegionSubscriptionC9ObservingVMa();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unsigned __int8 *sub_1B2194B68(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v3 = (((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
  v5 = v3 + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_25:
    v13 = result[v5];
    if (v13 >= 3)
    {
      return ((v13 ^ 0xFF) + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = v5 | 1;
    if ((v5 | 1) <= 3)
    {
      v7 = ((a2 + 2) >> 8) + 1;
    }

    else
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v8 = 1;
    }

    if (v7 >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    switch(v9)
    {
      case 1:
        v10 = result[v6];
        if (!result[v6])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v10 = *&result[v6];
        if (!*&result[v6])
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v10 = *&result[v6];
        if (!v10)
        {
          goto LABEL_25;
        }

LABEL_21:
        v11 = (v10 - 1) << (8 * v6);
        if (v6 <= 3)
        {
          v12 = *result;
        }

        else
        {
          v11 = 0;
          v12 = *result;
        }

        result = ((v12 | v11) + 254);
        break;
      default:
        goto LABEL_25;
    }
  }

  return result;
}

void sub_1B2194C6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 24;
  v7 = v5 + 8;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  v8 = v7 | 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 + 2) >> 8) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    v13 = (a2 - 254) >> 8;
    bzero(a1, v7 | 1);
    if (v8 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v12;
    }

    else
    {
      *a1 = v12;
    }

    switch(v11)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
LABEL_36:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_36;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1B2194E18(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}