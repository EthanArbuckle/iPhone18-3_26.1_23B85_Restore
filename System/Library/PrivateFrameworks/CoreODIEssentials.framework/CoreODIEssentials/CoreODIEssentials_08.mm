uint64_t sub_1DAFCD8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODIAssessment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFCD910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL ODIAssessmentResult.isSuccessful.getter()
{
  v1 = type metadata accessor for ODIAssessmentResult(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAF6F9BC(v0, v5);
  v6 = swift_getEnumCaseMultiPayload() != 1;
  sub_1DAFCD910(v5, type metadata accessor for ODIAssessmentResult);
  return v6;
}

uint64_t sub_1DAFCDA24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DAFCDB2C(char a1)
{
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](a1 & 1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFCDB74(char a1)
{
  if (a1)
  {
    return 0x646F43726F727265;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DAFCDBAC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v16 = *(a2 + 32);
  v17 = v4;
  v19 = v4;
  v20 = v16;
  type metadata accessor for ArmandDeviceDataField.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1DB09E1A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v15[1];
  sub_1DB09E434();
  LOBYTE(v19) = 0;
  v13 = v18;
  sub_1DB09E144();
  if (!v13)
  {
    LOBYTE(v19) = *(v12 + *(a2 + 52));
    v21 = 1;
    sub_1DAFCF144();
    sub_1DB09E194();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1DAFCDD7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v11 = sub_1DB09DC64();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v37 = &v33 - v14;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  type metadata accessor for ArmandDeviceDataField.CodingKeys();
  swift_getWitnessTable();
  v38 = sub_1DB09E0E4();
  v35 = *(v38 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v38, v16);
  v18 = &v33 - v17;
  v43 = a2;
  v44 = a3;
  v36 = a3;
  v45 = a4;
  v46 = a5;
  v19 = type metadata accessor for ArmandDeviceDataField();
  v33 = *(v19 - 8);
  v20 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v33 - v22;
  (*(*(a2 - 8) + 56))(&v33 - v22, 1, 1, a2);
  v24 = a1[3];
  v25 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = v39;
  sub_1DB09E414();
  if (v26)
  {
    v30 = v41;
    v29 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return (*(v30 + 8))(v23, v29);
  }

  else
  {
    v27 = v35;
    LOBYTE(v43) = 0;
    v28 = v37;
    sub_1DB09E074();
    (*(v41 + 40))(v23, v28, v42);
    v47 = 1;
    sub_1DAFCF0F0();
    sub_1DB09E0C4();
    (*(v27 + 8))(v18, v38);
    v23[*(v19 + 52)] = v43;
    v31 = v33;
    (*(v33 + 16))(v34, v23, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    return (*(v31 + 8))(v23, v19);
  }
}

BOOL sub_1DAFCE15C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1DAFCDAF4(*a1, *a2);
}

uint64_t sub_1DAFCE174(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1DAFCDB2C(*v1);
}

uint64_t sub_1DAFCE188(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1DAFCDB04(a1, *v2);
}

uint64_t sub_1DAFCE19C(uint64_t a1, void *a2)
{
  sub_1DB09E3A4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1DAFCDB04(v9, *v2);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFCE1E8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1DAFCDB74(*v1);
}

uint64_t sub_1DAFCE1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1DAFCDA24(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DAFCE230@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1DAF35018();
  *a2 = result;
  return result;
}

uint64_t sub_1DAFCE264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAFCE2B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAFCE348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for AnyODIKnownBinding(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v29[-v16];
  v18 = *v3;
  v19 = *(v4 + 8);
  if (v18 && *(v18 + 16) && (v20 = sub_1DAF35210(a1, a2), (v21 & 1) != 0))
  {
    sub_1DAF40458(*(v18 + 56) + *(v9 + 72) * v20, v14);
    sub_1DAF40398(v14, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0x65756C6176;
    *(inited + 40) = 0xE500000000000000;
    sub_1DB0559F0((inited + 48));
    *(inited + 88) = 0x646F43726F727265;
    *(inited + 96) = 0xE900000000000065;
    if ((v19 + 45) >= 9u)
    {
      v23 = qword_1DB0AC5D8[v19 ^ 0x80u];
    }

    else
    {
      v23 = -(v19 + 45);
    }

    v28 = MEMORY[0x1E69E6540];
    *(inited + 128) = MEMORY[0x1E69E6530];
    *(inited + 136) = v28;
    *(inited + 104) = v23;
    ODIBindingsDict.init(dictionaryLiteral:)(inited, a3);
    return sub_1DAFCEB70(v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC0ED60, &qword_1DB0BB050);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1DB0A04E0;
    *(v24 + 32) = 0x646F43726F727265;
    *(v24 + 40) = 0xE900000000000065;
    if ((v19 + 45) >= 9u)
    {
      v25 = qword_1DB0AC5D8[v19 ^ 0x80u];
    }

    else
    {
      v25 = -(v19 + 45);
    }

    v26 = MEMORY[0x1E69E6540];
    *(v24 + 72) = MEMORY[0x1E69E6530];
    *(v24 + 80) = v26;
    *(v24 + 48) = v25;
    return ODIBindingsDict.init(dictionaryLiteral:)(v24, a3);
  }
}

uint64_t sub_1DAFCE5AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_1DB09DC64();
  v5 = *(a2 + 40);
  sub_1DB09DC74();
  v6 = *(v2 + *(a2 + 52));
  if ((v6 + 45) >= 9u)
  {
    MEMORY[0x1E1280A80](9);
    v7 = qword_1DB0AC5D8[v6 ^ 0x80u];
  }

  else
  {
    v7 = (v6 + 45);
  }

  return MEMORY[0x1E1280A80](v7);
}

uint64_t sub_1DAFCE638(uint64_t a1)
{
  sub_1DB09E3A4();
  sub_1DAFCE5AC(v3, a1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFCE688(uint64_t a1, uint64_t a2)
{
  sub_1DB09E3A4();
  sub_1DAFCE5AC(v4, a2);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFCE6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = *(a3 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DB09DC64();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v41 = &v37 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v20 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v21);
  v23 = &v37 - v22;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v24 = *(type metadata accessor for ArmandDeviceDataField() + 52);
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 > 214)
  {
    if (v25 <= 216)
    {
      if (v25 == 215)
      {
        if (v26 == 215)
        {
          goto LABEL_31;
        }
      }

      else if (v26 == 216)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    switch(v25)
    {
      case 0xD9:
        if (v26 == 217)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      case 0xDA:
        if (v26 == 218)
        {
          goto LABEL_31;
        }

        goto LABEL_35;
      case 0xDB:
        if (v26 == 219)
        {
          goto LABEL_31;
        }

LABEL_35:
        v30 = 0;
        return v30 & 1;
    }

LABEL_29:
    if ((v26 - 211) < 9 || qword_1DB0AC5D8[v25 ^ 0x80] != qword_1DB0AC5D8[v26 ^ 0x80])
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  if (v25 > 212)
  {
    if (v25 == 213)
    {
      if (v26 == 213)
      {
        goto LABEL_31;
      }
    }

    else if (v26 == 214)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  if (v25 == 211)
  {
    if (v26 == 211)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  if (v25 != 212)
  {
    goto LABEL_29;
  }

  if (v26 != 212)
  {
    goto LABEL_35;
  }

LABEL_31:
  v38 = a6;
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = *(v15 + 16);
  v28(v23, a1, v14);
  v28(&v23[v27], a2, v14);
  v29 = *(v42 + 48);
  if (v29(v23, 1, a3) == 1)
  {
    if (v29(&v23[v27], 1, a3) == 1)
    {
      v30 = 1;
    }

    else
    {
      v15 = v40;
      v14 = TupleTypeMetadata2;
      v30 = 0;
    }
  }

  else
  {
    v28(v41, v23, v14);
    if (v29(&v23[v27], 1, a3) == 1)
    {
      (*(v42 + 8))(v41, a3);
      v30 = 0;
      v15 = v40;
      v14 = TupleTypeMetadata2;
    }

    else
    {
      v31 = v42;
      v32 = v39;
      (*(v42 + 32))(v39, &v23[v27], a3);
      v33 = *(v38 + 8);
      v34 = v41;
      v30 = sub_1DB09D6A4();
      v35 = *(v31 + 8);
      v35(v32, a3);
      v35(v34, a3);
    }
  }

  (*(v15 + 8))(v23, v14);
  return v30 & 1;
}

uint64_t sub_1DAFCEB70(uint64_t a1)
{
  v2 = type metadata accessor for AnyODIKnownBinding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAFCEBEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1DB09DC64();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAFCEC64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x24)
  {
    v7 = 36;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v10 = v8 + 1;
  v11 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v14 < 2)
    {
LABEL_31:
      if (v6 < 0x24)
      {
        v17 = *(a1 + v8);
        if (v17 >= 0xD3)
        {
          v18 = v17 - 210;
        }

        else
        {
          v18 = 0;
        }

        if (v18 >= 0xA)
        {
          return v18 - 9;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v16 = (*(v4 + 48))(a1, v5);
        if (v16 >= 2)
        {
          return v16 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_31;
  }

LABEL_20:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1DAFCEE0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x24)
  {
    v10 = 36;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + 1;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 == 0 || !v13)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v17 = ~v10 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v11 != -1)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v12] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v12] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 < 0x24)
  {
    a1[v11] = a2 - 37;
  }

  else if (v9 >= a2)
  {
    v23 = *(v7 + 56);

    v23();
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v9 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }

      else if (v22 == 1)
      {
        *a1 = v21;
      }

      else
      {
        *a1 = v21;
      }
    }
  }
}

unint64_t sub_1DAFCF0F0()
{
  result = qword_1ECC0EDE8;
  if (!qword_1ECC0EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EDE8);
  }

  return result;
}

unint64_t sub_1DAFCF144()
{
  result = qword_1ECC0EDF0[0];
  if (!qword_1ECC0EDF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC0EDF0);
  }

  return result;
}

id sub_1DAFCF218(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  v36 = *a4;
  if (a1)
  {
    sub_1DB09DE44();

    *&v38 = a2;
    *(&v38 + 1) = a3;
    MEMORY[0x1E127FE90](0x727245666328202CLL, 0xED0000203D20726FLL);
    *&v37[0] = a1;
    type metadata accessor for CFError(0);
    sub_1DAFD2738(&qword_1EE3009F0, type metadata accessor for CFError);
    v7 = sub_1DB09E324();
    v9 = v8;

    MEMORY[0x1E127FE90](v7, v9);

    MEMORY[0x1E127FE90](41, 0xE100000000000000);
    v10 = v38;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v11 = MEMORY[0x1E69E7CC0];
    v12 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v13 = *(v12 + 16);

    if (v13)
    {
      v14 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v15)
      {
        sub_1DAF409DC(*(v12 + 56) + 32 * v14, &v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v11 = *&v37[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1DAF72FF4(0, *(v11 + 2) + 1, 1, v11);
    }

    v17 = *(v11 + 2);
    v16 = *(v11 + 3);
    if (v17 >= v16 >> 1)
    {
      v11 = sub_1DAF72FF4((v16 > 1), v17 + 1, 1, v11);
    }

    *(v11 + 2) = v17 + 1;
    v18 = &v11[56 * v17];
    *(v18 + 2) = v10;
    *(v18 + 6) = 0xD000000000000029;
    *(v18 + 7) = 0x80000001DB0C70D0;
    *(v18 + 8) = 0xD000000000000018;
    *(v18 + 9) = 0x80000001DB0C7100;
    *(v18 + 10) = 378;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v38 = v11;
    sub_1DAF40D20(&v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v37, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v20 = -1;
    switch(v36)
    {
      case 1:
        v20 = -2;
        break;
      case 2:
        v20 = -3;
        break;
      case 3:
        v20 = -4;
        break;
      case 4:
        v20 = -5;
        break;
      case 5:
        v20 = -6;
        break;
      case 6:
        v20 = -7;
        break;
      case 7:
        v20 = -8;
        break;
      case 8:
        v20 = -9;
        break;
      case 9:
        v20 = -10;
        break;
      case 10:
        v20 = -11;
        break;
      case 11:
        v20 = -12;
        break;
      case 12:
        v20 = -13;
        break;
      case 13:
        v20 = -14;
        break;
      case 14:
        v20 = -15;
        break;
      case 15:
        v20 = -16;
        break;
      case 16:
        v20 = -17;
        break;
      case 17:
        v20 = -18;
        break;
      case 18:
        v20 = -19;
        break;
      case 19:
        v20 = -20;
        break;
      case 20:
        v20 = -21;
        break;
      case 21:
        v20 = -22;
        break;
      case 22:
        v20 = -28;
        break;
      case 23:
        v20 = -29;
        break;
      case 24:
        v20 = 200;
        break;
      case 25:
        v20 = 20000;
        break;
      case 26:
        v20 = 20001;
        break;
      case 27:
        v20 = 20100;
        break;
      case 28:
        v20 = 40000;
        break;
      case 29:
        v20 = 40010;
        break;
      case 30:
        v20 = 40011;
        break;
      case 31:
        v20 = 40012;
        break;
      case 32:
        v20 = 40013;
        break;
      case 33:
        v20 = 40014;
        break;
      case 34:
        v20 = 40015;
        break;
      case 35:
        v20 = 40020;
        break;
      case 36:
        v20 = 40021;
        break;
      case 37:
        v20 = 40022;
        break;
      case 38:
        v20 = 40023;
        break;
      case 39:
        v20 = 40024;
        break;
      case 40:
        v20 = 40025;
        break;
      case 41:
        v20 = 40026;
        break;
      case 42:
        v20 = 40027;
        break;
      case 43:
        v20 = 40028;
        break;
      case 44:
        v20 = 40029;
        break;
      case 45:
        v20 = 40030;
        break;
      case 46:
        v20 = 40101;
        break;
      case 47:
        v20 = 40102;
        break;
      case 48:
        v20 = 40200;
        break;
      case 49:
        v20 = 40201;
        break;
      case 50:
        v20 = 40205;
        break;
      case 51:
        v20 = 40401;
        break;
      case 52:
        v20 = 40402;
        break;
      case 53:
        v20 = 40403;
        break;
      case 54:
        v20 = 40404;
        break;
      case 55:
        v20 = 40500;
        break;
      case 56:
        v20 = 40600;
        break;
      case 57:
        v20 = 40601;
        break;
      case 58:
        v20 = 50000;
        break;
      case 59:
        v20 = 50001;
        break;
      case 60:
        v20 = 50002;
        break;
      case 61:
        v20 = 99991;
        break;
      case 62:
        v20 = 99992;
        break;
      case 63:
        v20 = 99993;
        break;
      case 64:
        v20 = -1101;
        break;
      case 65:
        v20 = -1102;
        break;
      case 66:
        v20 = -1103;
        break;
      case 67:
        v20 = -1104;
        break;
      case 68:
        v20 = -1105;
        break;
      case 69:
        v20 = -1106;
        break;
      case 70:
        v20 = -1107;
        break;
      case 71:
        v20 = -1108;
        break;
      case 72:
        v20 = -1109;
        break;
      case 73:
        v20 = -1201;
        break;
      case 74:
        v20 = -1202;
        break;
      case 75:
        v20 = -1203;
        break;
      case 76:
        v20 = -1204;
        break;
      case 77:
        v20 = -1401;
        break;
      case 78:
        v20 = -1402;
        break;
      case 79:
        v20 = -1403;
        break;
      case 80:
        v20 = -1404;
        break;
      case 81:
        v20 = -1405;
        break;
      case 82:
        v20 = -1406;
        break;
      case 83:
        v20 = -1407;
        break;
      case 84:
        v20 = -1301;
        break;
      case 85:
        v20 = -1302;
        break;
      case 86:
        v20 = -1303;
        break;
      case 87:
        v20 = -1304;
        break;
      case 88:
        v20 = -1305;
        break;
      case 89:
        v20 = -1306;
        break;
      case 90:
        v20 = -1307;
        break;
      case 91:
        v20 = -1308;
        break;
      case 92:
        v20 = -1309;
        break;
      case 93:
        v20 = -1310;
        break;
      case 94:
        v20 = -1311;
        break;
      case 95:
        v20 = -1314;
        break;
      case 96:
        v20 = -1315;
        break;
      case 97:
        v20 = -1316;
        break;
      case 98:
        v20 = -1317;
        break;
      case 99:
        v20 = -131600;
        break;
      case 100:
        v20 = -2101;
        break;
      case 101:
        v20 = -2102;
        break;
      case 102:
        v20 = -2103;
        break;
      case 103:
        v20 = -2104;
        break;
      case 104:
        v20 = -2105;
        break;
      case 105:
        v20 = -2106;
        break;
      case 106:
        v20 = -2107;
        break;
      case 107:
        v20 = -2108;
        break;
      case 108:
        v20 = -2109;
        break;
      case 109:
        v20 = -2110;
        break;
      case 110:
        v20 = -2111;
        break;
      case 111:
        v20 = -2112;
        break;
      case 112:
        v20 = -2113;
        break;
      case 113:
        v20 = -2114;
        break;
      case 114:
        v20 = -2115;
        break;
      case 115:
        v20 = -2116;
        break;
      case 116:
        v20 = -2117;
        break;
      case 117:
        v20 = -2118;
        break;
      case 118:
        v20 = -2119;
        break;
      case 119:
        v20 = -2120;
        break;
      case 120:
        v20 = -3101;
        break;
      case 121:
        v20 = -3102;
        break;
      case 122:
        v20 = -3103;
        break;
      case 123:
        v20 = -3104;
        break;
      case 124:
        v20 = -3105;
        break;
      case 125:
        v20 = -3106;
        break;
      case 126:
        v20 = -3107;
        break;
      case 127:
        v20 = -3108;
        break;
      case 128:
        v20 = -3109;
        break;
      case 129:
        v20 = -3110;
        break;
      case 130:
        v20 = -3111;
        break;
      case 131:
        v20 = -3112;
        break;
      case 132:
        v20 = -3113;
        break;
      case 133:
        v20 = -3151;
        break;
      case 134:
        v20 = -3152;
        break;
      case 135:
        v20 = -3153;
        break;
      case 136:
        v20 = -3154;
        break;
      case 137:
        v20 = -3155;
        break;
      case 138:
        v20 = -3156;
        break;
      case 139:
        v20 = -3157;
        break;
      case 140:
        v20 = -3158;
        break;
      case 141:
        v20 = -3159;
        break;
      case 142:
        v20 = -3161;
        break;
      case 143:
        v20 = -3162;
        break;
      case 144:
        v20 = -3163;
        break;
      case 145:
        v20 = -3164;
        break;
      case 146:
        v20 = -3165;
        break;
      case 147:
        v20 = -3166;
        break;
      case 148:
        v20 = -3167;
        break;
      case 149:
        v20 = -3200;
        break;
      case 150:
        v20 = -3201;
        break;
      case 151:
        v20 = -3202;
        break;
      case 152:
        v20 = -3203;
        break;
      case 153:
        v20 = -3171;
        break;
      case 154:
        v20 = -3172;
        break;
      case 155:
        v20 = -3173;
        break;
      case 156:
        v20 = -3174;
        break;
      case 157:
        v20 = -3175;
        break;
      case 158:
        v20 = -3176;
        break;
      case 159:
        v20 = -3177;
        break;
      case 160:
        v20 = -3178;
        break;
      case 161:
        v20 = -3300;
        break;
      case 162:
        v20 = -4101;
        break;
      case 163:
        v20 = -4102;
        break;
      case 164:
        v20 = -4103;
        break;
      case 165:
        v20 = -4104;
        break;
      case 166:
        v20 = -4105;
        break;
      case 167:
        v20 = -4106;
        break;
      case 168:
        v20 = -4107;
        break;
      case 169:
        v20 = -4108;
        break;
      case 170:
        v20 = -4109;
        break;
      case 171:
        v20 = -4110;
        break;
      case 172:
        v20 = -4111;
        break;
      case 173:
        v20 = -4112;
        break;
      case 174:
        v20 = -4113;
        break;
      case 175:
        v20 = -4114;
        break;
      case 176:
        v20 = -4115;
        break;
      case 177:
        v20 = -4116;
        break;
      case 178:
        v20 = -4117;
        break;
      case 179:
        v20 = -4118;
        break;
      case 180:
        v20 = -4119;
        break;
      case 181:
        v20 = -4120;
        break;
      case 182:
        v20 = -5101;
        break;
      case 183:
        v20 = -5102;
        break;
      case 184:
        v20 = -5103;
        break;
      case 185:
        v20 = -5104;
        break;
      case 186:
        v20 = -5105;
        break;
      case 187:
        v20 = -5106;
        break;
      case 188:
        v20 = -5107;
        break;
      case 189:
        v20 = -5201;
        break;
      case 190:
        v20 = -5202;
        break;
      case 191:
        v20 = -5203;
        break;
      case 192:
        v20 = -5204;
        break;
      case 193:
        v20 = -5205;
        break;
      case 194:
        v20 = -5206;
        break;
      case 195:
        v20 = -5207;
        break;
      case 196:
        v20 = -5208;
        break;
      case 197:
        v20 = -5209;
        break;
      case 198:
        v20 = -5210;
        break;
      case 199:
        v20 = -5211;
        break;
      case 200:
        v20 = -5212;
        break;
      case 201:
        v20 = -5213;
        break;
      case 202:
        v20 = -5214;
        break;
      case 203:
        v20 = -5215;
        break;
      case 204:
        v20 = -5216;
        break;
      case 205:
        v20 = -5217;
        break;
      case 206:
        v20 = -5218;
        break;
      case 207:
        v20 = -5219;
        break;
      case 208:
        v20 = -5301;
        break;
      case 209:
        v20 = -5401;
        break;
      case 210:
        v20 = -5501;
        break;
      case 211:
        v20 = -5601;
        break;
      case 212:
        v20 = -5602;
        break;
      case 213:
        v20 = -5701;
        break;
      case 214:
        v20 = -5702;
        break;
      case 215:
        v20 = -5901;
        break;
      case 216:
        v20 = -5902;
        break;
      case 217:
        v20 = -5903;
        break;
      case 218:
        v20 = -5904;
        break;
      case 219:
        v20 = -5905;
        break;
      case 220:
        v20 = -5906;
        break;
      case 221:
        v20 = -5907;
        break;
      case 222:
        v20 = -5908;
        break;
      case 223:
        v20 = -5909;
        break;
      case 224:
        v20 = -5910;
        break;
      case 225:
        v20 = -5911;
        break;
      case 226:
        v20 = -5912;
        break;
      case 227:
        v20 = -6001;
        break;
      case 228:
        v20 = -6002;
        break;
      case 229:
        v20 = -6003;
        break;
      case 230:
        v20 = -6004;
        break;
      case 231:
        v20 = -6005;
        break;
      case 232:
        v20 = -6006;
        break;
      case 233:
        v20 = -6007;
        break;
      case 234:
        v20 = -6008;
        break;
      case 235:
        v20 = -6009;
        break;
      case 236:
        v20 = -6010;
        break;
      case 237:
        v20 = -6101;
        break;
      case 238:
        v20 = -6102;
        break;
      case 239:
        v20 = -6103;
        break;
      case 240:
        v20 = -6104;
        break;
      case 241:
        v20 = -6105;
        break;
      case 242:
        v20 = -7000;
        break;
      case 243:
        v20 = -7001;
        break;
      case 244:
        v20 = -7002;
        break;
      case 245:
        v20 = -7003;
        break;
      case 246:
        v20 = -7004;
        break;
      case 247:
        v20 = -7005;
        break;
      case 248:
        v20 = -7006;
        break;
      case 249:
        v20 = -7007;
        break;
      case 250:
        v20 = -7008;
        break;
      case 251:
        v20 = -7009;
        break;
      case 252:
        v20 = -7010;
        break;
      case 253:
        v20 = -7011;
        break;
      case 254:
        v20 = -7012;
        break;
      case 255:
        v20 = -7013;
        break;
      case 256:
        v20 = -7014;
        break;
      case 257:
        v20 = -7015;
        break;
      case 258:
        v20 = -7016;
        break;
      case 259:
        v20 = -8001;
        break;
      case 260:
        v20 = -8301;
        break;
      case 261:
        v20 = -8304;
        break;
      case 262:
        v20 = -8400;
        break;
      case 263:
        v20 = -8401;
        break;
      case 264:
        v20 = -8403;
        break;
      case 265:
        v20 = -8404;
        break;
      case 266:
        v20 = -8428;
        break;
      case 267:
        v20 = -8429;
        break;
      case 268:
        v20 = -8433;
        break;
      case 269:
        v20 = -8434;
        break;
      case 270:
        v20 = -8500;
        break;
      case 271:
        v20 = -8501;
        break;
      case 272:
        v20 = -8502;
        break;
      case 273:
        v20 = -8503;
        break;
      case 274:
        v20 = -8504;
        break;
      case 275:
        v20 = -10000;
        break;
      case 276:
        v20 = -10001;
        break;
      case 277:
        v20 = -10002;
        break;
      case 278:
        v20 = -11001;
        break;
      case 279:
        v20 = -11002;
        break;
      case 280:
        v20 = -11003;
        break;
      case 281:
        v20 = -11004;
        break;
      case 282:
        v20 = -11005;
        break;
      case 283:
        v20 = -11006;
        break;
      case 284:
        v20 = -11007;
        break;
      case 285:
        v20 = -11008;
        break;
      case 286:
        v20 = -11009;
        break;
      case 287:
        v20 = -11010;
        break;
      case 288:
        v20 = -11011;
        break;
      case 289:
        v20 = -11012;
        break;
      case 290:
        v20 = -11013;
        break;
      case 291:
        v20 = -11014;
        break;
      case 292:
        v20 = -11015;
        break;
      case 293:
        v20 = -11016;
        break;
      case 294:
        v20 = -11017;
        break;
      case 295:
        v20 = -11018;
        break;
      case 296:
        v20 = -11019;
        break;
      case 297:
        v20 = -11020;
        break;
      case 298:
        v20 = -11021;
        break;
      case 299:
        v20 = -11022;
        break;
      case 300:
        v20 = -11023;
        break;
      case 301:
        v20 = -11024;
        break;
      case 302:
        v20 = -11025;
        break;
      case 303:
        v20 = -11026;
        break;
      case 304:
        v20 = -11027;
        break;
      case 305:
        v20 = -11028;
        break;
      case 306:
        v20 = -11029;
        break;
      case 307:
        v20 = -11030;
        break;
      case 308:
        v20 = -11031;
        break;
      case 309:
        v20 = -11032;
        break;
      case 310:
        v20 = -11033;
        break;
      case 311:
        v20 = -11034;
        break;
      case 312:
        v20 = -11035;
        break;
      case 313:
        v20 = -11101;
        break;
      case 314:
        v20 = -11102;
        break;
      case 315:
        v20 = -11103;
        break;
      case 316:
        v20 = -11104;
        break;
      case 317:
        v20 = -11105;
        break;
      case 318:
        v20 = -11106;
        break;
      case 319:
        v20 = -11107;
        break;
      case 320:
        v20 = -11108;
        break;
      case 321:
        v20 = -11109;
        break;
      case 322:
        v20 = -11150;
        break;
      case 323:
        v20 = -11151;
        break;
      case 324:
        v20 = -11152;
        break;
      case 325:
        v20 = -11153;
        break;
      case 326:
        v20 = -11154;
        break;
      case 327:
        v20 = -11155;
        break;
      case 328:
        v20 = -11156;
        break;
      case 329:
        v20 = -11157;
        break;
      case 330:
        v20 = -11158;
        break;
      case 331:
        v20 = -11201;
        break;
      case 332:
        v20 = -11202;
        break;
      case 333:
        v20 = -11207;
        break;
      case 334:
        v20 = -12000;
        break;
      case 335:
        v20 = -12001;
        break;
      case 336:
        v20 = -12002;
        break;
      case 337:
        v20 = -12003;
        break;
      case 338:
        v20 = -12005;
        break;
      case 339:
        v20 = -12007;
        break;
      case 340:
        v20 = -12008;
        break;
      case 341:
        v20 = -12009;
        break;
      case 342:
        v20 = -12010;
        break;
      case 343:
        v20 = -12011;
        break;
      case 344:
        v20 = -12012;
        break;
      case 345:
        v20 = -12013;
        break;
      case 346:
        v20 = -12014;
        break;
      case 347:
        v20 = -12015;
        break;
      case 348:
        v20 = -12016;
        break;
      case 349:
        v20 = -12017;
        break;
      case 350:
        v20 = -12018;
        break;
      case 351:
        v20 = -12019;
        break;
      case 352:
        v20 = -12020;
        break;
      case 353:
        v20 = -12021;
        break;
      case 354:
        v20 = -12022;
        break;
      case 355:
        v20 = -12023;
        break;
      case 356:
        v20 = -12024;
        break;
      case 357:
        v20 = -12025;
        break;
      case 358:
        v20 = -12026;
        break;
      case 359:
        v20 = -12027;
        break;
      case 360:
        v20 = -12028;
        break;
      case 361:
        v20 = -12029;
        break;
      case 362:
        v20 = -12030;
        break;
      case 363:
        v20 = -12031;
        break;
      case 364:
        v20 = -12032;
        break;
      case 365:
        v20 = -12033;
        break;
      case 366:
        v20 = -12034;
        break;
      case 367:
        v20 = -12035;
        break;
      case 368:
        v20 = -12036;
        break;
      case 369:
        v20 = -12037;
        break;
      case 370:
        v20 = -12038;
        break;
      case 371:
        v20 = -12039;
        break;
      case 372:
        v20 = -12040;
        break;
      case 373:
        v20 = -12041;
        break;
      case 374:
        v20 = -12042;
        break;
      case 375:
        v20 = -12043;
        break;
      case 376:
        v20 = -12044;
        break;
      case 377:
        v20 = -12045;
        break;
      case 378:
        v20 = -12046;
        break;
      case 379:
        v20 = -12047;
        break;
      case 380:
        v20 = -12048;
        break;
      case 381:
        v20 = -12049;
        break;
      case 382:
        v20 = -12050;
        break;
      case 383:
        v20 = -12052;
        break;
      case 384:
        v20 = -12053;
        break;
      case 385:
        v20 = -12054;
        break;
      case 386:
        v20 = -12055;
        break;
      case 387:
        v20 = -12056;
        break;
      case 388:
        v20 = -12057;
        break;
      case 389:
        v20 = -12058;
        break;
      case 390:
        v20 = -12059;
        break;
      case 391:
        v20 = -12060;
        break;
      case 392:
        v20 = -12061;
        break;
      case 393:
        v20 = -12062;
        break;
      case 394:
        v20 = -12064;
        break;
      case 395:
        v20 = -12065;
        break;
      case 396:
        v20 = -12066;
        break;
      case 397:
        v20 = -12067;
        break;
      case 398:
        v20 = -12068;
        break;
      case 399:
        v20 = -12069;
        break;
      case 400:
        v20 = -12070;
        break;
      case 401:
        v20 = -12071;
        break;
      case 402:
        v20 = -12072;
        break;
      case 403:
        v20 = -12073;
        break;
      case 404:
        v20 = -12074;
        break;
      case 405:
        v20 = -12075;
        break;
      case 406:
        v20 = -12076;
        break;
      case 407:
        v20 = -12077;
        break;
      case 408:
        v20 = -12078;
        break;
      case 409:
        v20 = -12079;
        break;
      case 410:
        v20 = -12080;
        break;
      case 411:
        v20 = -12081;
        break;
      case 412:
        v20 = -12082;
        break;
      case 413:
        v20 = -12083;
        break;
      case 414:
        v20 = -12084;
        break;
      case 415:
        v20 = -12085;
        break;
      case 416:
        v20 = -12086;
        break;
      case 417:
        v20 = -12087;
        break;
      case 418:
        v20 = -12088;
        break;
      case 419:
        v20 = -12089;
        break;
      case 420:
        v20 = -12090;
        break;
      case 421:
        v20 = -12091;
        break;
      case 422:
        v20 = -12092;
        break;
      case 423:
        v20 = -12093;
        break;
      case 424:
        v20 = -12094;
        break;
      case 425:
        v20 = -12095;
        break;
      case 426:
        v20 = -12096;
        break;
      case 427:
        v20 = -12097;
        break;
      case 428:
        v20 = -12098;
        break;
      case 429:
        v20 = -12099;
        break;
      case 430:
        v20 = -12100;
        break;
      case 431:
        v20 = -12101;
        break;
      case 432:
        v20 = -12102;
        break;
      case 433:
        v20 = -12103;
        break;
      case 434:
        v20 = -12104;
        break;
      case 435:
        v20 = -12105;
        break;
      case 436:
        v20 = -12106;
        break;
      case 437:
        v20 = -12107;
        break;
      case 438:
        v20 = -12108;
        break;
      case 439:
        v20 = -12109;
        break;
      case 440:
        v20 = -12110;
        break;
      case 441:
        v20 = -12111;
        break;
      case 442:
        v20 = -12112;
        break;
      case 443:
        v20 = -12113;
        break;
      case 444:
        v20 = -12116;
        break;
      case 445:
        v20 = -12117;
        break;
      case 446:
        v20 = -12118;
        break;
      case 447:
        v20 = -12119;
        break;
      case 448:
        v20 = -12120;
        break;
      case 449:
        v20 = -12121;
        break;
      case 450:
        v20 = -12122;
        break;
      case 451:
        v20 = -12123;
        break;
      case 452:
        v20 = -12124;
        break;
      case 453:
        v20 = -12125;
        break;
      case 454:
        v20 = -12051;
        break;
      case 455:
        v20 = -12063;
        break;
      case 456:
        v20 = -12200;
        break;
      case 457:
        v20 = -13000;
        break;
      case 458:
        v20 = -14000;
        break;
      case 459:
        v20 = -14001;
        break;
      case 460:
        v20 = -14002;
        break;
      case 461:
        v20 = -14003;
        break;
      default:
        break;
    }
  }

  else
  {
    sub_1DB09DE44();

    *&v38 = a2;
    *(&v38 + 1) = a3;
    MEMORY[0x1E127FE90](0xD000000000000011, 0x80000001DB0C70B0);
    v21 = a3;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v22 = MEMORY[0x1E69E7CC0];
    v23 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v24 = *(v23 + 16);

    if (v24)
    {
      v25 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v26)
      {
        sub_1DAF409DC(*(v23 + 56) + 32 * v25, &v38);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v22 = *&v37[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1DAF72FF4(0, *(v22 + 2) + 1, 1, v22);
    }

    v28 = *(v22 + 2);
    v27 = *(v22 + 3);
    if (v28 >= v27 >> 1)
    {
      v22 = sub_1DAF72FF4((v27 > 1), v28 + 1, 1, v22);
    }

    *(v22 + 2) = v28 + 1;
    v29 = &v22[56 * v28];
    *(v29 + 4) = a2;
    *(v29 + 5) = v21;
    *(v29 + 6) = 0xD000000000000029;
    *(v29 + 7) = 0x80000001DB0C70D0;
    *(v29 + 8) = 0xD000000000000018;
    *(v29 + 9) = 0x80000001DB0C7100;
    *(v29 + 10) = 375;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v38 = v22;
    sub_1DAF40D20(&v38, v37);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v37, 0x636F766E49504944, 0xEE00736E6F697461, v30);
    v20 = -1;
    switch(v36)
    {
      case 1:
        v20 = -2;
        break;
      case 2:
        v20 = -3;
        break;
      case 3:
        v20 = -4;
        break;
      case 4:
        v20 = -5;
        break;
      case 5:
        v20 = -6;
        break;
      case 6:
        v20 = -7;
        break;
      case 7:
        v20 = -8;
        break;
      case 8:
        v20 = -9;
        break;
      case 9:
        v20 = -10;
        break;
      case 10:
        v20 = -11;
        break;
      case 11:
        v20 = -12;
        break;
      case 12:
        v20 = -13;
        break;
      case 13:
        v20 = -14;
        break;
      case 14:
        v20 = -15;
        break;
      case 15:
        v20 = -16;
        break;
      case 16:
        v20 = -17;
        break;
      case 17:
        v20 = -18;
        break;
      case 18:
        v20 = -19;
        break;
      case 19:
        v20 = -20;
        break;
      case 20:
        v20 = -21;
        break;
      case 21:
        v20 = -22;
        break;
      case 22:
        v20 = -28;
        break;
      case 23:
        v20 = -29;
        break;
      case 24:
        v20 = 200;
        break;
      case 25:
        v20 = 20000;
        break;
      case 26:
        v20 = 20001;
        break;
      case 27:
        v20 = 20100;
        break;
      case 28:
        v20 = 40000;
        break;
      case 29:
        v20 = 40010;
        break;
      case 30:
        v20 = 40011;
        break;
      case 31:
        v20 = 40012;
        break;
      case 32:
        v20 = 40013;
        break;
      case 33:
        v20 = 40014;
        break;
      case 34:
        v20 = 40015;
        break;
      case 35:
        v20 = 40020;
        break;
      case 36:
        v20 = 40021;
        break;
      case 37:
        v20 = 40022;
        break;
      case 38:
        v20 = 40023;
        break;
      case 39:
        v20 = 40024;
        break;
      case 40:
        v20 = 40025;
        break;
      case 41:
        v20 = 40026;
        break;
      case 42:
        v20 = 40027;
        break;
      case 43:
        v20 = 40028;
        break;
      case 44:
        v20 = 40029;
        break;
      case 45:
        v20 = 40030;
        break;
      case 46:
        v20 = 40101;
        break;
      case 47:
        v20 = 40102;
        break;
      case 48:
        v20 = 40200;
        break;
      case 49:
        v20 = 40201;
        break;
      case 50:
        v20 = 40205;
        break;
      case 51:
        v20 = 40401;
        break;
      case 52:
        v20 = 40402;
        break;
      case 53:
        v20 = 40403;
        break;
      case 54:
        v20 = 40404;
        break;
      case 55:
        v20 = 40500;
        break;
      case 56:
        v20 = 40600;
        break;
      case 57:
        v20 = 40601;
        break;
      case 58:
        v20 = 50000;
        break;
      case 59:
        v20 = 50001;
        break;
      case 60:
        v20 = 50002;
        break;
      case 61:
        v20 = 99991;
        break;
      case 62:
        v20 = 99992;
        break;
      case 63:
        v20 = 99993;
        break;
      case 64:
        v20 = -1101;
        break;
      case 65:
        v20 = -1102;
        break;
      case 66:
        v20 = -1103;
        break;
      case 67:
        v20 = -1104;
        break;
      case 68:
        v20 = -1105;
        break;
      case 69:
        v20 = -1106;
        break;
      case 70:
        v20 = -1107;
        break;
      case 71:
        v20 = -1108;
        break;
      case 72:
        v20 = -1109;
        break;
      case 73:
        v20 = -1201;
        break;
      case 74:
        v20 = -1202;
        break;
      case 75:
        v20 = -1203;
        break;
      case 76:
        v20 = -1204;
        break;
      case 77:
        v20 = -1401;
        break;
      case 78:
        v20 = -1402;
        break;
      case 79:
        v20 = -1403;
        break;
      case 80:
        v20 = -1404;
        break;
      case 81:
        v20 = -1405;
        break;
      case 82:
        v20 = -1406;
        break;
      case 83:
        v20 = -1407;
        break;
      case 84:
        v20 = -1301;
        break;
      case 85:
        v20 = -1302;
        break;
      case 86:
        v20 = -1303;
        break;
      case 87:
        v20 = -1304;
        break;
      case 88:
        v20 = -1305;
        break;
      case 89:
        v20 = -1306;
        break;
      case 90:
        v20 = -1307;
        break;
      case 91:
        v20 = -1308;
        break;
      case 92:
        v20 = -1309;
        break;
      case 93:
        v20 = -1310;
        break;
      case 94:
        v20 = -1311;
        break;
      case 95:
        v20 = -1314;
        break;
      case 96:
        v20 = -1315;
        break;
      case 97:
        v20 = -1316;
        break;
      case 98:
        v20 = -1317;
        break;
      case 99:
        v20 = -131600;
        break;
      case 100:
        v20 = -2101;
        break;
      case 101:
        v20 = -2102;
        break;
      case 102:
        v20 = -2103;
        break;
      case 103:
        v20 = -2104;
        break;
      case 104:
        v20 = -2105;
        break;
      case 105:
        v20 = -2106;
        break;
      case 106:
        v20 = -2107;
        break;
      case 107:
        v20 = -2108;
        break;
      case 108:
        v20 = -2109;
        break;
      case 109:
        v20 = -2110;
        break;
      case 110:
        v20 = -2111;
        break;
      case 111:
        v20 = -2112;
        break;
      case 112:
        v20 = -2113;
        break;
      case 113:
        v20 = -2114;
        break;
      case 114:
        v20 = -2115;
        break;
      case 115:
        v20 = -2116;
        break;
      case 116:
        v20 = -2117;
        break;
      case 117:
        v20 = -2118;
        break;
      case 118:
        v20 = -2119;
        break;
      case 119:
        v20 = -2120;
        break;
      case 120:
        v20 = -3101;
        break;
      case 121:
        v20 = -3102;
        break;
      case 122:
        v20 = -3103;
        break;
      case 123:
        v20 = -3104;
        break;
      case 124:
        v20 = -3105;
        break;
      case 125:
        v20 = -3106;
        break;
      case 126:
        v20 = -3107;
        break;
      case 127:
        v20 = -3108;
        break;
      case 128:
        v20 = -3109;
        break;
      case 129:
        v20 = -3110;
        break;
      case 130:
        v20 = -3111;
        break;
      case 131:
        v20 = -3112;
        break;
      case 132:
        v20 = -3113;
        break;
      case 133:
        v20 = -3151;
        break;
      case 134:
        v20 = -3152;
        break;
      case 135:
        v20 = -3153;
        break;
      case 136:
        v20 = -3154;
        break;
      case 137:
        v20 = -3155;
        break;
      case 138:
        v20 = -3156;
        break;
      case 139:
        v20 = -3157;
        break;
      case 140:
        v20 = -3158;
        break;
      case 141:
        v20 = -3159;
        break;
      case 142:
        v20 = -3161;
        break;
      case 143:
        v20 = -3162;
        break;
      case 144:
        v20 = -3163;
        break;
      case 145:
        v20 = -3164;
        break;
      case 146:
        v20 = -3165;
        break;
      case 147:
        v20 = -3166;
        break;
      case 148:
        v20 = -3167;
        break;
      case 149:
        v20 = -3200;
        break;
      case 150:
        v20 = -3201;
        break;
      case 151:
        v20 = -3202;
        break;
      case 152:
        v20 = -3203;
        break;
      case 153:
        v20 = -3171;
        break;
      case 154:
        v20 = -3172;
        break;
      case 155:
        v20 = -3173;
        break;
      case 156:
        v20 = -3174;
        break;
      case 157:
        v20 = -3175;
        break;
      case 158:
        v20 = -3176;
        break;
      case 159:
        v20 = -3177;
        break;
      case 160:
        v20 = -3178;
        break;
      case 161:
        v20 = -3300;
        break;
      case 162:
        v20 = -4101;
        break;
      case 163:
        v20 = -4102;
        break;
      case 164:
        v20 = -4103;
        break;
      case 165:
        v20 = -4104;
        break;
      case 166:
        v20 = -4105;
        break;
      case 167:
        v20 = -4106;
        break;
      case 168:
        v20 = -4107;
        break;
      case 169:
        v20 = -4108;
        break;
      case 170:
        v20 = -4109;
        break;
      case 171:
        v20 = -4110;
        break;
      case 172:
        v20 = -4111;
        break;
      case 173:
        v20 = -4112;
        break;
      case 174:
        v20 = -4113;
        break;
      case 175:
        v20 = -4114;
        break;
      case 176:
        v20 = -4115;
        break;
      case 177:
        v20 = -4116;
        break;
      case 178:
        v20 = -4117;
        break;
      case 179:
        v20 = -4118;
        break;
      case 180:
        v20 = -4119;
        break;
      case 181:
        v20 = -4120;
        break;
      case 182:
        v20 = -5101;
        break;
      case 183:
        v20 = -5102;
        break;
      case 184:
        v20 = -5103;
        break;
      case 185:
        v20 = -5104;
        break;
      case 186:
        v20 = -5105;
        break;
      case 187:
        v20 = -5106;
        break;
      case 188:
        v20 = -5107;
        break;
      case 189:
        v20 = -5201;
        break;
      case 190:
        v20 = -5202;
        break;
      case 191:
        v20 = -5203;
        break;
      case 192:
        v20 = -5204;
        break;
      case 193:
        v20 = -5205;
        break;
      case 194:
        v20 = -5206;
        break;
      case 195:
        v20 = -5207;
        break;
      case 196:
        v20 = -5208;
        break;
      case 197:
        v20 = -5209;
        break;
      case 198:
        v20 = -5210;
        break;
      case 199:
        v20 = -5211;
        break;
      case 200:
        v20 = -5212;
        break;
      case 201:
        v20 = -5213;
        break;
      case 202:
        v20 = -5214;
        break;
      case 203:
        v20 = -5215;
        break;
      case 204:
        v20 = -5216;
        break;
      case 205:
        v20 = -5217;
        break;
      case 206:
        v20 = -5218;
        break;
      case 207:
        v20 = -5219;
        break;
      case 208:
        v20 = -5301;
        break;
      case 209:
        v20 = -5401;
        break;
      case 210:
        v20 = -5501;
        break;
      case 211:
        v20 = -5601;
        break;
      case 212:
        v20 = -5602;
        break;
      case 213:
        v20 = -5701;
        break;
      case 214:
        v20 = -5702;
        break;
      case 215:
        v20 = -5901;
        break;
      case 216:
        v20 = -5902;
        break;
      case 217:
        v20 = -5903;
        break;
      case 218:
        v20 = -5904;
        break;
      case 219:
        v20 = -5905;
        break;
      case 220:
        v20 = -5906;
        break;
      case 221:
        v20 = -5907;
        break;
      case 222:
        v20 = -5908;
        break;
      case 223:
        v20 = -5909;
        break;
      case 224:
        v20 = -5910;
        break;
      case 225:
        v20 = -5911;
        break;
      case 226:
        v20 = -5912;
        break;
      case 227:
        v20 = -6001;
        break;
      case 228:
        v20 = -6002;
        break;
      case 229:
        v20 = -6003;
        break;
      case 230:
        v20 = -6004;
        break;
      case 231:
        v20 = -6005;
        break;
      case 232:
        v20 = -6006;
        break;
      case 233:
        v20 = -6007;
        break;
      case 234:
        v20 = -6008;
        break;
      case 235:
        v20 = -6009;
        break;
      case 236:
        v20 = -6010;
        break;
      case 237:
        v20 = -6101;
        break;
      case 238:
        v20 = -6102;
        break;
      case 239:
        v20 = -6103;
        break;
      case 240:
        v20 = -6104;
        break;
      case 241:
        v20 = -6105;
        break;
      case 242:
        v20 = -7000;
        break;
      case 243:
        v20 = -7001;
        break;
      case 244:
        v20 = -7002;
        break;
      case 245:
        v20 = -7003;
        break;
      case 246:
        v20 = -7004;
        break;
      case 247:
        v20 = -7005;
        break;
      case 248:
        v20 = -7006;
        break;
      case 249:
        v20 = -7007;
        break;
      case 250:
        v20 = -7008;
        break;
      case 251:
        v20 = -7009;
        break;
      case 252:
        v20 = -7010;
        break;
      case 253:
        v20 = -7011;
        break;
      case 254:
        v20 = -7012;
        break;
      case 255:
        v20 = -7013;
        break;
      case 256:
        v20 = -7014;
        break;
      case 257:
        v20 = -7015;
        break;
      case 258:
        v20 = -7016;
        break;
      case 259:
        v20 = -8001;
        break;
      case 260:
        v20 = -8301;
        break;
      case 261:
        v20 = -8304;
        break;
      case 262:
        v20 = -8400;
        break;
      case 263:
        v20 = -8401;
        break;
      case 264:
        v20 = -8403;
        break;
      case 265:
        v20 = -8404;
        break;
      case 266:
        v20 = -8428;
        break;
      case 267:
        v20 = -8429;
        break;
      case 268:
        v20 = -8433;
        break;
      case 269:
        v20 = -8434;
        break;
      case 270:
        v20 = -8500;
        break;
      case 271:
        v20 = -8501;
        break;
      case 272:
        v20 = -8502;
        break;
      case 273:
        v20 = -8503;
        break;
      case 274:
        v20 = -8504;
        break;
      case 275:
        v20 = -10000;
        break;
      case 276:
        v20 = -10001;
        break;
      case 277:
        v20 = -10002;
        break;
      case 278:
        v20 = -11001;
        break;
      case 279:
        v20 = -11002;
        break;
      case 280:
        v20 = -11003;
        break;
      case 281:
        v20 = -11004;
        break;
      case 282:
        v20 = -11005;
        break;
      case 283:
        v20 = -11006;
        break;
      case 284:
        v20 = -11007;
        break;
      case 285:
        v20 = -11008;
        break;
      case 286:
        v20 = -11009;
        break;
      case 287:
        v20 = -11010;
        break;
      case 288:
        v20 = -11011;
        break;
      case 289:
        v20 = -11012;
        break;
      case 290:
        v20 = -11013;
        break;
      case 291:
        v20 = -11014;
        break;
      case 292:
        v20 = -11015;
        break;
      case 293:
        v20 = -11016;
        break;
      case 294:
        v20 = -11017;
        break;
      case 295:
        v20 = -11018;
        break;
      case 296:
        v20 = -11019;
        break;
      case 297:
        v20 = -11020;
        break;
      case 298:
        v20 = -11021;
        break;
      case 299:
        v20 = -11022;
        break;
      case 300:
        v20 = -11023;
        break;
      case 301:
        v20 = -11024;
        break;
      case 302:
        v20 = -11025;
        break;
      case 303:
        v20 = -11026;
        break;
      case 304:
        v20 = -11027;
        break;
      case 305:
        v20 = -11028;
        break;
      case 306:
        v20 = -11029;
        break;
      case 307:
        v20 = -11030;
        break;
      case 308:
        v20 = -11031;
        break;
      case 309:
        v20 = -11032;
        break;
      case 310:
        v20 = -11033;
        break;
      case 311:
        v20 = -11034;
        break;
      case 312:
        v20 = -11035;
        break;
      case 313:
        v20 = -11101;
        break;
      case 314:
        v20 = -11102;
        break;
      case 315:
        v20 = -11103;
        break;
      case 316:
        v20 = -11104;
        break;
      case 317:
        v20 = -11105;
        break;
      case 318:
        v20 = -11106;
        break;
      case 319:
        v20 = -11107;
        break;
      case 320:
        v20 = -11108;
        break;
      case 321:
        v20 = -11109;
        break;
      case 322:
        v20 = -11150;
        break;
      case 323:
        v20 = -11151;
        break;
      case 324:
        v20 = -11152;
        break;
      case 325:
        v20 = -11153;
        break;
      case 326:
        v20 = -11154;
        break;
      case 327:
        v20 = -11155;
        break;
      case 328:
        v20 = -11156;
        break;
      case 329:
        v20 = -11157;
        break;
      case 330:
        v20 = -11158;
        break;
      case 331:
        v20 = -11201;
        break;
      case 332:
        v20 = -11202;
        break;
      case 333:
        v20 = -11207;
        break;
      case 334:
        v20 = -12000;
        break;
      case 335:
        v20 = -12001;
        break;
      case 336:
        v20 = -12002;
        break;
      case 337:
        v20 = -12003;
        break;
      case 338:
        v20 = -12005;
        break;
      case 339:
        v20 = -12007;
        break;
      case 340:
        v20 = -12008;
        break;
      case 341:
        v20 = -12009;
        break;
      case 342:
        v20 = -12010;
        break;
      case 343:
        v20 = -12011;
        break;
      case 344:
        v20 = -12012;
        break;
      case 345:
        v20 = -12013;
        break;
      case 346:
        v20 = -12014;
        break;
      case 347:
        v20 = -12015;
        break;
      case 348:
        v20 = -12016;
        break;
      case 349:
        v20 = -12017;
        break;
      case 350:
        v20 = -12018;
        break;
      case 351:
        v20 = -12019;
        break;
      case 352:
        v20 = -12020;
        break;
      case 353:
        v20 = -12021;
        break;
      case 354:
        v20 = -12022;
        break;
      case 355:
        v20 = -12023;
        break;
      case 356:
        v20 = -12024;
        break;
      case 357:
        v20 = -12025;
        break;
      case 358:
        v20 = -12026;
        break;
      case 359:
        v20 = -12027;
        break;
      case 360:
        v20 = -12028;
        break;
      case 361:
        v20 = -12029;
        break;
      case 362:
        v20 = -12030;
        break;
      case 363:
        v20 = -12031;
        break;
      case 364:
        v20 = -12032;
        break;
      case 365:
        v20 = -12033;
        break;
      case 366:
        v20 = -12034;
        break;
      case 367:
        v20 = -12035;
        break;
      case 368:
        v20 = -12036;
        break;
      case 369:
        v20 = -12037;
        break;
      case 370:
        v20 = -12038;
        break;
      case 371:
        v20 = -12039;
        break;
      case 372:
        v20 = -12040;
        break;
      case 373:
        v20 = -12041;
        break;
      case 374:
        v20 = -12042;
        break;
      case 375:
        v20 = -12043;
        break;
      case 376:
        v20 = -12044;
        break;
      case 377:
        v20 = -12045;
        break;
      case 378:
        v20 = -12046;
        break;
      case 379:
        v20 = -12047;
        break;
      case 380:
        v20 = -12048;
        break;
      case 381:
        v20 = -12049;
        break;
      case 382:
        v20 = -12050;
        break;
      case 383:
        v20 = -12052;
        break;
      case 384:
        v20 = -12053;
        break;
      case 385:
        v20 = -12054;
        break;
      case 386:
        v20 = -12055;
        break;
      case 387:
        v20 = -12056;
        break;
      case 388:
        v20 = -12057;
        break;
      case 389:
        v20 = -12058;
        break;
      case 390:
        v20 = -12059;
        break;
      case 391:
        v20 = -12060;
        break;
      case 392:
        v20 = -12061;
        break;
      case 393:
        v20 = -12062;
        break;
      case 394:
        v20 = -12064;
        break;
      case 395:
        v20 = -12065;
        break;
      case 396:
        v20 = -12066;
        break;
      case 397:
        v20 = -12067;
        break;
      case 398:
        v20 = -12068;
        break;
      case 399:
        v20 = -12069;
        break;
      case 400:
        v20 = -12070;
        break;
      case 401:
        v20 = -12071;
        break;
      case 402:
        v20 = -12072;
        break;
      case 403:
        v20 = -12073;
        break;
      case 404:
        v20 = -12074;
        break;
      case 405:
        v20 = -12075;
        break;
      case 406:
        v20 = -12076;
        break;
      case 407:
        v20 = -12077;
        break;
      case 408:
        v20 = -12078;
        break;
      case 409:
        v20 = -12079;
        break;
      case 410:
        v20 = -12080;
        break;
      case 411:
        v20 = -12081;
        break;
      case 412:
        v20 = -12082;
        break;
      case 413:
        v20 = -12083;
        break;
      case 414:
        v20 = -12084;
        break;
      case 415:
        v20 = -12085;
        break;
      case 416:
        v20 = -12086;
        break;
      case 417:
        v20 = -12087;
        break;
      case 418:
        v20 = -12088;
        break;
      case 419:
        v20 = -12089;
        break;
      case 420:
        v20 = -12090;
        break;
      case 421:
        v20 = -12091;
        break;
      case 422:
        v20 = -12092;
        break;
      case 423:
        v20 = -12093;
        break;
      case 424:
        v20 = -12094;
        break;
      case 425:
        v20 = -12095;
        break;
      case 426:
        v20 = -12096;
        break;
      case 427:
        v20 = -12097;
        break;
      case 428:
        v20 = -12098;
        break;
      case 429:
        v20 = -12099;
        break;
      case 430:
        v20 = -12100;
        break;
      case 431:
        v20 = -12101;
        break;
      case 432:
        v20 = -12102;
        break;
      case 433:
        v20 = -12103;
        break;
      case 434:
        v20 = -12104;
        break;
      case 435:
        v20 = -12105;
        break;
      case 436:
        v20 = -12106;
        break;
      case 437:
        v20 = -12107;
        break;
      case 438:
        v20 = -12108;
        break;
      case 439:
        v20 = -12109;
        break;
      case 440:
        v20 = -12110;
        break;
      case 441:
        v20 = -12111;
        break;
      case 442:
        v20 = -12112;
        break;
      case 443:
        v20 = -12113;
        break;
      case 444:
        v20 = -12116;
        break;
      case 445:
        v20 = -12117;
        break;
      case 446:
        v20 = -12118;
        break;
      case 447:
        v20 = -12119;
        break;
      case 448:
        v20 = -12120;
        break;
      case 449:
        v20 = -12121;
        break;
      case 450:
        v20 = -12122;
        break;
      case 451:
        v20 = -12123;
        break;
      case 452:
        v20 = -12124;
        break;
      case 453:
        v20 = -12125;
        break;
      case 454:
        v20 = -12051;
        break;
      case 455:
        v20 = -12063;
        break;
      case 456:
        v20 = -12200;
        break;
      case 457:
        v20 = -13000;
        break;
      case 458:
        v20 = -14000;
        break;
      case 459:
        v20 = -14001;
        break;
      case 460:
        v20 = -14002;
        break;
      case 461:
        v20 = -14003;
        break;
      default:
        break;
    }
  }

  v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v32 = sub_1DB09D6B4();
  v33 = sub_1DB09D604();
  v34 = [v31 initWithDomain:v32 code:v20 userInfo:v33];

  return v34;
}

uint64_t sub_1DAFD1528()
{

  return swift_deallocClassInstance();
}

void *sub_1DAFD1584()
{
  v0 = sub_1DB09CFA4();
  if (v1 >> 60 == 15)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v2 = MEMORY[0x1E69E7CC0];
    v3 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v3 + 16))
    {
      v4 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v5)
      {
        sub_1DAF409DC(*(v3 + 56) + 32 * v4, &v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v2 = *&v31[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1DAF72FF4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1DAF72FF4((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[56 * v7];
    *(v8 + 4) = 0xD000000000000023;
    *(v8 + 5) = 0x80000001DB0C72B0;
    *(v8 + 6) = 0xD000000000000029;
    *(v8 + 7) = 0x80000001DB0C70D0;
    *(v8 + 8) = 0xD00000000000001FLL;
    *(v8 + 9) = 0x80000001DB0C72E0;
    *(v8 + 10) = 392;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v32 = v2;
    sub_1DAF40D20(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v3;
    sub_1DAF3B11C(v31, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v11 = sub_1DB09D6B4();
    v12 = sub_1DB09D604();
    [v10 initWithDomain:v11 code:-1305 userInfo:v12];

    swift_willThrow();
  }

  else
  {
    v13 = *MEMORY[0x1E695E480];
    v14 = v0;
    v15 = v1;
    v16 = sub_1DB09D004();
    v12 = SecCertificateCreateWithData(v13, v16);

    if (v12)
    {
      sub_1DAF4AC40(v14, v15);
    }

    else
    {
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v17 = MEMORY[0x1E69E7CC0];
      v18 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v18 + 16))
      {
        v19 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if ((v20 & 1) != 0 && (sub_1DAF409DC(*(v18 + 56) + 32 * v19, &v32), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
        {
          v17 = *&v31[0];
        }

        else
        {
          v17 = MEMORY[0x1E69E7CC0];
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1DAF72FF4(0, *(v17 + 2) + 1, 1, v17);
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v30 = sub_1DAF72FF4((v21 > 1), v22 + 1, 1, v17);
        v23 = v22 + 1;
        v17 = v30;
      }

      *(v17 + 2) = v23;
      v24 = &v17[56 * v22];
      *(v24 + 4) = 0xD000000000000027;
      *(v24 + 5) = 0x80000001DB0C7300;
      *(v24 + 6) = 0xD000000000000029;
      *(v24 + 7) = 0x80000001DB0C70D0;
      *(v24 + 8) = 0xD00000000000001FLL;
      *(v24 + 9) = 0x80000001DB0C72E0;
      *(v24 + 10) = 395;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v32 = v17;
      sub_1DAF40D20(&v32, v31);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v18;
      sub_1DAF3B11C(v31, 0x636F766E49504944, 0xEE00736E6F697461, v25);
      v12 = v34;
      v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v27 = sub_1DB09D6B4();
      v28 = sub_1DB09D604();
      [v26 initWithDomain:v27 code:-1307 userInfo:v28];

      swift_willThrow();
      sub_1DAF4AC40(v14, v15);
    }
  }

  return v12;
}

uint64_t sub_1DAFD1B20(__SecKey *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v1 = SecKeyCopyExternalRepresentation(a1, error);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DB09D034();
  }

  else
  {
    v7 = 0;
    v4 = sub_1DAFCF218(error[0], 0xD00000000000002DLL, 0x80000001DB0C7280, &v7);
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DAF4B4C0(v4, 0, 0xE000000000000000);

    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DAFD1C2C(char a1, __SecAccessControl *a2, SecKeyRef a3)
{
  v81 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      sub_1DB09DB64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1DB0A0500;
      v6 = *MEMORY[0x1E697ADA8];
      v7 = sub_1DB09D6C4();
      v9 = v8;
      *(v5 + 56) = MEMORY[0x1E69E6158];
      v10 = sub_1DAF4DC24();
      v11 = MEMORY[0x1E69E6530];
      v12 = MEMORY[0x1E69E65A8];
      *(v5 + 32) = v7;
      *(v5 + 40) = v9;
      *(v5 + 96) = v11;
      *(v5 + 104) = v12;
      *(v5 + 64) = v10;
      *(v5 + 72) = 2048;
      sub_1DB09D444();

      sub_1DB09DE44();

      strcpy(&v79, "key algorithm ");
      HIBYTE(v79) = -18;
      v13 = sub_1DB09D6C4();
      MEMORY[0x1E127FE90](v13);

      MEMORY[0x1E127FE90](45, 0xE100000000000000);
      *&v78[0] = 2048;
      v14 = sub_1DB09E1D4();
      MEMORY[0x1E127FE90](v14);

      MEMORY[0x1E127FE90](0x70757320746F6E20, 0xEE00646574726F70);
      v15 = v79;
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v16 = MEMORY[0x1E69E7CC0];
      v17 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v18 = *(v17 + 2);

      v75 = *(&v79 + 1);
      if (v18 && (v19 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v20 & 1) != 0) && (sub_1DAF409DC(*(v17 + 7) + 32 * v19, &v79), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v21 = v15;
        v16 = *&v78[0];
      }

      else
      {
        v21 = v15;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAF72FF4(0, *(v16 + 2) + 1, 1, v16);
      }

      v56 = *(v16 + 2);
      v55 = *(v16 + 3);
      if (v56 >= v55 >> 1)
      {
        v16 = sub_1DAF72FF4((v55 > 1), v56 + 1, 1, v16);
      }

      *(v16 + 2) = v56 + 1;
      v57 = &v16[56 * v56];
      *(v57 + 4) = v21;
      *(v57 + 5) = v75;
      *(v57 + 6) = 0xD000000000000029;
      *(v57 + 7) = 0x80000001DB0C70D0;
      *(v57 + 8) = 0xD000000000000026;
      *(v57 + 9) = 0x80000001DB0C7170;
      *(v57 + 10) = 66;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v79 = v16;
      sub_1DAF40D20(&v79, v78);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      error = v17;
      sub_1DAF3B11C(v78, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      a3 = v17;
      v59 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v60 = sub_1DB09D6B4();
      v61 = sub_1DB09D604();
      [v59 initWithDomain:v60 code:-5211 userInfo:v61];

      goto LABEL_42;
    }

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() getSharedInstance];
  [v23 hasPKASupport];

  v24 = *MEMORY[0x1E697AD78];
  v25 = sub_1DB09D6C4();
  v27 = v26;
  error = 0;
  v28 = a2;
  if (!a2)
  {
    v28 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697ABE8], 0x40000000uLL, &error);
    if (!v28)
    {

      LOWORD(v79) = 200;
      sub_1DAFCF218(error, 0xD000000000000036, 0x80000001DB0C71A0, &v79);
LABEL_42:
      swift_willThrow();
LABEL_43:
      v73 = *MEMORY[0x1E69E9840];
      return a3;
    }
  }

  v74 = v28;
  v76 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB60, &qword_1DB0A9E50);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1DB0AB780;
  v30 = *MEMORY[0x1E697AD18];
  *(result + 32) = *MEMORY[0x1E697AD18];
  v31 = MEMORY[0x1E69E6370];
  v32 = MEMORY[0x1E697AD68];
  *(result + 40) = 0;
  v33 = *v32;
  *(result + 64) = v31;
  *(result + 72) = v33;
  *(result + 104) = MEMORY[0x1E69E6158];
  *(result + 80) = v25;
  *(result + 88) = v27;
  v34 = *MEMORY[0x1E697B200];
  if (*MEMORY[0x1E697B200])
  {
    *(result + 112) = v34;
    *(result + 120) = v22;
    v35 = *MEMORY[0x1E697AD50];
    *(result + 144) = v31;
    *(result + 152) = v35;
    v36 = MEMORY[0x1E69E6530];
    *(result + 160) = 256;
    v37 = *MEMORY[0x1E697AEC8];
    v38 = MEMORY[0x1E697AED0];
    *(result + 184) = v36;
    *(result + 192) = v37;
    v39 = MEMORY[0x1E697AED8];
    if ((a3 & 1) == 0)
    {
      v39 = v38;
    }

    v40 = *v39;
    v41 = result;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EE78, &unk_1DB0ACE70);
    v41[25] = v40;
    v43 = *MEMORY[0x1E697ABC8];
    v41[28] = v42;
    v41[29] = v43;
    type metadata accessor for SecAccessControl(0);
    v41[33] = v44;
    v41[30] = v74;
    v45 = v40;
    v46 = v30;
    v47 = v33;
    v48 = v35;
    v49 = v37;
    v50 = v43;
    v51 = v34;
    v52 = v74;
    v53 = v76;
    sub_1DAF3E794(v41);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0E288, &qword_1DB0A0218);
    swift_arrayDestroy();
    sub_1DAFD26EC();
    sub_1DAFD2738(&qword_1EE3018A8, sub_1DAFD26EC);
    v54 = sub_1DB09D604();

    a3 = SecKeyCreateRandomKey(v54, &error);

    if (a3)
    {
      if (!SecKeyCopyPublicKey(a3))
      {
        if (qword_1EE301DE8 != -1)
        {
          swift_once();
        }

        sub_1DB09DB64();
        sub_1DB09D444();
        if (qword_1EE300B90 != -1)
        {
          swift_once();
        }

        v62 = MEMORY[0x1E69E7CC0];
        v63 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
        if (*(v63 + 16))
        {
          v64 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
          if (v65)
          {
            sub_1DAF409DC(*(v63 + 56) + 32 * v64, &v79);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
            if (swift_dynamicCast())
            {
              v62 = *&v78[0];
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1DAF72FF4(0, *(v62 + 2) + 1, 1, v62);
        }

        v67 = *(v62 + 2);
        v66 = *(v62 + 3);
        if (v67 >= v66 >> 1)
        {
          v62 = sub_1DAF72FF4((v66 > 1), v67 + 1, 1, v62);
        }

        *(v62 + 2) = v67 + 1;
        v68 = &v62[56 * v67];
        *(v68 + 4) = 0xD00000000000002ALL;
        *(v68 + 5) = 0x80000001DB0C7250;
        *(v68 + 6) = 0xD000000000000029;
        *(v68 + 7) = 0x80000001DB0C70D0;
        *(v68 + 8) = 0xD000000000000026;
        *(v68 + 9) = 0x80000001DB0C7170;
        *(v68 + 10) = 91;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        *&v79 = v62;
        sub_1DAF40D20(&v79, v78);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v78, 0x636F766E49504944, 0xEE00736E6F697461, v69);
        v70 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v71 = sub_1DB09D6B4();
        v72 = sub_1DB09D604();
        [v70 initWithDomain:v71 code:-5210 userInfo:v72];

        swift_willThrow();
      }
    }

    else
    {
      LOWORD(v79) = 197;
      sub_1DAFCF218(error, 0xD00000000000002CLL, 0x80000001DB0C71E0, &v79);
      swift_willThrow();
    }

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAFD26EC()
{
  result = qword_1EE3018B0;
  if (!qword_1EE3018B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE3018B0);
  }

  return result;
}

uint64_t sub_1DAFD2738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAFD2788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 586))
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

uint64_t sub_1DAFD27D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 584) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 586) = 1;
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

    *(result + 586) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAFD28C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 464))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DAFD2920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 464) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_1DAFD2A28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1DAF4062C(0, &qword_1ECC0E828, 0x1E69E58C0);
    v5 = sub_1DB09D604();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1DAFD2AC4()
{
  v0 = type metadata accessor for InUseAssertionManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 144) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  result = sub_1DB09D4A4();
  qword_1ECC0EE80 = v3;
  return result;
}

void sub_1DAFD2B48(uint64_t a1, unint64_t a2)
{
  if (v2[15])
  {
    goto LABEL_2;
  }

  v6 = v2[17];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v2[16] == a1 && v6 == a2;
  if (!v7 && (v8 = a1, v9 = a2, v10 = sub_1DB09E254(), a2 = v9, v11 = v10, a1 = v8, (v11 & 1) == 0))
  {
LABEL_2:
    oslog = sub_1DB09D494();
    v3 = sub_1DB09DB74();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DAF16000, oslog, v3, "InUseAssertion requestInUse requested with mismatched bundleIdentifier", v4, 2u);
      MEMORY[0x1E1281810](v4, -1, -1);
    }

    v5 = oslog;
  }

  else
  {
LABEL_14:
    v12 = v2[14];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
      return;
    }

    v2[14] = v14;
    if (v2[18])
    {
      return;
    }

    v15 = a1;
    v16 = a2;

    v17 = v2;
    v18 = sub_1DB09D494();
    v19 = sub_1DB09DB54();
    v20 = v16;

    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DB015E84(v15, v20, &v29);
      _os_log_impl(&dword_1DAF16000, v18, v19, "Taking InUseAssertion for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E1281810](v22, -1, -1);
      MEMORY[0x1E1281810](v21, -1, -1);
    }

    v23 = v17[17];
    v17[16] = v15;
    v17[17] = v20;

    v24 = objc_opt_self();
    v25 = sub_1DB09D6B4();
    v26 = sub_1DB09D6B4();
    v27 = [v24 newAssertionForBundleIdentifier:v25 withReason:v26 level:1];

    v5 = v17[18];
    v17[18] = v27;
  }
}

void sub_1DAFD2DF0(void *a1)
{
  if (v1[17])
  {
    goto LABEL_2;
  }

  if (!v1[15])
  {
    goto LABEL_24;
  }

  v5 = a1;
  v6 = [a1 bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1DB09D6C4();
    v10 = v9;

    v11 = v1[15];
    if (!v11)
    {
LABEL_17:
      v14 = 0;
      v16 = 0;
      if (v10)
      {
LABEL_18:
        if (v16)
        {
          if (v8 == v14 && v10 == v16)
          {

            a1 = v5;
            goto LABEL_24;
          }

          v17 = sub_1DB09E254();

          a1 = v5;
          if (v17)
          {
            goto LABEL_24;
          }

LABEL_2:
          oslog = sub_1DB09D494();
          v2 = sub_1DB09DB74();
          if (os_log_type_enabled(oslog, v2))
          {
            v3 = swift_slowAlloc();
            *v3 = 0;
            _os_log_impl(&dword_1DAF16000, oslog, v2, "InUseAssertion requestInUse requested with mismatched bundle", v3, 2u);
            MEMORY[0x1E1281810](v3, -1, -1);
          }

          v4 = oslog;
          goto LABEL_5;
        }

LABEL_22:

        goto LABEL_2;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v11 = v1[15];
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  v12 = [v11 bundleIdentifier];
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = sub_1DB09D6C4();
  v16 = v15;

  if (v10)
  {
    goto LABEL_18;
  }

LABEL_15:
  a1 = v5;
  if (v16)
  {
    goto LABEL_22;
  }

LABEL_24:
  v18 = v1[14];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    return;
  }

  v1[14] = v20;
  if (v1[18])
  {
    return;
  }

  v21 = a1;
  v22 = v1;
  v23 = sub_1DB09D494();
  v24 = sub_1DB09DB54();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    v27 = [v21 description];
    v28 = sub_1DB09D6C4();
    v30 = v29;

    v31 = sub_1DB015E84(v28, v30, &v38);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1DAF16000, v23, v24, "Taking InUseAssertion for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E1281810](v26, -1, -1);
    MEMORY[0x1E1281810](v25, -1, -1);
  }

  v32 = v22[15];
  v22[15] = v21;
  v33 = v21;

  v34 = objc_opt_self();
  v35 = sub_1DB09D6B4();
  v36 = [v34 newAssertionForBundle:v33 withReason:v35 level:1];

  v4 = v22[18];
  v22[18] = v36;
LABEL_5:
}

void sub_1DAFD3184()
{
  v1 = v0;
  if (!v0[18] || v0[14] <= 0)
  {
    v2 = sub_1DB09D494();
    v3 = sub_1DB09DB74();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DAF16000, v2, v3, "InUseAssertion release requested when none held", v4, 2u);
      MEMORY[0x1E1281810](v4, -1, -1);
    }
  }

  v5 = v1[14];
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1[14] = v7;
    if (v7 <= 0)
    {
      v8 = v1[18];
      if (v8)
      {
        [v8 invalidate];
      }

      v9 = sub_1DB09D494();
      v10 = sub_1DB09DB54();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1DAF16000, v9, v10, "Releasing InUseAssertion", v11, 2u);
        MEMORY[0x1E1281810](v11, -1, -1);
      }

      v12 = v1[18];
      v1[18] = 0;

      v13 = v1[17];
      v1[16] = 0;
      v1[17] = 0;

      v14 = v1[15];
      v1[15] = 0;

      v1[14] = 0;
    }
  }
}

uint64_t sub_1DAFD3308()
{
  v1 = *(v0 + 136);

  v2 = OBJC_IVAR____TtC17CoreODIEssentialsP33_62B399B2DD34B45DBAE8CA5FF1D3DB2321InUseAssertionManager_sharedLogger;
  v3 = sub_1DB09D4B4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

double sub_1DAFD3398()
{
  result = *MEMORY[0x1E6985C88] * 3.0;
  *&qword_1ECC0EE88 = result;
  return result;
}

double sub_1DAFD33B8()
{
  result = *MEMORY[0x1E6985C88];
  qword_1ECC0EE90 = *MEMORY[0x1E6985C88];
  return result;
}

uint64_t sub_1DAFD33D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v19 - v7;
  v9 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x1E69E7CC0];
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19[0] = v9;
    v15 = v9 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v8, v15, v3);
      v19[1] = a1;
      v17 = a1;
      sub_1DB09D9A4();
      (*(v11 - 8))(v8, v3);
      v15 += v16;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1DAFD3560(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v19 - v7;
  v9 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x1E69E7CC0];
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v14 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19[0] = v9;
    v15 = v9 + v14;
    v16 = *(v11 + 56);
    do
    {
      v12(v8, v15, v3);
      v19[1] = a1;
      v17 = a1;
      sub_1DB09D9B4();
      (*(v11 - 8))(v8, v3);
      v15 += v16;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1DAFD36EC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t ODILocationHelper.__allocating_init(authBundle:authBundleIdentifier:context:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 48);
  v13 = *(v5 + 52);
  swift_allocObject();
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DAFD37FC;

  return ODILocationHelper.init(authBundle:authBundleIdentifier:context:analyticsManager:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DAFD37FC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t ODILocationHelper.init(authBundle:authBundleIdentifier:context:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520) - 8) + 64) + 15;
  v6[30] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEA0, &qword_1DB0AD528) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v9 = sub_1DB09D4D4();
  v6[32] = v9;
  v10 = *(v9 - 8);
  v6[33] = v10;
  v11 = *(v10 + 64) + 15;
  v6[34] = swift_task_alloc();
  v12 = sub_1DB09DBB4();
  v6[35] = v12;
  v13 = *(v12 - 8);
  v6[36] = v13;
  v14 = *(v13 + 64) + 15;
  v6[37] = swift_task_alloc();
  v15 = sub_1DB09DBA4();
  v6[38] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v17 = *(*(sub_1DB09D4F4() - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v18 = type metadata accessor for ODISignpost();
  v6[41] = v18;
  v19 = *(v18 - 8);
  v6[42] = v19;
  v20 = *(v19 + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD3B5C, 0, 0);
}

uint64_t sub_1DAFD3B5C()
{
  v48 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 232);
  swift_defaultActor_initialize();
  *(v3 + 112) = xmmword_1DB0AD500;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  v45 = (v3 + 136);
  *(v3 + 200) = 0;
  *(v3 + 144) = 0;
  *(v3 + 204) = 1;
  type metadata accessor for ODILocationHelper.ContinuationsActor();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = MEMORY[0x1E69E7CC0];
  *(v3 + 208) = v4;
  *(v3 + 216) = 0;
  v5 = OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost;
  v6 = *(v2 + 56);
  *(v0 + 368) = v6;
  *(v0 + 376) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3 + v5, 1, 1, v1);
  if (qword_1ECC0E008 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 352);
  v8 = *(v0 + 328);
  v10 = qword_1ECC25A78;
  v9 = unk_1ECC25A80;
  v11 = byte_1ECC25A88;
  v12 = qword_1ECC25A90;
  v13 = byte_1ECC25A98;
  *(v7 + 32) = "enableTelemetry=YES";
  *(v7 + 40) = 19;
  *(v7 + 48) = 2;
  *v7 = v10;
  *(v7 + 8) = v9;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  v14 = *(v8 + 28);
  v15 = v12;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v13 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v16 = *(v0 + 232);
  v17 = *(v0 + 216);
  v18 = *(v0 + 192);
  sub_1DAF5F604(*(v0 + 352), *(v0 + 360));
  v44 = v17;
  sub_1DAF3523C(v17 + 16, v16 + 160);
  sub_1DAF3523C(v16 + 160, v0 + 16);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000023, 0x80000001DB0C7330);
  if (v18)
  {
    v21 = [*(v0 + 192) description];
    v22 = sub_1DB09D6C4();
    v24 = v23;
  }

  else
  {
    v22 = 7104878;
    v24 = 0xE300000000000000;
  }

  v25 = *(v0 + 320);
  v38 = *(v0 + 312);
  v39 = *(v0 + 304);
  v26 = *(v0 + 288);
  v40 = *(v0 + 296);
  v41 = *(v0 + 280);
  v42 = *(v0 + 224);
  v43 = *(v0 + 232);
  v27 = *(v0 + 200);
  v28 = *(v0 + 208);
  MEMORY[0x1E127FE90](v22, v24);

  MEMORY[0x1E127FE90](0xD000000000000018, 0x80000001DB0C7360);
  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = 7104878;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  MEMORY[0x1E127FE90](v29, v30);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v31 = v46;
  LOBYTE(v46) = 4;
  (*(v20 + 16))(v31, v47, &v46, v19, v20);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 384) = sub_1DAF4062C(0, &qword_1EE3018E0, 0x1E69E9610);
  sub_1DB09D4E4();
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  sub_1DAFD88B0(&qword_1EE3018F0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DAF75F50(&qword_1EE301918, &unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DB09DCF4();
  (*(v26 + 104))(v40, *MEMORY[0x1E69E8090], v41);
  v32 = sub_1DB09DBE4();
  *(v0 + 392) = v32;
  v43[19] = v32;
  sub_1DAF3523C(v44 + 16, v0 + 56);
  objc_allocWithZone(type metadata accessor for ODILocationHelper.LocationManagerDelegate(0));
  v33 = v32;

  v34 = sub_1DAFD7E38((v0 + 56), v42);
  v43[29] = v34;
  v35 = *v45;
  *v45 = v34;
  v36 = v34;

  v43[28] = v42;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD4094, v43, 0);
}

uint64_t sub_1DAFD4094()
{
  v43 = v0;
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[29];
    v3 = v0[25];
    v4 = v2[23];
    v5 = v2[24];
    __swift_project_boxed_opaque_existential_1(v2 + 20, v4);
    sub_1DB09DE44();

    v41 = 0xD000000000000004;
    v42 = 0x80000001DB0C7480;
    MEMORY[0x1E127FE90](v3, v1);
    (*(v5 + 16))(0xD000000000000030, 0x80000001DB0C7480, &v41, v4, v5);

    if (qword_1ECC0DFE8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC0EE80;
    v0[50] = qword_1ECC0EE80;
    v7 = sub_1DAFD4464;
LABEL_9:

    return MEMORY[0x1EEE6DFA0](v7, v6, 0);
  }

  v8 = v0[24];
  if (v8)
  {
    v9 = v0[29];
    v10 = v9[23];
    v11 = v9[24];
    __swift_project_boxed_opaque_existential_1(v9 + 20, v10);
    v12 = v8;
    sub_1DB09DE44();

    v41 = 0xD000000000000004;
    v42 = 0x80000001DB0C7400;
    v13 = [v12 description];
    v14 = sub_1DB09D6C4();
    v16 = v15;

    MEMORY[0x1E127FE90](v14, v16);

    (*(v11 + 16))(0xD000000000000025, 0x80000001DB0C7400, &v41, v10, v11);

    if (qword_1ECC0DFE8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC0EE80;
    v0[51] = qword_1ECC0EE80;
    v7 = sub_1DAFD47F4;
    goto LABEL_9;
  }

  v17 = v0[49];
  v18 = v0[45];
  v19 = v0[41];
  v21 = v0[28];
  v20 = v0[29];
  v22 = v0[27];
  v23 = v20[23];
  v24 = v20[24];
  __swift_project_boxed_opaque_existential_1(v20 + 20, v23);
  LOBYTE(v41) = 4;
  (*(v24 + 32))(0xD000000000000050, 0x80000001DB0C73A0, &v41, v23, v24);

  sub_1DB09DC04();
  v25 = v18[3];
  v26 = *v18;
  v27 = v18[1];
  v28 = *(v19 + 28);
  v29 = *(v18 + 16);
  sub_1DB09D464();

  v30 = v0[44];
  v31 = v0[43];
  v33 = v0[39];
  v32 = v0[40];
  v34 = v0[37];
  v35 = v0[34];
  v37 = v0[30];
  v36 = v0[31];
  sub_1DAF60868(v0[45]);

  v38 = v0[1];
  v39 = v0[29];

  return v38(v39);
}

uint64_t sub_1DAFD4464()
{
  v1 = v0[50];
  v2 = v0[29];
  sub_1DAFD2B48(v0[25], v0[26]);
  sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper);
  swift_getObjectType();
  v4 = sub_1DB09D984();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD4530, v4, v3);
}

uint64_t sub_1DAFD4530()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  *(v2 + 128) = 1;
  v5 = *(v2 + 232);
  v6 = objc_allocWithZone(MEMORY[0x1E695FBE8]);
  v7 = v1;
  v8 = v5;
  v9 = sub_1DB09D6B4();
  v10 = [v6 initWithEffectiveBundleIdentifier:v9 delegate:v8 onQueue:v7];

  if (!v10)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  v14 = *(v0 + 208);

  *(v0 + 416) = v10;
  v15 = *(v0 + 232);
  v16 = *(v15 + 120);
  *(v15 + 120) = v10;
  v17 = v10;

  v18 = *(v15 + 232);

  sub_1DAFD8918(v19, v17, v18);

  LODWORD(v15) = [v17 locationServicesAvailable];
  if (v15)
  {
    v20 = *(v0 + 384);
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 256);
    (*(v22 + 104))(v21, *MEMORY[0x1E69E7F98], v23);
    *(v0 + 424) = sub_1DB09DBF4();
    (*(v22 + 8))(v21, v23);
    v11 = sub_1DAFD4BB4;
    v12 = 0;
    v13 = 0;

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  v24 = *(v0 + 360);
  v25 = *(v0 + 328);
  v26 = *(v0 + 216);
  v27 = *(v0 + 224);
  v28 = *(v0 + 192);

  sub_1DB09DC04();
  v29 = v24[3];
  v30 = *v24;
  v31 = v24[1];
  v32 = *(v25 + 28);
  v33 = *(v24 + 16);
  sub_1DB09D464();

  v34 = *(v0 + 352);
  v35 = *(v0 + 344);
  v37 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 296);
  v39 = *(v0 + 272);
  v41 = *(v0 + 240);
  v40 = *(v0 + 248);
  sub_1DAF60868(*(v0 + 360));

  v42 = *(v0 + 8);
  v43 = *(v0 + 232);

  return v42(v43);
}

uint64_t sub_1DAFD47F4()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 232);
  sub_1DAFD2DF0(*(v0 + 192));
  sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper);
  swift_getObjectType();
  v4 = sub_1DB09D984();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD48C0, v4, v3);
}

uint64_t sub_1DAFD48C0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  *(v2 + 128) = 1;
  v4 = [v3 bundlePath];
  sub_1DB09D6C4();

  v5 = *(v2 + 232);
  v6 = objc_allocWithZone(MEMORY[0x1E695FBE8]);
  v7 = v1;
  v8 = v5;
  v9 = sub_1DB09D6B4();

  v10 = [v6 initWithEffectiveBundlePath:v9 delegate:v8 onQueue:v7];

  if (!v10)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  *(v0 + 416) = v10;
  v14 = *(v0 + 232);
  v15 = *(v14 + 120);
  *(v14 + 120) = v10;
  v16 = v10;

  v17 = *(v14 + 232);

  sub_1DAFD8918(v18, v16, v17);

  LODWORD(v14) = [v16 locationServicesAvailable];
  if (v14)
  {
    v19 = *(v0 + 384);
    v21 = *(v0 + 264);
    v20 = *(v0 + 272);
    v22 = *(v0 + 256);
    (*(v21 + 104))(v20, *MEMORY[0x1E69E7F98], v22);
    *(v0 + 424) = sub_1DB09DBF4();
    (*(v21 + 8))(v20, v22);
    v11 = sub_1DAFD4BB4;
    v12 = 0;
    v13 = 0;

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  v23 = *(v0 + 360);
  v24 = *(v0 + 328);
  v25 = *(v0 + 216);
  v26 = *(v0 + 224);
  v27 = *(v0 + 192);

  sub_1DB09DC04();
  v28 = v23[3];
  v29 = *v23;
  v30 = v23[1];
  v31 = *(v24 + 28);
  v32 = *(v23 + 16);
  sub_1DB09D464();

  v33 = *(v0 + 352);
  v34 = *(v0 + 344);
  v36 = *(v0 + 312);
  v35 = *(v0 + 320);
  v37 = *(v0 + 296);
  v38 = *(v0 + 272);
  v40 = *(v0 + 240);
  v39 = *(v0 + 248);
  sub_1DAF60868(*(v0 + 360));

  v41 = *(v0 + 8);
  v42 = *(v0 + 232);

  return v41(v42);
}

uint64_t sub_1DAFD4BB4()
{
  v1 = swift_task_alloc();
  v0[27].i64[0] = v1;
  v1[1] = vextq_s8(v0[26], v0[26], 8uLL);
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  v0[27].i64[1] = v3;
  type metadata accessor for CLAuthorizationStatus(0);
  *v3 = v0;
  v3[1] = sub_1DAFD4CB4;

  return MEMORY[0x1EEE6DDE0](&v0[28], 0, 0, 0xD000000000000015, 0x80000001DB0C7430, sub_1DAFD8A48, v1, v4);
}

uint64_t sub_1DAFD4CB4()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD4DCC, 0, 0);
}

uint64_t sub_1DAFD4DCC()
{
  v1 = *(v0 + 232);

  *(v0 + 456) = *(v0 + 448);
  sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper);
  swift_getObjectType();
  v3 = sub_1DB09D984();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD4E90, v3, v2);
}

uint64_t sub_1DAFD4E90()
{
  v52 = v0;
  v1 = *(v0 + 232);
  *(v1 + 200) = *(v0 + 456);
  *(v1 + 204) = 0;
  sub_1DAF3523C(v1 + 160, v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v2);
  sub_1DB09DE44();

  v50 = 0xD00000000000002CLL;
  v51 = 0x80000001DB0C7450;
  if (*(v1 + 204))
  {
    v4 = 0xEF74657920646576;
    v5 = 0x6972726120746F6ELL;
  }

  else
  {
    *(v0 + 452) = *(*(v0 + 232) + 200);
    sub_1DAFD8A50();
    v5 = sub_1DB09DCD4();
    v4 = v6;
  }

  MEMORY[0x1E127FE90](v5, v4);

  v7 = v50;
  LOBYTE(v50) = 4;
  (*(v3 + 16))(v7, v51, &v50, v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  if (qword_1ECC0DFF8 != -1)
  {
    swift_once();
  }

  [*(v0 + 416) setDistanceFilter_];
  if (qword_1ECC0DFF0 != -1)
  {
    swift_once();
  }

  [*(v0 + 416) setDesiredAccuracy_];
  if (qword_1ECC0E010 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 344);
  v9 = *(v0 + 328);
  v11 = qword_1ECC25AA0;
  v10 = *algn_1ECC25AA8;
  v12 = byte_1ECC25AB0;
  v13 = qword_1ECC25AB8;
  v14 = byte_1ECC25AC0;
  *(v8 + 32) = "enableTelemetry=YES";
  *(v8 + 40) = 19;
  *(v8 + 48) = 2;
  *v8 = v11;
  *(v8 + 8) = v10;
  *(v8 + 16) = v12;
  *(v8 + 24) = v13;
  v15 = *(v9 + 28);
  v16 = v13;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v14 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v17 = *(v0 + 416);
  v18 = *(v0 + 392);
  v20 = *(v0 + 368);
  v19 = *(v0 + 376);
  v21 = *(v0 + 328);
  v22 = *(v0 + 240);
  v23 = *(v0 + 248);
  v24 = *(v0 + 232);
  sub_1DAF5F604(*(v0 + 344), v23);
  v20(v23, 0, 1, v21);
  v25 = OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost;
  swift_beginAccess();
  sub_1DAF63488(v23, v24 + v25, &qword_1ECC0EEA0, &qword_1DB0AD528);
  swift_endAccess();
  [v17 requestLocation];
  v26 = *(v24 + 232);
  sub_1DB09D134();

  v27 = sub_1DB09D154();
  (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
  v28 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
  swift_beginAccess();
  sub_1DAF63488(v22, v26 + v28, &unk_1ECC0EAD0, &qword_1DB0AD520);
  swift_endAccess();
  v29 = *(v0 + 360);
  v30 = *(v0 + 328);
  v31 = *(v0 + 216);
  v32 = *(v0 + 224);
  v33 = *(v0 + 192);

  sub_1DB09DC04();
  v34 = v29[3];
  v35 = *v29;
  v36 = v29[1];
  v37 = *(v30 + 28);
  v38 = *(v29 + 16);
  sub_1DB09D464();

  v39 = *(v0 + 352);
  v40 = *(v0 + 344);
  v42 = *(v0 + 312);
  v41 = *(v0 + 320);
  v43 = *(v0 + 296);
  v44 = *(v0 + 272);
  v46 = *(v0 + 240);
  v45 = *(v0 + 248);
  sub_1DAF60868(*(v0 + 360));

  v47 = *(v0 + 8);
  v48 = *(v0 + 232);

  return v47(v48);
}

Swift::Bool __swiftcall ODILocationHelper.gpsLocationEnabled()()
{
  if (*(v0 + 204))
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    v2 = *(v0 + 200);
    v1 = [objc_opt_self() locationServicesEnabled];
    if (v1)
    {
      LOBYTE(v1) = dword_1F56CA860 == v2 || unk_1F56CA864 == v2;
    }
  }

  return v1;
}

uint64_t ODILocationHelper.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &aBlock[-1] - v5;
  v7 = sub_1DB09D154();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &aBlock[-1] - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &aBlock[-1] - v20;
  if (*(v1 + 128) == 1)
  {
    v22 = sub_1DB09DA24();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_1DAF4F0EC(0, 0, v21, &unk_1DB0AD538, v23);
  }

  v24 = *(v1 + 232);
  if ((*(v24 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didCallLocationDelegate) & 1) == 0)
  {
    v25 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
    swift_beginAccess();
    sub_1DAFD8AA4(v24 + v25, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1DAF40AEC(v6, &unk_1ECC0EAD0, &qword_1DB0AD520);
    }

    else
    {
      (*(v8 + 32))(v16, v6, v7);
      sub_1DB09D134();
      sub_1DB09D094();
      v27 = v26;
      v28 = *(v8 + 8);
      v28(v13, v7);
      *&v29 = v27;
      v30 = v29 | 0x8000000000000000;
      v31 = sub_1DB09D6B4();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = 20;
      aBlock[4] = sub_1DAFB8968;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAFD2A28;
      aBlock[3] = &block_descriptor_10;
      v33 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v33);

      v28(v16, v7);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 160));
  v34 = *(v1 + 208);

  v35 = *(v1 + 224);

  sub_1DAF40AEC(v1 + OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost, &qword_1ECC0EEA0, &qword_1DB0AD528);
  v36 = *(v1 + 216);
  *(v1 + 216) = 0;

  if (v36)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v37 = *(v36 + 216);
      swift_retain_n();

      v36 = v37;
    }

    while (v37);
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1DAFD589C()
{
  if (qword_1ECC0DFE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC0EE80;
  *(v0 + 16) = qword_1ECC0EE80;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5934, v1, 0);
}

uint64_t sub_1DAFD5934()
{
  v1 = *(v0 + 16);
  sub_1DAFD3184();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ODILocationHelper.__deallocating_deinit()
{
  ODILocationHelper.deinit();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFD59E0()
{
  v10 = v0;
  v1 = v0[2];
  if (v1[15])
  {
    v2 = v1[23];
    v3 = v1[24];
    __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
    v9 = 4;
    (*(v3 + 16))(0xD000000000000016, 0x80000001DB0C7A70, &v9, v2, v3);
    v4 = v1[17];
    v1[17] = 0;

    v5 = v1[15];
    v1[15] = 0;

    if (qword_1ECC0DFE8 != -1)
    {
      swift_once();
    }

    v6 = qword_1ECC0EE80;
    v0[3] = qword_1ECC0EE80;

    return MEMORY[0x1EEE6DFA0](sub_1DAFD5B38, v6, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1DAFD5B38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DAFD3184();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5BA0, v1, 0);
}

uint64_t sub_1DAFD5BA0()
{
  v1 = v0[2];
  *(v1 + 128) = 0;
  v2 = *(v1 + 208);
  v0[4] = v2;
  sub_1DAFDA6D8();
  v0[5] = swift_allocError();
  *v3 = 0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5C34, v2, 0);
}

uint64_t sub_1DAFD5C34()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1DAFD33D0(v1);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5CB4, v2, 0);
}

uint64_t sub_1DAFD5CB4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 216);
  *(v1 + 216) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t ODILocationHelper.getLocationOrWait()()
{
  v1[3] = v0;
  v2 = type metadata accessor for ODISignpost();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD5DBC, v0, 0);
}

uint64_t sub_1DAFD5DBC()
{
  if (qword_1ECC0E018 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v4 = qword_1ECC25AC8;
  v3 = unk_1ECC25AD0;
  v5 = byte_1ECC25AD8;
  v6 = qword_1ECC25AE0;
  v7 = byte_1ECC25AE8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v10 = v0[3];
  sub_1DAF5F604(v0[5], v0[6]);
  v11 = sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper);
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[7] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EED8, &unk_1DB0AD548);
  *v13 = v0;
  v13[1] = sub_1DAFD6000;
  v15 = v0[3];

  return MEMORY[0x1EEE6DE38](v0 + 2, v10, v11, 0xD000000000000013, 0x80000001DB0C74C0, sub_1DAFD8BD8, v15, v14);
}

uint64_t sub_1DAFD6000()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1DAFD6288;
  }

  else
  {
    v6 = sub_1DAFD612C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFD612C()
{
  v1 = v0[6];
  v14 = v0[5];
  v2 = v0[4];
  v3 = v0[2];
  sub_1DB09DC04();
  v13 = *(v1 + 24);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v2 + 28);
  v7 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6370];
  *(v8 + 16) = xmmword_1DB0A04E0;
  v10 = MEMORY[0x1E69E63A8];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v3 != 0;
  sub_1DB09D454();

  sub_1DAF60868(v1);

  v11 = v0[1];

  return v11(v3);
}

uint64_t sub_1DAFD6288()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1DB09DC04();
  v4 = *(v1 + 24);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v3 + 28);
  v8 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6370];
  *(v9 + 16) = xmmword_1DB0A04E0;
  v11 = MEMORY[0x1E69E63A8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = 0;
  sub_1DB09D454();

  sub_1DAF60868(v1);

  v12 = v0[1];
  v13 = v0[8];

  return v12();
}

uint64_t sub_1DAFD63CC(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v31 - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a2 + 184);
  v15 = *(a2 + 192);
  __swift_project_boxed_opaque_existential_1((a2 + 160), v14);
  LOBYTE(v33) = 4;
  (*(v15 + 16))(0xD000000000000022, 0x80000001DB0C7B70, &v33, v14, v15);
  if ((*(a2 + 204) & 1) != 0 || (v16 = *(a2 + 200), (v16 - 3) < 2))
  {
    v21 = *(a2 + 144);
    if (!v21)
    {
      v27 = sub_1DB09DA24();
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
      (*(v4 + 16))(v8, v31, v3);
      v28 = sub_1DAFD88B0(&qword_1ECC0EEC0, type metadata accessor for ODILocationHelper);
      v29 = (*(v4 + 80) + 40) & ~*(v4 + 80);
      v30 = swift_allocObject();
      *(v30 + 2) = a2;
      *(v30 + 3) = v28;
      *(v30 + 4) = a2;
      (*(v4 + 32))(&v30[v29], v8, v3);
      swift_retain_n();
      sub_1DAF4F0EC(0, 0, v13, &unk_1DB0AD878, v30);
    }

    v22 = *(a2 + 184);
    v23 = *(a2 + 192);
    __swift_project_boxed_opaque_existential_1((a2 + 160), v22);
    LOBYTE(v33) = 4;
    v24 = *(v23 + 32);
    v25 = v21;
    v24(0xD00000000000002ALL, 0x80000001DB0C7BA0, &v33, v22, v23);
    v33 = v21;
  }

  else
  {
    v17 = *(a2 + 184);
    v18 = *(a2 + 192);
    __swift_project_boxed_opaque_existential_1((a2 + 160), v17);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1DB09DE44();

    v33 = 0xD00000000000001BLL;
    v34 = 0x80000001DB0C7BD0;
    v32 = v16;
    v19 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v19);

    MEMORY[0x1E127FE90](0xD000000000000014, 0x80000001DB0C7BF0);
    v20 = v33;
    LOBYTE(v33) = 4;
    (*(v18 + 32))(v20, v34, &v33, v17, v18);

    v33 = 0;
  }

  return sub_1DB09D9B4();
}

uint64_t sub_1DAFD67EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678);
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v9 = *(v8 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD68BC, a4, 0);
}

uint64_t sub_1DAFD68BC()
{
  v18 = v0;
  v1 = v0[8];
  if (v1[15])
  {
    v2 = v1[27];
    v1[27] = v1;

    v3 = v1[26];
    v0[13] = v3;

    return MEMORY[0x1EEE6DFA0](sub_1DAFD6AB8, v3, 0);
  }

  else
  {
    v5 = v0[9];
    v4 = v0[10];
    sub_1DAF3523C((v1 + 20), (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000046, 0x80000001DB0C7C10);
    if (v1[18])
    {
      v8 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v8 = 7104878;
    }

    if (v1[18])
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    MEMORY[0x1E127FE90](v8, v9);

    v10 = v16;
    LOBYTE(v16) = 4;
    (*(v7 + 16))(v10, v17, &v16, v6, v7);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v11 = v1[18];
    v0[7] = v11;
    v12 = v11;
    sub_1DB09D9B4();
    v13 = v0[12];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1DAFD6AB8()
{
  v1 = v0[13];
  (*(v0[11] + 16))(v0[12], v0[9], v0[10]);
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DAF73820(0, v2[2] + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1DAF73820(v4 > 1, v5 + 1, 1, v2);
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  v9 = v0[8];
  v2[2] = v5 + 1;
  (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6, v8);
  *(v1 + 112) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD6BE8, v9, 0);
}

uint64_t sub_1DAFD6BE8()
{
  v8 = v0;
  v1 = v0[8];
  v2 = v1[23];
  v3 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
  v7 = 4;
  (*(v3 + 16))(0xD00000000000002ELL, 0x80000001DB0C7C60, &v7, v2, v3);
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

CLLocation_optional __swiftcall ODILocationHelper.getLocation()()
{
  v1 = v0;
  v2 = v0[23];
  v3 = v0[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
  v13 = 14;
  Loggable.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C74F0, &v13, v2, v3);
  v6 = v1[18];
  if (v6)
  {
    v7 = v1[23];
    v8 = v1[24];
    __swift_project_boxed_opaque_existential_1(v1 + 20, v7);
    v12 = 4;
    v9 = *(v8 + 32);
    v10 = v6;
    v9(0xD000000000000021, 0x80000001DB0C7510, &v12, v7, v8);
  }

  v11 = v6;
  result.value._internal = v4;
  result.value.super.isa = v11;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1DAFD6D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAFD6E34(a5);
}

uint64_t sub_1DAFD6E34(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEA0, &qword_1DB0AD528) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for ODISignpost();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFD6F44, v1, 0);
}

uint64_t sub_1DAFD6F44()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;

  v4 = qword_1ECC0E020;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = v0[14];
  v7 = v0[11];
  v9 = qword_1ECC25AF0;
  v8 = *algn_1ECC25AF8;
  v10 = byte_1ECC25B00;
  v11 = qword_1ECC25B08;
  v12 = byte_1ECC25B10;
  *(v6 + 32) = "enableTelemetry=YES";
  *(v6 + 40) = 19;
  *(v6 + 48) = 2;
  *v6 = v9;
  *(v6 + 8) = v8;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  v13 = *(v7 + 28);
  v14 = v11;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v12 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v15 = v0[9];
  sub_1DAF5F604(v0[14], v0[15]);
  v16 = *(v15 + 208);
  v0[16] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD70E4, v16, 0);
}

uint64_t sub_1DAFD70E4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  sub_1DAFD3560(*(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1DAFD7150, v2, 0);
}

uint64_t sub_1DAFD7150()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  sub_1DB09DC04();
  v5 = v1[3];
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v2 + 28);
  v9 = *(v1 + 16);
  sub_1DB09D464();
  v10 = OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost;
  swift_beginAccess();
  if (!(*(v3 + 48))(v4 + v10, 1, v2))
  {
    v11 = v0[13];
    v12 = v0[11];
    sub_1DAFDA72C(v4 + v10, v11);
    sub_1DB09DC04();
    v24 = *(v11 + 24);
    v13 = *v11;
    v14 = *(v11 + 8);
    v15 = *(v12 + 28);
    v16 = *(v11 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E6370];
    *(v17 + 16) = xmmword_1DB0A04E0;
    v19 = MEMORY[0x1E69E63A8];
    *(v17 + 56) = v18;
    *(v17 + 64) = v19;
    *(v17 + 32) = 1;
    sub_1DB09D454();

    sub_1DAF60868(v11);
  }

  v20 = v0[10];
  (*(v0[12] + 56))(v20, 1, 1, v0[11]);
  swift_beginAccess();
  sub_1DAF63488(v20, v4 + v10, &qword_1ECC0EEA0, &qword_1DB0AD528);
  swift_endAccess();
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_1DAFD7394;
  v22 = v0[9];

  return sub_1DAFD59C0();
}

uint64_t sub_1DAFD7394()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD74A4, v2, 0);
}

uint64_t sub_1DAFD74A4()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[10];
  sub_1DAF60868(v0[15]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFD7538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DAF63DEC;

  return sub_1DAFD75D4(a5);
}

uint64_t sub_1DAFD75D4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEA0, &qword_1DB0AD528) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for ODISignpost();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[16] = v7;
  *v7 = v2;
  v7[1] = sub_1DAFD7710;

  return sub_1DAFD59C0();
}

uint64_t sub_1DAFD7710()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFD7820, v2, 0);
}

uint64_t sub_1DAFD7820()
{
  if (qword_1ECC0E020 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v4 = qword_1ECC25AF0;
  v3 = *algn_1ECC25AF8;
  v5 = byte_1ECC25B00;
  v6 = qword_1ECC25B08;
  v7 = byte_1ECC25B10;
  *(v1 + 32) = "enableTelemetry=YES";
  *(v1 + 40) = 19;
  *(v1 + 48) = 2;
  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v8 = *(v2 + 28);
  v9 = v6;
  sub_1DB09D474();
  sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454();
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[8];
  v10 = v0[9];
  sub_1DAF5F604(v0[14], v0[15]);
  v12 = *(v10 + 208);
  v0[17] = v12;
  sub_1DAFDA6D8();
  v0[18] = swift_allocError();
  *v13 = v11;
  sub_1DAFDA6C8(v11);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD79DC, v12, 0);
}

uint64_t sub_1DAFD79DC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  sub_1DAFD33D0(v1);

  return MEMORY[0x1EEE6DFA0](sub_1DAFD7A5C, v2, 0);
}

uint64_t sub_1DAFD7A5C()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  sub_1DB09DC04();
  v5 = v1[3];
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v2 + 28);
  v9 = *(v1 + 16);
  sub_1DB09D464();
  v10 = OBJC_IVAR____TtC17CoreODIEssentials17ODILocationHelper_locationRequestSignpost;
  swift_beginAccess();
  v11 = (*(v3 + 48))(v4 + v10, 1, v2);
  v12 = v0[15];
  if (v11)
  {
    sub_1DAF60868(v0[15]);
    swift_endAccess();
  }

  else
  {
    v13 = v0[13];
    v14 = v0[11];
    sub_1DAFDA72C(v4 + v10, v13);
    swift_endAccess();
    sub_1DB09DC04();
    v15 = *(v13 + 8);
    v27 = *v13;
    v28 = *(v13 + 24);
    v16 = *(v14 + 28);
    v17 = *(v13 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E6370];
    *(v18 + 16) = xmmword_1DB0A04E0;
    v20 = MEMORY[0x1E69E63A8];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = 0;
    sub_1DB09D454();

    sub_1DAF60868(v13);
    sub_1DAF60868(v12);
  }

  v21 = v0[14];
  v22 = v0[15];
  v23 = v0[13];
  v24 = v0[10];
  (*(v0[12] + 56))(v24, 1, 1, v0[11]);
  swift_beginAccess();
  sub_1DAF63488(v24, v4 + v10, &qword_1ECC0EEA0, &qword_1DB0AD528);
  swift_endAccess();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1DAFD7CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAFD7CD0, a4, 0);
}

uint64_t sub_1DAFD7CD0()
{
  v1 = *(v0 + 16);
  sub_1DAFD7D34(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAFD7D34(int a1)
{
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  __swift_project_boxed_opaque_existential_1((v1 + 160), v3);
  sub_1DB09DE44();

  v7[0] = 0xD000000000000004;
  v7[1] = 0x80000001DB0C7920;
  v5 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v5);

  (*(v4 + 16))(0xD000000000000022, 0x80000001DB0C7920, v7, v3, v4);

  *(v1 + 200) = a1;
  *(v1 + 204) = 0;
  return result;
}

id sub_1DAFD7E38(uint64_t *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_parent + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager] = 0;
  v6 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v7 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
  v8 = sub_1DB09D154();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didCallLocationDelegate] = 0;
  v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent] = 0;
  sub_1DAF3523C(a1, &v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger]);
  *&v2[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_analyticsManager] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

id sub_1DAFD7F68()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager;
  v3 = *&v0[OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager];
  if (v3)
  {
    [v3 stopUpdatingLocation];
    v4 = *&v0[v2];
    if (v4)
    {
      [v4 setDelegate_];
    }
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1DAFD8244()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DAFD8264, v2, 0);
}

uint64_t sub_1DAFD8264()
{
  v1 = *(v0 + 16);
  v2 = ODILocationHelper.gpsLocationEnabled()();
  v3 = *(v0 + 8);
  v4 = v2;

  return v3(v4);
}

uint64_t sub_1DAFD82C8()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DAFD82E8, v2, 0);
}

uint64_t sub_1DAFD82E8()
{
  v1 = *(v0 + 16);
  v2 = ODILocationHelper.getLocation()();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1DAFD8348()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF97898;

  return ODILocationHelper.getLocationOrWait()();
}

uint64_t ODILocationHelperContext.__allocating_init(logger:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DAF96EAC(a1, v2 + 16);
  return v2;
}

uint64_t ODILocationHelperContext.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFD8494(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a3;
  v31 = a2;
  v4 = sub_1DB09D4C4();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DB09D4F4();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v29, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F000, &unk_1DB0AD880);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v27 - v18;
  (*(v15 + 16))(&v27 - v18, a1, v14);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + v20, v19, v14);
  v23 = v28;
  *(v22 + v21) = v28;
  aBlock[4] = sub_1DAFDA97C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor_91;
  v24 = _Block_copy(aBlock);
  v25 = v23;
  sub_1DB09D4E4();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1DAFD88B0(&unk_1EE301990, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF75F50(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v13, v8, v24);
  _Block_release(v24);
  (*(v30 + 8))(v8, v4);
  (*(v9 + 8))(v13, v29);
}

uint64_t sub_1DAFD8830(int a1, id a2)
{
  [a2 authorizationStatus];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F000, &unk_1DB0AD880);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAFD88B0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1DAFD8918(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock);
  [v5 lock];
  v6 = a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_parent;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
LABEL_4:
    v8 = *(a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 24);
    v9 = *(a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 32);
    __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger), v8);
    v13 = 4;
    (*(v9 + 56))(0xD000000000000032, 0x80000001DB0C7CB0, &v13, v8, v9);
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager;
  if (*(a3 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate__locationManager))
  {
    goto LABEL_4;
  }

  *(v6 + 8) = &off_1F56CDC98;
  swift_unknownObjectWeakAssign();
  v11 = *(a3 + v7);
  *(a3 + v7) = a2;

  v12 = a2;
LABEL_5:

  return [v5 unlock];
}

unint64_t sub_1DAFD8A50()
{
  result = qword_1ECC0EEC8;
  if (!qword_1ECC0EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EEC8);
  }

  return result;
}

uint64_t sub_1DAFD8AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAFD8B2C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DAF63DEC;

  return sub_1DAFD5880();
}

uint64_t sub_1DAFD8C08()
{
  result = sub_1DB09D4B4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DAFD8CD0()
{
  sub_1DAFD9034(319, &unk_1ECC0EF18, type metadata accessor for ODISignpost);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ODILocationHelper.__allocating_init(authBundle:authBundleIdentifier:context:analyticsManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 192);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DAFD37FC;

  return v16(a1, a2, a3, a4, a5);
}

void sub_1DAFD8F40()
{
  sub_1DAFD9034(319, &unk_1ECC0EFD0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DAFD9034(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DB09DC64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAFD90D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v65 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v63 - v10;
  v12 = sub_1DB09D154();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v64 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v66 = &v63 - v18;
  *(v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didCallLocationDelegate) = 1;
  v19 = (v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger);
  v21 = *(v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 24);
  v20 = *(v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger), v21);
  aBlock = 0;
  v69 = 0xE000000000000000;
  sub_1DB09DE44();

  aBlock = 0xD00000000000001ALL;
  v69 = 0x80000001DB0C7950;
  swift_getErrorValue();
  v22 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v22);

  v23 = aBlock;
  LOBYTE(aBlock) = 4;
  (*(v20 + 16))(v23, v69, &aBlock, v21, v20);

  v24 = a1;
  v25 = v1;
  v26 = v67;
  v27 = sub_1DB09CE64();
  v28 = [v27 code];

  v29 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
  swift_beginAccess();
  sub_1DAFD8AA4(v25 + v29, v11);
  if ((*(v26 + 48))(v11, 1, v12) == 1)
  {
    sub_1DAF40AEC(v11, &unk_1ECC0EAD0, &qword_1DB0AD520);
  }

  else
  {
    v30 = v66;
    (*(v26 + 32))(v66, v11, v12);
    v31 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent;
    if (*(v25 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent))
    {
      (*(v26 + 8))(v30, v12);
    }

    else
    {
      v32 = v64;
      sub_1DB09D134();
      sub_1DB09D094();
      v34 = v33;
      v35 = *(v26 + 8);
      v35(v32, v12);
      *&v36 = v34;
      v37 = v36 | 0x8000000000000000;
      v38 = sub_1DB09D6B4();
      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      *(v39 + 24) = v28;
      v72 = sub_1DAFDAA20;
      v73 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v69 = 1107296256;
      v70 = sub_1DAFD2A28;
      v71 = &block_descriptor_64;
      v40 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v40);

      v35(v66, v12);
      *(v25 + v31) = 1;
    }
  }

  v41 = v24;
  aBlock = v24;
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    sub_1DAFDA5F8(v74);
  }

  else if (!v28 || v28 == 3)
  {
    v48 = v19[3];
    v49 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v48);
    aBlock = 0;
    v69 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000052, 0x80000001DB0C7970);
    swift_getErrorValue();
    v50 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v50);

    v51 = aBlock;
    LOBYTE(aBlock) = 4;
    (*(v49 + 40))(v51, v69, &aBlock, v48, v49);

    return;
  }

  if (v28 == 1)
  {
    v43 = v19[3];
    v44 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v43);
    aBlock = 0;
    v69 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000043, 0x80000001DB0C7A20);
    swift_getErrorValue();
    v45 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v45);

    v46 = aBlock;
    LOBYTE(aBlock) = 4;
    (*(v44 + 40))(v46, v69, &aBlock, v43, v44);

    v41 = 1;
  }

  else
  {
    aBlock = v24;
    v47 = v24;
    if (swift_dynamicCast())
    {
      v41 = v74;
    }

    else
    {
      v52 = v19[3];
      v53 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v52);
      aBlock = 0;
      v69 = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000045, 0x80000001DB0C79D0);
      swift_getErrorValue();
      v54 = sub_1DB09E324();
      MEMORY[0x1E127FE90](v54);

      v55 = aBlock;
      LOBYTE(aBlock) = 4;
      (*(v53 + 48))(v55, v69, &aBlock, v52, v53);

      v56 = v41;
    }
  }

  v57 = *(v25 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock);
  [v57 lock];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v59 = Strong;
    v60 = sub_1DB09DA24();
    v61 = v65;
    (*(*(v60 - 8) + 56))(v65, 1, 1, v60);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v59;
    v62[5] = v41;
    sub_1DAFDA6C8(v41);
    sub_1DAF4F0EC(0, 0, v61, &unk_1DB0AD838, v62);
  }

  [v57 unlock];
  sub_1DAFDA5F8(v41);
}

void sub_1DAFD9A24(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v81 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v77 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v83 = &v75 - v14;
  v15 = sub_1DB09D154();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v76 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  p_aBlock = (&v75 - v22);
  if (qword_1EE301DD8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v82 = p_aBlock;
  if (byte_1EE30A140 == 1)
  {
    p_aBlock = [objc_opt_self() standardUserDefaults];
    v24 = sub_1DB09D6B4();
    LODWORD(v84) = [p_aBlock BOOLForKey_];
  }

  else
  {
    LODWORD(v84) = 0;
  }

  aBlock = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v25 = sub_1DB09DD44();
    if (v25)
    {
LABEL_7:
      v78 = v16;
      v79 = v15;
      v80 = v2;
      v26 = 0;
      v15 = a1 & 0xC000000000000001;
      v16 = a1 & 0xFFFFFFFFFFFFFF8;
      v2 = &unk_1E85EE000;
      do
      {
        if (v15)
        {
          v28 = MEMORY[0x1E1280530](v26, a1);
        }

        else
        {
          if (v26 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v28 = *(a1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v31 = [v28 sourceInformation];
        if (!v31 || (p_aBlock = v31, v32 = [v31 isSimulatedBySoftware], p_aBlock, v84 & 1 | ((v32 & 1) == 0)))
        {
          p_aBlock = &aBlock;
          sub_1DB09DEE4();
          v27 = *(aBlock + 16);
          sub_1DB09DF14();
          sub_1DB09DF24();
          sub_1DB09DEF4();
        }

        else
        {
        }

        ++v26;
      }

      while (v30 != v25);
      v33 = aBlock;
      v15 = v79;
      v2 = v80;
      v16 = v78;
      if ((aBlock & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_7;
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_25:
    if ((v33 & 0x4000000000000000) == 0)
    {
      v34 = *(v33 + 16);
      if (!v34)
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    }
  }

LABEL_41:
  v34 = sub_1DB09DD44();
  if (!v34)
  {
LABEL_42:

    if (v25)
    {
      v71 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 24);
      v72 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger), v71);
      LOBYTE(aBlock) = 4;
      (*(v72 + 16))(0xD000000000000022, 0x80000001DB0C7AE0, &aBlock, v71, v72);
      sub_1DAFDA6D8();
      v73 = swift_allocError();
      *v74 = 2;
      sub_1DAFD90D8(v73);
    }

    return;
  }

LABEL_27:
  v35 = (v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger);
  v36 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 24);
  v37 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_logger), v36);
  LOBYTE(aBlock) = 4;
  (*(v37 + 16))(0xD000000000000015, 0x80000001DB0C7A90, &aBlock, v36, v37);
  *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didCallLocationDelegate) = 1;
  v38 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_locationFetchRequestedAt;
  swift_beginAccess();
  v39 = v83;
  sub_1DAFD8AA4(v2 + v38, v83);
  if ((*(v16 + 48))(v39, 1, v15) == 1)
  {
    sub_1DAF40AEC(v39, &unk_1ECC0EAD0, &qword_1DB0AD520);
  }

  else
  {
    v40 = v39;
    v41 = v82;
    (*(v16 + 32))(v82, v40, v15);
    v42 = v16;
    v43 = OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent;
    if (*(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_didFireAnalyticsEvent))
    {
      (*(v42 + 8))(v41, v15);
    }

    else
    {
      v44 = v76;
      sub_1DB09D134();
      sub_1DB09D094();
      v46 = v45;
      v47 = *(v42 + 8);
      v83 = v42 + 8;
      v84 = v47;
      v47(v44, v15);
      *&v48 = v46;
      v49 = v48;
      v50 = sub_1DB09D6B4();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = 0;
      v89 = sub_1DAFDAA20;
      v90 = v51;
      aBlock = MEMORY[0x1E69E9820];
      v86 = 1107296256;
      v87 = sub_1DAFD2A28;
      v88 = &block_descriptor_77;
      v52 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v52);

      *(v2 + v43) = 1;
      v53 = v35[3];
      v79 = v35[4];
      v80 = __swift_project_boxed_opaque_existential_1(v35, v53);
      aBlock = 0;
      v86 = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD00000000000002DLL, 0x80000001DB0C7AB0);
      sub_1DB09DAC4();
      v54 = aBlock;
      LOBYTE(aBlock) = 4;
      (*(v79 + 16))(v54, v86, &aBlock, v53);

      v84(v82, v15);
      v55 = v77;
      (*(v42 + 56))(v77, 1, 1, v15);
      swift_beginAccess();
      sub_1DAF63488(v55, v2 + v38, &unk_1ECC0EAD0, &qword_1DB0AD520);
      swift_endAccess();
    }
  }

  v56 = v35[3];
  v57 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v56);
  aBlock = 0x6E6F697461636F6CLL;
  v86 = 0xEB00000000203A73;
  v58 = sub_1DAF4062C(0, &qword_1ECC0EFE8, 0x1E6985C40);
  v59 = MEMORY[0x1E1280010](v33, v58);
  MEMORY[0x1E127FE90](v59);

  v60 = aBlock;
  LOBYTE(aBlock) = 4;
  (*(v57 + 72))(v60, v86, &aBlock, v56, v57);

  v61 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
    __break(1u);
    goto LABEL_47;
  }

  if ((v33 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v62 = MEMORY[0x1E1280530](v61, v33);
    goto LABEL_37;
  }

  if ((v61 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v61 >= *(v33 + 16))
  {
LABEL_49:
    __break(1u);
    return;
  }

  v62 = *(v33 + 8 * v61 + 32);
LABEL_37:
  v63 = v62;

  v64 = *(v2 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock);
  [v64 lock];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v66 = Strong;
    v67 = sub_1DB09DA24();
    v68 = v81;
    (*(*(v67 - 8) + 56))(v81, 1, 1, v67);
    v69 = swift_allocObject();
    v69[2] = 0;
    v69[3] = 0;
    v69[4] = v66;
    v69[5] = v63;
    v70 = v63;
    sub_1DAF4F0EC(0, 0, v68, &unk_1DB0AD858, v69);
  }

  [v64 unlock];
}

id sub_1DAFDA3E4(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(v1 + OBJC_IVAR____TtCC17CoreODIEssentials17ODILocationHelper23LocationManagerDelegate_lock);
  [v8 lock];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1DB09DA24();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = a1;
    sub_1DAF4F0EC(0, 0, v7, &unk_1DB0AD820, v12);
  }

  return [v8 unlock];
}

uint64_t sub_1DAFDA534(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF62CC4;

  return sub_1DAFD7CAC(a1, v4, v5, v6, v7);
}

void sub_1DAFDA5F8(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1DAFDA608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAFD7538(a1, v4, v5, v7, v6);
}

id sub_1DAFDA6C8(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_1DAFDA6D8()
{
  result = qword_1ECC0EFE0;
  if (!qword_1ECC0EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0EFE0);
  }

  return result;
}

uint64_t sub_1DAFDA72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODISignpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAFDA790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAFD6D98(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAFDA878(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EFF0, &unk_1DB0A4678) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAFD67EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DAFDA97C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F000, &unk_1DB0AD880) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DAFD8830(v0 + v2, v3);
}

void *sub_1DAFDAA30(char a1, uint64_t *a2, SecKeyRef key, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13)
{
  error[1] = *MEMORY[0x1E69E9840];
  v20 = v13;
  v139 = *v13;
  error[0] = 0;
  v21 = SecKeyCopyExternalRepresentation(key, error);
  if (!v21)
  {

    LOWORD(v143) = 198;
    sub_1DAFCF218(error[0], 0xD000000000000033, 0x80000001DB0C80D0, &v143);
    swift_willThrow();

    sub_1DAF40780(a6, a7);
    sub_1DAF40780(a4, a5);
    goto LABEL_53;
  }

  v135 = a6;
  v22 = v21;
  v23 = sub_1DB09D034();
  v25 = v24;

  v131 = v23;
  v132 = v25;
  v26 = sub_1DB09D004();
  v27 = DigestSha256(v26);

  v136 = a2;
  v134 = a5;
  v133 = a4;
  if (!v27)
  {

    v138 = key;
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v37 = MEMORY[0x1E69E7CC0];
    v38 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v129 = v20;
    if (*(v38 + 16))
    {
      v39 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v40)
      {
        sub_1DAF409DC(*(v38 + 56) + 32 * v39, &v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v37 = *&v142[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1DAF72FF4(0, *(v37 + 2) + 1, 1, v37);
    }

    v42 = *(v37 + 2);
    v41 = *(v37 + 3);
    if (v42 >= v41 >> 1)
    {
      v37 = sub_1DAF72FF4((v41 > 1), v42 + 1, 1, v37);
    }

    *(v37 + 2) = v42 + 1;
    v43 = &v37[56 * v42];
    *(v43 + 4) = 0xD000000000000030;
    *(v43 + 5) = 0x80000001DB0C8110;
    *(v43 + 6) = 0xD000000000000031;
    *(v43 + 7) = 0x80000001DB0C8030;
    *(v43 + 8) = 0xD00000000000004ELL;
    *(v43 + 9) = 0x80000001DB0C8150;
    *(v43 + 10) = 144;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v143 = v37;
    sub_1DAF40D20(&v143, v142);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v142, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v46 = sub_1DB09D6B4();
    v47 = sub_1DB09D604();
    [v45 initWithDomain:v46 code:-1 userInfo:v47];

    swift_willThrow();
    v48 = v131;
    v49 = v25;
    goto LABEL_52;
  }

  v28 = sub_1DB09D034();
  v30 = v29;

  v31 = sub_1DB09D014();
  sub_1DAF40780(v28, v30);
  v32 = sub_1DB09CC54();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1DB09CC44();
  a12();
  v35 = sub_1DB09CC34();
  if (v137)
  {

    sub_1DAF40780(v131, v132);

    sub_1DAF40780(v135, a7);
    sub_1DAF40780(v133, v134);

LABEL_53:
    swift_deallocPartialClassInstance();
    goto LABEL_54;
  }

  v129 = v20;
  v138 = key;
  v127 = v35;
  v128 = v36;

  v50 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140)
  {
    v51 = sub_1DB09D6B4();
    v52 = [v50 BOOLForKey_];

    if (v52)
    {
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      sub_1DB09DB54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1DB0A04E0;
      v54 = sub_1DB09D014();
      v56 = v55;
      *(v53 + 56) = MEMORY[0x1E69E6158];
      *(v53 + 64) = sub_1DAF4DC24();
      *(v53 + 32) = v54;
      *(v53 + 40) = v56;
      sub_1DB09D444();
    }
  }

  else
  {
  }

  if (!a1)
  {

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v68 = MEMORY[0x1E69E7CC0];
    v69 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v69 + 16))
    {
      v70 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v71)
      {
        sub_1DAF409DC(*(v69 + 56) + 32 * v70, &v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v68 = *&v142[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_1DAF72FF4(0, *(v68 + 2) + 1, 1, v68);
    }

    v73 = *(v68 + 2);
    v72 = *(v68 + 3);
    if (v73 >= v72 >> 1)
    {
      v68 = sub_1DAF72FF4((v72 > 1), v73 + 1, 1, v68);
    }

    *(v68 + 2) = v73 + 1;
    v74 = &v68[56 * v73];
    *(v74 + 4) = 0xD00000000000003BLL;
    *(v74 + 5) = 0x80000001DB0C8240;
    *(v74 + 6) = 0xD000000000000031;
    *(v74 + 7) = 0x80000001DB0C8030;
    *(v74 + 8) = 0xD00000000000004ELL;
    *(v74 + 9) = 0x80000001DB0C8150;
    *(v74 + 10) = 155;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v143 = v68;
    sub_1DAF40D20(&v143, v142);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v142, 0x636F766E49504944, 0xEE00736E6F697461, v75);
    v76 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v77 = sub_1DB09D6B4();
    v78 = sub_1DB09D604();
    [v76 initWithDomain:v77 code:-1203 userInfo:v78];
    goto LABEL_51;
  }

  v57 = sub_1DB09D004();
  v58 = DigestSha256(v57);

  if (!v58)
  {

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v79 = MEMORY[0x1E69E7CC0];
    v80 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v80 + 16))
    {
      v81 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v82)
      {
        sub_1DAF409DC(*(v80 + 56) + 32 * v81, &v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v79 = *&v142[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_1DAF72FF4(0, *(v79 + 2) + 1, 1, v79);
    }

    v84 = *(v79 + 2);
    v83 = *(v79 + 3);
    if (v84 >= v83 >> 1)
    {
      v79 = sub_1DAF72FF4((v83 > 1), v84 + 1, 1, v79);
    }

    *(v79 + 2) = v84 + 1;
    v85 = &v79[56 * v84];
    *(v85 + 4) = 0xD000000000000033;
    *(v85 + 5) = 0x80000001DB0C81C0;
    *(v85 + 6) = 0xD000000000000031;
    *(v85 + 7) = 0x80000001DB0C8030;
    *(v85 + 8) = 0xD00000000000004ELL;
    *(v85 + 9) = 0x80000001DB0C8150;
    *(v85 + 10) = 158;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v143 = v79;
    sub_1DAF40D20(&v143, v142);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v142, 0x636F766E49504944, 0xEE00736E6F697461, v86);
    v87 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v77 = sub_1DB09D6B4();
    v78 = sub_1DB09D604();
    [v87 initWithDomain:v77 code:-1 userInfo:v78];
LABEL_51:

    swift_willThrow();
    sub_1DAF40780(v131, v132);
    v48 = v127;
    v49 = v128;
LABEL_52:
    sub_1DAF40780(v48, v49);

    sub_1DAF40780(v135, a7);
    sub_1DAF40780(v133, v134);
    a2 = v136;
    v20 = v129;
    goto LABEL_53;
  }

  v125 = sub_1DB09D034();
  v126 = v59;

  v60 = sub_1DB09D004();
  v61 = DigestSha256(v60);

  if (!v61)
  {

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v90 = MEMORY[0x1E69E7CC0];
    v91 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v91 + 16))
    {
      v92 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v93)
      {
        sub_1DAF409DC(*(v91 + 56) + 32 * v92, &v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v90 = *&v142[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_1DAF72FF4(0, *(v90 + 2) + 1, 1, v90);
    }

    v95 = *(v90 + 2);
    v94 = *(v90 + 3);
    if (v95 >= v94 >> 1)
    {
      v90 = sub_1DAF72FF4((v94 > 1), v95 + 1, 1, v90);
    }

    *(v90 + 2) = v95 + 1;
    v96 = &v90[56 * v95];
    *(v96 + 4) = 0xD000000000000030;
    *(v96 + 5) = 0x80000001DB0C8200;
    *(v96 + 6) = 0xD000000000000031;
    *(v96 + 7) = 0x80000001DB0C8030;
    *(v96 + 8) = 0xD00000000000004ELL;
    *(v96 + 9) = 0x80000001DB0C8150;
    *(v96 + 10) = 161;
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v143 = v90;
    sub_1DAF40D20(&v143, v142);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C(v142, 0x636F766E49504944, 0xEE00736E6F697461, v97);
    v98 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v99 = sub_1DB09D6B4();
    v100 = sub_1DB09D604();
    [v98 initWithDomain:v99 code:-1 userInfo:v100];

    swift_willThrow();
    sub_1DAF40780(v131, v132);
    sub_1DAF40780(v127, v128);
    v48 = v125;
    v49 = v126;
    goto LABEL_52;
  }

  v62 = sub_1DB09D034();
  v123 = v63;
  v124 = v62;

  v64 = a2[4];
  v121 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F028, &qword_1DB0AD908);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A0500;
  *(inited + 32) = 0;
  *(inited + 40) = v133;
  *(inited + 48) = v134;
  *(inited + 56) = 1;
  *(inited + 64) = v135;
  *(inited + 72) = a7;
  v66 = sub_1DAF3E8BC(inited);
  swift_setDeallocating();
  sub_1DAF40674(v133, v134);
  sub_1DAF40674(v135, a7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0F030, &unk_1DB0AD910);
  swift_arrayDestroy();
  v67 = (*(v64 + 16))(v127, v128, v138, v66, v121, v64);
  v120 = v101;
  v122 = v102;
  v103 = v67;
  v105 = v104;

  sub_1DAF40780(v103, v105);
  v106 = a2[3];
  v107 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v106);
  v108 = (*(v107 + 40))(v106, v107);
  v110 = v109;
  v140 = sub_1DB09D014();
  v112 = v111;
  sub_1DAF40780(v108, v110);
  v113 = sub_1DB09D014();
  v115 = v114;
  v116 = sub_1DB09D014();
  *(v20 + 32) = a1;
  v20[5] = v140;
  v20[6] = v112;
  v20[7] = v31;
  v20[8] = 0;
  v20[9] = v113;
  v20[10] = v115;
  v20[11] = v116;
  v20[12] = v117;
  v20[14] = 0;
  v20[15] = 0;
  v20[13] = 0;
  v141 = sub_1DB09D014();
  v119 = v118;
  sub_1DAF40780(v131, v132);
  sub_1DAF40780(v127, v128);
  sub_1DAF40780(v125, v126);
  sub_1DAF40780(v120, v122);
  sub_1DAF40780(v124, v123);

  sub_1DAF40780(v135, a7);
  sub_1DAF40780(v133, v134);
  v20[2] = v141;
  v20[3] = v119;
LABEL_54:
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v88 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_1DAFDBC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for PregeneratedAssessment();
  v7 = (a1 + v6[9]);
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_1DB09CFA4();
  if (v11 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v12 = v10;
  v13 = v11;
  v14 = (a1 + v6[11]);
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1DB09CFA4();
  if (v18 >> 60 == 15)
  {
    sub_1DAF4AC40(v12, v13);
LABEL_4:
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v19 = MEMORY[0x1E69E7CC0];
    v20 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v20 + 16))
    {
      v21 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v22)
      {
        sub_1DAF409DC(*(v20 + 56) + 32 * v21, &v125);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v19 = v109;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1DAF72FF4(0, *(v19 + 2) + 1, 1, v19);
    }

    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    if (v24 >= v23 >> 1)
    {
      v19 = sub_1DAF72FF4((v23 > 1), v24 + 1, 1, v19);
    }

    *(v19 + 2) = v24 + 1;
    v25 = &v19[56 * v24];
    *(v25 + 4) = 0xD000000000000022;
    *(v25 + 5) = 0x80000001DB0C7E70;
    *(v25 + 6) = 0xD000000000000030;
    *(v25 + 7) = 0x80000001DB0C3BA0;
    *(v25 + 8) = 0x7344495547746567;
    *(v25 + 9) = 0xEF293A6D6F726628;
    *(v25 + 10) = 45;
    *(&v126 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v125 = v19;
    sub_1DAF40D20(&v125, &v109);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v107[0] = v20;
    sub_1DAF3B11C(&v109, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v28 = sub_1DB09D6B4();
    v29 = sub_1DB09D604();
    [v27 initWithDomain:v28 code:-1305 userInfo:v29];

    return swift_willThrow();
  }

  v31 = *(v2 + 32);
  v32 = *(v2 + 40);
  v33 = *(v2 + 96);
  v149 = *(v2 + 80);
  v150 = v33;
  v151 = *(v2 + 112);
  v34 = *(v2 + 64);
  v147 = *(v2 + 48);
  v148 = v34;
  v152 = v18;
  v78 = v17;
  if (!v32)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v38 = MEMORY[0x1E69E7CC0];
    v39 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v39 + 16))
    {
      v40 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v41)
      {
        sub_1DAF409DC(*(v39 + 56) + 32 * v40, &v125);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v38 = v109;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1DAF72FF4(0, *(v38 + 2) + 1, 1, v38);
    }

    v43 = *(v38 + 2);
    v42 = *(v38 + 3);
    if (v43 >= v42 >> 1)
    {
      v38 = sub_1DAF72FF4((v42 > 1), v43 + 1, 1, v38);
    }

    *(v38 + 2) = v43 + 1;
    v44 = &v38[56 * v43];
    *(v44 + 4) = 0xD000000000000019;
    *(v44 + 5) = 0x80000001DB0C7EA0;
    *(v44 + 6) = 0xD000000000000030;
    *(v44 + 7) = 0x80000001DB0C3BA0;
    *(v44 + 8) = 0x7344495547746567;
    *(v44 + 9) = 0xEF293A6D6F726628;
    *(v44 + 10) = 49;
    *(&v126 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v125 = v38;
    sub_1DAF40D20(&v125, &v109);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v107[0] = v39;
    sub_1DAF3B11C(&v109, 0x636F766E49504944, 0xEE00736E6F697461, v45);
    v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v47 = sub_1DB09D6B4();
    v48 = sub_1DB09D604();
    [v46 initWithDomain:v47 code:-1 userInfo:v48];

    swift_willThrow();
    goto LABEL_29;
  }

  v76 = v2;
  v77 = v31;
  v35 = sub_1DB09CC24();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  sub_1DAF8C3D4();
  sub_1DB09CC04();
  if (v3)
  {

LABEL_29:
    sub_1DAF4AC40(v78, v152);
    v49 = v12;
    return sub_1DAF4AC40(v49, v13);
  }

  v142[0] = v143;
  v142[1] = v144;
  v142[2] = v145;
  v142[3] = v146;
  sub_1DB09CC04();
  v134 = v138;
  v135 = v139;
  v136 = v140;
  v137 = v141;
  v118 = v77;
  v119 = v32;
  v122 = v149;
  v123 = v150;
  v124 = v151;
  v120 = v147;
  v121 = v148;
  v117[0] = v143;
  v117[1] = v144;
  v117[2] = v145;
  v117[3] = v146;
  sub_1DAF46F8C(v117, &v125);
  sub_1DAF41478(v142);
  v115 = v131;
  v116[0] = v132;
  *&v116[1] = v133;
  v111 = v127;
  v112 = v128;
  v113 = v129;
  v114 = v130;
  v109 = v125;
  v110 = v126;
  v100 = v77;
  v101 = v32;
  v104 = v149;
  v105 = v150;
  v106 = v151;
  v102 = v147;
  v103 = v148;
  v99[0] = v134;
  v99[1] = v135;
  v99[2] = v136;
  v99[3] = v137;
  sub_1DAF46F8C(v99, v107);
  sub_1DAF41478(&v134);
  v93 = v107[2];
  v94 = v107[3];
  *&v98[1] = v108;
  v97 = v107[6];
  v98[0] = v107[7];
  v95 = v107[4];
  v96 = v107[5];
  v91 = v107[0];
  v92 = v107[1];
  if (*(v116 + 8) != *(a1 + v6[8]) && (sub_1DB09E254() & 1) == 0 || *(v98 + 8) != *(a1 + v6[10]) && (sub_1DB09E254() & 1) == 0)
  {
    sub_1DAF49F04(&v109);
    sub_1DAF49F04(&v91);
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v65 = MEMORY[0x1E69E7CC0];
    v66 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v66 + 16))
    {
      v67 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v68)
      {
        sub_1DAF409DC(*(v66 + 56) + 32 * v67, &v79);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v65 = *&v90[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1DAF72FF4(0, *(v65 + 2) + 1, 1, v65);
    }

    v70 = *(v65 + 2);
    v69 = *(v65 + 3);
    if (v70 >= v69 >> 1)
    {
      v65 = sub_1DAF72FF4((v69 > 1), v70 + 1, 1, v65);
    }

    *(v65 + 2) = v70 + 1;
    v71 = &v65[56 * v70];
    *(v71 + 4) = 0xD00000000000003FLL;
    *(v71 + 5) = 0x80000001DB0C7EC0;
    *(v71 + 6) = 0xD000000000000030;
    *(v71 + 7) = 0x80000001DB0C3BA0;
    *(v71 + 8) = 0x7344495547746567;
    *(v71 + 9) = 0xEF293A6D6F726628;
    *(v71 + 10) = 62;
    *(&v80 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v79 = v65;
    sub_1DAF40D20(&v79, v90);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v66;
    sub_1DAF3B11C(v90, 0x636F766E49504944, 0xEE00736E6F697461, v72);
    v73 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v74 = sub_1DB09D6B4();
    v75 = sub_1DB09D604();
    [v73 initWithDomain:v74 code:-2110 userInfo:v75];

    swift_willThrow();

    sub_1DAF4AC40(v78, v152);
    v49 = v12;
    return sub_1DAF4AC40(v49, v13);
  }

  if (qword_1EE304018 != -1)
  {
    swift_once();
  }

  v50 = sub_1DB09D4B4();
  __swift_project_value_buffer(v50, qword_1EE304020);
  v51 = sub_1DB09D494();
  v52 = sub_1DB09DB54();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_1DAF16000, v51, v52, "using guids from pre-generated assessment", v53, 2u);
    MEMORY[0x1E1281810](v53, -1, -1);
  }

  v54 = *(v76 + 24);
  *&v90[0] = *(v76 + 16);
  *(&v90[0] + 1) = v54;

  sub_1DB09DE44();

  v88 = 0xD000000000000016;
  v89 = 0x80000001DB0C7F00;
  v55 = ODIClientGUID.description.getter();
  MEMORY[0x1E127FE90](v55);

  MEMORY[0x1E127FE90](2108448, 0xE300000000000000);
  v85 = v97;
  v86 = v98[0];
  v87 = *&v98[1];
  v81 = v93;
  v82 = v94;
  v83 = v95;
  v84 = v96;
  v79 = v91;
  v80 = v92;
  v56 = ODIClientGUID.description.getter();
  MEMORY[0x1E127FE90](v56);

  LOBYTE(v79) = 14;
  CoreODILogger.debug(_:category:)(0xD000000000000016, 0x80000001DB0C7F00, &v79);
  sub_1DAF4AC40(v12, v13);

  sub_1DAF4AC40(v78, v152);

  v57 = v116[0];
  *(a2 + 96) = v115;
  *(a2 + 112) = v57;
  v58 = v112;
  *(a2 + 32) = v111;
  *(a2 + 48) = v58;
  v59 = v114;
  *(a2 + 64) = v113;
  *(a2 + 80) = v59;
  v60 = v110;
  *a2 = v109;
  *(a2 + 16) = v60;
  v61 = v95;
  *(a2 + 216) = v96;
  v62 = v98[0];
  *(a2 + 232) = v97;
  *(a2 + 248) = v62;
  v63 = v91;
  *(a2 + 152) = v92;
  v64 = v94;
  *(a2 + 168) = v93;
  *(a2 + 184) = v64;
  *(a2 + 200) = v61;
  *(a2 + 128) = *&v116[1];
  *(a2 + 264) = *&v98[1];
  *(a2 + 136) = v63;
  return result;
}

uint64_t ODNAssessmentGUIDManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v10 = *(v0 + 112);
  v9 = *(v0 + 96);
  sub_1DAF8C598(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t ODNAssessmentGUIDManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v10 = *(v0 + 112);
  v9 = *(v0 + 96);
  sub_1DAF8C598(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAFDD59C(uint64_t a1, uint64_t a2)
{
  result = sub_1DB09CFA4();
  if (v5 >> 60 == 15)
  {
    v18 = result;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DB09DB54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB0A04E0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1DAF4DC24();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    sub_1DB09D444();

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v8 + 16))
    {
      v9 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v10)
      {
        sub_1DAF409DC(*(v8 + 56) + 32 * v9, &v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v7 = *&v19[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DAF72EC0(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1DAF72EC0((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[56 * v12];
    *(v13 + 4) = 0xD00000000000001DLL;
    *(v13 + 5) = 0x80000001DB0C2C00;
    *(v13 + 6) = 0xD000000000000024;
    *(v13 + 7) = 0x80000001DB0C27D0;
    *(v13 + 8) = 0xD00000000000001FLL;
    *(v13 + 9) = 0x80000001DB0C2C20;
    *(v13 + 10) = 454;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v20 = v7;
    sub_1DAF40D20(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v8;
    sub_1DAF3B11C(v19, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_1DB09D6B4();
    v17 = sub_1DB09D604();
    [v15 initWithDomain:v16 code:-2103 userInfo:v17];

    swift_willThrow();
    return v18;
  }

  return result;
}

uint64_t sub_1DAFDD930()
{
  v0 = sub_1DB09CFA4();
  if (v1 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v2 = v0;
  v3 = v1;
  v4 = sub_1DB09CFA4();
  if (v5 >> 60 == 15)
  {
    sub_1DAF4AC40(v2, v3);
LABEL_4:
    v13 = 45;
    v14 = 0xE100000000000000;
    LOBYTE(v12[0]) = 14;
    CoreODILogger.info(_:category:)(0xD000000000000035, 0x80000001DB0C7DD0, v12);

    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_1DB09CC24();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1DB09CC14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DAFDEC70(&qword_1ECC0E888, &qword_1ECC0E880, &qword_1DB0A6640);
  sub_1DB09CC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F018, &unk_1DB0AFAA0);
  sub_1DAFDEC70(&qword_1ECC0F020, &qword_1ECC0F018, &unk_1DB0AFAA0);
  sub_1DB09CC04();
  sub_1DAF4AC40(v2, v3);

  sub_1DAF4AC40(v6, v7);
  return v13;
}

void sub_1DAFDE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    v11 = sub_1DAFD1584();
    if (v6)
    {

      return;
    }

    v12 = v11;
    v13 = SecCertificateCopyKey(v11);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1DAFD1B20(v13);
      v17 = v16;

      if (v17 >> 60 != 15)
      {
        v65 = v15;
        v66 = v17;
        v29 = type metadata accessor for DIPECIESSessionECV3SH();
        swift_allocObject();
        v71 = v29;
        v72 = &off_1F56C5B50;
        *&v70 = sub_1DAFB3BEC(0);
        v30 = v70;
        v31 = sub_1DB09CD84();
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        swift_allocObject();

        v64 = sub_1DB09CD54();
        v34 = v12;
        sub_1DAF4ED88(v65, v66);
        v35 = SecCertificateCopyKey(v34);
        if (v35)
        {
          v36 = v35;
          sub_1DAF3523C(&v70, &v67);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
          swift_allocObject();
          sub_1DAFDAA30(2, &v67, v36, 0x4100000000, v64 | 0x4000000000000000, v65, v66, 49, 0xE100000000000000, a3, a4, sub_1DAFDED18, &type metadata for TrainingSignalId);
          __swift_destroy_boxed_opaque_existential_1Tm(&v70);

          v71 = v29;
          v72 = &off_1F56C5B50;
          *&v70 = v30;
          v48 = *(v31 + 48);
          v49 = *(v31 + 52);
          swift_allocObject();

          v50 = sub_1DB09CD54();
          v51 = SecCertificateCopyKey(v34);
          if (v51)
          {
            v52 = v51;
            sub_1DAF3523C(&v70, &v67);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F018, &unk_1DB0AFAA0);
            swift_allocObject();
            sub_1DAFDAA30(2, &v67, v52, 0x4100000000, v50 | 0x4000000000000000, v65, v66, 49, 0xE100000000000000, a5, a6, sub_1DAFDECC4, &type metadata for AssessmentGUIDContainer);

            __swift_destroy_boxed_opaque_existential_1Tm(&v70);
            return;
          }

          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v53 = MEMORY[0x1E69E7CC0];
          v54 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v54 + 16))
          {
            v55 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
            if (v56)
            {
              sub_1DAF409DC(*(v54 + 56) + 32 * v55, &v67);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              if (swift_dynamicCast())
              {
                v53 = *&v69[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1DAF72FF4(0, *(v53 + 2) + 1, 1, v53);
          }

          v58 = *(v53 + 2);
          v57 = *(v53 + 3);
          if (v58 >= v57 >> 1)
          {
            v53 = sub_1DAF72FF4((v57 > 1), v58 + 1, 1, v53);
          }

          *(v53 + 2) = v58 + 1;
          v59 = &v53[56 * v58];
          *(v59 + 4) = 0xD00000000000003FLL;
          *(v59 + 5) = 0x80000001DB0C7FF0;
          *(v59 + 6) = 0xD000000000000031;
          *(v59 + 7) = 0x80000001DB0C8030;
          *(v59 + 8) = 0xD000000000000050;
          *(v59 + 9) = 0x80000001DB0C8070;
          *(v59 + 10) = 128;
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          *&v67 = v53;
          sub_1DAF40D20(&v67, v69);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v54;
          sub_1DAF3B11C(v69, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
          v61 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v62 = sub_1DB09D6B4();
          v63 = sub_1DB09D604();
          [v61 initWithDomain:v62 code:-1 userInfo:v63];

          swift_willThrow();

          sub_1DAF4AC40(v65, v66);
        }

        else
        {
          sub_1DAF4AC40(v65, v66);

          if (qword_1EE300B90 != -1)
          {
            swift_once();
          }

          v37 = MEMORY[0x1E69E7CC0];
          v38 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v38 + 16))
          {
            v39 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
            if (v40)
            {
              sub_1DAF409DC(*(v38 + 56) + 32 * v39, &v67);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
              if (swift_dynamicCast())
              {
                v37 = *&v69[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1DAF72FF4(0, *(v37 + 2) + 1, 1, v37);
          }

          v42 = *(v37 + 2);
          v41 = *(v37 + 3);
          if (v42 >= v41 >> 1)
          {
            v37 = sub_1DAF72FF4((v41 > 1), v42 + 1, 1, v37);
          }

          *(v37 + 2) = v42 + 1;
          v43 = &v37[56 * v42];
          *(v43 + 4) = 0xD00000000000003FLL;
          *(v43 + 5) = 0x80000001DB0C7FF0;
          *(v43 + 6) = 0xD000000000000031;
          *(v43 + 7) = 0x80000001DB0C8030;
          *(v43 + 8) = 0xD000000000000050;
          *(v43 + 9) = 0x80000001DB0C8070;
          *(v43 + 10) = 128;
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          *&v67 = v37;
          sub_1DAF40D20(&v67, v69);
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v73 = v38;
          sub_1DAF3B11C(v69, 0x636F766E49504944, 0xEE00736E6F697461, v44);
          v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v46 = sub_1DB09D6B4();
          v47 = sub_1DB09D604();
          [v45 initWithDomain:v46 code:-1 userInfo:v47];

          swift_willThrow();

          sub_1DAF4AC40(v65, v66);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v70);
        return;
      }
    }

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v18 = MEMORY[0x1E69E7CC0];
    v19 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v19 + 16))
    {
      v20 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v21)
      {
        sub_1DAF409DC(*(v19 + 56) + 32 * v20, &v70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v18 = v67;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1DAF72EC0(0, *(v18 + 2) + 1, 1, v18);
    }

    v23 = *(v18 + 2);
    v22 = *(v18 + 3);
    if (v23 >= v22 >> 1)
    {
      v18 = sub_1DAF72EC0((v22 > 1), v23 + 1, 1, v18);
    }

    *(v18 + 2) = v23 + 1;
    v24 = &v18[56 * v23];
    *(v24 + 4) = 0xD00000000000003ALL;
    *(v24 + 5) = 0x80000001DB0C7F60;
    *(v24 + 6) = 0xD000000000000030;
    *(v24 + 7) = 0x80000001DB0C3BA0;
    *(v24 + 8) = 0xD00000000000004BLL;
    *(v24 + 9) = 0x80000001DB0C7FA0;
    *(v24 + 10) = 118;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v70 = v18;
    sub_1DAF40D20(&v70, &v67);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v19;
    sub_1DAF3B11C(&v67, 0x636F766E4949444FLL, 0xEE00736E6F697461, v25);
    v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v27 = sub_1DB09D6B4();
    v28 = sub_1DB09D604();
    [v26 initWithDomain:v27 code:-1307 userInfo:v28];

    swift_willThrow();
  }

  else
  {
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DB09DB44();
    sub_1DB09D444();
  }
}

uint64_t sub_1DAFDEC70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAFDECC4()
{
  result = qword_1EE302178;
  if (!qword_1EE302178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302178);
  }

  return result;
}

unint64_t sub_1DAFDED18()
{
  result = qword_1EE302D60;
  if (!qword_1EE302D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302D60);
  }

  return result;
}

uint64_t sub_1DAFDED6C()
{
  v1[9] = v0;
  v1[10] = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFDEE88, v0, 0);
}

uint64_t sub_1DAFDEE88()
{
  v21 = v0;
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  swift_beginAccess();
  sub_1DAFE43FC(v4 + v5, v1);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_1DAF40AEC(v0[15], &qword_1ECC0F0D0, &qword_1DB0A2850);
  }

  else
  {
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    (*(v8 + 16))(v7, v6, v9);
    sub_1DAF40AEC(v6, &qword_1ECC0F0D0, &qword_1DB0A2850);
    sub_1DAFE42F4();
    v10 = swift_allocError();
    *v11 = 2;
    v0[8] = v10;
    sub_1DB09D9A4();
    (*(v8 + 8))(v7, v9);
  }

  v12 = v0[14];
  v19 = *(v0 + 9);
  (*(v0[12] + 56))(v12, 1, 1, v0[11]);
  swift_beginAccess();
  sub_1DAFE446C(v12, v4 + v5);
  swift_endAccess();
  v20 = 0;
  CoreODILogger.debug(_:category:)(0xD000000000000031, 0x80000001DB0C8440, &v20);

  v13 = sub_1DAFE44DC(&qword_1ECC0F0D8, 255, type metadata accessor for ODINFHardwareMonitor);
  v14 = swift_task_alloc();
  v0[16] = v14;
  *(v14 + 16) = v19;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_1DAFDF180;
  v17 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v16, v19, v13, 0xD000000000000015, 0x80000001DB0C8480, sub_1DAFE4524, v14, v17);
}

uint64_t sub_1DAFDF180()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_1DAFDF320;
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 72);

    v5 = sub_1DAFDF2A8;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DAFDF2A8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAFDF320()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_1DAFDF3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v23 - v14;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  swift_beginAccess();
  sub_1DAFE446C(v15, a2 + v18);
  swift_endAccess();
  v19 = sub_1DB09DA24();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = sub_1DAFE44DC(&qword_1ECC0F0D8, 255, type metadata accessor for ODINFHardwareMonitor);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v20;
  v21[4] = a2;
  v21[5] = a3;
  swift_retain_n();
  sub_1DAF5B2C0(0, 0, v10, &unk_1DB0AEA18, v21);
}

uint64_t sub_1DAFDF674()
{
  v1 = *(MEMORY[0x1E69E86C8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DAFDF70C;

  return MEMORY[0x1EEE6DA60](1000000000);
}

uint64_t sub_1DAFDF70C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1DAFDF850, v7, 0);
  }
}

uint64_t sub_1DAFDF850()
{
  v5 = v0;
  v1 = *(v0 + 16);
  v4 = 0;
  CoreODILogger.info(_:category:)(0xD000000000000049, 0x80000001DB0C84A0, &v4);

  sub_1DAFDF914();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAFDF914()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v19[-v15];
  v17 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  swift_beginAccess();
  sub_1DAFE43FC(v1 + v17, v16);
  if ((*(v3 + 48))(v16, 1, v2))
  {
    sub_1DAF40AEC(v16, &qword_1ECC0F0D0, &qword_1DB0A2850);
  }

  else
  {
    (*(v3 + 16))(v7, v16, v2);
    sub_1DAF40AEC(v16, &qword_1ECC0F0D0, &qword_1DB0A2850);
    sub_1DB09D9B4();
    (*(v3 + 8))(v7, v2);
  }

  (*(v3 + 56))(v13, 1, 1, v2);
  swift_beginAccess();
  sub_1DAFE446C(v13, v1 + v17);
  return swift_endAccess();
}

uint64_t sub_1DAFDFB50()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v10 - v5;
  v12 = 0x657261685369646FLL;
  v13 = 0xEF726567676F4C64;
  v11 = 0;
  CoreODILogger.info(_:category:)(0xD00000000000002FLL, 0x80000001DB0C8410, &v11);

  sub_1DB09D9F4();
  v7 = sub_1DB09DA24();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;

  sub_1DAF4F0EC(0, 0, v6, &unk_1DB0AEA00, v8);
}

uint64_t sub_1DAFDFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0D0, &qword_1DB0A2850) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFDFDD0, a4, 0);
}

uint64_t sub_1DAFDFDD0()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  swift_beginAccess();
  sub_1DAFE43FC(v4 + v5, v1);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[13];
  if (v6)
  {
    sub_1DAF40AEC(v0[13], &qword_1ECC0F0D0, &qword_1DB0A2850);
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    (*(v9 + 16))(v8, v0[13], v10);
    sub_1DAF40AEC(v7, &qword_1ECC0F0D0, &qword_1DB0A2850);
    sub_1DB09D9B4();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[12];
  v12 = v0[11];
  (*(v0[10] + 56))(v11, 1, 1, v0[9]);
  swift_beginAccess();
  sub_1DAFE446C(v11, v4 + v5);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

id sub_1DAFDFFB4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v7.receiver = v3;
  v7.super_class = v0;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1DAFE00FC()
{
  sub_1DAF40AEC(v0 + OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation, &qword_1ECC0F0D0, &qword_1DB0A2850);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

double sub_1DAFE014C()
{
  type metadata accessor for DeviceInformation();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 144) = 0;
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  qword_1EE302C80 = v0;
  return result;
}

uint64_t static DeviceInformation.shared.getter()
{
  if (qword_1EE302C70 != -1)
  {
    swift_once();
  }
}

uint64_t DeviceInformation.DeviceInfoError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAFE0298()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v5 = *(v0 + 8);

    return v5(v3, v2);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFE035C, 0, 0);
  }
}

uint64_t sub_1DAFE035C()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 184) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFE03F4, v1, 0);
}

uint64_t sub_1DAFE03F4()
{
  v1 = *(v0 + 184);
  if (*(v1 + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAFE05D4, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_1DAFE04C4;
    v3 = *(v0 + 184);

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFE04C4()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v5 = *v0;

  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE05D4, v3, 0);
}

uint64_t sub_1DAFE05D4()
{
  v1 = v0[23];
  v2 = sub_1DAFE44DC(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo);
  v0[25] = v2;
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v1;
  v3[3] = 0x54746375646F7250;
  v3[4] = 0xEB00000000657079;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[27] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  v0[28] = v6;
  *v5 = v0;
  v5[1] = sub_1DAFE0748;

  return MEMORY[0x1EEE6DDE0](v0 + 10, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFA7214, v3, v6);
}

uint64_t sub_1DAFE0748()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 184);
  v6 = *v0;

  *(v1 + 232) = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE0884, v4, 0);
}

uint64_t sub_1DAFE0884()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = swift_task_alloc();
  v0[31] = v3;
  v3[2] = v2;
  v3[3] = 0x4E746375646F7250;
  v3[4] = 0xEB00000000656D61;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1DAFE09A4;
  v6 = v0[28];

  return MEMORY[0x1EEE6DDE0](v0 + 12, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DAFE09A4()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 184);
  v6 = *v0;

  *(v1 + 264) = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE0AE4, v4, 0);
}

uint64_t sub_1DAFE0AE4()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "ProductVersion");
  *(v3 + 39) = -18;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[36] = v5;
  *v5 = v0;
  v5[1] = sub_1DAFE0C08;
  v6 = v0[28];

  return MEMORY[0x1EEE6DDE0](v0 + 14, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DAFE0C08()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 184);
  v6 = *v0;

  *(v1 + 296) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE0D48, v4, 0);
}

uint64_t sub_1DAFE0D48()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = swift_task_alloc();
  v0[39] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "BuildVersion");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_1DAFE0E68;
  v6 = v0[28];

  return MEMORY[0x1EEE6DDE0](v0 + 16, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFB3BE8, v3, v6);
}

uint64_t sub_1DAFE0E68()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 176);
  v6 = *v0;

  *(v1 + 328) = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DAFE0FA8, v4, 0);
}

id sub_1DAFE0FA8()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  type metadata accessor for DeviceInformation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  result = [v4 bundleForClass_];
  v6 = *MEMORY[0x1E695E500];
  if (!*MEMORY[0x1E695E500])
  {
    __break(1u);
    return result;
  }

  v7 = result;
  if ([result objectForInfoDictionaryKey_])
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v42 = 0u;
  }

  *(v0 + 16) = v39;
  *(v0 + 32) = v42;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v35 = *(v0 + 160);
      v36 = *(v0 + 168);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1DAF40AEC(v0 + 16, &qword_1ECC0E370, &qword_1DB0A09B0);
  }

  v35 = 7104878;
  v36 = 0xE300000000000000;
LABEL_10:
  v8 = [v7 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v33 = sub_1DB09D6C4();
    v34 = v10;
  }

  else
  {
    v33 = 7104878;
    v34 = 0xE300000000000000;
  }

  v11 = [v4 mainBundle];
  if ([v11 objectForInfoDictionaryKey_])
  {
    sub_1DB09DCE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v42 = 0u;
  }

  *(v0 + 48) = v39;
  *(v0 + 64) = v42;
  v38 = v7;
  if (!*(v0 + 72))
  {
    sub_1DAF40AEC(v0 + 48, &qword_1ECC0E370, &qword_1DB0A09B0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v13 = 0xE300000000000000;
    v12 = 7104878;
    goto LABEL_21;
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
LABEL_21:
  v32 = v12;
  v14 = [v11 bundleIdentifier];
  v15 = 0xE300000000000000;
  v37 = v11;
  if (v14)
  {
    v16 = v14;
    v30 = sub_1DB09D6C4();
    v18 = v17;
  }

  else
  {
    v30 = 7104878;
    v18 = 0xE300000000000000;
  }

  if (v1)
  {
    v19 = v1;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  if (!v1)
  {
    v2 = 7104878;
  }

  v20 = *(v0 + 304);
  v21 = *(v0 + 272);
  v22 = *(v0 + 176);
  if (v20)
  {
    v23 = *(v0 + 304);
  }

  else
  {
    v23 = 0xE300000000000000;
  }

  if (v20)
  {
    v24 = *(v0 + 296);
  }

  else
  {
    v24 = 7104878;
  }

  if (v21)
  {
    v25 = *(v0 + 272);
  }

  else
  {
    v25 = 0xE300000000000000;
  }

  if (v21)
  {
    v26 = *(v0 + 264);
  }

  else
  {
    v26 = 7104878;
  }

  if (*(v0 + 240))
  {
    v15 = *(v0 + 240);
    v27 = *(v0 + 232);
  }

  else
  {
    v27 = 7104878;
  }

  v31 = v27;
  v40 = v26;
  v41 = v25;
  MEMORY[0x1E127FE90](59, 0xE100000000000000);
  MEMORY[0x1E127FE90](v24, v23);

  MEMORY[0x1E127FE90](59, 0xE100000000000000);
  MEMORY[0x1E127FE90](v2, v19);

  MEMORY[0x1E127FE90](47, 0xE100000000000000);
  MEMORY[0x1E127FE90](v35, v36);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v30, v18);

  MEMORY[0x1E127FE90](47, 0xE100000000000000);
  MEMORY[0x1E127FE90](v32, v13);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  MEMORY[0x1E127FE90](v31, v15);

  MEMORY[0x1E127FE90](3940414, 0xE300000000000000);
  MEMORY[0x1E127FE90](v40, v41);

  MEMORY[0x1E127FE90](3940414, 0xE300000000000000);
  MEMORY[0x1E127FE90](v33, v34);

  MEMORY[0x1E127FE90](62, 0xE100000000000000);

  v28 = *(v22 + 120);
  *(v22 + 112) = 60;
  *(v22 + 120) = 0xE100000000000000;

  v29 = *(v0 + 8);

  return v29(60, 0xE100000000000000);
}

uint64_t sub_1DAFE1498()
{
  v1 = [objc_opt_self() sharedHardwareManagerWithNoUI];
  v0[2].super_class = v1;
  v2 = type metadata accessor for ODINFHardwareMonitor();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v0[1].receiver = v5;
  v0[1].super_class = v2;
  v8 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[3].receiver = v8;
  [(objc_class *)v1 registerEventListener:v8];
  v9 = [(objc_class *)v1 getHwSupport];
  if ((v9 | 2) == 3)
  {
    v10 = swift_task_alloc();
    v0[3].super_class = v10;
    *v10 = v0;
    *(v10 + 1) = sub_1DAFE16FC;

    return sub_1DAFDED6C();
  }

  else
  {
    v12 = v9;
    [(objc_class *)v0[2].super_class unregisterEventListener:v0[3].receiver];
    receiver = v0[3].receiver;
    if (v12 == 2)
    {

      super_class = v0->super_class;
      v15 = v0[2].super_class;

      return super_class(v15);
    }

    else
    {
      v16 = v0[2].super_class;
      sub_1DAFE42F4();
      swift_allocError();
      *v17 = 0;
      swift_willThrow();

      v18 = v0->super_class;

      return v18();
    }
  }
}

uint64_t sub_1DAFE16FC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1DAFE193C;
  }

  else
  {
    v6 = sub_1DAFE1828;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAFE1828()
{
  v1 = [*(v0 + 40) getHwSupport];
  [*(v0 + 40) unregisterEventListener_];
  v2 = *(v0 + 48);
  if (v1 == 2)
  {

    v3 = *(v0 + 8);
    v4 = *(v0 + 40);

    return v3(v4);
  }

  else
  {
    v6 = *(v0 + 40);
    sub_1DAFE42F4();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1DAFE193C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DAFE19A4(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DAFE1A34, v1, 0);
}

uint64_t sub_1DAFE1A34()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = swift_allocObject();
  v0[24] = v1;
  *(v1 + 16) = 0;
  v2 = swift_allocObject();
  v0[25] = v2;
  *(v2 + 16) = 0;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1DAFE1B28;
  v4 = v0[23];
  v5 = *MEMORY[0x1E69E9840];

  return sub_1DAFE1478();
}

uint64_t sub_1DAFE1B28(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v7 = *(v3 + 184);
  if (v1)
  {
    v8 = sub_1DAFE23E0;
  }

  else
  {
    v8 = sub_1DAFE1C88;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DAFE1C88(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 184);
  v4 = *(v3 + 144);
  v5 = v3;
  if (v4)
  {
LABEL_2:
    *(v2 + 232) = v4;
    v6 = *(v2 + 216);
    v7 = *(v3 + 136);
    v8 = sub_1DAFE44DC(&qword_1EE301480, a2, type metadata accessor for DeviceInformation);
    v9 = swift_task_alloc();
    *(v2 + 240) = v9;
    v10 = *(v2 + 192);
    *(v9 + 16) = v6;
    *(v9 + 24) = v10;
    *(v9 + 40) = v7;
    *(v9 + 48) = v4;
    v11 = *(MEMORY[0x1E69E8920] + 4);

    v12 = swift_task_alloc();
    *(v2 + 248) = v12;
    *v12 = v2;
    v12[1] = sub_1DAFE21A4;
    v13 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DE38](v2 + 16, v5, v8, 0xD000000000000012, 0x80000001DB0C8390, sub_1DAFE420C, v9, &type metadata for ODNNearFieldData);
  }

  *(v2 + 160) = 0;
  v14 = [*(v2 + 216) cachedEmbeddedSecureElementSerialNumber_];
  v15 = *(v2 + 160);
  if (v14)
  {
    v16 = v14;
    v17 = sub_1DB09D6C4();
    v19 = v18;
    v20 = v15;

    v21 = *(v3 + 144);
    *(v3 + 136) = v17;
    *(v3 + 144) = v19;

    v4 = *(v3 + 144);
    if (v4)
    {
      v5 = *(v2 + 184);
      goto LABEL_2;
    }

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v26 = MEMORY[0x1E69E7CC0];
    v27 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v27 + 16))
    {
      v28 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v29)
      {
        sub_1DAF409DC(*(v27 + 56) + 32 * v28, v2 + 64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v26 = *(v2 + 168);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1DAF72EC0(0, *(v26 + 2) + 1, 1, v26);
    }

    v31 = *(v26 + 2);
    v30 = *(v26 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v42 = sub_1DAF72EC0((v30 > 1), v31 + 1, 1, v26);
      v32 = v31 + 1;
      v26 = v42;
    }

    v22 = *(v2 + 216);
    v34 = *(v2 + 192);
    v33 = *(v2 + 200);
    *(v26 + 2) = v32;
    v35 = &v26[56 * v31];
    *(v35 + 4) = 0xD000000000000014;
    *(v35 + 5) = 0x80000001DB0C8340;
    *(v35 + 6) = 0xD000000000000029;
    *(v35 + 7) = 0x80000001DB0C8360;
    *(v35 + 8) = 0xD000000000000012;
    *(v35 + 9) = 0x80000001DB0C8390;
    *(v35 + 10) = 150;
    *(v2 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v2 + 96) = v26;
    sub_1DAF40D20((v2 + 96), (v2 + 128));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v27;
    sub_1DAF3B11C((v2 + 128), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v38 = sub_1DB09D6B4();
    v39 = sub_1DB09D604();
    [v37 initWithDomain:v38 code:-1118 userInfo:{v39, v44}];
  }

  else
  {
    v22 = *(v2 + 216);
    v24 = *(v2 + 192);
    v23 = *(v2 + 200);
    v25 = v15;
    sub_1DB09CE74();
  }

  swift_willThrow();

  v40 = *(v2 + 8);
  v41 = *MEMORY[0x1E69E9840];

  return v40();
}

uint64_t sub_1DAFE21A4()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 248);
  v13 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = v2[23];
    v5 = *MEMORY[0x1E69E9840];
    v6 = sub_1DAFE2478;
  }

  else
  {
    v7 = v2[29];
    v8 = v2[30];
    v9 = v2[23];

    v10 = *MEMORY[0x1E69E9840];
    v6 = sub_1DAFE2320;
    v4 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, 0);
}