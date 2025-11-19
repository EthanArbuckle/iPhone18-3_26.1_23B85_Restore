void sub_1B2194F5C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
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
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
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
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1B219513C()
{
  result = qword_1EB7A1AA8[0];
  if (!qword_1EB7A1AA8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EB7A1AA8);
  }

  return result;
}

unint64_t sub_1B21951A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1B219513C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B219522C(uint64_t result, unsigned int a2, uint64_t a3)
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
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
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

void sub_1B2195370(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
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

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
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
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24);
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
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21955DC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1B2193C34(a1);
}

void *sub_1B21955E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  return sub_1B2192BE0(*(v1 + 24), *(v1 + 40), *(v1 + 48), a1);
}

uint64_t sub_1B2195638(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B2252C20();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1B2252D10();
}

uint64_t sub_1B2195714(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 40);
  v5 = sub_1B2116B08(v4);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B27427E0](i, v4);
      v8 = result;
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v9 = sub_1B2176B68();
    if (v9)
    {
      v10 = v9;
      swift_unknownObjectRelease();
      if (v10 == a1)
      {
        break;
      }
    }
  }

  *(v8 + 17) = 1;
  swift_beginAccess();
  v11 = *(a2 + 48);

  sub_1B2194634(v11, v8);
  if ((v12 & 1) == 0)
  {
    sub_1B21946B0();
    v14 = v13;

    sub_1B211A378(v14);
  }

  swift_endAccess();
  sub_1B2175F98();
}

uint64_t ValueObservation.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(v16, v5, sizeof(v16));
  v11 = swift_allocObject();
  v12 = *(a3 + 24);
  v11[2] = *(a3 + 16);
  v11[3] = a4;
  v11[4] = v12;
  v11[5] = a1;
  v11[6] = a2;
  v13 = type metadata accessor for ValueReducers.Map();

  WitnessTable = swift_getWitnessTable();
  sub_1B21AC6AC(sub_1B2195ACC, v11, a3, v13, WitnessTable, a5);
}

uint64_t sub_1B21959CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  sub_1B2195AF4(v11, a2, a3, a4, a5);
}

uint64_t sub_1B2195ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1B21959CC(a1, v2[5], v2[6], v2[2], a2);
}

uint64_t sub_1B2195AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for ValueReducers.Map();
  v9 = (a5 + *(result + 44));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t ValueReducers.Map._value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v6 = *(*(a2 + 32) + 8);
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1B2252B00();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v24);
  v13 = &v24 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v24 - v16;
  (*(v6 + 32))(a1, v7, v6);
  if (sub_1B2122A98(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v13, v24);
    v18 = 1;
    v19 = v25;
  }

  else
  {
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    v20 = v3 + *(a2 + 44);
    v21 = *(v20 + 8);
    v22 = v25;
    (*v20)(v17);
    (*(v14 + 8))(v17, AssociatedTypeWitness);
    v18 = 0;
    v19 = v22;
  }

  return sub_1B21117B4(v19, v18, 1, *(a2 + 24));
}

uint64_t sub_1B2195DF0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B2195E48(uint64_t a1)
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

uint64_t sub_1B2195ED0(uint64_t result, unsigned int a2, uint64_t a3)
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

void sub_1B219600C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

_BYTE *sub_1B2196240(_BYTE *result, int a2, int a3)
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

void sub_1B2196360()
{
  sub_1B2111640();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  memcpy(__dst, v0, 0xA2uLL);
  sub_1B211E17C(v0, __src, v6, v4);
  sub_1B21366E4(__dst, __src);
  sub_1B2137278();
  v15 = v14;
  memcpy(v27, __src, sizeof(v27));
  v28 = v9;
  v29 = v15;
  v16 = sub_1B2137488(v11);
  if (v1)
  {
    sub_1B2142BCC(v27);
  }

  else
  {
    v17 = v16;
    v24 = v4;
    type metadata accessor for StatementArgumentsSink();
    swift_allocObject();

    v18 = sub_1B2114D98(0);
    type metadata accessor for SQLGenerationContext();
    swift_initStackObject();

    v20 = sub_1B2117164(v19, v18, MEMORY[0x1E69E7CC0]);
    sub_1B21425A4(v20, __src);

    *(v13 + 40) = 0;
    *(v13 + 24) = 0u;
    *(v13 + 8) = 0u;
    *v13 = v17;
    sub_1B2142B5C(__src, v13 + 8);
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    sub_1B2137278();
    v22 = v21;
    sub_1B2142BCC(v27);
    if (*(v22 + 16))
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      memcpy((v23 + 24), __dst, 0xA2uLL);
      *(v13 + 48) = v30;
      *(v13 + 56) = v23;
      sub_1B211E17C(v7, __src, v6, v24);
    }

    else
    {
    }
  }

  sub_1B2112FDC();
}

uint64_t Table.tableName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Table.tableName.setter()
{
  sub_1B211D530();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Table.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Table<A>.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Table.databaseRegion(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B21C8BE0();
}

uint64_t Table.none()()
{
  sub_1B211566C();
  Table.all()(v0, v1);
  sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  v3 = FilteredRequest.none()(InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>);
  sub_1B2116508(v3, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  sub_1B211283C();
  v12 = *(v11 + 8);
  v21 = sub_1B2118220(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  return v22(v21);
}

void Table.select(sql:arguments:)()
{
  sub_1B2111F14();
  sub_1B2115E74(v5, v6, v7, v8, v9, v10, v11, v12, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v29[17], v29[18], v29[19], v29[20], __src[0], __src[1]);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v13 = sub_1B2122478();
  *(v13 + 16) = xmmword_1B22546B0;
  *(v13 + 56) = &type metadata for SQL;
  *(v13 + 64) = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v14 = sub_1B2117BF4();
  sub_1B2114258(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  __src[0] = v4;
  __src[1] = v1;
  __src[2] = v3;
  __src[3] = v2;
  sub_1B2114CC4(__src);
  memcpy((v0 + 32), __src, 0xB8uLL);
  *(v13 + 32) = v0;
  sub_1B211A260();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();

  v24 = sub_1B2115B7C();
  SelectionRequest.select(_:)(v24);

  memcpy(v31, v29, 0xA2uLL);
  sub_1B2111FD0();
  (*(v25 + 8))(v31, InterfaceRequest);
  sub_1B2111588();
}

uint64_t Table.select(literal:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1B211566C();
  Table.all()(v2, v3);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v4 = sub_1B2122478();
  *(v4 + 16) = xmmword_1B22546B0;
  *(v4 + 56) = &type metadata for SQL;
  *(v4 + 64) = &protocol witness table for SQL;
  *(v4 + 32) = v1;
  v5 = sub_1B2124B94();

  v6 = sub_1B213CDD4();
  SelectionRequest.select(_:)(v6);

  sub_1B2116508(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70);
  sub_1B2111808(v5);
  v16 = *(v15 + 8);
  v25 = sub_1B219AABC(v17, v18, v19, v20, v21, v22, v23, v24, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
  return v26(v25);
}

void Table.select<A>(sql:arguments:as:)()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v13 = *v11;
  v12 = v11[1];
  sub_1B211AD24();
  Table.all()(v14, v15);
  sub_1B21619D8(&qword_1EB7A10A8, &unk_1B225ECC0);
  v16 = sub_1B2122478();
  *(v16 + 16) = xmmword_1B22546B0;
  *(v16 + 56) = &type metadata for SQL;
  *(v16 + 64) = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v17 = sub_1B2117BF4();
  sub_1B2114258(v17, v18, v19, v20, v21, v22, v23, v24, v25);
  __src[0] = v10;
  __src[1] = v8;
  __src[2] = v13;
  __src[3] = v12;
  sub_1B2114CC4(__src);
  memcpy((v0 + 32), __src, 0xB8uLL);
  *(v16 + 32) = v0;
  v26 = *(v4 + 16);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();

  QueryInterfaceRequest.select<A>(_:as:)(v16, v6, InterfaceRequest, v2);

  memcpy(v31, v29, 0xA2uLL);
  sub_1B2111808(InterfaceRequest);
  (*(v28 + 8))(v31, InterfaceRequest);
  sub_1B2111588();
}

uint64_t sub_1B2196CF0()
{
  sub_1B219AAA4();
  v2 = v1;
  sub_1B211566C();
  Table.all()(v3, v4);
  v5 = sub_1B2124B94();
  sub_1B21172C0();
  WitnessTable = swift_getWitnessTable();
  v7 = v0(v2, v5, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>, WitnessTable);
  sub_1B2116508(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70);
  sub_1B2111808(v5);
  v16 = *(v15 + 8);
  v25 = sub_1B219AABC(v17, v18, v19, v20, v21, v22, v23, v24, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
  return v26(v25);
}

uint64_t Table.filter(sql:arguments:)()
{
  sub_1B2117A7C();
  v4 = *v3;
  v5 = v3[1];
  v6 = v0[1];
  v9[5] = *v0;
  v9[6] = v6;
  v9[3] = &type metadata for SQL;
  v9[4] = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v7 = sub_1B2117BF4();
  *(v7 + 16) = xmmword_1B22546B0;
  __src[0] = v2;
  __src[1] = v1;
  __src[2] = v4;
  __src[3] = v5;
  sub_1B2114CC4(__src);
  memcpy((v7 + 32), __src, 0xB8uLL);
  v9[0] = v7;

  Table.filter(_:)();
  return sub_1B2113208(v9);
}

uint64_t Table.filter(literal:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  sub_1B219AA80(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13[0], v13[1], v13[2], v14, v15, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __dst[0], __dst[1]);
  v14 = &type metadata for SQL;
  v15 = &protocol witness table for SQL;
  v13[0] = v8;
  sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();

  FilteredRequest.filter(_:)(v13, InterfaceRequest, &protocol witness table for QueryInterfaceRequest<A>);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B211283C();
  (*(v10 + 8))(__dst, InterfaceRequest);
  return sub_1B2113208(v13);
}

uint64_t Table.orderByPrimaryKey()()
{
  sub_1B211566C();
  Table.all()(v0, v1);
  sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest();
  v2 = TableRequest<>.orderByPrimaryKey()();
  sub_1B2116508(v2, v3, v4, v5, v6, v7, v8, v9, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65);
  sub_1B211283C();
  v11 = *(v10 + 8);
  v20 = sub_1B2118220(v12, v13, v14, v15, v16, v17, v18, v19, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
  return v21(v20);
}

void Table.order(sql:arguments:)()
{
  sub_1B2111F14();
  sub_1B2115E74(v5, v6, v7, v8, v9, v10, v11, v12, v25, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v28[17], v28[18], v28[19], v28[20], __src[0], __src[1]);
  sub_1B21619D8(&qword_1EB7A10E0, &qword_1B2254920);
  v13 = sub_1B2122478();
  *(v13 + 16) = xmmword_1B22546B0;
  *(v13 + 56) = &type metadata for SQL;
  *(v13 + 64) = &protocol witness table for SQL;
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v14 = sub_1B2117BF4();
  sub_1B2114258(v14, v15, v16, v17, v18, v19, v20, v21, v22);
  __src[0] = v4;
  __src[1] = v1;
  __src[2] = v3;
  __src[3] = v2;
  sub_1B2114CC4(__src);
  memcpy((v0 + 32), __src, 0xB8uLL);
  *(v13 + 32) = v0;
  sub_1B211A260();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();

  sub_1B2115B7C();
  OrderedRequest.order(_:)();

  memcpy(v30, v28, 0xA2uLL);
  sub_1B2111FD0();
  (*(v24 + 8))(v30, InterfaceRequest);
  sub_1B2111588();
}

uint64_t Table.order(literal:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1B211566C();
  Table.all()(v2, v3);
  sub_1B21619D8(&qword_1EB7A10E0, &qword_1B2254920);
  v4 = sub_1B2122478();
  *(v4 + 16) = xmmword_1B22546B0;
  *(v4 + 56) = &type metadata for SQL;
  *(v4 + 64) = &protocol witness table for SQL;
  *(v4 + 32) = v1;
  v5 = sub_1B2124B94();

  sub_1B213CDD4();
  OrderedRequest.order(_:)();

  sub_1B2116508(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
  sub_1B2111808(v5);
  v15 = *(v14 + 8);
  v24 = sub_1B219AABC(v16, v17, v18, v19, v20, v21, v22, v23, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70);
  return v25(v24);
}

uint64_t Table.aliased(_:)()
{
  sub_1B211D530();
  sub_1B211566C();
  Table.all()(v0, v1);
  sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest();
  v2 = sub_1B21115BC();
  v4 = QueryInterfaceRequest.aliased(_:)(v2, v3);
  sub_1B2116508(v4, v5, v6, v7, v8, v9, v10, v11, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
  sub_1B211283C();
  v13 = *(v12 + 8);
  v22 = sub_1B2118220(v14, v15, v16, v17, v18, v19, v20, v21, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
  return v23(v22);
}

uint64_t Table.with<A>(_:)()
{
  sub_1B219AAA4();
  v3 = v2;
  memcpy(v9, v4, 0xBBuLL);
  v5 = v0[1];
  __dst[0] = *v0;
  __dst[1] = v5;
  Table.all()(v1, __src);
  v6 = sub_1B2124B94();
  QueryInterfaceRequest.with<A>(_:)(v9, v6, v3);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808(v6);
  return (*(v7 + 8))(__dst, v6);
}

uint64_t Table<A>.filter<A>(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B211AD24();
  Table.all()(v7, v8);
  sub_1B211A260();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  sub_1B21172C0();
  swift_getWitnessTable();
  v10 = sub_1B2115B7C();
  TableRequest<>.filter<A>(ids:)(v10, v11, a3, v12, v13, v14, a5);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111FD0();
  return (*(v15 + 8))(__dst, InterfaceRequest);
}

uint64_t Table<A>.selectID()()
{
  sub_1B219AAA4();
  sub_1B211566C();
  Table.all()(v2, v3);
  sub_1B2122988();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  Interface = QueryInterfaceRequest<A>.selectID()(InterfaceRequest, v1, v0);
  sub_1B2116508(Interface, v6, v7, v8, v9, v10, v11, v12, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
  sub_1B21142DC();
  v14 = *(v13 + 8);
  v23 = sub_1B2115B70(v15, v16, v17, v18, v19, v20, v21, v22, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
  return v24(v23);
}

uint64_t Table<A>.filter<A>(ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B211AD24();
  Table.all()(v14, v15);
  v16 = *(a2 + 16);
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  sub_1B21172C0();
  WitnessTable = swift_getWitnessTable();
  TableRequest<>.filter<A>(ids:)(a1, InterfaceRequest, a3, &protocol witness table for QueryInterfaceRequest<A>, &protocol witness table for QueryInterfaceRequest<A>, WitnessTable, a5, a4, a7, a6);
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B2111808(InterfaceRequest);
  return (*(v19 + 8))(__dst, InterfaceRequest);
}

uint64_t Table<A>.fetchCursor(_:)()
{
  return sub_1B2197BBC();
}

{
  return sub_1B2197BBC();
}

uint64_t Table<A>.fetchAll(_:)()
{
  return sub_1B2197BBC();
}

{
  return sub_1B2197BBC();
}

uint64_t Table<A>.fetchOne(_:)()
{
  return sub_1B2197C78();
}

{
  return sub_1B2197C78();
}

uint64_t Table<A>.fetchSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchSet(_:));
}

{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchSet(_:));
}

void (*sub_1B2197A70(uint64_t a1, void (*a2)(uint64_t, char *)))(uint64_t, char *)
{
  v6 = *v2;
  v5 = v2[1];

  v7 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  v9 = v8;
  v11 = v10;
  sub_1B21359AC();
  v44 = v5;
  v45 = 0;
  v46 = sub_1B2151AA4;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = v7;
  v51 = 0;
  v52 = v9;
  v53 = v11;
  v54 = v12;
  v55 = v13;
  v56 = 0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  v61 = 1;
  sub_1B211D5DC(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22[0], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v6);
  a2(a1, v22);
  sub_1B2115BF0();
  sub_1B2137224(__src);
  return a2;
}

uint64_t sub_1B2197BBC()
{
  sub_1B219AA68();
  v3 = sub_1B2115074(v1, v2);
  Table.all()(v3, v4);
  sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest();
  sub_1B2112968();
  sub_1B2114310();
  v5 = sub_1B2126008();
  v6 = v0(v5);
  sub_1B21142EC(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  sub_1B211283C();
  v15 = *(v14 + 8);
  v24 = sub_1B2114028(v16, v17, v18, v19, v20, v21, v22, v23, v28);
  v25(v24);
  return sub_1B212CDA8();
}

uint64_t sub_1B2197C78()
{
  sub_1B219AA68();
  v3 = sub_1B2115074(v1, v2);
  Table.all()(v3, v4);
  sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest();
  sub_1B2112968();
  sub_1B2114310();
  v5 = sub_1B2126008();
  v6 = v0(v5);
  sub_1B211608C(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  sub_1B211283C();
  v15 = *(v14 + 8);
  v24 = sub_1B2114028(v16, v17, v18, v19, v20, v21, v22, v23, v28);
  return v25(v24);
}

uint64_t Table<A>.fetchCursor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchCursor(_:));
}

{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchCursor(_:));
}

uint64_t Table<A>.fetchAll(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchAll(_:));
}

{
  return sub_1B2197E48(a1, a2, a3, a4, FetchRequest<>.fetchAll(_:));
}

uint64_t Table<A>.fetchOne(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1B2197F10(a1, a2, a3, a4, FetchRequest<>.fetchOne(_:));
}

{
  return sub_1B2197F10(a1, a2, a3, a4, FetchRequest<>.fetchOne(_:));
}

uint64_t Table<A>.fetchSet(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1B219802C(a1, a2, a3, a4, a5, FetchRequest<>.fetchSet(_:));
}

{
  return sub_1B219802C(a1, a2, a3, a4, a5, FetchRequest<>.fetchSet(_:));
}

uint64_t sub_1B2197E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1B2121F58();
  v8 = sub_1B2115074(v6, v7);
  Table.all()(v8, v9);
  sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest();
  sub_1B2112968();
  sub_1B2114310();
  v10 = sub_1B2116A10();
  v11 = a5(v10);
  sub_1B21142EC(v11, v12, v13, v14, v15, v16, v17, v18, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  sub_1B211283C();
  v20 = *(v19 + 8);
  v29 = sub_1B2114028(v21, v22, v23, v24, v25, v26, v27, v28, v33);
  v30(v29);
  return sub_1B212CDA8();
}

uint64_t sub_1B2198244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_BYTE *, uint64_t, uint64_t, void *, void, uint64_t, double))
{
  v13 = *a4;
  v14 = a4[1];
  v15 = sub_1B213574C();
  v17[0] = v13;
  v17[1] = v14;
  a8(v18, a2, a3, v17, *(a5 + 16), a6, v15);

  return sub_1B2181698(v13);
}

uint64_t sub_1B2198344(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(_BYTE *, uint64_t, uint64_t, void *, void, uint64_t, double))
{
  v12 = a1[1];
  v13 = *a4;
  v14 = a4[1];
  v17[2] = *a1;
  v17[3] = v12;
  v15 = sub_1B21518F0(v18);
  v17[0] = v13;
  v17[1] = v14;
  a7(v18, a2, a3, v17, *(a5 + 16), a6, v15);

  return sub_1B2181698(v13);
}

uint64_t Table.association<A>(to:on:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  type metadata accessor for CommonTableExpression();
  sub_1B21518F0(__srca);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *&v12 = sub_1B219A420;
  *(&v12 + 1) = v9;
  v13 = 0;
  v14 = 0;
  v15 = 0x80;
  v10 = *(a4 + 16);
  sub_1B21D92BC(__srca, &v12, a5);
}

uint64_t sub_1B21984DC@<X0>(void (*a1)(uint64_t *__return_ptr)@<X2>, void *a2@<X8>)
{
  a1(v6);
  v3 = v7;
  v4 = v8;
  sub_1B21139A0(v6, v7);
  (*(v4 + 8))(__src, v3, v4);
  nullsub_1(__src);
  memcpy(a2, __src, 0xA3uLL);
  return sub_1B2113208(v6);
}

uint64_t Table.association<A>(to:)()
{
  sub_1B219AAA4();
  v2 = v1;
  memcpy(__dst, v3, sizeof(__dst));
  type metadata accessor for CommonTableExpression();
  sub_1B21518F0(__src);
  *&v6 = sub_1B21C5B28;
  *(&v6 + 1) = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0x80;
  v4 = *(v0 + 16);
  return sub_1B21D92BC(__src, &v6, v2);
}

void *Table.hasMany<A, B>(_:through:using:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B2117A5C();
  v19 = sub_1B2114758(v11, v12, v13, v14, v15, v16, v17, v18);
  v21 = v20(v19);
  v22 = sub_1B21145AC(v21, *(a9 + 16));
  v23(v22);
  sub_1B216CEF8(v39);
  sub_1B212D6B0();
  swift_getAssociatedTypeWitness();
  sub_1B211FDFC();
  result = sub_1B21E1C58(v24, v25);
  if (v9)
  {
    sub_1B212607C();
    type metadata accessor for HasManyThroughAssociation();
    WitnessTable = swift_getWitnessTable();
    sub_1B2113B34(WitnessTable, v28, v29, v30, v31, v32, v33, v34, v37, v38);
    AssociationToMany.forKey(_:)(v35, v36);
  }

  else
  {
    *v10 = v39;
  }

  return result;
}

void *Table.hasOne<A, B>(_:through:using:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B2117A5C();
  v12 = *(a10 + 8);
  v21 = sub_1B2114758(v13, v14, v15, v16, v17, v18, v19, v20);
  v23 = v22(v21);
  v24 = sub_1B21145AC(v23, *(*(a9 + 8) + 16));
  v25(v24);
  sub_1B216CEF8(v41);
  sub_1B212D6B0();
  swift_getAssociatedTypeWitness();
  sub_1B211FDFC();
  result = sub_1B21E1C58(v26, v27);
  if (v10)
  {
    sub_1B212607C();
    type metadata accessor for HasOneThroughAssociation();
    WitnessTable = swift_getWitnessTable();
    sub_1B2113B34(WitnessTable, v30, v31, v32, v33, v34, v35, v36, v39, v40);
    AssociationToOne.forKey(_:)(v37, v38);
  }

  else
  {
    *v11 = v41;
  }

  return result;
}

uint64_t sub_1B21989E8()
{
  sub_1B211D530();
  sub_1B211566C();
  Table.all()(v0, v1);
  sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest();
  sub_1B211508C();
  v2 = sub_1B21115BC();
  v5 = DerivableRequest.annotated(with:)(v2, v3, v4);
  sub_1B2116508(v5, v6, v7, v8, v9, v10, v11, v12, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
  sub_1B211283C();
  v14 = *(v13 + 8);
  v23 = sub_1B2118220(v15, v16, v17, v18, v19, v20, v21, v22, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
  return v24(v23);
}

uint64_t Table.having(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[2];
  sub_1B219AA80(a1, a2, a3, a4, a5, a6, a7, a8, *a1, a1[1], v12, v13, v14, v15, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __dst[0], __dst[1]);
  sub_1B2115BE4();
  type metadata accessor for QueryInterfaceRequest();
  sub_1B211508C();
  DerivableRequest.having(_:)();
  memcpy(__dst, __src, 0xA2uLL);
  sub_1B211283C();
  return (*(v10 + 8))(__dst, a2);
}

void (*sub_1B2198B50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t)))(uint64_t, uint64_t)
{
  v5 = sub_1B2115074(a1, a2);
  Table.all()(v5, v6);
  sub_1B2122988();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  a3(a1, InterfaceRequest);
  sub_1B2115BF0();
  sub_1B211608C(v8, v9, v10, v11, v12, v13, v14, v15, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
  sub_1B21142DC();
  v17 = *(v16 + 8);
  v26 = sub_1B2112FF4(v18, v19, v20, v21, v22, v23, v24, v25, v30);
  v27(v26);
  return a3;
}

void Table.exists<A>(_:key:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v22 = v9;
  v10 = sub_1B2252B00();
  sub_1B21115E0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23[-1] - v16;
  v18 = v0[1];
  v23[0] = *v0;
  v23[1] = v18;
  sub_1B2111808(v4);
  (*(v19 + 16))(v17, v8, v4);
  sub_1B21117B4(v17, 0, 1, v4);
  Table.filter<A>(key:)(v24, v17, v6, v4, v2);
  (*(v12 + 8))(v17, v10);
  sub_1B211A260();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  QueryInterfaceRequest.isEmpty(_:)(v22, InterfaceRequest);
  memcpy(v23, v24, 0xA2uLL);
  sub_1B2111FD0();
  (*(v21 + 8))(v23, InterfaceRequest);
  sub_1B2112FDC();
}

uint64_t Table<A>.exists(_:id:)()
{
  sub_1B219AAB0();
  v3 = sub_1B2115074(v1, v2);
  Table<A>.filter(id:)(v3, v4, v5, v6);
  sub_1B2122988();
  type metadata accessor for QueryInterfaceRequest();
  v7 = sub_1B2115680();
  v9 = QueryInterfaceRequest.isEmpty(_:)(v7, v8);
  if (v0)
  {
    sub_1B211608C(v9, v10, v11, v12, v13, v14, v15, v16, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    sub_1B21142DC();
    v18 = *(v17 + 8);
    v27 = sub_1B2112FF4(v19, v20, v21, v22, v23, v24, v25, v26, v45);
    v28(v27);
  }

  else
  {
    v30 = v9;
    sub_1B211608C(v9, v10, v11, v12, v13, v14, v15, v16, v44, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    sub_1B21142DC();
    v32 = *(v31 + 8);
    v41 = sub_1B2112FF4(v33, v34, v35, v36, v37, v38, v39, v40, v46);
    v42(v41);
    v29 = v30 ^ 1;
  }

  return sub_1B211D8B0(v29);
}

{
  sub_1B219AAB0();
  v3 = sub_1B2115074(v1, v2);
  Table<A>.filter(id:)(v3, v4, v5, v6, v7);
  sub_1B2122988();
  type metadata accessor for QueryInterfaceRequest();
  v8 = sub_1B2115680();
  v10 = QueryInterfaceRequest.isEmpty(_:)(v8, v9);
  if (v0)
  {
    sub_1B211608C(v10, v11, v12, v13, v14, v15, v16, v17, v45, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
    sub_1B21142DC();
    v19 = *(v18 + 8);
    v28 = sub_1B2112FF4(v20, v21, v22, v23, v24, v25, v26, v27, v46);
    v29(v28);
  }

  else
  {
    v31 = v10;
    sub_1B211608C(v10, v11, v12, v13, v14, v15, v16, v17, v45, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
    sub_1B21142DC();
    v33 = *(v32 + 8);
    v42 = sub_1B2112FF4(v34, v35, v36, v37, v38, v39, v40, v41, v47);
    v43(v42);
    v30 = v31 ^ 1;
  }

  return sub_1B211D8B0(v30);
}

uint64_t Table.exists(_:key:)()
{
  sub_1B219AAB0();
  sub_1B2115074(v1, v2);
  Table.filter(key:)();
  sub_1B2122988();
  type metadata accessor for QueryInterfaceRequest();
  v3 = sub_1B2115680();
  v5 = QueryInterfaceRequest.isEmpty(_:)(v3, v4);
  if (v0)
  {
    sub_1B211608C(v5, v6, v7, v8, v9, v10, v11, v12, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_1B21142DC();
    v14 = *(v13 + 8);
    v23 = sub_1B2112FF4(v15, v16, v17, v18, v19, v20, v21, v22, v41);
    v24(v23);
  }

  else
  {
    v26 = v5;
    sub_1B211608C(v5, v6, v7, v8, v9, v10, v11, v12, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    sub_1B21142DC();
    v28 = *(v27 + 8);
    v37 = sub_1B2112FF4(v29, v30, v31, v32, v33, v34, v35, v36, v42);
    v38(v37);
    v25 = v26 ^ 1;
  }

  return sub_1B211D8B0(v25);
}

void Table.deleteAll<A>(_:keys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  a19 = v21;
  a20 = v22;
  v40 = v24;
  v41 = v23;
  v26 = v25;
  sub_1B21115E0();
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = *v20;
  v32 = v20[1];
  (*(v33 + 16))(&v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  v34 = sub_1B22526C0();
  v43[0] = v34;
  sub_1B212607C();
  v35 = sub_1B22526A0();
  sub_1B2111968();
  swift_getWitnessTable();
  if (sub_1B2252900())
  {
  }

  else
  {
    v42[0] = v31;
    v42[1] = v32;
    a10 = v34;
    v36 = sub_1B212CD80();
    Table.filter<A>(keys:)(v43, &a10, v26, v35, v36, v40);

    sub_1B211A260();
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
    QueryInterfaceRequest.deleteAll(_:)();
    memcpy(v42, v43, 0xA2uLL);
    sub_1B2111FD0();
    (*(v38 + 8))(v42, InterfaceRequest);
  }

  sub_1B212CDA8();
  sub_1B2112FDC();
}

uint64_t Table<A>.deleteAll<A>(_:ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  v12 = v6[1];
  if ((sub_1B2252850() & 1) == 0)
  {
    Table<A>.filter<A>(ids:)(a2, a3, a4, a5, a6);
    sub_1B211A260();
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
    v15 = QueryInterfaceRequest.deleteAll(_:)();
    sub_1B211D5DC(v15, v16, v17, v18, v19, v20, v21, v22, a1, v13, v12, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    sub_1B21142DC();
    (*(v23 + 8))(__dst, InterfaceRequest);
  }

  return sub_1B2122C74();
}

BOOL Table<A>.deleteOne(_:id:)()
{
  sub_1B2135644();
  v4 = v3;
  v6 = v5;
  v21 = *v0;
  v22 = v0[1];
  v8 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B2152D64(AssociatedTypeWitness, AssociatedTypeWitness);
  sub_1B212348C(v10);
  v12 = v11;
  v14 = *(v13 + 72);
  v15 = *(v11 + 80);
  sub_1B211AD38();
  v16 = sub_1B22525B0();
  (*(v12 + 16))(v17, v4, AssociatedTypeWitness);
  sub_1B2152E00();
  v23 = v16;
  sub_1B212607C();
  v18 = sub_1B22526A0();
  sub_1B2111968();
  WitnessTable = swift_getWitnessTable();
  Table<A>.deleteAll<A>(_:ids:)(v6, &v23, v2, v18, v1, WitnessTable);
  sub_1B2115BF0();

  return sub_1B2113158();
}

uint64_t Table<A>.deleteAll<A>(_:ids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *v8;
  v15 = v8[1];
  if ((sub_1B2252850() & 1) == 0)
  {
    Table<A>.filter<A>(ids:)(a2, a3, a4, a5, a6, a7, a8);
    sub_1B211A260();
    InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
    QueryInterfaceRequest.deleteAll(_:)();
    memcpy(__dst, __src, 0xA2uLL);
    sub_1B21142DC();
    (*(v18 + 8))(__dst, InterfaceRequest);
  }

  return sub_1B2122C74();
}

BOOL Table<A>.deleteOne(_:id:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = v6[1];
  v27 = *v6;
  v14 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1B2152D64(AssociatedTypeWitness, AssociatedTypeWitness);
  sub_1B212348C(v16);
  v18 = v17;
  v20 = *(v19 + 72);
  v21 = *(v17 + 80);
  sub_1B211AD38();
  v22 = sub_1B22525B0();
  (*(v18 + 16))(v23, a2, AssociatedTypeWitness);
  sub_1B2152E00();
  v28 = v22;
  sub_1B212607C();
  v24 = sub_1B22526A0();
  sub_1B2111968();
  WitnessTable = swift_getWitnessTable();
  Table<A>.deleteAll<A>(_:ids:)(a1, &v28, a3, v24, a4, WitnessTable, a5, a6);
  sub_1B2115BF0();

  return sub_1B2113158();
}

uint64_t Table.deleteAll(_:keys:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1B219AAB0();
    v26 = *v2;
    v28 = v2[1];
    Table.filter(keys:)();
    sub_1B2122988();
    type metadata accessor for QueryInterfaceRequest();
    sub_1B2115680();
    v4 = QueryInterfaceRequest.deleteAll(_:)();
    sub_1B211608C(v4, v5, v6, v7, v8, v9, v10, v11, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    sub_1B21142DC();
    if (v3)
    {
      v21 = *(v20 + 8);
    }

    else
    {
      v24 = *(v20 + 8);
    }

    v22 = sub_1B2112FF4(v12, v13, v14, v15, v16, v17, v18, v19, v27);
    v23(v22);
  }

  return sub_1B2122C74();
}

BOOL Table.deleteOne(_:key:)()
{
  sub_1B21224F4();
  v5 = *v0;
  v6 = v0[1];
  sub_1B21619D8(&qword_1EB7A1BB0, &qword_1B22598E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B22546B0;
  *(v3 + 32) = v1;

  Table.deleteAll(_:keys:)(v2, v3);
  sub_1B2115BF0();

  return sub_1B2113158();
}

uint64_t Table.updateAll(_:onConflict:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v30 = *v4;
  v32 = v4[1];
  Table.all()(a4, v52);
  v53 = v7;
  sub_1B2115BE4();
  InterfaceRequest = type metadata accessor for QueryInterfaceRequest();
  v9 = QueryInterfaceRequest.updateAll(_:onConflict:_:)(a1, &v53, a3, InterfaceRequest);
  sub_1B21142EC(v9, v10, v11, v12, v13, v14, v15, v16, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52[0]);
  sub_1B211283C();
  v18 = *(v17 + 8);
  v27 = sub_1B2114028(v19, v20, v21, v22, v23, v24, v25, v26, v31);
  v28(v27);
  return sub_1B212CDA8();
}

uint64_t Table.updateAll(_:onConflict:_:_:)()
{
  sub_1B2135644();
  v5 = v4;
  v6 = v1[1];
  v11 = *v1;
  v12 = *v7;
  sub_1B21619D8(&qword_1EB7A0F68, &unk_1B2254680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  sub_1B214FAC0(v3, inited + 32);

  sub_1B216CE64(v9);
  Table.updateAll(_:onConflict:_:)(v5, &v12, inited, v2);
  sub_1B2115BF0();

  return v0;
}

void sub_1B2199D48()
{
  type metadata accessor for Row();
  sub_1B2196360();
  if (!v0)
  {
    if (v3[5])
    {
      __break(1u);
    }

    else
    {
      v1[0] = 0;
      v1[1] = 0;
      static Row.fetchCursor(_:arguments:adapter:)(v2, v1, v3);
      sub_1B2142D18(&v2);
    }
  }
}

uint64_t sub_1B2199E1C()
{
  result = sub_1B2146A54(v14);
  if (v0)
  {
    return sub_1B2122C74();
  }

  if (!v14[6])
  {
    v9 = sub_1B2117FCC(result, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14[0]);
    static Row.fetchCursor(_:arguments:adapter:)(v9, v10, v11);
    sub_1B2142D18(v14);
    return sub_1B2122C74();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2199E98()
{
  v1 = type metadata accessor for Row();
  sub_1B2196360();
  if (!v0)
  {
    v10 = sub_1B212CF8C(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18[0]);
    v1 = static Row.fetchAll(_:arguments:adapter:)(v10, v11, v12);
    if (v19)
    {

      v14 = sub_1B2113B50();
      v19(v14);
      v15 = sub_1B2122C8C();
      sub_1B2112F4C(v15);
    }

    sub_1B2142D18(v18);
  }

  return v1;
}

uint64_t sub_1B2199FB8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Row();
  sub_1B2196360();
  if (!v2)
  {
    v6 = v12;
    v9 = 0uLL;
    if (v12)
    {

      v7 = static Row.fetchAll(_:arguments:adapter:)(v10, &v9, v11);
      v6(a1, v7);
      sub_1B2168FE4(v7);
      a2 = v8;
      sub_1B2112F4C(v6);
    }

    else
    {
      a2 = static Row.fetchSet(_:arguments:adapter:)(v10, &v9, v11);
    }

    sub_1B2142D18(&v10);
  }

  return a2;
}

uint64_t sub_1B219A14C()
{
  v1 = sub_1B2146A54(&v19);
  if (!v0)
  {
    v10 = v21;
    if (v21)
    {
      v11 = v19;
      v18 = 0uLL;

      v15 = static Row.fetchAll(_:arguments:adapter:)(v11, &v18, &v20);
      v16 = sub_1B2115B7C();
      v10(v16);
      sub_1B2168FE4(v15);
      v17 = sub_1B2113B50();
      sub_1B2112F4C(v17);
      sub_1B2142D18(&v19);
    }

    else
    {
      v12 = sub_1B2117FCC(v1, v2, v3, v4, v5, v6, v7, v8, v18, *(&v18 + 1), v19);
      static Row.fetchSet(_:arguments:adapter:)(v12, v13, v14);
      sub_1B2142D18(&v19);
    }
  }

  return sub_1B2122C74();
}

uint64_t sub_1B219A27C(uint64_t a1)
{
  v3 = type metadata accessor for Row();
  sub_1B2196360();
  if (!v1)
  {
    v8 = 0uLL;
    v4 = static Row.fetchOne(_:arguments:adapter:)(v9, &v8, &v10);
    v3 = v4;
    if (v4)
    {
      v6 = v11;
      if (v11)
      {
        sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1B2257570;
        *(v7 + 32) = v3;
        sub_1B2112328(v6);

        v6(a1, v7);

        sub_1B2112F4C(v6);
      }
    }

    sub_1B2142D18(&v9);
  }

  return v3;
}

uint64_t sub_1B219A428()
{
  sub_1B213CACC();
  v4 = sub_1B2146A54(v3);
  if (!v0)
  {
    v12 = sub_1B212CF8C(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23[0]);
    v15 = static Row.fetchOne(_:arguments:adapter:)(v12, v13, v14);
    v1 = v15;
    if (v15)
    {
      v17 = v24;
      if (v24)
      {
        sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1B2257570;
        *(v18 + 32) = v1;
        v19 = sub_1B2122C8C();
        sub_1B2112328(v19);

        v17(v2, v18);

        v20 = sub_1B2122C8C();
        sub_1B2112F4C(v20);
      }
    }

    sub_1B2142D18(v23);
  }

  return v1;
}

uint64_t sub_1B219A54C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B219A588(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B219A5C8(uint64_t result, int a2, int a3)
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

void sub_1B219A604(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 40)
  {
    if (v29 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1B2253390();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *i;
    v8 = *(i - 2);
    v7 = *(i - 1);
    v10 = *(i - 4);
    v9 = *(i - 3);

    sub_1B2113A20(v8, v7, v6);
    if (!v9)
    {
      goto LABEL_17;
    }

    v31 = v7;
    v32 = v6;
    v11 = *a3;
    v13 = sub_1B211E590();
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_20;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1B21619D8(&qword_1EB7A1918, &qword_1B226A9E0);
      sub_1B2252E80();
      if (v17)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v22 = (v21[6] + 16 * v13);
    *v22 = v10;
    v22[1] = v9;
    v23 = v21[7] + 24 * v13;
    *v23 = v8;
    *(v23 + 8) = v31;
    *(v23 + 16) = v32;
    v24 = v21[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v21[2] = v26;
    ++v4;
    a2 = 1;
  }

  sub_1B2245C58(v16, a2 & 1);
  v18 = *a3;
  v19 = sub_1B211E590();
  if ((v17 & 1) != (v20 & 1))
  {
    goto LABEL_22;
  }

  v13 = v19;
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v27;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B2113A44(v8, v31, v32);

    return;
  }

LABEL_23:
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD00000000000001BLL, 0x80000001B226CFA0);
  sub_1B2252E10();
  MEMORY[0x1B2741EB0](39, 0xE100000000000000);
  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B219A994()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  if (v0[8])
  {
    v5 = v0[9];
  }

  v6 = v0[10];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  if (v0[17])
  {
    v11 = v0[18];
  }

  if (v0[19])
  {
    v12 = v0[20];
  }

  return swift_deallocObject();
}

void *sub_1B219AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = v37[1];
  a36 = *v37;
  a37 = v39;

  return Table.all()(a2, &a15);
}

void *sub_1B219AAC8@<X0>(void *a1@<X8>)
{
  v2 = sub_1B2251D30();
  NSURL.databaseValue.getter(&v4);

  __src[0] = v4;
  LOBYTE(__src[1]) = v5;
  sub_1B2127D7C(__src);
  return memcpy(a1, __src, 0xA3uLL);
}

void *sub_1B219AB2C()
{
  if (qword_1ED85D6E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED85D6E8;
  v1 = sub_1B2251E50();
  v2 = [v0 stringFromDate_];

  v3 = sub_1B22522A0();
  v5 = v4;

  *__src = v3;
  v17 = v5;
  v18 = 2;
  v6 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v6, v7, v8, v9, v10, v11, v12, v13, v15, __src[0]);
}

void *sub_1B219ABEC@<X0>(void *a1@<X8>)
{
  v6[21] = *MEMORY[0x1E69E9840];
  v6[0] = sub_1B2251ED0();
  v6[1] = v2;
  v6[0] = MEMORY[0x1B27418E0](v6, 16);
  v6[1] = v3;
  LOBYTE(v6[2]) = 3;
  sub_1B2127D7C(v6);
  result = memcpy(a1, v6, 0xA3uLL);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B219AC78@<X0>(void *a1@<X8>)
{
  DatabaseDateComponents.databaseValue.getter();
  __src[0] = v3;
  LOBYTE(__src[1]) = v4;
  sub_1B2127D7C(__src);
  return memcpy(a1, __src, 0xA3uLL);
}

uint64_t sub_1B219ACD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = 3;
  sub_1B2127D7C(__src);
  memcpy(a3, __src, 0xA3uLL);
  return sub_1B2126638(a1, a2);
}

void *sub_1B219AD38(float a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 1;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __src[0]);
}

void sub_1B219AD80()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v7 = HIDWORD(v4);
  v8 = HIWORD(v4);
  v9 = v2 >> 16;
  v10 = HIDWORD(v2);
  v23 = HIWORD(v2);
  v24 = HIWORD(v0);
  v11 = sub_1B2251F10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v16 = v15 - v14;
  LODWORD(v26[0]) = v5;
  WORD2(v26[0]) = v7;
  HIWORD(v26[0]) = v8;
  LOWORD(v26[1]) = v3;
  WORD1(v26[1]) = v9;
  WORD2(v26[1]) = v10;
  HIWORD(v26[1]) = v23;
  LOWORD(v26[2]) = v1;
  WORD1(v26[2]) = v24;
  v17 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  sub_1B2251EF0();
  v18 = sub_1B2251F00();
  (*(v12 + 8))(v16, v11);
  v19 = [v17 descriptionWithLocale_];

  v20 = sub_1B22522A0();
  v22 = v21;

  v26[0] = v20;
  v26[1] = v22;
  LOBYTE(v26[2]) = 2;
  sub_1B2127D7C(v26);
  memcpy(v25, v26, 0xA3uLL);
  sub_1B2111588();
}

void *sub_1B219AF60(char a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __src[0]);
}

void *sub_1B219AFA0(__int16 a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __src[0]);
}

void *sub_1B219AFE0(int a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __src[0]);
}

void *sub_1B219B020(unsigned __int8 a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __src[0]);
}

void *sub_1B219B060(unsigned __int16 a1)
{
  *__src = a1;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__src);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __src[0]);
}

void *sub_1B219B0A0(unsigned int __src)
{
  *__srca = __src;
  v12 = 0;
  v13 = 0;
  v1 = sub_1B2127D7C(__srca);
  return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, __srca[0]);
}

uint64_t sub_1B219B0E0(uint64_t __src)
{
  if (__src < 0)
  {
    __break(1u);
  }

  else
  {
    *__srca = __src;
    v11 = 0;
    v12 = 0;
    v1 = sub_1B2127D7C(__srca);
    return sub_1B21182E8(v1, v2, v3, v4, v5, v6, v7, v8, v9, __srca[0]);
  }

  return __src;
}

uint64_t sub_1B219B14C()
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  return sub_1B2253470();
}

uint64_t sub_1B219B1A0()
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](0);
  return sub_1B2253470();
}

uint64_t FTS5.Diacritics.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

GRDBInternal::FTS5 __swiftcall FTS5.init()()
{
  sub_1B21145C4(v0);
  result.moduleName._object = v2;
  result.moduleName._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1B219B280()
{
  v0 = type metadata accessor for Configuration();
  v1 = (v0 - 8);
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1B2111844();
  v5 = v4 - v3;
  *v5 = 1;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 23) = 0;
  *(v5 + 32) = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 2;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = -1;
  *(v5 + 96) = 5;
  v6 = v4 - v3 + v1[18];
  sub_1B2252110();
  *(v5 + v1[19]) = 0;
  *(v5 + v1[20]) = 0;
  *(v5 + v1[21]) = 1;
  *(v5 + v1[22]) = 0;
  v7 = (v5 + v1[23]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v5 + v1[24]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v5 + v1[25]);
  type metadata accessor for DatabaseQueue();
  *v9 = 0;
  v9[1] = 0;
  swift_allocObject();
  v10 = DatabaseQueue.init(configuration:)(v5)[2];
  v11 = sub_1B21FB5C4();

  return v11;
}

void sub_1B219B3F8(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  static FTS5TokenizerDescriptor.ascii(separators:tokenCharacters:)(MEMORY[0x1E69E7CD0], MEMORY[0x1E69E7CD0], &v24);
  Database.makeTokenizer(_:)(&v24);
  if (v3)
  {
  }

  else
  {
    v8 = v7;

    ObjectType = swift_getObjectType();
    v10 = FTS5Tokenizer.tokenize(query:)(a1, a2, ObjectType, v8);
    swift_unknownObjectRelease();
    v11 = 0;
    v12 = *(v10 + 16);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v14 = 24 * v11;
    while (1)
    {
      if (v12 == v11)
      {

        *a3 = v13;
        return;
      }

      if (v11 >= *(v10 + 16))
      {
        break;
      }

      ++v11;
      v15 = v14 + 24;
      v16 = *(v10 + v14 + 48);
      v14 += 24;
      if ((v16 & 1) == 0)
      {
        v17 = *(v10 + v15 + 16);
        v23 = *(v10 + v15 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v13 + 16);
          sub_1B214400C();
          v13 = v21;
        }

        v18 = *(v13 + 16);
        if (v18 >= *(v13 + 24) >> 1)
        {
          sub_1B214400C();
          v13 = v22;
        }

        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v23;
        *(v19 + 40) = v17;
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t FTS5.moduleName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1B2112FD0();
}

double FTS5.makeTableDefinition(configuration:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for FTS5TableDefinition();
  v2 = swift_allocObject();
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 72) = 0;
  *(v2 + 96) = 1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 16) = v1;
  return result;
}

uint64_t FTS5.moduleArguments(for:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B21115FC();
  swift_beginAccess();
  if (!sub_1B2118640(*(a1 + 24)))
  {
    result = sub_1B2252EC0();
    __break(1u);
    return result;
  }

  v205 = a1;
  v6 = *(a1 + 24);
  v7 = sub_1B2118640(v6);
  v8 = MEMORY[0x1E69E7CC0];
  v207 = a2;
  if (v7)
  {
    v9 = v7;
    if (v7 < 1)
    {
      __break(1u);
LABEL_96:
      sub_1B21173D4();
      goto LABEL_19;
    }

    v203 = v2;
    v219 = v6 & 0xC000000000000001;

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v219)
      {
        v12 = MEMORY[0x1B27427E0](v10, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v10 + 32);
      }

      if (*(v12 + 32) == 1)
      {
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);
      }

      else
      {
        v15 = *(v12 + 24);
        __src[0] = *(v12 + 16);
        __src[1] = v15;

        MEMORY[0x1B2741EB0](0x5845444E494E5520, 0xEA00000000004445);
        v14 = __src[0];
        v13 = __src[1];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v11 + 16);
        sub_1B21150D0();
        sub_1B214400C();
        v11 = v20;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      v8 = v11;
      if (v17 >= v16 >> 1)
      {
        sub_1B2112994(v16);
        sub_1B214400C();
        v8 = v21;
      }

      v10 = v10 + 1;

      *(v8 + 16) = v17 + 1;
      v11 = v8;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
    }

    while (v9 != v10);

    v3 = v2;
  }

  v22 = v205;
  sub_1B21115FC();
  swift_beginAccess();
  v9 = &unk_1ED861000;
  if (!*(v205 + 72))
  {
    v30 = v8;
    goto LABEL_27;
  }

  v214[0] = *(v205 + 72);

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  sub_1B212D844();
  v23 = sub_1B2252250();
  v25 = v24;

  *v215 = v23;
  v216 = v25;
  LOBYTE(v217) = 2;
  sub_1B2127D7C(v215);
  sub_1B2115EAC();
  if (qword_1ED85D658 != -1)
  {
    goto LABEL_96;
  }

LABEL_19:
  v26 = v9[288];

  v27 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  sub_1B211AD64();

  sub_1B2117164(v28, v26, v27);
  sub_1B211D5F8();
  v29 = sub_1B2117C50();
  v30 = v3;
  sub_1B2127E58(v29, v31);
  if (v3)
  {
LABEL_20:

LABEL_47:
  }

  v33 = v32;

  v34 = sub_1B213CF0C(0x657A696E656B6F74uLL);
  MEMORY[0x1B2741EB0](v34, v33);

  v35 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v181 = *(v8 + 16);
    sub_1B21150D0();
    sub_1B214400C();
    v35 = isUniquelyReferenced_nonNull_native;
  }

  v22 = v205;
  v39 = *(v35 + 24);
  v40 = v35;
  if (*(v35 + 16) >= v39 >> 1)
  {
    sub_1B2112994(v39);
    sub_1B214400C();
    v40 = isUniquelyReferenced_nonNull_native;
  }

  sub_1B213CAE4(isUniquelyReferenced_nonNull_native, v37, v38, v40);
LABEL_27:
  v42 = *(v22 + 32);
  v41 = *(v22 + 40);
  v43 = *(v22 + 48);
  v44 = *(v22 + 56);
  if (*(v22 + 64) == 1)
  {
    v219 = v30;
    v209[0] = 0x3D746E65746E6F63;
    v209[1] = 0xE800000000000000;
    *v215 = v42;
    v216 = v41;
    LOBYTE(v217) = 2;
    sub_1B2127D7C(v215);
    sub_1B2115EAC();
    sub_1B2111658();
    v202 = v44;
    v203 = v43;
    sub_1B213CB6C();
    sub_1B219DEE4(v45, v46, v47, v48, v49);
    v50 = qword_1ED85D658;

    if (v50 != -1)
    {
      sub_1B21173D4();
    }

    sub_1B2116B4C();
    v51 = type metadata accessor for SQLGenerationContext();
    sub_1B211AD64();
    sub_1B21A18D4();
    sub_1B211722C();
    sub_1B2117164(v52, v53, v54);
    sub_1B211D5F8();
    v55 = sub_1B2117C50();
    v57 = sub_1B2127E58(v55, v56);
    if (v3)
    {

      sub_1B2111658();
      sub_1B211722C();
      sub_1B219DF24(v59, v60, v61, v62, 1);
      sub_1B2111658();
      sub_1B211722C();
      sub_1B219DF24(v63, v64, v65, v66, 1);
    }

    v78 = v57;
    v79 = v58;
    v201 = v51;

    v80 = sub_1B2111658();
    sub_1B219DF24(v80, v81, v43, v44, 1);
    MEMORY[0x1B2741EB0](v78, v79);

    v82 = v209[0];
    v83 = v209[1];
    v84 = v219;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = *(v84 + 16);
      sub_1B21150D0();
      sub_1B214400C();
      v84 = v183;
    }

    sub_1B2117FE4();
    if (v86)
    {
      sub_1B2112994(v85);
      sub_1B214400C();
      v219 = v184;
    }

    v87 = v219;
    *(v219 + 16) = v84;
    v88 = v87 + 16 * v79;
    *(v88 + 32) = v82;
    *(v88 + 40) = v83;
    sub_1B2111658();
    Database.primaryKey(_:)();
    sub_1B2111658();
    sub_1B213CB6C();
    sub_1B219DF24(v114, v115, v116, v117, v118);
    if (v213)
    {
      v77 = 0;
      if (v213 == 1)
      {
        v119 = sub_1B2117214();
        sub_1B21424A0(v119, v120, 1u);
      }

      v22 = v205;
      goto LABEL_63;
    }

    v209[0] = v211;
    v209[1] = v212;
    LOBYTE(v209[2]) = 2;
    sub_1B2127D7C(v209);
    memcpy(v214, v209, 0xA3uLL);

    sub_1B2116B4C();
    sub_1B211AD64();
    sub_1B21A18D4();
    sub_1B211722C();
    v170 = sub_1B2117164(v167, v168, v169);
    memcpy(v208, v214, 0xA3uLL);
    v77 = 0;
    v171 = sub_1B2127E58(v170, 0);
    v173 = v172;

    v174 = sub_1B2117214();
    sub_1B21424A0(v174, v175, 0);
    v208[0] = 0;
    v208[1] = 0xE000000000000000;
    sub_1B2252CD0();

    sub_1B2124BAC();
    v208[0] = v176;
    sub_1B211F188();
    v208[1] = v177;
    MEMORY[0x1B2741EB0](v171, v173);

    v179 = *(v219 + 16);
    v178 = *(v219 + 24);
    sub_1B211AD58();
    if (v86)
    {
      sub_1B2112994(v180);
      sub_1B214400C();
      v219 = v197;
    }

    v22 = v205;
    goto LABEL_58;
  }

  if (v41)
  {
    v203 = *(v22 + 48);
    v219 = v30;
    *v215 = v42;
    v216 = v41;
    LOBYTE(v217) = 2;
    sub_1B2127D7C(v215);
    sub_1B2115EAC();
    v68 = qword_1ED85D658;

    if (v68 != -1)
    {
      sub_1B21173D4();
    }

    v69 = qword_1ED861900;

    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    sub_1B211AD64();
    sub_1B21A18D4();
    sub_1B21234A8();
    sub_1B2117164(v70, v71, v72);
    sub_1B211D5F8();
    v73 = sub_1B2117C50();
    v30 = v3;
    v75 = sub_1B2127E58(v73, v74);
    v77 = v3;
    if (v3)
    {

      goto LABEL_47;
    }

    v98 = v75;
    v99 = v76;

    strcpy(v214, "content=");
    BYTE1(v214[1]) = 0;
    WORD1(v214[1]) = 0;
    HIDWORD(v214[1]) = -402653184;
    MEMORY[0x1B2741EB0](v98, v99);

    if ((sub_1B2113000() & 1) == 0)
    {
      v185 = *(v69 + 16);
      sub_1B21150D0();
      sub_1B214400C();
      v69 = v186;
    }

    v22 = v205;
    v101 = *(v69 + 16);
    v100 = *(v69 + 24);
    sub_1B211AD58();
    if (v86)
    {
      sub_1B2112994(v106);
      sub_1B214400C();
      v105 = v102;
    }

    sub_1B213CAE4(v102, v103, v104, v105);
    v43 = v203;
    if (!v44)
    {
      goto LABEL_53;
    }

LABEL_43:
    v90 = v30;
    *v215 = v43;
    v216 = v44;
    LOBYTE(v217) = 2;
    sub_1B2127D7C(v215);
    sub_1B2115EAC();
    if (qword_1ED85D658 != -1)
    {
      sub_1B21173D4();
    }

    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    sub_1B211AD64();
    sub_1B21A18D4();
    sub_1B21234A8();
    sub_1B2117164(v91, v92, v93);
    sub_1B211D5F8();
    v94 = sub_1B2117C50();
    v96 = sub_1B2127E58(v94, v95);
    if (v77)
    {

      goto LABEL_47;
    }

    v107 = v96;
    v108 = v97;

    sub_1B2252CD0();

    sub_1B2124BAC();
    v214[0] = v109;
    sub_1B211F188();
    v214[1] = v110;
    MEMORY[0x1B2741EB0](v107, v108);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = *(v30 + 16);
      sub_1B21150D0();
      sub_1B214400C();
      v90 = v193;
    }

    v22 = v205;
    v112 = *(v90 + 16);
    v111 = *(v90 + 24);
    v219 = v90;
    sub_1B211AD58();
    if (v86)
    {
      sub_1B2112994(v113);
      sub_1B214400C();
      v219 = v194;
    }

LABEL_58:
    sub_1B2122504();
    goto LABEL_63;
  }

  v89 = *(v22 + 56);

  v77 = v3;
  if (v44)
  {
    goto LABEL_43;
  }

LABEL_53:
  v219 = v30;
LABEL_63:
  sub_1B21115FC();
  swift_beginAccess();
  if (*(v22 + 80))
  {
    v121 = *(v22 + 80);

    sub_1B219C484(v122, v123, v124, v125, v126, v127, v128, v129, v198, v199, v200, v201, v202, v203, v205, v207, v208[0], v208[1], v208[2], v208[3], v208[4], v208[5], v208[6], v208[7], v208[8], v208[9]);
    v131 = v130;

    v132 = *(v131 + 16);
    if (v132)
    {
      v204 = v77;
      __src[0] = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v133 = 32;
      v134 = __src[0];
      do
      {
        v214[0] = *(v131 + v133);
        v135 = sub_1B2252FD0();
        v137 = v136;
        __src[0] = v134;
        v139 = *(v134 + 16);
        v138 = *(v134 + 24);
        if (v139 >= v138 >> 1)
        {
          sub_1B211156C(v138);
          sub_1B2116B10();
          v134 = __src[0];
        }

        *(v134 + 16) = v139 + 1;
        v140 = v134 + 16 * v139;
        *(v140 + 32) = v135;
        *(v140 + 40) = v137;
        v133 += 8;
        --v132;
      }

      while (v132);

      v77 = v204;
    }

    else
    {

      v134 = MEMORY[0x1E69E7CC0];
    }

    v214[0] = v134;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    sub_1B212D844();
    v141 = sub_1B2252250();
    v143 = v142;

    __src[0] = v141;
    __src[1] = v143;
    LOBYTE(__src[2]) = 2;
    sub_1B2127D7C(__src);
    memcpy(__dst, __src, sizeof(__dst));
    if (qword_1ED85D658 != -1)
    {
      sub_1B21173D4();
    }

    sub_1B2116B4C();
    type metadata accessor for SQLGenerationContext();
    sub_1B211AD64();
    sub_1B21A18D4();
    sub_1B21234A8();
    v147 = sub_1B2117164(v144, v145, v146);
    sub_1B2127E58(v147, 0);
    if (v77)
    {
      goto LABEL_20;
    }

    v149 = v148;

    v150 = sub_1B213CF0C(0x3D786966657270uLL);
    MEMORY[0x1B2741EB0](v150, v149);

    if ((sub_1B2113000() & 1) == 0)
    {
      v195 = v147[2];
      sub_1B21150D0();
      sub_1B214400C();
    }

    v22 = v206;
    sub_1B2117FE4();
    if (v86)
    {
      sub_1B2112994(v151);
      sub_1B214400C();
      v219 = v196;
    }

    sub_1B2122504();
  }

  sub_1B21115FC();
  swift_beginAccess();
  if ((*(v22 + 96) & 1) == 0)
  {
    v152 = *(v22 + 88);
    strcpy(v214, "columnSize=");
    HIDWORD(v214[1]) = -352321536;
    v209[0] = v152;
    v153 = sub_1B2252FD0();
    v155 = v154;
    MEMORY[0x1B2741EB0](v153);

    if ((sub_1B2113000() & 1) == 0)
    {
      v190 = *(v155 + 16);
      sub_1B21150D0();
      sub_1B214400C();
    }

    sub_1B2117FE4();
    if (v86)
    {
      sub_1B2112994(v156);
      sub_1B214400C();
      v219 = v191;
    }

    sub_1B2122504();
  }

  sub_1B21115FC();
  swift_beginAccess();
  v157 = *(v22 + 112);
  if (!v157)
  {
    return v219;
  }

  v158 = *(v22 + 104);
  v209[0] = 0x3D6C6961746564;
  v209[1] = 0xE700000000000000;

  MEMORY[0x1B2741EB0](v158, v157);

  v159 = v209[0];
  v160 = v209[1];
  v161 = v219;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v187 = *(v161 + 16);
    sub_1B21150D0();
    sub_1B214400C();
    v161 = v188;
  }

  v163 = *(v161 + 16);
  v162 = *(v161 + 24);
  sub_1B211AD58();
  if (v86)
  {
    sub_1B2112994(v165);
    sub_1B214400C();
    v164 = v189;
  }

  *(v164 + 16) = v161;
  result = v164;
  v166 = v164 + 16 * v163;
  *(v166 + 32) = v159;
  *(v166 + 40) = v160;
  return result;
}

void sub_1B219C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B211F62C();
  a25 = v27;
  a26 = v28;
  if (!*(v29 + 16))
  {
    goto LABEL_4;
  }

  sub_1B212420C();
  sub_1B219E06C();
  sub_1B21150B8();
  sub_1B21A0ED0(v30, v31, v32, v33);
  sub_1B2111980();
  sub_1B21156C4();
  if (!v34)
  {
    __break(1u);
LABEL_4:
    v26 = MEMORY[0x1E69E7CC0];
  }

  a10 = v26;
  sub_1B219E4D4(&a10, sub_1B21A155C, MEMORY[0x1E69E6530], sub_1B224B140);
  sub_1B2121F6C();
}

void sub_1B219C550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B211F62C();
  a25 = v27;
  a26 = v28;
  if (!*(v29 + 16))
  {
    goto LABEL_4;
  }

  sub_1B212420C();
  sub_1B219E06C();
  sub_1B21150B8();
  sub_1B21A0ED0(v30, v31, v32, v33);
  sub_1B2111980();
  sub_1B21156C4();
  if (!v34)
  {
    __break(1u);
LABEL_4:
    v26 = MEMORY[0x1E69E7CC0];
  }

  a10 = v26;
  sub_1B219E4D4(&a10, sub_1B21A15B8, MEMORY[0x1E69E7360], sub_1B224B140);
  sub_1B2121F6C();
}

void sub_1B219C61C()
{
  sub_1B211F62C();
  if (v1[2])
  {
    v0 = v1;
    sub_1B212420C();
    sub_1B2140078();
    sub_1B21150B8();
    sub_1B21A0FB8(v2, v3, v4, v5);
    sub_1B2111980();
    sub_1B21156C4();
    if (!v6)
    {
      __break(1u);
    }
  }

  sub_1B214406C();
  sub_1B219E560(v7);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    sub_1B2121F6C();
  }
}

void sub_1B219C6B0()
{
  sub_1B211F62C();
  if (v1[2])
  {
    v0 = v1;
    sub_1B212420C();
    sub_1B2140078();
    sub_1B21150B8();
    sub_1B21A1288(v2, v3, v4, v5);
    sub_1B2111980();
    sub_1B21156C4();
    if (!v6)
    {
      __break(1u);
    }
  }

  sub_1B214406C();
  sub_1B219E5CC(v7);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    sub_1B2121F6C();
  }
}

void sub_1B219C744()
{
  sub_1B211F62C();
  if (v1[2])
  {
    v0 = v1;
    sub_1B212420C();
    sub_1B2140078();
    sub_1B21150B8();
    sub_1B21400DC();
    sub_1B2111980();
    sub_1B21156C4();
    if (!v2)
    {
      __break(1u);
    }
  }

  sub_1B214406C();
  sub_1B219E560(v3);
  if (v0)
  {

    __break(1u);
  }

  else
  {
    sub_1B2121F6C();
  }
}

void FTS5.database(_:didCreate:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 64) == 1)
  {
    v6 = *(a4 + 32);
    v7 = *(a4 + 40);
    v8 = *(a4 + 48);
    v9 = *(a4 + 56);

    sub_1B2113B50();
    Database.primaryKey(_:)();
    if (v4)
    {
      sub_1B2113B50();
      sub_1B213CB6C();
      sub_1B219DF24(v11, v12, v13, v14, v15);
      return;
    }

    v84 = a4;
    v87 = a3;
    if (v93)
    {
      v80 = 0x6469776F72;
      if (v93 == 1)
      {
        sub_1B21424A0(v91, v92, 1u);
      }

      v82 = 0xE500000000000000;
    }

    else
    {
      v80 = v91;
      v82 = v92;
    }

    MEMORY[0x1B2741EB0](a2, a3);
    sub_1B2122C5C();
    v91 = 34;
    v92 = 0xE100000000000000;
    v16 = sub_1B2113B50();
    MEMORY[0x1B2741EB0](v16);
    sub_1B2122C5C();
    sub_1B2113B50();
    sub_1B213CB6C();
    sub_1B219DF24(v17, v18, v19, v20, v21);
    sub_1B21115FC();
    swift_beginAccess();
    v22 = *(a4 + 24);
    v23 = sub_1B2116B08(v22);
    v24 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v25 = v23;
      v90[0] = MEMORY[0x1E69E7CC0];

      sub_1B2116B10();
      if (v25 < 0)
      {
        __break(1u);
        return;
      }

      v26 = 0;
      v27 = v90[0];
      v28 = v22 & 0xC000000000000001;
      v29 = v22;
      do
      {
        if (v28)
        {
          v30 = MEMORY[0x1B27427E0](v26, v29);
        }

        else
        {
          v30 = *(v29 + 8 * v26 + 32);
        }

        v32 = *(v30 + 16);
        v31 = *(v30 + 24);

        v90[0] = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1B211156C(v33);
          sub_1B2116B10();
          v27 = v90[0];
        }

        ++v26;
        *(v27 + 16) = v34 + 1;
        v35 = v27 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31;
      }

      while (v25 != v26);

      v24 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    v90[0] = &unk_1F2968EE0;

    sub_1B2156C88(v36);
    v37 = unk_1F2968EF0;
    if (unk_1F2968EF0)
    {
      sub_1B2116B10();
      v38 = v24;
      v39 = &unk_1F2968F08;
      do
      {
        v40 = *(v39 - 1);
        v41 = *v39;
        v90[0] = 34;
        v90[1] = 0xE100000000000000;

        MEMORY[0x1B2741EB0](v40, v41);
        sub_1B2122C5C();

        v89 = v38;
        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1B211156C(v42);
          sub_1B2116B10();
        }

        *(v38 + 16) = v43 + 1;
        v44 = v38 + 16 * v43;
        *(v44 + 32) = 34;
        *(v44 + 40) = 0xE100000000000000;
        v39 += 2;
        --v37;
      }

      while (v37);

      v24 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v85 = sub_1B212DE74();
    v86 = v45;

    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 32) = v80;
    *(inited + 40) = v82;
    v90[0] = inited;

    sub_1B2156C88(v27);
    v47 = *(v90[0] + 16);
    if (v47)
    {
      v94 = v24;
      sub_1B2116B10();
      v48 = (v90[0] + 40);
      v49 = v94;
      do
      {
        v50 = *(v48 - 1);
        v51 = *v48;
        v90[0] = 779576686;
        v90[1] = 0xE400000000000000;
        sub_1B211D8BC();

        MEMORY[0x1B2741EB0](v50, v51);
        sub_1B2122C5C();
        MEMORY[0x1B2741EB0](v89);

        v94 = v49;
        v53 = *(v49 + 16);
        v52 = *(v49 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B211156C(v52);
          sub_1B2116B10();
          v49 = v94;
        }

        *(v49 + 16) = v53 + 1;
        v54 = v49 + 16 * v53;
        *(v54 + 32) = 779576686;
        *(v54 + 40) = 0xE400000000000000;
        v48 += 2;
        --v47;
      }

      while (v47);

      v24 = MEMORY[0x1E69E7CC0];
    }

    else
    {
    }

    v78 = sub_1B212DE74();
    v79 = v55;

    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_1B22546B0;
    *(v56 + 32) = v80;
    *(v56 + 40) = v82;
    v90[0] = v56;
    sub_1B2156C88(v27);
    v57 = *(v90[0] + 16);
    if (v57)
    {
      v94 = v24;
      sub_1B2116B10();
      v58 = (v90[0] + 40);
      v59 = v24;
      do
      {
        v60 = *(v58 - 1);
        v61 = *v58;
        v90[0] = 778333295;
        v90[1] = 0xE400000000000000;

        MEMORY[0x1B2741EB0](v60, v61);
        sub_1B2122C5C();
        MEMORY[0x1B2741EB0](34, 0xE100000000000000);

        v94 = v59;
        v63 = *(v59 + 16);
        v62 = *(v59 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1B211156C(v62);
          sub_1B2116B10();
          v59 = v94;
        }

        *(v59 + 16) = v63 + 1;
        v64 = v59 + 16 * v63;
        *(v64 + 32) = 778333295;
        *(v64 + 40) = 0xE400000000000000;
        v58 += 2;
        --v57;
      }

      while (v57);
    }

    else
    {

      v59 = MEMORY[0x1E69E7CC0];
    }

    v90[0] = v59;
    v65 = sub_1B212DE74();
    v81 = v66;
    v83 = v65;

    if (*(v84 + 16))
    {
      v67 = 0x4520544F4E204649;
    }

    else
    {
      v67 = 0;
    }

    if (*(v84 + 16))
    {
      v68 = 0xEE00205354534958;
    }

    else
    {
      v68 = 0xE000000000000000;
    }

    v90[0] = 0;
    v90[1] = 0xE000000000000000;
    sub_1B2252CD0();
    MEMORY[0x1B2741EB0](0x5420455441455243, 0xEF20524547474952);
    MEMORY[0x1B2741EB0](v67, v68);
    MEMORY[0x1B2741EB0](a2, v87);
    MEMORY[0x1B2741EB0](6906207, 0xE300000000000000);
    MEMORY[0x1B2741EB0](24415, 0xE200000000000000);
    sub_1B2122C5C();

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](0xD000000000000011, 0x80000001B226DA70);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B214CBDC();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B21A18BC();
    MEMORY[0x1B2741EB0](v85, v86);
    sub_1B212D54C();
    MEMORY[0x1B2741EB0](v78, v79);
    MEMORY[0x1B2741EB0](0xD000000000000017, 0x80000001B226DAB0);
    MEMORY[0x1B2741EB0](v67, v68);
    sub_1B2113168();
    MEMORY[0x1B2741EB0](a2, v87);
    MEMORY[0x1B2741EB0](6578527, 0xE300000000000000);
    sub_1B211D8BC();
    MEMORY[0x1B2741EB0]();
    sub_1B2122C5C();

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000011);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);
    sub_1B214CBDC();
    sub_1B21352FC();
    sub_1B21A18BC();
    sub_1B21352FC();
    MEMORY[0x1B2741EB0](8236, 0xE200000000000000);
    MEMORY[0x1B2741EB0](v85, v86);
    MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226DAF0);
    MEMORY[0x1B2741EB0](v83, v81);
    MEMORY[0x1B2741EB0](0xD000000000000017, 0x80000001B226DAB0);
    MEMORY[0x1B2741EB0](v67, v68);

    sub_1B2113168();
    MEMORY[0x1B2741EB0](a2, v87);
    v69 = sub_1B2126088();
    MEMORY[0x1B2741EB0](v69, 0xE300000000000000);
    sub_1B211D8BC();
    MEMORY[0x1B2741EB0]();
    sub_1B2122C5C();

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000011);
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    sub_1B214CBDC();
    sub_1B21352FC();
    sub_1B21A18BC();
    sub_1B21352FC();
    MEMORY[0x1B2741EB0](8236, 0xE200000000000000);
    MEMORY[0x1B2741EB0](v85, v86);
    MEMORY[0x1B2741EB0](0xD000000000000013, 0x80000001B226DAF0);
    MEMORY[0x1B2741EB0](v83, v81);

    sub_1B212D858();
    MEMORY[0x1B2741EB0](0xD000000000000013);
    sub_1B21352FC();
    sub_1B21A18BC();
    MEMORY[0x1B2741EB0](v85, v86);

    sub_1B212D54C();
    MEMORY[0x1B2741EB0](v78, v79);

    MEMORY[0x1B2741EB0](0x3B444E450A3B29, 0xE700000000000000);
    v70._countAndFlagsBits = v90[0];
    v71 = v90[1];
    v72 = MEMORY[0x1E69E7CC0];
    v90[0] = MEMORY[0x1E69E7CC0];
    v90[1] = MEMORY[0x1E69E7CC8];
    v73.values._rawValue = v90;
    v70._object = v71;
    Database.execute(sql:arguments:)(v70, v73);

    if (!v74)
    {

      strcpy(v90, "INSERT INTO ");
      BYTE5(v90[1]) = 0;
      HIWORD(v90[1]) = -5120;
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      sub_1B21A18BC();
      MEMORY[0x1B2741EB0](34, 0xE100000000000000);

      sub_1B212D858();
      MEMORY[0x1B2741EB0](0xD000000000000013);
      v75._countAndFlagsBits = v90[0];
      v76 = v90[1];
      v90[0] = v72;
      v90[1] = MEMORY[0x1E69E7CC8];
      v77.values._rawValue = v90;
      v75._object = v76;
      Database.execute(sql:arguments:)(v75, v77);
    }
  }
}

uint64_t sub_1B219D2C4(uint64_t a1)
{
  ppStmt[1] = *MEMORY[0x1E69E9840];
  v4 = 0;
  ppStmt[0] = 0;
  sub_1B21115FC();
  swift_beginAccess();
  if (sqlite3_prepare_v3(*(a1 + 16), "SELECT fts5(?)", -1, 0, ppStmt, 0))
  {
    sub_1B21A1694();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    sqlite3_bind_pointer(ppStmt[0], 1, &v4, "fts5_api_ptr", 0);
    sqlite3_step(ppStmt[0]);
    a1 = v4;
    if (!v4)
    {
      sub_1B21A1694();
      swift_allocError();
      swift_willThrow();
    }

    sqlite3_finalize(ppStmt[0]);
  }

  v2 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t FTS5TableDefinition.tokenizer.getter@<X0>(void *a1@<X8>)
{
  sub_1B21115FC();
  swift_beginAccess();
  *a1 = *(v1 + 72);
}

uint64_t FTS5TableDefinition.tokenizer.setter(uint64_t *a1)
{
  v2 = *a1;
  sub_1B211D8D0();
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
}

uint64_t FTS5TableDefinition.content.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1B2112FD0();
}

uint64_t FTS5TableDefinition.content.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v2 + 32);
  if (v5)
  {
    v7 = *(v2 + 40);
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    v8 = v6;
    v9 = v7;
    v10 = v4;
    v11 = v3;
    v12 = 1;
  }

  else
  {
    v13 = *(v2 + 40);
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
    *(v2 + 48) = v4;
    *(v2 + 56) = v3;
    *(v2 + 64) = 0;

    v8 = v6;
    v9 = v13;
    v10 = v4;
    v11 = v3;
    v12 = v5;
  }

  return sub_1B219DF24(v8, v9, v10, v11, v12);
}

uint64_t (*FTS5TableDefinition.content.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = FTS5TableDefinition.content.getter();
  a1[1] = v3;
  return sub_1B219D640;
}

uint64_t FTS5TableDefinition.contentRowID.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  v3 = v0 + 48;
  v1 = *(v0 + 48);
  v2 = *(v3 + 8);

  return v1;
}

uint64_t sub_1B219D69C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t FTS5TableDefinition.contentRowID.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 64);
  v6 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (v4)
  {
    v7 = *(v2 + 56);
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
    *(v2 + 64) = 0;
    v8 = v3;
    v9 = v6;
    v10 = v5;
    v11 = 1;
  }

  else
  {
    v12 = *(v2 + 56);
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
    *(v2 + 64) = 0;

    v8 = v3;
    v9 = v6;
    v10 = v5;
    v7 = v12;
    v11 = v4;
  }

  return sub_1B219DF24(v8, v9, v10, v7, v11);
}

uint64_t (*FTS5TableDefinition.contentRowID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = FTS5TableDefinition.contentRowID.getter();
  a1[1] = v3;
  return sub_1B219D7C8;
}

uint64_t sub_1B219D7E0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

uint64_t FTS5TableDefinition.prefixes.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t FTS5TableDefinition.prefixes.setter(uint64_t a1)
{
  sub_1B211D8D0();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t FTS5TableDefinition.columnSize.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t FTS5TableDefinition.columnSize.setter(uint64_t a1, char a2)
{
  result = sub_1B211D8D0();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t FTS5TableDefinition.detail.getter()
{
  sub_1B21115FC();
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return sub_1B2112FD0();
}

uint64_t FTS5TableDefinition.detail.setter(uint64_t a1, uint64_t a2)
{
  sub_1B211D8D0();
  v5 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_1B219DAA8(char *a1)
{
  v2 = *a1;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 16) = v2;
  return v1;
}

uint64_t FTS5TableDefinition.column(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for FTS5ColumnDefinition();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x1B2742060](v7);
  sub_1B212B4C4(*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B2252630();
  swift_endAccess();
  return v6;
}

Swift::Void __swiftcall FTS5TableDefinition.synchronize(withTable:)(Swift::String withTable)
{
  object = withTable._object;
  v3 = *(v1 + 32);
  withTable._object = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *(v1 + 32) = withTable._countAndFlagsBits;
  *(v1 + 40) = object;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  sub_1B219DF24(v3, withTable._object, v4, v5, v6);
}

uint64_t FTS5TableDefinition.deinit()
{
  v1 = *(v0 + 24);

  sub_1B219DF24(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 112);

  return v0;
}

uint64_t FTS5TableDefinition.__deallocating_deinit()
{
  FTS5TableDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t FTS5ColumnDefinition.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FTS5ColumnDefinition.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.dropFTS5SynchronizationTriggers(forTable:)(Swift::String forTable)
{
  sub_1B2252CD0();
  MEMORY[0x1B2741EB0](0xD000000000000017, 0x80000001B226DB70);
  sub_1B2122994();
  MEMORY[0x1B2741EB0](6906207, 0xE300000000000000);
  MEMORY[0x1B2741EB0]();
  sub_1B2122C5C();

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B211EAF4();
  sub_1B2122994();
  MEMORY[0x1B2741EB0](6578527, 0xE300000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  sub_1B2122C5C();

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B211EAF4();
  sub_1B2122994();
  v1 = sub_1B2126088();
  MEMORY[0x1B2741EB0](v1, 0xE300000000000000);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  sub_1B2122C5C();

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  MEMORY[0x1B2741EB0](59, 0xE100000000000000);
  v2._countAndFlagsBits = 0;
  v4[0] = MEMORY[0x1E69E7CC0];
  v4[1] = MEMORY[0x1E69E7CC8];
  v3.values._rawValue = v4;
  v2._object = 0xE000000000000000;
  Database.execute(sql:arguments:)(v2, v3);

  sub_1B212D644();
}

uint64_t sub_1B219DEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

uint64_t sub_1B219DF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

const void *sub_1B219DF9C()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B21619D8(&qword_1EB7A1188, &unk_1B2259BA0);
  v1 = sub_1B212CFA0();
  v2 = j__malloc_size(v1);
  sub_1B21160A8(v2);
  return v1;
}

const void *sub_1B219E018()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B211A26C(v1, v2, v3, v4);
  v5 = sub_1B212CFA0();
  v6 = j__malloc_size(v5);
  sub_1B21160A8(v6);
  return v5;
}

void *sub_1B219E06C()
{
  sub_1B212CDB4();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B211A26C(v2, v3, v4, v5);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v6[2] = v0;
  v6[3] = 2 * ((v7 - 32) / 8);
  return v6;
}

const void *sub_1B219E0D0()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v1 = sub_1B212CFA0();
  v2 = j__malloc_size(v1);
  sub_1B21160A8(v2);
  return v1;
}

void *sub_1B219E138()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1B21619D8(qword_1EB7A13D0, qword_1B2257E80);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  v3[2] = v2;
  v3[3] = (2 * ((v4 - 32) / 8)) | 1;
  return v3;
}

const void *sub_1B219E1B4()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B21619D8(&qword_1EB7A1268, &qword_1B2259BD0);
  v1 = sub_1B212CFA0();
  v2 = j__malloc_size(v1);
  sub_1B21160A8(v2);
  return v1;
}

const void *sub_1B219E230()
{
  sub_1B212CDB4();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B211A26C(v1, v2, v3, v4);
  v5 = sub_1B212CFA0();
  v6 = j__malloc_size(v5);
  sub_1B21160A8(v6);
  return v5;
}

unint64_t sub_1B219E2AC()
{
  result = qword_1EB7A1C00;
  if (!qword_1EB7A1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1C00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FTS5.Diacritics(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 sub_1B219E420(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B219E434(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_1B219E474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B219E4D4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_1B219E638(v11, a3, a4);
  *a1 = v8;
  return result;
}

uint64_t sub_1B219E560(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15CC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B219E738(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B219E5CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A15FC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B219E82C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B219E638(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  result = sub_1B2252FC0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B2117214();
        v9 = sub_1B2252610();
        *(v9 + 16) = v8;
      }

      v10[0] = v9 + 32;
      v10[1] = v8;
      sub_1B219EA44(v10, v11, a1, v7, a3);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1B219E920(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1B219E738(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v8 = result;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1B2252610();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      sub_1B219EED0(v11, v12, a1, v8, v4, v5, v6, v7);
      *(v10 + 16) = 0;
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
    return sub_1B219E97C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B219E82C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B219F3BC(v7, v8, a1, v4);
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
    return sub_1B219E97C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B219E920(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1B219E97C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1B22531F0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B219EA44(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v92 = a3;
  v90 = a5;
  v88 = a1;
  v6 = a3[1];
  v93 = MEMORY[0x1E69E7CC0];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v87 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*v92 + 8 * v9);
        v11 = *(*v92 + 8 * v7);
        v12 = v7 + 2;
        v13 = v10;
        while (1)
        {
          v14 = v12;
          if (v12 >= v6)
          {
            break;
          }

          v15 = (v10 < v11) ^ (*(*v92 + 8 * v12++) >= v13);
          v13 = *(*v92 + 8 * v14);
          if ((v15 & 1) == 0)
          {
            v9 = v14;
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v11)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v14)
            {
              v6 = v14;
            }

            v16 = v6 - 1;
            v17 = v7;
            do
            {
              if (v17 != v16)
              {
                v18 = *v92;
                if (!*v92)
                {
                  goto LABEL_113;
                }

                v19 = *(v18 + 8 * v17);
                *(v18 + 8 * v17) = *(v18 + 8 * v16);
                *(v18 + 8 * v16) = v19;
              }

              v20 = ++v17 < v16--;
            }

            while (v20);
            v6 = v92[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v21 = *v92;
            v22 = *v92 + 8 * v9 - 8;
            v23 = v7 - v9;
            do
            {
              v24 = *(v21 + 8 * v9);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v9;
              v22 += 8;
              --v23;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = v8[2];
        v84 = sub_1B21150D0();
        sub_1B2161EC4(v84, v85, v86, v8);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v38 = v8[2];
      v37 = v8[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_1B2161EC4(v37 > 1, v38 + 1, 1, v8);
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v8[2] = v39;
      v40 = v8 + 4;
      v41 = &v8[2 * v38 + 4];
      *v41 = v7;
      v41[1] = v89;
      v91 = *v88;
      if (!*v88)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = &v40[2 * v39 - 2];
          v44 = &v8[2 * v39];
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = v8[4];
            v46 = v8[5];
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          sub_1B213CC74(isUniquelyReferenced_nonNull_native, v30, v31, v32, v33, v34, v35, v36, v87, v88, v89, v90, v91, v92);
          if (!v75)
          {
            goto LABEL_112;
          }

          v76 = &v40[2 * v74];
          v77 = *v76;
          v78 = &v40[2 * v42];
          v79 = *v78;
          v80 = v78[1];
          sub_1B219FC48();
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v77)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v42 > v82)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v80;
          if (v42 >= v82)
          {
            goto LABEL_93;
          }

          v39 = v82 - 1;
          isUniquelyReferenced_nonNull_native = memmove(&v40[2 * v42], v78 + 2, 16 * (v82 - 1 - v42));
          v81[2] = v82 - 1;
          v20 = v82 > 2;
          v8 = v81;
          if (!v20)
          {
            goto LABEL_85;
          }
        }

        v49 = &v40[2 * v39];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = v92[1];
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v93 = v8;
        break;
      }
    }
  }

  if (!*v88)
  {
    goto LABEL_115;
  }

  sub_1B219F8C4(&v93, *v88, v92, v90);
LABEL_89:

  sub_1B212D644();
}

void sub_1B219EED0(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v97 = isUniquelyReferenced_nonNull_native;
  v103 = MEMORY[0x1E69E7CC0];
  v102 = a3;
  v10 = *(a3 + 8);
  if (v10 >= 1)
  {
    v96 = a4;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = v11;
      v14 = v11 + 1;
      if (v11 + 1 < v10)
      {
        sub_1B213CC74(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, v95, v96, v97, v98, v100, v102);
        v16 = (v15 + 16 * v14);
        v17 = (v15 + 16 * v13);
        if (*v16 == *v17 && v16[1] == v17[1])
        {
          v19 = 0;
        }

        else
        {
          v19 = sub_1B22531F0();
        }

        v14 = v13 + 2;
        v20 = 16 * v13;
        v21 = v17 + 5;
        while (v14 < v10)
        {
          if (*(v21 - 1) == *(v21 - 3) && *v21 == *(v21 - 2))
          {
            if (v19)
            {
              goto LABEL_21;
            }
          }

          else if ((v19 ^ sub_1B22531F0()))
          {
            break;
          }

          ++v14;
          v21 += 2;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v14 < v13)
        {
          goto LABEL_121;
        }

        if (v13 < v14)
        {
          v23 = 16 * v14;
          v24 = v14;
          v25 = v13;
          do
          {
            if (v25 != --v24)
            {
              v26 = *v102;
              if (!*v102)
              {
                goto LABEL_126;
              }

              v27 = (v26 + v20);
              v28 = v26 + v23;
              v29 = *v27;
              v30 = v27[1];
              *v27 = *(v28 - 16);
              *(v28 - 16) = v29;
              *(v28 - 8) = v30;
            }

            ++v25;
            v23 -= 16;
            v20 += 16;
          }

          while (v25 < v24);
        }
      }

LABEL_28:
      v31 = v102[1];
      if (v14 < v31)
      {
        if (__OFSUB__(v14, v13))
        {
          goto LABEL_120;
        }

        if (v14 - v13 < v96)
        {
          if (__OFADD__(v13, v96))
          {
            goto LABEL_122;
          }

          if (v13 + v96 >= v31)
          {
            v32 = v102[1];
          }

          else
          {
            v32 = v13 + v96;
          }

          if (v32 < v13)
          {
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
            return;
          }

          if (v14 != v32)
          {
            v99 = v9;
            v101 = v13;
            v33 = *v102;
            v34 = *v102 + 16 * v14;
            v35 = v13 - v14;
            do
            {
              v36 = v14;
              v37 = (v33 + 16 * v14);
              v38 = *v37;
              v39 = v37[1];
              v40 = v35;
              v41 = v34;
              do
              {
                v42 = v38 == *(v41 - 2) && v39 == *(v41 - 1);
                if (v42 || (sub_1B22531F0() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_124;
                }

                v38 = *v41;
                v39 = v41[1];
                *v41 = *(v41 - 1);
                *(v41 - 1) = v39;
                *(v41 - 2) = v38;
                v41 -= 2;
              }

              while (!__CFADD__(v40++, 1));
              v14 = v36 + 1;
              v34 += 16;
              --v35;
            }

            while (v36 + 1 != v32);
            v14 = v32;
            v9 = v99;
            v13 = v101;
          }
        }
      }

      if (v14 < v13)
      {
        goto LABEL_119;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = v12[2];
        v92 = sub_1B21150D0();
        sub_1B2161EC4(v92, v93, v94, v12);
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v45 = v12[2];
      v44 = v12[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_1B2161EC4(v44 > 1, v45 + 1, 1, v12);
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v12[2] = v46;
      v47 = v12 + 4;
      v48 = &v12[2 * v45 + 4];
      *v48 = v13;
      v48[1] = v98;
      v100 = *v97;
      if (!*v97)
      {
        goto LABEL_127;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v12[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v12[4];
            v53 = v12[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_69:
            if (v55)
            {
              goto LABEL_109;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_112;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_117;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v46 < 2)
          {
            goto LABEL_111;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_84:
          if (v70)
          {
            goto LABEL_114;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (v77 < v69)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v49 - 1 >= v46)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          sub_1B213CC74(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, v95, v96, v97, v98, v100, v102);
          if (!v82)
          {
            goto LABEL_125;
          }

          v83 = &v47[2 * v81];
          v84 = *v83;
          v85 = &v47[2 * v49];
          v86 = *v85;
          v87 = v85[1];
          sub_1B219FDA4();
          if (v9)
          {
            goto LABEL_102;
          }

          if (v87 < v84)
          {
            goto LABEL_104;
          }

          v88 = v12;
          v89 = v12[2];
          if (v49 > v89)
          {
            goto LABEL_105;
          }

          *v83 = v84;
          v83[1] = v87;
          if (v49 >= v89)
          {
            goto LABEL_106;
          }

          v46 = v89 - 1;
          isUniquelyReferenced_nonNull_native = memmove(&v47[2 * v49], v85 + 2, 16 * (v89 - 1 - v49));
          v88[2] = v89 - 1;
          v90 = v89 > 2;
          v12 = v88;
          if (!v90)
          {
            goto LABEL_98;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_107;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_108;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_110;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_113;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_118;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v10 = v102[1];
      v11 = v98;
      if (v98 >= v10)
      {
        v103 = v12;
        break;
      }
    }
  }

  if (!*v97)
  {
    goto LABEL_128;
  }

  sub_1B219F9F0(&v103, *v97, v102);
LABEL_102:

  sub_1B212D644();
}

void sub_1B219F3BC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1B22531F0();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1B22531F0()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1B22531F0() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1B2161EC4(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1B219FF28((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1B219FB1C(&v92, *a1, a3);
LABEL_102:
}

void sub_1B219F8C4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v26 = a4;
  v28 = a3;
  v25 = a2;
  v5 = a1;
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = sub_1B21A00CC(v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v24 = v5;
  *v5 = v6;
  v15 = (v6 + 16);
  for (i = *(v6 + 16); ; *v15 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v24 = v6;
      return;
    }

    sub_1B213CC74(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27, v28);
    if (!v17)
    {
      break;
    }

    v5 = (v6 + 16 * i);
    v18 = *v5;
    v19 = &v15[2 * i];
    v20 = *v19;
    v21 = v19[1];
    sub_1B219FC48();
    if (v4)
    {
      goto LABEL_10;
    }

    if (v21 < v18)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v15)
    {
      goto LABEL_12;
    }

    *v5 = v18;
    v5[1] = v21;
    v22 = *v15 - i;
    if (*v15 < i)
    {
      goto LABEL_13;
    }

    i = *v15 - 1;
    isUniquelyReferenced_nonNull_native = memmove(v19, v19 + 2, 16 * v22);
  }

  *v24 = v6;
  __break(1u);
}

uint64_t sub_1B219F9F0(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC(v5);
    v5 = result;
  }

  v15 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v15 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = *v11;
    v13 = v11[1];
    sub_1B219FDA4();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v13 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v13;
    v14 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v14);
  }

  *v15 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1B219FB1C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1B219FF28((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1B219FC48()
{
  sub_1B2116A24();
  sub_1B2132584();
  if (v7 != v8)
  {
    v6(v2, v4, v0);
    v12 = &v0[v4];
    while (1)
    {
      if (v0 >= v12 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_28;
      }

      v10 = *v1;
      if (*v1 >= *v0)
      {
        break;
      }

      v11 = v2 == v1++;
      if (!v11)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++v2;
    }

    v10 = *v0;
    v11 = v2 == v0++;
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v2 = v10;
    goto LABEL_14;
  }

  v6(v1, v5, v0);
  v12 = &v0[v5];
LABEL_15:
  v13 = v1 - 1;
  for (--v3; v12 > v0 && v1 > v2; --v3)
  {
    v15 = *(v12 - 1);
    if (v15 < *v13)
    {
      v11 = v3 + 1 == v1--;
      if (!v11)
      {
        *v3 = *v13;
        v1 = v13;
      }

      goto LABEL_15;
    }

    if (v12 != v3 + 1)
    {
      *v3 = v15;
    }

    --v12;
  }

LABEL_28:
  v16 = v12 - v0;
  if (v1 != v0 || v1 >= &v0[v16])
  {
    memmove(v1, v0, 8 * v16);
  }

  return 1;
}

uint64_t sub_1B219FDA4()
{
  sub_1B2116A24();
  sub_1B2132584();
  if (v6 != v7)
  {
    sub_1B215A618(v2, v4, v0);
    v11 = (v0 + 16 * v4);
    while (1)
    {
      if (v0 >= v11 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      v9 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
      if (v9 || (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v10 = v1;
      v9 = v2 == v1;
      v1 += 16;
      if (!v9)
      {
        goto LABEL_17;
      }

LABEL_18:
      v2 += 16;
    }

    v10 = v0;
    v9 = v2 == v0;
    v0 += 16;
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v2 = *v10;
    goto LABEL_18;
  }

  sub_1B215A618(v1, v5, v0);
  v11 = (v0 + 16 * v5);
LABEL_19:
  v12 = (v1 - 16);
  for (--v3; v11 > v0 && v1 > v2; --v3)
  {
    v14 = *(v11 - 2) == *(v1 - 16) && *(v11 - 1) == *(v1 - 8);
    if (!v14 && (sub_1B22531F0() & 1) != 0)
    {
      v9 = v3 + 1 == v1;
      v1 -= 16;
      if (!v9)
      {
        *v3 = *v12;
        v1 = v12;
      }

      goto LABEL_19;
    }

    if (v11 != v3 + 1)
    {
      *v3 = *(v11 - 1);
    }

    --v11;
  }

LABEL_36:
  v15 = (v11 - v0) / 16;
  if (v1 != v0 || v1 >= v0 + 16 * v15)
  {
    memmove(v1, v0, 16 * v15);
  }

  return 1;
}

uint64_t sub_1B219FF28(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B215A618(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1B215A618(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1B22531F0() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_1B21A00E4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1B21A0110(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B21619D8(&qword_1EB7A0DC8, &unk_1B22544E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1B21A0210()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v52 = v12;

  v13 = sub_1B2131DCC(v5);
  v15 = v14;
  v17 = v16;

  v51 = v3;

  v58 = v7;

  if (v11 && v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      v57 = v1;
      v18 = 0;
      v19 = v5 + 64;
      v53 = v5 + 72;
      v56 = v5;
      v54 = v9;
      v55 = v5 + 64;
      while (!__OFADD__(v18, 1))
      {
        if (v17)
        {
          goto LABEL_40;
        }

        if (*(v5 + 36) != v15)
        {
          goto LABEL_33;
        }

        v20 = 1 << *(v5 + 32);
        if (v13 == v20)
        {
          v17 = 0;
LABEL_30:
          v1 = v57;
          goto LABEL_31;
        }

        if ((v13 & 0x8000000000000000) != 0 || v13 >= v20)
        {
          goto LABEL_34;
        }

        v62 = v11;
        v21 = v13 >> 6;
        if ((*(v19 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_35;
        }

        v61 = *(v5 + 36);
        v59 = v15;
        v60 = v18 + 1;
        v22 = (*(v5 + 48) + 16 * v13);
        v23 = v22[1];
        v63 = *v22;
        sub_1B211EE68(*(v5 + 56) + 40 * v13, v67);
        v24 = type metadata accessor for Row();
        sub_1B211EE68(v67, v64);
        v26 = v65;
        v25 = v66;
        v27 = sub_1B21A1628(v64, v65);
        v28 = *(*(v26 - 8) + 64);
        MEMORY[0x1EEE9AC00](v27);
        sub_1B2111844();
        v31 = v30 - v29;
        (*(v32 + 16))(v30 - v29);

        v33 = sub_1B21B64A0(v58, v31, v24, v26, v25);
        sub_1B2113208(v64);
        if (*(v57 + 16) && (v34 = sub_1B211E590(), (v35 & 1) != 0))
        {
          v36 = *(v57 + 56) + 24 * v34;
          v37 = *(v36 + 8);
          v38 = *(v36 + 16);

          sub_1B2113208(v67);
          swift_beginAccess();
          v40 = *(v33 + 80);
          v39 = *(v33 + 88);
          *(v33 + 80) = v37;
          *(v33 + 88) = v38;
          v41 = v33;
        }

        else
        {
          v41 = v33;
          sub_1B2113208(v67);
        }

        v5 = v56;
        v19 = v55;
        v42 = 1 << *(v56 + 32);
        if (v13 >= v42)
        {
          goto LABEL_36;
        }

        v43 = *(v55 + 8 * v21);
        if ((v43 & (1 << v13)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v56 + 36) != v61)
        {
          goto LABEL_38;
        }

        v44 = v43 & (-2 << (v13 & 0x3F));
        if (v44)
        {
          v13 = __clz(__rbit64(v44)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v45 = v54;
        }

        else
        {
          v46 = v21 << 6;
          v47 = v21 + 1;
          v48 = (v53 + 8 * v21);
          v45 = v54;
          while (v47 < (v42 + 63) >> 6)
          {
            v50 = *v48++;
            v49 = v50;
            v46 += 64;
            ++v47;
            if (v50)
            {
              sub_1B21268C8(v13, v59, 0);
              v13 = __clz(__rbit64(v49)) + v46;
              goto LABEL_26;
            }
          }

          sub_1B21268C8(v13, v59, 0);
          v13 = v42;
        }

LABEL_26:
        v17 = 0;
        v15 = *(v56 + 36);
        *v62 = v63;
        v62[1] = v23;
        v62[2] = v41;
        v11 = v62 + 3;
        v18 = v60;
        if (v60 == v45)
        {
          goto LABEL_30;
        }
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
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
LABEL_31:
    *v52 = v58;
    *(v52 + 8) = v5;
    *(v52 + 16) = v51;
    *(v52 + 24) = v1;
    *(v52 + 32) = v13;
    *(v52 + 40) = v15;
    *(v52 + 48) = v17 & 1;
    sub_1B2111588();
  }
}

void sub_1B21A064C(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    sub_1B212E2A4();
LABEL_13:
    *a1 = v3;
    a1[1] = v8;
    return;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v13 = a1;
    v6 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v8 = *(v3 + 72);
      if (v18 == v8)
      {
        v3 = v17;
        goto LABEL_12;
      }

      Row.subscript.getter();
      v10 = v9;
      v12 = v11;

      sub_1B2113A20(v14, v15, v16);

      sub_1B2113A44(v14, v15, v16);
      sub_1B2151DE0(&v18, v18);
      *v5 = v10;
      *(v5 + 8) = v12;
      *(v5 + 16) = v14;
      *(v5 + 24) = v15;
      *(v5 + 32) = v16;
      v5 += 40;
      ++v6;
      if (v7 == a3)
      {
        v3 = v17;
        v8 = v18;
LABEL_12:
        a1 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1B21A0780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B211431C(a1, a2, a3, a4);
  if (!v7)
  {
    sub_1B212E2A4();
LABEL_17:
    sub_1B2123360(v6, v9, v12);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = v7;
    v27 = v6;
    sub_1B2115BFC();
    v16 = (v14 - v15) >> 6;
    v28 = v9;
    while (v13 < v10)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            v6 = v27;
            goto LABEL_17;
          }

          v5 = *(v4 + 8 * v18);
          ++v12;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v18 = v12;
LABEL_12:
      sub_1B21A18EC();
      v20 = v19 | (v18 << 6);
      v22 = (*(v21 + 48) + 32 * v20);
      v23 = v22[1];
      v24 = v22[2];
      v25 = v22[3];
      v26 = *(*(v21 + 56) + 16 * v20);
      *v11 = *v22;
      *(v11 + 8) = v23;
      *(v11 + 16) = v24;
      *(v11 + 24) = v25;
      *(v11 + 32) = v26;
      if (v17 == v10)
      {

        v12 = v18;
        v6 = v27;
        v9 = v28;
        goto LABEL_17;
      }

      v11 += 48;

      v13 = v17;
      v12 = v18;
      v9 = v28;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1B21A08F0()
{
  sub_1B2111F14();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1B21713A0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  if (!v8)
  {
    *v10 = v4;
    *(v10 + 8) = 0;
    memcpy((v10 + 16), __src, 0xB8uLL);
    *(v10 + 208) = 0;
    *(v10 + 216) = 0;
    *(v10 + 200) = v2;
    *(v10 + 224) = 0;
LABEL_35:
    sub_1B2111588();
    return;
  }

  if (!v6)
  {
    sub_1B21497F4();
LABEL_34:
    *v10 = v4;
    *(v10 + 8) = v0;
    v20 = v11;
    sub_1B211FE14((v10 + 16));
    *(v10 + 200) = v2;
    *(v10 + 208) = v20;
    *(v10 + 216) = v22;
    *(v10 + 224) = v21;
    goto LABEL_35;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1B21497F4();
  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (v12 >= v6)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_38;
    }

    if (!v13)
    {
      break;
    }

    if (v13 == 1)
    {
      goto LABEL_15;
    }

    if (!v11)
    {
      goto LABEL_43;
    }

LABEL_25:
    v18 = *(v11 + 16);
    if (v22 == v18)
    {
      goto LABEL_14;
    }

    if (v22 >= v18)
    {
      goto LABEL_39;
    }

    v23 = v11;
    v19 = v11 + 184 * v22;
    memcpy(v31, (v19 + 32), sizeof(v31));
    ++v22;
    memmove(v32, (v19 + 32), 0xB8uLL);
    nullsub_1(v32);
    sub_1B211AF1C(v31, v30);
    memcpy(v33, v32, sizeof(v33));
    v13 = 2;
LABEL_29:
    memcpy(v8, v33, 0xB8uLL);
    v8 += 184;
    ++v12;
    v11 = v23;
    if (v14 == v6)
    {
      goto LABEL_34;
    }
  }

  v15 = *(v4 + 16);
  v23 = v11;
  if (v0 == v15)
  {
LABEL_32:
    *v10 = v4;
    *(v10 + 8) = v0;
    sub_1B211FE14((v10 + 16));
    *(v10 + 200) = v2;
    *(v10 + 208) = v23;
    *(v10 + 216) = v22;
    *(v10 + 224) = 3;
    goto LABEL_35;
  }

  if (v0 >= v15)
  {
    goto LABEL_40;
  }

  sub_1B2135658(v29);
  ++v0;
  sub_1B2135658(v30);
  nullsub_1(v30);
  memcpy(v31, v30, sizeof(v31));
  nullsub_1(v31);
  sub_1B211FE14(v32);
  sub_1B21A1750(v29, v28, &qword_1EB7A1248, &qword_1B2254A48);
  sub_1B21A16E8(v32);
  memcpy(__dst, v31, sizeof(__dst));
  v11 = v23;
LABEL_14:
  v21 = 1;
LABEL_15:
  v23 = v11;
  while (1)
  {
    sub_1B211FE14(v32);
    if (sub_1B2171378(v32) == 1)
    {
      break;
    }

    sub_1B211FE14(v29);
    sub_1B2171344(v30);
    memcpy(__dst, v30, sizeof(__dst));
    memcpy(v31, v29, sizeof(v31));
    if (sub_1B213EA68(v31) != 1)
    {
      memcpy(v33, v29, sizeof(v33));
      v13 = 1;
      goto LABEL_29;
    }

    v16 = *(v4 + 16);
    if (v0 == v16)
    {
      v17 = __src;
    }

    else
    {
      if (v0 >= v16)
      {
        __break(1u);
        goto LABEL_37;
      }

      sub_1B2135658(v25);
      ++v0;
      sub_1B2135658(v26);
      nullsub_1(v26);
      memcpy(v27, v26, sizeof(v27));
      nullsub_1(v27);
      sub_1B21A1750(v25, v24, &qword_1EB7A1248, &qword_1B2254A48);
      v17 = v27;
    }

    memcpy(v28, v17, sizeof(v28));
    sub_1B211FE14(v26);
    sub_1B21A16E8(v26);
    memcpy(__dst, v28, sizeof(__dst));
    memcpy(v27, v28, sizeof(v27));
    if (sub_1B2171378(v27) == 1)
    {
      goto LABEL_32;
    }

    if (*(v2 + 16))
    {

      v22 = 0;
      v21 = 2;
      v11 = v2;
      if (!v2)
      {
        goto LABEL_43;
      }

      goto LABEL_25;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1B21A0CC8()
{
  sub_1B2111F14();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  if (!v0)
  {
    v11 = *(v2 + 16);
LABEL_12:
    *v5 = v3;
    v5[1] = v11;
    sub_1B2111588();
    return;
  }

  v7 = v1;
  if (!v1)
  {
    v11 = *(v2 + 16);
    goto LABEL_12;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v8 = v0;
    v9 = 0;
    for (i = (v2 + 232 * v6 - 200); ; i -= 232)
    {
      v11 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v11 > *(v3 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      memcpy(__dst, i, 0xE3uLL);
      memmove(v8, i, 0xE3uLL);
      if (v7 + v9 == 1)
      {
        sub_1B21819B8(__dst, v12);
        v11 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 232;
      sub_1B21819B8(__dst, v12);
      --v9;
    }

    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
}

void sub_1B21A0DC4()
{
  sub_1B2111F14();
  sub_1B2111FE0(v4, v5, v6, v7);
  if (!v8)
  {
    sub_1B212E2A4();
LABEL_17:
    sub_1B2113B5C(v12);
    sub_1B2111588();
    return;
  }

  v10 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v8;
    sub_1B2115BFC();
    v15 = (v14 - v2) >> 6;
    while (v13 < v10)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            goto LABEL_17;
          }

          v3 = *(v1 + 8 * v17);
          ++v12;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      v18 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v19 = *(v0 + 48) + 24 * (v18 | (v17 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      *v11 = *v19;
      *(v11 + 8) = v21;
      *(v11 + 16) = v22;
      if (v16 == v10)
      {
        sub_1B2113A20(v20, v21, v22);
        v12 = v17;
        goto LABEL_17;
      }

      v11 += 24;
      sub_1B2113A20(v20, v21, v22);
      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1B21A0ED0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A0FB8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B21A1114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B211431C(a1, a2, a3, a4);
  if (!v7)
  {
    sub_1B212E2A4();
LABEL_17:
    sub_1B2123360(v6, v9, v12);
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = v7;
    v29 = v6;
    sub_1B2115BFC();
    v16 = (v14 - v15) >> 6;
    while (1)
    {
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v5)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            goto LABEL_15;
          }

          v5 = *(v4 + 8 * v18);
          ++v12;
          if (v5)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v18 = v12;
LABEL_12:
      sub_1B21A18EC();
      v20 = v19 | (v18 << 6);
      v22 = v21;
      v23 = (*(v21 + 48) + 16 * v20);
      v24 = *v23;
      v25 = v23[1];
      sub_1B21A1750(*(v21 + 56) + 40 * v20, &v31, &qword_1EB7A0E30, &unk_1B2259360);
      *&v30 = v24;
      *(&v30 + 1) = v25;
      v26 = v33;
      v37 = v33;
      v27 = v32;
      v28 = v31;
      v35 = v31;
      v36 = v32;
      v34 = v30;
      *v11 = v30;
      *(v11 + 16) = v28;
      *(v11 + 32) = v27;
      *(v11 + 48) = v26;
      if (v17 == v10)
      {
        break;
      }

      v11 += 56;

      v13 = v17;
      v12 = v18;
      v9 = v22;
    }

    v12 = v18;
    v9 = v22;
LABEL_15:
    v6 = v29;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1B21A1288(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B21A13E4(unint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v18 = a3;
    v19 = result;
    v7 = 0;
    v8 = *(a4 + 16);
    v9 = a3 - 1;
    for (i = (a4 + 40); ; i += 2)
    {
      if (v8 == v7)
      {
        a3 = v8;
        result = v19;
        goto LABEL_14;
      }

      if (v7 >= *(a4 + 16))
      {
        break;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(i - 1);
      v12 = *i;

      result = sub_1B211E590();
      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }

      v14 = (*(a5 + 56) + 24 * result);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *v6 = v11;
      v6[1] = v12;
      v6[2] = v15;
      v6[3] = v16;
      v6[4] = v17;
      if (v9 == v7)
      {

        a3 = v18;
        result = v19;
        goto LABEL_14;
      }

      v6 += 5;

      ++v7;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21A1628(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1B21A1694()
{
  result = qword_1EB7A1C08;
  if (!qword_1EB7A1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1C08);
  }

  return result;
}

uint64_t sub_1B21A16E8(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1250, &unk_1B2259BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21A1750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(sub_1B21619D8(a3, a4) - 8) + 16);
  v6 = sub_1B2112FD0();
  v7(v6);
  return a2;
}

_BYTE *sub_1B21A17B4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B21A1860()
{
  result = qword_1EB7A1C10;
  if (!qword_1EB7A1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1C10);
  }

  return result;
}

void sub_1B21A18BC()
{

  JUMPOUT(0x1B2741EB0);
}

uint64_t sub_1B21A18D4()
{
}

uint64_t FetchRequest<>.fetchCursor(_:)()
{
  sub_1B21150E0();
  sub_1B212CDC0();
  swift_getAssociatedTypeWitness();
  v0 = sub_1B21129A8();
  return static DatabaseValueConvertible<>.fetchCursor<A>(_:_:)(v0, v1, v2, v3, v4, v5, v6);
}

{
  sub_1B211543C();
  sub_1B21130B8();
  v0 = sub_1B2115A3C();
  return static DatabaseValueConvertible.fetchCursor<A>(_:_:)(v0, v1, v2, v3, v4, v5);
}

{
  sub_1B213CB2C();
  sub_1B2122C8C();
  sub_1B211F200();
  return static Row.fetchCursor<A>(_:_:)(v0, v1, v2, v3);
}

uint64_t FetchRequest<>.fetchSet(_:)()
{
  sub_1B2114774();
  sub_1B212CDC0();
  swift_getAssociatedTypeWitness();
  return static DatabaseValueConvertible<>.fetchSet<A>(_:_:)();
}

{
  sub_1B211AD7C();
  sub_1B2122C98();
  swift_getAssociatedTypeWitness();
  sub_1B2115EC8();
  swift_getAssociatedTypeWitness();
  sub_1B2122518();
  return static Optional<A>.fetchSet<A>(_:_:)();
}

{
  sub_1B21150E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return static DatabaseValueConvertible<>.fetchSet<A>(_:_:)(v5, v0, AssociatedTypeWitness, v4, v2, v1, v3);
}

{
  sub_1B2114774();
  v2 = v1;
  swift_getAssociatedTypeWitness();
  sub_1B2117ADC();
  swift_getAssociatedTypeWitness();
  v3 = sub_1B21226E8();
  return static Optional<A>.fetchSet<A>(_:_:)(v3, v4, v5, v6, v7, v0, v2);
}

{
  sub_1B213CB2C();
  v0 = sub_1B2144154();
  return static Row.fetchSet<A>(_:_:)(v0, v1, v2, v3);
}

uint64_t sub_1B21A1AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  sub_1B211AD7C();
  sub_1B2122C98();
  swift_getAssociatedTypeWitness();
  sub_1B2115EC8();
  swift_getAssociatedTypeWitness();
  v8 = sub_1B2122518();
  return a7(v8);
}

uint64_t static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(sqlite3_stmt *a1, int a2, void (*a3)(_OWORD *__return_ptr), uint64_t a4, uint64_t a5)
{
  a3(v16);
  sub_1B21A2FC0();
  swift_allocError();
  v9 = v8;
  v15[0] = v16[0];
  v15[1] = v16[1];
  v15[2] = v16[2];
  v15[3] = v16[3];
  sub_1B21320F0(a1, a2, &v13);
  v11 = v13;
  v12 = v14;
  sub_1B2183238(a5, v15, &v11, v9);
  sub_1B2113A44(v11, *(&v11 + 1), v12);
  sub_1B218450C(v16);
  return swift_willThrow();
}

void static DatabaseValueConvertible<>.fastDecode(fromStatement:atUncheckedIndex:context:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v29 = v9;
  v10 = sub_1B2252B00();
  sub_1B211280C(v10);
  v28 = v11;
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B21182D8();
  v15 = sub_1B21146D8();
  v17 = sqlite3_column_type(v15, v16);
  if (v17 == 5)
  {
    goto LABEL_5;
  }

  v18 = *(v2 + 8);
  v19 = sub_1B21146D8();
  v20(v19);
  sub_1B2113020(v0);
  if (v21)
  {
    v17 = (*(v28 + 8))(v0, v10);
LABEL_5:
    MEMORY[0x1EEE9AC00](v17);
    sub_1B21156F0();
    *(v22 - 16) = v8;
    *(v22 - 8) = v6;
    v23 = sub_1B21146D8();
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v23, v24, v25, v26, v4);
    goto LABEL_6;
  }

  sub_1B21142DC();
  (*(v27 + 32))(v29, v0, v4);
LABEL_6:
  sub_1B2112FDC();
}

void static DatabaseValueConvertible<>.fastDecode(fromRow:atUncheckedIndex:)()
{
  sub_1B2111640();
  sub_1B2117A88();
  v6 = v5;
  sub_1B212CDC0();
  v7 = sub_1B2252B00();
  sub_1B211280C(v7);
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B211E4C8();
  if (!v3)
  {
    sub_1B214407C();
    Row.fastDecode<A>(_:atUncheckedIndex:)();
    goto LABEL_10;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v20 = v12;
    v21 = v11;
    MEMORY[0x1EEE9AC00](v11);
    v13 = sub_1B211F648();
    if (v13 != 5)
    {
      v14 = sub_1B2121F88();
      v15(v14);
      sub_1B2113020(v4);
      if (!v16)
      {
        sub_1B21142DC();
        (*(v19 + 32))(v6, v4, v0);
LABEL_10:
        sub_1B2112FDC();
        return;
      }

      v13 = (*(v20 + 8))(v4, v21);
    }

    MEMORY[0x1EEE9AC00](v13);
    sub_1B21156F0();
    *(v17 - 16) = sub_1B21A303C;
    *(v17 - 8) = v2;
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v3, v1, sub_1B21A3284, v18, v0);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t static DatabaseValueConvertible<>.fastDecodeIfPresent(fromStatement:atUncheckedIndex:context:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v9 = sub_1B2252B00();
  sub_1B211280C(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B21182D8();
  v15 = sub_1B21146D8();
  if (sqlite3_column_type(v15, v16) == 5)
  {
    v17 = a5;
    v18 = 1;
  }

  else
  {
    v19 = *(a4 + 8);
    v20 = sub_1B21146D8();
    v21(v20);
    sub_1B2113020(v5);
    if (v22)
    {
      v23 = (*(v11 + 8))(v5, v9);
      MEMORY[0x1EEE9AC00](v23);
      sub_1B21156F0();
      *(v24 - 16) = a1;
      *(v24 - 8) = a2;
      v25 = sub_1B21146D8();
      return static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v25, v26, v27, v28, a3);
    }

    sub_1B21142DC();
    (*(v30 + 32))(a5, v5, a3);
    v17 = a5;
    v18 = 0;
  }

  return sub_1B21117B4(v17, v18, 1, a3);
}

void static DatabaseValueConvertible<>.fastDecodeIfPresent(fromRow:atUncheckedIndex:)()
{
  sub_1B2111640();
  sub_1B2117A88();
  v6 = v5;
  sub_1B212CDC0();
  v7 = sub_1B2252B00();
  sub_1B211280C(v7);
  v9 = *(v8 + 64);
  sub_1B21117FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B211E4C8();
  if (!v3)
  {
    sub_1B214407C();
    Row.fastDecodeIfPresent<A>(_:atUncheckedIndex:)();
    goto LABEL_11;
  }

  v24 = v6;
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v13 = v12;
    v23 = v11;
    MEMORY[0x1EEE9AC00](v11);
    if (sub_1B211F648() == 5)
    {
      v14 = v24;
      v15 = 1;
LABEL_10:
      sub_1B21117B4(v14, v15, 1, v0);
      goto LABEL_11;
    }

    v16 = sub_1B2121F88();
    v17(v16);
    sub_1B2113020(v4);
    if (!v18)
    {
      sub_1B21142DC();
      (*(v22 + 32))(v24, v4, v0);
      v14 = v24;
      v15 = 0;
      goto LABEL_10;
    }

    v19 = (*(v13 + 8))(v4, v23);
    MEMORY[0x1EEE9AC00](v19);
    sub_1B21156F0();
    *(v20 - 16) = sub_1B21A3288;
    *(v20 - 8) = v2;
    static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)(v3, v1, sub_1B21A3284, v21, v0);
LABEL_11:
    sub_1B2112FDC();
    return;
  }

  __break(1u);
}

uint64_t sub_1B21A24DC@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a1;
  v6 = 1;

  return RowDecodingContext.init(row:key:)(v3, &v5, a2);
}

void (*sub_1B21A2564(void *a1))(void *)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = FastDatabaseValueCursor._isDone.modify();
  return sub_1B21A25C0;
}

void (*sub_1B21A26B8(void *a1))(void *)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = FastNullableDatabaseValueCursor._isDone.modify();
  return sub_1B21A325C;
}

uint64_t static DatabaseValueConvertible<>.fetchSet(_:arguments:adapter:)()
{
  sub_1B211AD7C();
  sub_1B2117FF8(v1, v2);
  result = static DatabaseValueConvertible<>.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7, v8);
  if (!v0)
  {
    type metadata accessor for FastDatabaseValueCursor();
    sub_1B21165B0();
    swift_getWitnessTable();
    return Set.init<A>(_:)();
  }

  return result;
}

uint64_t sub_1B21A2870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  sub_1B211AD7C();
  v11 = v10;
  sub_1B21229B4();
  v13 = v12();
  if (!v8)
  {
    v21 = sub_1B2112014(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25[0]);
    v11 = a8(v21);
    sub_1B2142D18(v25);
  }

  return v11;
}

uint64_t static Optional<A>.fetchAll(_:arguments:adapter:)()
{
  sub_1B2114774();
  sub_1B2117FF8(v1, v2);
  result = static Optional<A>.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7, v8);
  if (!v0)
  {
    sub_1B2252B00();
    sub_1B22526A0();
    sub_1B2116A40();
    type metadata accessor for FastNullableDatabaseValueCursor();
    sub_1B21119A4();
    sub_1B21160BC();
    WitnessTable = swift_getWitnessTable();
    sub_1B2115C0C(WitnessTable, v11, v12);
    return v13;
  }

  return result;
}

uint64_t static Optional<A>.fetchSet(_:arguments:adapter:)()
{
  sub_1B211AD7C();
  sub_1B2117FF8(v1, v2);
  result = static Optional<A>.fetchCursor(_:arguments:adapter:)(v3, v4, v5, v6, v7, v8);
  if (!v0)
  {
    sub_1B2115EC8();
    sub_1B2252B00();
    sub_1B2115EC8();
    type metadata accessor for FastNullableDatabaseValueCursor();
    swift_getWitnessTable();
    sub_1B21160BC();
    swift_getWitnessTable();
    return Set.init<A>(_:)();
  }

  return result;
}

{
  sub_1B2114774();
  v7 = *v1;
  result = static Optional<A>.fetchCursor(_:arguments:adapter:)(v2, &v7, v3, v4, v5);
  if (!v0)
  {
    sub_1B2117ADC();
    sub_1B2252B00();
    sub_1B2117ADC();
    type metadata accessor for NullableDatabaseValueCursor();
    swift_getWitnessTable();
    sub_1B2116884();
    swift_getWitnessTable();
    return Set.init<A>(_:)();
  }

  return result;
}

uint64_t sub_1B21A2BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  sub_1B211A288();
  v10 = v9;
  v12 = v11;
  v14 = *v13;
  v15 = v13[1];
  sub_1B2122784(v16, v21);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B22546B0;
  __src[0] = v12;
  __src[1] = v10;
  __src[2] = v14;
  __src[3] = v15;
  sub_1B2114CC4(__src);
  memcpy((v17 + 32), __src, 0xB8uLL);
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v24 = v17;

  sub_1B2142B5C(v21, v22);
  v25 = 2;
  sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  sub_1B21576B0();
  v18 = sub_1B212DE98();
  v19 = a9(v18);
  sub_1B2122400(v22, &qword_1EB7A1C18, &qword_1B2259C90);
  return v19;
}

uint64_t sub_1B21A2D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  sub_1B2122C98();
  v14 = v13;
  v17 = *v15;
  v16 = v15[1];
  sub_1B2122784(v18, v26);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B22546B0;
  __src[0] = v11;
  __src[1] = v10;
  __src[2] = v17;
  __src[3] = v16;
  sub_1B2114CC4(__src);
  memcpy((v19 + 32), __src, 0xB8uLL);
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v29 = v19;

  sub_1B2142B5C(v26, v27);
  v30 = 2;
  v20 = sub_1B21619D8(&qword_1EB7A1C18, &qword_1B2259C90);
  v21 = sub_1B21576B0();
  v22 = a10(v14, v27, a6, v20, a7, a8, a9, v21);
  sub_1B2122400(v27, &qword_1EB7A1C18, &qword_1B2259C90);
  return v22;
}

uint64_t sub_1B21A2F0C()
{
  sub_1B211AD7C();
  v2 = v1;
  sub_1B21229B4();
  v4 = v3();
  if (!v0)
  {
    v12 = sub_1B2112014(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16, v17[0]);
    v2 = v13(v12);
    sub_1B2142D18(v17);
  }

  return v2;
}

unint64_t sub_1B21A2FC0()
{
  result = qword_1EB7A1C20;
  if (!qword_1EB7A1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A1C20);
  }

  return result;
}

uint64_t sub_1B21A3014()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B21A30B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21A30F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21A3130(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21A316C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DatabasePublishers(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B21A333C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21A33D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 162))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B21A3420(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 162) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 146) = 0u;
      return result;
    }

    *(a1 + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21A34B4(uint64_t result, char a2)
{
  v2 = *(result + 104) & 1;
  v3 = *(result + 160) & 0x81FF | ((a2 & 3) << 13);
  *(result + 64) &= 1uLL;
  *(result + 104) = v2;
  *(result + 160) = v3;
  return result;
}

uint64_t sub_1B21A34FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B21A353C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B21A35CC(unsigned __int8 a1)
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](a1);
  return sub_1B2253470();
}

uint64_t sub_1B21A3630()
{
  v1 = *v0;
  sub_1B2253420();
  sub_1B21A35A4(v3, v1);
  return sub_1B2253470();
}

uint64_t sub_1B21A36CC(uint64_t a1, void (*a2)(char *, uint64_t, __int128 *, uint64_t))
{
  v4 = v2;
  sub_1B21173F4();
  v6._countAndFlagsBits = 0xD000000000000019;
  Database.execute(sql:arguments:)(v6, v7);

  if (!v9)
  {
    v13 = 1;
    v12 = *v4;
    v10 = *(v4 + 4);
    sub_1B2158E58(&v12, &v11);

    a2(&v13, a1, v4, a1);
    return sub_1B21A38B8();
  }

  return result;
}

uint64_t sub_1B21A37E4()
{
  sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  v3 = *v0;
  v2 = v0[1];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = v3;
  *(inited + 40) = v2;

  sub_1B2112554(inited, &v7);
  v4._object = 0x80000001B226DD00;
  v5.values._rawValue = &v7;
  v4._countAndFlagsBits = 0xD000000000000033;
  Database.execute(sql:arguments:)(v4, v5);
}

uint64_t sub_1B21A38B8()
{
  sub_1B21173F4();
  v0._countAndFlagsBits = 0xD000000000000018;
  Database.execute(sql:arguments:)(v0, v1);
}

_BYTE *storeEnumTagSinglePayload for Migration.ForeignKeyChecks(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B21A3A00()
{
  result = qword_1EB7A1C28[0];
  if (!qword_1EB7A1C28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A1C28);
  }

  return result;
}

uint64_t sub_1B21A3A54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21A3AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2112028();
  memcpy(v7, v8, v9);
  sub_1B2112028();
  memcpy(v10, v11, v12);
  if (sub_1B21A6348(&v27) == 1)
  {
    v24[0] = a2;
    v24[1] = a3;
    sub_1B21C7B28(v26);
    memcpy(v28, v26, 0xABuLL);
    if (sub_1B21A6348(v28) == 1)
    {
      memcpy(v25, v26, 0xABuLL);
LABEL_8:
      sub_1B212AC5C(v25, &qword_1EB7A1CB0, &qword_1B225A4B8);
    }

    v17 = memcpy(v25, v26, 0xABuLL);
    v18 = *v3;
    MEMORY[0x1EEE9AC00](v17);
    v21[2] = v24;
    result = sub_1B21C3948(sub_1B21A638C, v21, v19);
    if ((v20 & 1) == 0)
    {
      sub_1B2194714();

      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    memcpy(v24, __src, 0xABuLL);
    memcpy(v28, __src, 0xABuLL);
    sub_1B21818BC(v24, v22);
    sub_1B21C76E0();
    memcpy(v25, v23, 0xABuLL);
    if (sub_1B21A6348(v25) == 1)
    {
      memcpy(v22, v23, 0xABuLL);
      sub_1B212AC5C(v22, &qword_1EB7A1CB0, &qword_1B225A4B8);
      sub_1B21449A8();
      v13 = *(*v3 + 16);
      sub_1B2144A08();
      result = sub_1B212AC5C(a1, &qword_1EB7A1CB0, &qword_1B225A4B8);
      v15 = *v3;
      *(v15 + 16) = v13 + 1;
      v16 = v15 + 16 * v13;
      *(v16 + 32) = a2;
      *(v16 + 40) = a3;
      *v3 = v15;
    }

    else
    {

      sub_1B212CDCC(a1);
      memcpy(v22, v23, 0xABuLL);
      return sub_1B212CDCC(v22);
    }
  }

  return result;
}

uint64_t sub_1B21A3D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B21A64B8(a1, &v9);
  if (*(&v10 + 1) == 1)
  {
    sub_1B212AC5C(&v9, qword_1EB7A1570, &qword_1B225A4D0);
    sub_1B21A3E34(a2, a3, v12);

    sub_1B212AC5C(a1, qword_1EB7A1570, &qword_1B225A4D0);
    v6 = qword_1EB7A1570;
    v7 = &qword_1B225A4D0;
  }

  else
  {
    v12[0] = v9;
    v12[1] = v10;
    v13 = v11;
    sub_1B2144750(v12, a2, a3, &v9);

    sub_1B212CDCC(a1);
    sub_1B212CDCC(&v9);
    v6 = &qword_1EB7A0E30;
    v7 = &unk_1B2259360;
  }

  return sub_1B212AC5C(v12, v6, v7);
}

uint64_t sub_1B21A3E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_1B21C7C4C(&v12);
  if (*(&v13 + 1) == 1)
  {
    result = sub_1B212AC5C(&v12, qword_1EB7A1570, &qword_1B225A4D0);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = xmmword_1B2259350;
  }

  else
  {
    v15 = v12;
    v16 = v13;
    v17 = v14;
    v7 = *v3;
    MEMORY[0x1EEE9AC00](v5);
    v11[2] = v18;
    result = sub_1B21C3948(sub_1B21A638C, v11, v8);
    if (v9)
    {
      __break(1u);
    }

    else
    {
      sub_1B2194714();

      v10 = v16;
      *a3 = v15;
      *(a3 + 16) = v10;
      *(a3 + 32) = v17;
    }
  }

  return result;
}

void sub_1B21A3F40()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B2252190();
  v8 = *(v5 + 16);
  v9 = v5 + 40;
  v101 = v6;
  v55 = v3;
  if (v8)
  {
    while (*(v3 + 16))
    {
      v10 = *(v9 - 8);
      v11 = *v9;

      sub_1B2111664();
      v12 = sub_1B211E590();
      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }

      v56 = v9;
      v57 = v8;
      v14 = *(v3 + 56) + 216 * v12;
      sub_1B21165CC();
      memcpy(v15, v16, v17);
      sub_1B21165CC();
      memcpy(v18, v19, v20);
      sub_1B21165CC();
      memmove(v21, v22, v23);
      v68[0] = v10;
      v68[1] = v11;
      memcpy(v69, __src, sizeof(v69));

      sub_1B2181728(v66, __dst);
      sub_1B2181728(v67, __dst);
      sub_1B212AC5C(v68, &qword_1EB7A13A8, &qword_1B2257E40);
      memcpy(v71, v67, 0xD2uLL);
      v70[0] = v10;
      v70[1] = v11;
      memcpy(__dst, v67, 0x68uLL);
      v24 = v71[13];
      v59 = v71[14];
      *v63 = *&v67[113];
      *&v63[15] = *&v67[128];
      v25 = v71[17];
      v26 = v71[18];
      v60 = *&v67[152];
      v61 = *&v67[168];
      *v62 = *&v67[184];
      *&v62[10] = *&v67[194];
      v72[2] = *&v67[80];
      v72[1] = *&v67[64];
      v72[0] = *&v67[48];
      v73 = *&v67[96];
      v74 = v71[13];
      v75 = v71[14];
      *v76 = *&v67[113];
      *&v76[15] = *&v67[128];
      v77 = v71[17];
      v78 = v71[18];
      v79 = *&v67[152];
      v80 = *&v67[168];
      v81[0] = *&v67[184];
      *(v81 + 10) = *&v67[194];
      v86 = *&v67[48];
      v87 = *&v67[64];
      v88 = *&v67[80];
      v89 = *&v67[96];
      v85[0] = *&v67[113];
      *(v85 + 15) = *&v67[128];
      *(v84 + 10) = *&v67[194];
      v84[0] = *&v67[184];
      v83 = *&v67[168];
      v82 = *&v67[152];
      sub_1B2181728(v71, __src);
      sub_1B2136148(v72, __src);

      v27 = v1;
      v28 = sub_1B21A3F40(v25, v26);
      v58 = v29;

      v9 = __dst;
      v90[0] = __dst[3];
      v90[1] = __dst[4];
      v90[2] = __dst[5];
      v91 = *&__dst[6];
      v92 = v24;
      v93 = v59;
      *v94 = *v63;
      *&v94[15] = *&v63[15];
      v95 = v25;
      v96 = v26;
      *(v99 + 10) = *&v62[10];
      v99[0] = *v62;
      v98 = v61;
      v97 = v60;
      sub_1B2137224(v90);
      __dst[3] = v86;
      __dst[4] = v87;
      __dst[5] = v88;
      *&__dst[6] = v89;
      memcpy(v100, __dst, 0x68uLL);
      *(&v100[14] + 1) = v85[0];
      *&v100[19] = v82;
      v100[13] = MEMORY[0x1E69E7CC0];
      LOBYTE(v100[14]) = 0;
      v100[16] = *(v85 + 15);
      v100[17] = v28;
      v100[18] = v58;
      *&v100[21] = v83;
      *&v100[23] = v84[0];
      *(&v100[24] + 2) = *(v84 + 10);
      sub_1B2181728(v100, __src);
      swift_isUniquelyReferenced_nonNull_native();
      *&__dst[0] = v7;
      sub_1B2111664();
      sub_1B211E590();
      v30 = v7[2];
      sub_1B2118304();
      if (__OFADD__(v33, v34))
      {
        goto LABEL_19;
      }

      v9 = v31;
      v35 = v32;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      if (sub_1B2252E70())
      {
        sub_1B2111664();
        v36 = sub_1B211E590();
        v3 = v55;
        v38 = v57;
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_22;
        }

        v9 = v36;
      }

      else
      {
        v3 = v55;
        v38 = v57;
      }

      if (v35)
      {
        goto LABEL_21;
      }

      v7 = *&__dst[0];
      sub_1B21129C8(*&__dst[0] + 8 * (v9 >> 6));
      v39 = (v7[6] + 16 * v9);
      *v39 = v10;
      v39[1] = v11;
      memcpy((v7[7] + 216 * v9), v100, 0xD2uLL);
      v40 = v7[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_20;
      }

      v7[2] = v42;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = *(v101 + 16);
        sub_1B21150D0();
        sub_1B214400C();
        v101 = v47;
      }

      v1 = v27;
      v44 = *(v101 + 16);
      v43 = *(v101 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1B211156C(v43);
        sub_1B214400C();
        v101 = v48;
      }

      *(v101 + 16) = v44 + 1;
      v45 = v101 + 16 * v44;
      *(v45 + 32) = v10;
      *(v45 + 40) = v11;
      sub_1B218179C(v100);
      sub_1B212AC5C(v70, &qword_1EB7A13A8, &qword_1B2257E40);
      v9 = v56 + 16;
      v8 = v38 - 1;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    sub_1B2115C3C(*&__dst[0]);
    v51 = (v49 + v9 * v50);
    sub_1B21165CC();
    memcpy(v52, v53, v54);
    memcpy(v51, v100, 0xD2uLL);
    sub_1B218179C(__src);
    sub_1B2115700();
    sub_1B2117408();
    __break(1u);
LABEL_22:
    sub_1B2253390();
    __break(1u);
  }

  else
  {
LABEL_16:
    sub_1B2112FDC();
  }
}

void sub_1B21A44DC()
{
  sub_1B2111640();
  v1 = v0;
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1B2252190();
  v6 = *(v3 + 16);
  v7 = (v3 + 40);
  v45 = v1;
  if (v6)
  {
    while (*(v1 + 16))
    {
      v9 = *(v7 - 1);
      v8 = *v7;

      v10 = sub_1B211E590();
      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }

      v47 = v6;
      v46 = v7;
      v12 = (*(v1 + 56) + 216 * v10);
      memcpy(__dst, v12, 0xD2uLL);
      memcpy(__src, v12, 0xD2uLL);
      memmove(v56, v12, 0xD2uLL);
      v57[0] = v9;
      v57[1] = v8;
      memcpy(v58, __src, sizeof(v58));

      sub_1B2181728(__dst, v53);
      sub_1B2181728(v56, v53);
      sub_1B212AC5C(v57, &qword_1EB7A13A8, &qword_1B2257E40);
      memcpy(v60, v56, 0xD2uLL);
      v59[0] = v9;
      v59[1] = v8;
      memcpy(v53, v56, 0x88uLL);
      v13 = v60[17];
      v14 = v60[18];
      v48 = v60[19];
      v50 = *&v56[153];
      v51 = *&v56[169];
      v52[0] = *&v56[185];
      *(v52 + 9) = *&v56[194];
      memcpy(v61, &v56[48], 0x58uLL);
      v61[11] = v60[17];
      v61[12] = v60[18];
      LOBYTE(v61[13]) = v60[19];
      *(&v61[13] + 1) = *&v56[153];
      *(&v61[15] + 1) = *&v56[169];
      *(&v61[17] + 1) = *&v56[185];
      *(&v61[18] + 2) = *&v56[194];
      v15 = swift_allocObject();
      *(v15 + 16) = MEMORY[0x1E69E7CC0];
      v63 = *&v56[48];
      *&v64 = *&v56[64];
      memcpy(v49, &v61[5], sizeof(v49));
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1B214D354;
      *(v16 + 24) = v15;
      sub_1B2181728(v60, __src);
      sub_1B2136148(v61, __src);

      v62[0] = v63;
      *&v62[1] = v64;
      *(&v62[1] + 1) = sub_1B2139E34;
      *&v62[2] = v16;
      memcpy(&v62[2] + 8, v49, 0x7AuLL);
      memcpy(v49, v62, 0x58uLL);
      v63 = *(&v62[6] + 9);
      v64 = *(&v62[7] + 9);
      v65[0] = *(&v62[8] + 9);
      *(v65 + 9) = *(&v62[9] + 2);
      v17 = v61[11];
      v18 = v61[12];
      sub_1B2136148(v62, __src);
      v6 = sub_1B21A44DC(v17, v18);
      v20 = v19;
      sub_1B2137224(v62);

      memcpy(v66, &v53[6], sizeof(v66));
      v67 = v13;
      v68 = v14;
      v69 = v48;
      v70 = v50;
      v71 = v51;
      *v72 = v52[0];
      *&v72[9] = *(v52 + 9);
      sub_1B2137224(v66);
      memcpy(&v53[6], v49, 0x58uLL);
      memcpy(v73, v53, 0x88uLL);
      v73[17] = v6;
      v73[18] = v20;
      LOBYTE(v73[19]) = 0;
      *(&v73[19] + 1) = v63;
      *(&v73[21] + 1) = v64;
      *(&v73[23] + 1) = v65[0];
      *(&v73[24] + 2) = *(v65 + 9);
      sub_1B2181728(v73, __src);
      swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v5;
      sub_1B211E590();
      v21 = v5[2];
      sub_1B2118304();
      if (__OFADD__(v24, v25))
      {
        goto LABEL_18;
      }

      v6 = v22;
      v26 = v23;
      sub_1B21619D8(&qword_1EB7A13C0, &qword_1B2257E60);
      if (sub_1B2252E70())
      {
        v27 = sub_1B211E590();
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_21;
        }

        v6 = v27;
      }

      if (v26)
      {
        goto LABEL_20;
      }

      v5 = v53[0];
      sub_1B21129C8(v53[0] + 8 * (v6 >> 6));
      v29 = (v5[6] + 16 * v6);
      *v29 = v9;
      v29[1] = v8;
      memcpy((v5[7] + 216 * v6), v73, 0xD2uLL);
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_19;
      }

      v5[2] = v32;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v4 + 16);
        sub_1B21150D0();
        sub_1B214400C();
        v4 = v37;
      }

      v34 = *(v4 + 16);
      v33 = *(v4 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B211156C(v33);
        sub_1B214400C();
        v4 = v38;
      }

      *(v4 + 16) = v34 + 1;
      v35 = v4 + 16 * v34;
      *(v35 + 32) = v9;
      *(v35 + 40) = v8;
      sub_1B218179C(v73);
      sub_1B212AC5C(v59, &qword_1EB7A13A8, &qword_1B2257E40);
      v1 = v45;
      v7 = v46 + 2;
      v6 = v47 - 1;
      if (v47 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1B2115C3C(v53[0]);
    v41 = (v39 + v6 * v40);
    sub_1B21165CC();
    memcpy(v42, v43, v44);
    memcpy(v41, v73, 0xD2uLL);
    sub_1B218179C(__src);
    sub_1B2115700();
    sub_1B2117408();
    __break(1u);
LABEL_21:
    sub_1B2253390();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1B2112FDC();
  }
}