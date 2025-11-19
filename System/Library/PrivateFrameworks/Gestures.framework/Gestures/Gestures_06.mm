uint64_t sub_18E6D8EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6D8F9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E6D90C4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t sub_18E6D9134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_18E6D91D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = v6 + a2;
  v9 = *v7;
  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v7 += 15;

  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v10 & 0xFFFFFFFFFFFFFFF8);
  *(((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *(((v10 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6D9280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6D931C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v7;
  v10 = *v8;
  v8 += 15;
  *v7 = v10;
  v7 += 15;

  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v8 & 0xFFFFFFFFFFFFFFF8);
  *(((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *(((v8 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6D93C0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_18E6D9518(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v20 = a2;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_18E6D9708(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_18E72B308();
  if (!v26)
  {
    return sub_18E72B1E8();
  }

  v48 = v26;
  v52 = sub_18E72B698();
  v39 = sub_18E72B6A8();
  sub_18E72B648();
  result = sub_18E72B2F8();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_18E72B3B8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_18E72B688();
      result = sub_18E72B328();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

int *sub_18E6D9B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21[0] = a2;
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v8);
  (*(v16 + 32))(a8, v19, a3);
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = type metadata accessor for StationaryLocationFilter();
  *(a8 + result[15]) = 0;
  *(a8 + result[16]) = a1;
  *(a8 + result[17]) = v21[0];
  return result;
}

uint64_t sub_18E6D9C64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_18E682558();
  *a2 = result;
  return result;
}

uint64_t sub_18E6D9C9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6D9CF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6D9D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v12 + 16))(v21 - v11, a1, AssociatedTypeWitness);
  v13 = *(*(a2 + 32) + 8);
  swift_getAssociatedTypeWitness();
  v14 = sub_18E72B288();
  v15 = sub_18E6D9F28(v14, a2);
  v16 = *(a2 + 60);
  v17 = *(v3 + v16);

  *(v3 + v16) = v14;
  if (sub_18E72B228() < 1)
  {

    v20 = MEMORY[0x1E69E7CC0];
    *a3 = 1;
    *(a3 + 8) = v20;
    *(a3 + 16) = v20;
    *(a3 + 24) = 0xD000000000000014;
    *(a3 + 32) = 0x800000018E73A730;
    *(a3 + 40) = 0;
  }

  else
  {
    v22 = v15;
    v18 = sub_18E72B278();
    memset(v21, 0, sizeof(v21));
    sub_18E6FEC1C(&v22, v21, v18, a3);
  }

  return result;
}

char *sub_18E6D9F28(char *a1, uint64_t a2)
{
  v6 = a2 + 24;
  v5 = *(a2 + 24);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (sub_18E72B228() >= *(v2 + *(a2 + 64)) && (v10 = *(v2 + *(a2 + 60))) != 0)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = sub_18E6DA074(a1, v10);
    a1 = sub_18E6DA194(a1, v13, AssociatedTypeWitness, v11, v12);
    v14 = *(v2 + *(a2 + 68));
    if (v14 < sub_18E72B228())
    {
      v15 = sub_18E6DA46C(v14, a1, v13, AssociatedTypeWitness, v11, v12);

      return v15;
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_18E6DA074(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v12[7] = a1;
    MEMORY[0x1EEE9AC00](a1);
    v12[2] = v2;
    v12[3] = v3;
    v12[4] = v5;
    v12[5] = v4;
    v6 = sub_18E72B278();
    WitnessTable = swift_getWitnessTable();
    return sub_18E6D9708(sub_18E6DC394, v12, v6, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);
  }

  else
  {
    result = sub_18E72B228();
    if (result < 0)
    {
      __break(1u);
    }

    else if (result)
    {
      v10 = result;
      v11 = sub_18E72B1F8();
      *(v11 + 16) = v10;
      bzero((v11 + 32), 8 * v10);
      return v11;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_18E6DA194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(a2 + 32);
    v11 = v9 - 1;
    if (v11)
    {
      v12 = (a2 + 40);
      do
      {
        v13 = *v12++;
        v14 = v13;
        if (v10 < v13)
        {
          v10 = v14;
        }

        --v11;
      }

      while (v11);
    }
  }

  v28 = a1;
  v15 = sub_18E72B278();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193AD1670](&v27, v15, WitnessTable);
  v26[8] = v27;
  v17 = sub_18E72B5E8();
  v18 = swift_getWitnessTable();
  MEMORY[0x193AD1640](&v29, v17, v18);

  v28 = v29;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v26[0] = a5;
  v26[1] = a2;
  MEMORY[0x1EEE9AC00](v20);
  sub_18E72B6F8();
  swift_getWitnessTable();
  v29 = sub_18E72B138();
  MEMORY[0x1EEE9AC00](v29);
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  swift_getTupleTypeMetadata2();
  v21 = sub_18E72B278();
  v22 = swift_getWitnessTable();
  v24 = sub_18E6D9708(sub_18E6DC370, v26, v21, a3, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);

  return v24;
}

uint64_t sub_18E6DA46C(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  v43 = a2;
  v11 = sub_18E72B278();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193AD1670](&v42, v11, WitnessTable);
  v41 = v42;
  v13 = sub_18E72B5E8();
  v14 = swift_getWitnessTable();
  MEMORY[0x193AD1640](&v44, v13, v14);

  v15 = v44;
  v43 = v44;
  v35 = a4;
  v36 = a5;
  v32 = a5;
  v33 = a6;
  v37 = a6;
  v38 = a3;
  v16 = sub_18E72B6F8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EAC8, &qword_18E72EFB8);
  v40 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v20 = sub_18E6D9708(sub_18E6DAB3C, v34, v16, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

  v44 = v20;

  sub_18E6DB028(&v44);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    swift_unknownObjectRelease();
    sub_18E6BEFDC(v20, (v20 + 32), v17, (2 * v15) | 1);
    goto LABEL_10;
  }

  v20 = v44;
  v15 = *(v44 + 2);
  if (v15 >= a1)
  {
    v17 = v15 - a1;
  }

  else
  {
    v17 = 0;
  }

  sub_18E72B7D8();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (v22 != (v15 - v17))
  {
    goto LABEL_12;
  }

  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_10:
  v44 = v23;
  sub_18E6DB184(&v44);
  v24 = swift_unknownObjectRelease();
  MEMORY[0x1EEE9AC00](v24);
  v30[2] = a4;
  v30[3] = v32;
  v30[4] = v33;
  v30[5] = v31;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EAD0, &qword_18E72EFC0);
  v26 = sub_18E6DB314();
  v28 = sub_18E6D9708(sub_18E6DB2E0, v30, v25, a4, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);

  return v28;
}

uint64_t sub_18E6DA81C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 60);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*sub_18E6DA854(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_18E6DA884(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6DA8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, TupleTypeMetadata2);
  return (*(*(a2 - 8) + 32))(a3, &v9[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t sub_18E6DA9E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v16 - v10;
  result = (*(v12 + 16))(v16 - v10, a1, TupleTypeMetadata2);
  v14 = *(TupleTypeMetadata2 + 48);
  *a4 = *v11;
  v15 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *(a2 + 16))
  {
    a4[1] = *(a2 + 8 * v15 + 32);
    return (*(*(a3 - 8) + 8))(&v11[v14], a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6DAB3C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_18E6DA9E4(a1, v2[5], v2[2], a2);
}

uint64_t sub_18E6DAB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v40 = a5;
  v42 = a6;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18E72B438();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  v47 = a2;
  v43 = a3;
  v44 = a4;
  v45 = v40;
  v46 = a1;
  v39 = a4;
  v40 = a1;
  sub_18E72B278();
  swift_getWitnessTable();
  v21 = v41;
  sub_18E72B128();
  v22 = v14[2];
  v41 = v13;
  v22(v18, v20, v13);
  v23 = v10;
  if ((*(v10 + 48))(v18, 1, a3) == 1)
  {
    v24 = v14[1];
    v25 = v41;
    v24(v20, v41);
    result = (v24)(v18, v25);
    v27 = 0.0;
  }

  else
  {
    v28 = v38;
    (*(v23 + 32))(v38, v18, a3);
    v29 = v39;
    v37 = v21;
    v30 = *(v39 + 8);
    v31 = v30(a3, v39);
    v33 = v32;
    v34 = v30(a3, v29);
    v36 = v35;
    (*(v23 + 8))(v28, a3);
    result = (v14[1])(v20, v41);
    v27 = (v31 - v34) * (v31 - v34) + (v33 - v36) * (v33 - v36);
  }

  *v42 = v27;
  return result;
}

uint64_t sub_18E6DAE94()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  sub_18E72B5D8();
  sub_18E72B5D8();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  v9 = sub_18E72AFB8();
  v10 = *(v1 + 8);
  v10(v5, AssociatedTypeWitness);
  v10(v7, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t sub_18E6DB028(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18E7265B0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_18E72B768();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EAC8, &qword_18E72EFB8);
      v7 = sub_18E72B1F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_18E6DB910(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_18E6DB184(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18E7265B0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_18E72B768();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EAC8, &qword_18E72EFB8);
      v7 = sub_18E72B1F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_18E6DB378(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_18E6DB2E0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = *a1;
  return sub_18E72B298();
}

unint64_t sub_18E6DB314()
{
  result = qword_1EAC8EAD8[0];
  if (!qword_1EAC8EAD8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8EAD0, &qword_18E72EFC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8EAD8);
  }

  return result;
}

uint64_t sub_18E6DB378(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18E7290FC(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_18E6DBEA4((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18E6ED5B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_18E6ED5B4((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_18E6DBEA4((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_18E6DB910(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18E7290FC(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_18E6DC0A8((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18E6ED5B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_18E6ED5B4((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_18E6DC0A8((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_18E6DBEA4(char *__dst, char *__src, char *a3, char *a4)
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
      v20 = *(v18 - 2);
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

uint64_t sub_18E6DC0A8(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
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

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

unint64_t sub_18E6DC2AC(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + 40);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *(v1 + 48);
  v4 = *(v2 + 8 * result + 32);
  if (v4 == 0.0)
  {
    return v3 <= *(v1 + 56);
  }

  else
  {
    return v3 * *(v1 + 64) <= v4;
  }
}

uint64_t sub_18E6DC2F8(char *a1)
{
  v3 = v1[2];
  v5 = v1[5];
  v4 = v1[6];
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)]) & 1;
}

uint64_t sub_18E6DC370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_18E6DA8C0(a1, v2[2], a2);
}

uint64_t sub_18E6DC3B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  return sub_18E6DAE94() & 1;
}

uint64_t *sub_18E6DC3DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *sub_18E6DC418(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_18E6DC44C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18E6DC4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18E6DC510(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

double sub_18E6DC574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0uLL;
  }

  else
  {
    v2 = v1 & 0x7FFFFFFFFFFFFFFELL;
    v5 = (a1 + 64);
    v3 = 0uLL;
    v6 = v1 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v7 = *(v5 - 24);
      v8 = *v5;
      v5 += 3;
      v3 = vaddq_f64(vaddq_f64(v3, v7), v8);
      v6 -= 2;
    }

    while (v6);
    if (v1 == v2)
    {
      goto LABEL_10;
    }
  }

  v9 = v1 - v2;
  v10 = (a1 + 24 * v2 + 40);
  do
  {
    v11 = *v10;
    v10 = (v10 + 24);
    v3 = vaddq_f64(v3, v11);
    --v9;
  }

  while (v9);
LABEL_10:
  *&result = *&vmulq_n_f64(v3, 1.0 / v1);
  return result;
}

__n128 Sequence<>.centroid()(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  type metadata accessor for CGPoint(0);
  v7 = sub_18E6DC79C(sub_18E6DC714, v19, a1, v5, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0;
      v10 = 0uLL;
    }

    else
    {
      v9 = v8 & 0x7FFFFFFFFFFFFFFELL;
      v12 = (v7 + 48);
      v10 = 0uLL;
      v13 = v8 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v10 = vaddq_f64(vaddq_f64(v10, v12[-1]), *v12);
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    v14 = v8 - v9;
    v15 = (v7 + 16 * v9 + 32);
    do
    {
      v16 = *v15++;
      v10 = vaddq_f64(v10, v16);
      --v14;
    }

    while (v14);
LABEL_10:
    v11 = vmulq_n_f64(v10, 1.0 / v8);
    goto LABEL_11;
  }

  v11 = 0uLL;
LABEL_11:
  v18 = v11;

  return v18;
}

void sub_18E6DC714(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = *(v1[4] + 16);
  v6 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = v6(AssociatedTypeWitness, v5);
  *(a1 + 8) = v8;
}

uint64_t sub_18E6DC79C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v49 - v21;
  v22 = sub_18E72B438();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_18E72B0D8();
  v70 = sub_18E72B698();
  v65 = sub_18E72B6A8();
  sub_18E72B648();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_18E72B0C8();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_18E72B448();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_18E72B688();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_18E72B448();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_18E72B688();
      sub_18E72B448();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t LongPressComponent.pointCountTimeout.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t LongPressComponent.pointCountTimeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LongPressComponent.minimumDuration.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t LongPressComponent.minimumDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t LongPressComponent.maximumDuration.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t LongPressComponent.maximumDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t LongPressComponent.init(pointCount:pointCountTimeout:minimumDuration:maximumDuration:maximumMovement:maximumSeparationDistance:failOnExceedingMaximumPointCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13)
{
  v19 = *(type metadata accessor for LongPressComponent() + 60);
  v20 = *(a13 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  type metadata accessor for DurationGate();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v28 = *(a13 + 16);
  type metadata accessor for SeparationDistanceGate();
  type metadata accessor for CGPoint(255);
  swift_getWitnessTable();
  type metadata accessor for MapComponent();
  swift_getWitnessTable();
  type metadata accessor for ValueTracker();
  swift_getWitnessTable();
  type metadata accessor for MovementGate();
  swift_getWitnessTable();
  type metadata accessor for RepeatComponent();
  swift_getWitnessTable();
  sub_18E6B04D4();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  v21 = type metadata accessor for MapComponent();
  result = (*(*(v21 - 8) + 56))(a9 + v19, 1, 1, v21);
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a1;
  *(a9 + 72) = a8;
  return result;
}

uint64_t LongPressComponent.upstream.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v6 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  type metadata accessor for DurationGate();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = *(v6 + 16);
  type metadata accessor for SeparationDistanceGate();
  type metadata accessor for CGPoint(255);
  v10 = v9;
  swift_getWitnessTable();
  type metadata accessor for MapComponent();
  swift_getWitnessTable();
  v32 = type metadata accessor for ValueTracker();
  v33 = v10;
  WitnessTable = swift_getWitnessTable();
  v35 = &protocol witness table for CGPoint;
  type metadata accessor for MovementGate();
  swift_getWitnessTable();
  type metadata accessor for RepeatComponent();
  swift_getWitnessTable();
  sub_18E6B04D4();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  v11 = type metadata accessor for MapComponent();
  v12 = sub_18E72B438();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - v16;
  v18 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v2, a1);
  (*(v13 + 32))(v17, &v20[*(a1 + 60)], v12);
  v22 = *(v11 - 8);
  if ((*(v22 + 48))(v17, 1, v11) != 1)
  {
    return (*(v22 + 32))(a2, v17, v11);
  }

  v31 = a1;
  v23 = *(v13 + 8);
  v23(v17, v12);
  v24 = *v2;
  v25 = *(v2 + 8);
  v26 = sub_18E72B9B8();
  sub_18E718CC0(v26, v27, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), a2, v24, v25, *(v2 + 56), 1, *(v2 + 64), *(v2 + 72), v5, v6);
  v28 = *(v31 + 60);
  v23((v2 + v28), v12);
  (*(v22 + 16))(v2 + v28, a2, v11);
  return (*(v22 + 56))(v2 + v28, 0, 1, v11);
}

uint64_t LongPressComponent.upstream.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(v6 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  type metadata accessor for DurationGate();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = *(v6 + 16);
  type metadata accessor for SeparationDistanceGate();
  type metadata accessor for CGPoint(255);
  swift_getWitnessTable();
  type metadata accessor for MapComponent();
  swift_getWitnessTable();
  type metadata accessor for ValueTracker();
  swift_getWitnessTable();
  type metadata accessor for MovementGate();
  swift_getWitnessTable();
  type metadata accessor for RepeatComponent();
  swift_getWitnessTable();
  sub_18E6B04D4();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  v8 = type metadata accessor for MapComponent();
  v9 = sub_18E72B438();
  (*(*(v9 - 8) + 8))(v2 + v4, v9);
  v10 = *(v8 - 8);
  (*(v10 + 32))(v2 + v4, a1, v8);
  return (*(v10 + 56))(v2 + v4, 0, 1, v8);
}

void (*LongPressComponent.upstream.modify(uint64_t *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x70uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 64) = a2;
  *(v5 + 72) = v2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(v8 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  type metadata accessor for DurationGate();
  swift_getWitnessTable();
  v10 = type metadata accessor for ExpirationComponent();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = *(v8 + 16);
  *v6 = v10;
  v6[1] = WitnessTable;
  v6[2] = v12;
  v6[3] = v13;
  type metadata accessor for SeparationDistanceGate();
  type metadata accessor for CGPoint(255);
  v15 = v14;
  swift_getWitnessTable();
  type metadata accessor for MapComponent();
  swift_getWitnessTable();
  v16 = type metadata accessor for ValueTracker();
  v17 = swift_getWitnessTable();
  v6[4] = v16;
  v6[5] = v15;
  v6[6] = v17;
  v6[7] = &protocol witness table for CGPoint;
  type metadata accessor for MovementGate();
  swift_getWitnessTable();
  type metadata accessor for RepeatComponent();
  swift_getWitnessTable();
  sub_18E6B04D4();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  v18 = type metadata accessor for MapComponent();
  v6[10] = v18;
  v19 = *(v18 - 8);
  v6[11] = v19;
  v20 = *(v19 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6[12] = swift_coroFrameAlloc();
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v6[12] = malloc(v20);
    v21 = malloc(v20);
  }

  v6[13] = v21;
  LongPressComponent.upstream.getter(a2, v21);
  return sub_18E6DE308;
}

void sub_18E6DE308(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[12];
  v4 = (*a1)[13];
  if (a2)
  {
    v5 = v2[10];
    v6 = v2[11];
    v8 = v2[8];
    v7 = v2[9];
    (*(v6 + 16))((*a1)[12], v4, v5);
    LongPressComponent.upstream.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[9];
    LongPressComponent.upstream.setter((*a1)[13], v2[8]);
  }

  free(v4);
  free(v3);

  free(v2);
}

Gestures::GestureTraitCollection_optional __swiftcall LongPressComponent.traits()()
{
  v2 = v0;
  v3 = v1[8];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *v1;
  if (qword_1EAC8D918 != -1)
  {
    swift_once();
  }

  v7 = qword_1EAC8E758;
  v8 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_18E6B1E30(v3, 1, v7, isUniquelyReferenced_nonNull_native);
  if (qword_1EAC8D928 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAC8E768;
  v11 = sub_18E72B938();
  sub_18E72B938();
  *&v13 = v12 / 1.0e18 + v11;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E6B1E30(v13, 2, v10, v14);
  if (qword_1EAC8D930 != -1)
  {
    swift_once();
  }

  v15 = qword_1EAC8E770;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E6B1E30(v6, 2, v15, v16);
  if (qword_1EAC8D948 != -1)
  {
    swift_once();
  }

  v17 = qword_1EAC8EB60;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v17;
  *(inited + 40) = v8;
  result.value = GestureTraitCollection.init(traits:)(inited);
  *v2 = v8;
  return result;
}

unint64_t static GestureTrait.longPress(pointCount:minimumDuration:maximumMovement:)@<X0>(unint64_t result@<X0>, char a2@<W1>, char a3@<W4>, uint64_t a4@<X5>, char a5@<W6>, void *a6@<X8>)
{
  v10 = MEMORY[0x1E69E7CC8];
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = result;
    if (qword_1EAC8D918 != -1)
    {
      swift_once();
    }

    v12 = qword_1EAC8E758;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_18E6B1E30(v11, 1, v12, isUniquelyReferenced_nonNull_native);
    if (a3)
    {
LABEL_3:
      if (a5)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  if (qword_1EAC8D928 != -1)
  {
    swift_once();
  }

  v14 = qword_1EAC8E768;
  v15 = sub_18E72B938();
  sub_18E72B938();
  *&v17 = v16 / 1.0e18 + v15;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_18E6B1E30(v17, 2, v14, v18);
  if ((a5 & 1) == 0)
  {
LABEL_11:
    if (qword_1EAC8D930 != -1)
    {
      swift_once();
    }

    v19 = qword_1EAC8E770;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_18E6B1E30(a4, 2, v19, v20);
  }

LABEL_14:
  if (qword_1EAC8D948 != -1)
  {
    result = swift_once();
  }

  *a6 = qword_1EAC8EB60;
  a6[1] = v10;
  return result;
}

void (*sub_18E6DE80C(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(v7 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  type metadata accessor for DurationGate();
  swift_getWitnessTable();
  v9 = type metadata accessor for ExpirationComponent();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = *(v7 + 16);
  *v5 = v9;
  v5[1] = WitnessTable;
  v5[2] = v11;
  v5[3] = v12;
  type metadata accessor for SeparationDistanceGate();
  type metadata accessor for CGPoint(255);
  v14 = v13;
  swift_getWitnessTable();
  type metadata accessor for MapComponent();
  swift_getWitnessTable();
  v15 = type metadata accessor for ValueTracker();
  v16 = swift_getWitnessTable();
  v5[4] = v15;
  v5[5] = v14;
  v5[6] = v16;
  v5[7] = &protocol witness table for CGPoint;
  type metadata accessor for MovementGate();
  swift_getWitnessTable();
  type metadata accessor for RepeatComponent();
  swift_getWitnessTable();
  sub_18E6B04D4();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  v17 = type metadata accessor for MapComponent();
  v5[12] = v17;
  v18 = *(v17 - 8);
  if (MEMORY[0x1E69E7D08])
  {
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v19 = malloc(*(v18 + 64));
  }

  v20 = v19;
  v5[13] = v19;
  v5[14] = LongPressComponent.upstream.modify(v5 + 8, a2);
  v5[15] = v21;
  v22 = *(v18 + 32);
  v5[16] = v22;
  v5[17] = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v22(v20);
  return sub_18E6B1A6C;
}

Gestures::GestureTraitID sub_18E6DEC1C()
{
  v0._countAndFlagsBits = 0x73657250676E6F6CLL;
  v0._object = 0xE900000000000073;
  return GestureTraitID.init(_:)(v0);
}

uint64_t static GestureTraitID.longPress.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EAC8D948 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EAC8EB60;
  return result;
}

uint64_t sub_18E6DECE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(v2 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  type metadata accessor for DurationGate();
  swift_getWitnessTable();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = *(v2 + 16);
  type metadata accessor for SeparationDistanceGate();
  type metadata accessor for CGPoint(255);
  swift_getWitnessTable();
  type metadata accessor for MapComponent();
  swift_getWitnessTable();
  type metadata accessor for ValueTracker();
  swift_getWitnessTable();
  type metadata accessor for MovementGate();
  swift_getWitnessTable();
  type metadata accessor for RepeatComponent();
  swift_getWitnessTable();
  sub_18E6B04D4();
  type metadata accessor for ExpirationComponent();
  swift_getWitnessTable();
  type metadata accessor for MapComponent();
  result = sub_18E72B438();
  if (v5 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6DF094(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  v7 = *(v4 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if ((((((v5 & 0xF8) + 16) & ~v6) + v8) | 2) <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = ((((v5 & 0xF8) + 16) & ~v6) + v8) | 2;
  }

  if ((v5 & 0x1000F8) != 0)
  {
    goto LABEL_19;
  }

  v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (((((v10 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (((v12 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 63) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (((((v16 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  if (((-74 - v6) | v6) - (((v18 + 63) & 0xFFFFFFFFFFFFFFF8) + 16) < 0xFFFFFFFFFFFFFFE7)
  {
LABEL_19:
    v40 = *a2;
    *a1 = *a2;
    a1 = (v40 + ((v6 + 16) & ~v6));
LABEL_77:

    return a1;
  }

  v20 = *a2;
  v19 = a2 + 15;
  *a1 = v20;
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *(v19 & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v28 = *v29;
  *(v28 + 8) = *(v29 + 8);
  v30 = v26 + 39;
  v31 = (v26 + 39) & 0xFFFFFFFFFFFFFFF8;
  v32 = v27 + 39;
  v33 = ((v27 + 39) & 0xFFFFFFFFFFFFFFF8);
  v34 = v9 + 8;
  v35 = ((v33 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*v35 >= 0xFFFFFFFFuLL)
  {
    v36 = *(v33 + v9);
    v37 = v36 - 3;
    if (v36 < 3)
    {
      goto LABEL_28;
    }

    if (v9 <= 3)
    {
      v38 = v9;
    }

    else
    {
      v38 = 4;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = *v33;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v38 == 3)
        {
          v39 = *v33 | (*(v33 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v36 = v39 + 3;
          goto LABEL_28;
        }

        v39 = *v33;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v36 = (v39 | (v37 << (8 * v9))) + 3;
LABEL_28:
      v158 = (((((v16 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
      v156 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
      v157 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
      v154 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
      v155 = (v14 + 63) & 0xFFFFFFFFFFFFFFF8;
      v152 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
      v153 = (((v12 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if (v36 == 2)
      {
        *v31 = *v33;
        *(v31 + v9) = 2;

        v34 = v9 + 8;
        v11 = (((((v10 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
LABEL_67:
        v83 = ((v34 + v31) & 0xFFFFFFFFFFFFFFF8);
        v84 = v35[1];
        *v83 = *v35;
        v83[1] = v84;
        v85 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
        v86 = ((v83 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v86 = *v85;
        v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
        v88 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
        *v87 = *v88;
        *(v87 + 8) = *(v88 + 8);
        *(v87 + 9) = *(v88 + 9);
        v89 = v10 + 10 + v31;
        v90 = v33 + v10 + 10;
        *v89 = *v90;
        v89 &= 0xFFFFFFFFFFFFFFF8;
        v90 &= 0xFFFFFFFFFFFFFFF8;
        *(v89 + 8) = *(v90 + 8);
        v91 = ((v89 + 31) & 0xFFFFFFFFFFFFFFF8);
        v92 = ((v90 + 31) & 0xFFFFFFFFFFFFFFF8);
        *v91 = *v92;
        v91[1] = v92[1];
        v93 = ((v91 + 23) & 0xFFFFFFFFFFFFFFF8);
        v94 = ((v92 + 23) & 0xFFFFFFFFFFFFFFF8);
        v95 = v94[1];
        *v93 = *v94;
        v93[1] = v95;
        v96 = &v30[v11 + 16] & 0xFFFFFFFFFFFFFFF8;
        v97 = &v32[v11 + 16] & 0xFFFFFFFFFFFFFFF8;
        v98 = *(v97 + 48);

        if (v98 == 1)
        {
          v99 = *v97;
          v100 = *(v97 + 16);
          v101 = *(v97 + 32);
          *(v96 + 48) = *(v97 + 48);
          *(v96 + 16) = v100;
          *(v96 + 32) = v101;
          *v96 = v99;
        }

        else
        {
          *v96 = *v97;
          *(v96 + 8) = *(v97 + 8);
          *(v96 + 24) = *(v97 + 24);
          *(v96 + 40) = *(v97 + 40);
          *(v96 + 48) = *(v97 + 48);
        }

        v102 = (&v30[v152 + 56] & 0xFFFFFFFFFFFFFFF8);
        v103 = (&v32[v152 + 56] & 0xFFFFFFFFFFFFFFF8);
        *v102 = *v103;
        *((v102 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v103 + 23) & 0xFFFFFFFFFFFFFFF8);
        v104 = &v30[v153 + 16] & 0xFFFFFFFFFFFFFFF8;
        v105 = &v32[v153 + 16] & 0xFFFFFFFFFFFFFFF8;
        if (*(v105 + 48) == 1)
        {
          v106 = *v105;
          v107 = *(v105 + 16);
          v108 = *(v105 + 32);
          *(v104 + 48) = *(v105 + 48);
          *(v104 + 16) = v107;
          *(v104 + 32) = v108;
          *v104 = v106;
        }

        else
        {
          *v104 = *v105;
          *(v104 + 8) = *(v105 + 8);
          *(v104 + 24) = *(v105 + 24);
          *(v104 + 40) = *(v105 + 40);
          *(v104 + 48) = *(v105 + 48);
        }

        *(&v30[v154 + 56] & 0xFFFFFFFFFFFFFFF8) = *(&v32[v154 + 56] & 0xFFFFFFFFFFFFFFF8);
        v109 = (&v30[v155 + 8] & 0xFFFFFFFFFFFFFFF8);
        v110 = (&v32[v155 + 8] & 0xFFFFFFFFFFFFFFF8);
        v111 = v110[1];
        *v109 = *v110;
        v109[1] = v111;
        v112 = &v30[v156 + 16] & 0xFFFFFFFFFFFFFFF8;
        v113 = &v32[v156 + 16] & 0xFFFFFFFFFFFFFFF8;
        v114 = *v113;
        v115 = *(v113 + 16);
        *(v112 + 25) = *(v113 + 25);
        *v112 = v114;
        *(v112 + 16) = v115;
        v116 = *(v113 + 56);
        *(v112 + 48) = *(v113 + 48);
        *(v112 + 56) = v116;
        v117 = &v30[v157 + 16] & 0xFFFFFFFFFFFFFFF8;
        v118 = &v32[v157 + 16] & 0xFFFFFFFFFFFFFFF8;
        *v117 = *v118;
        *(v117 + 8) = *(v118 + 8);
        v119 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
        v120 = v119 + v31;
        v121 = v33 + v119;
        v122 = *(v121 + 7);
        v123 = *(v121 + 23);
        v124 = *(v121 + 39);
        *(v120 + 55) = v121[55];
        *(v120 + 39) = v124;
        *(v120 + 23) = v123;
        *(v120 + 7) = v122;
        *(v120 + 63) = *(v121 + 63);
        *((v120 + 78) & 0xFFFFFFFFFFFFFFF8) = *((v121 + 78) & 0xFFFFFFFFFFFFFFF8);
        v125 = &v30[v158 + 16] & 0xFFFFFFFFFFFFFFF8;
        v126 = &v32[v158 + 16] & 0xFFFFFFFFFFFFFFF8;
        v127 = *(v126 + 48);

        if (v127 == 1)
        {
          v128 = *v126;
          v129 = *(v126 + 16);
          v130 = *(v126 + 32);
          *(v125 + 48) = *(v126 + 48);
          *(v125 + 16) = v129;
          *(v125 + 32) = v130;
          *v125 = v128;
        }

        else
        {
          *v125 = *v126;
          *(v125 + 8) = *(v126 + 8);
          *(v125 + 24) = *(v126 + 24);
          *(v125 + 40) = *(v126 + 40);
          *(v125 + 48) = *(v126 + 48);
        }

        v131 = (&v32[v159 + 56] & 0xFFFFFFFFFFFFFFF8);
        v133 = *v131;
        v132 = v131[1];
        v134 = (&v30[v159 + 56] & 0xFFFFFFFFFFFFFFF8);
        *v134 = v133;
        v134[1] = v132;
        goto LABEL_77;
      }

      v41 = v8 | 1;
      if (v36 == 1)
      {
        v42 = *v33;
        *(v31 + 8) = *(v33 + 8);
        *v31 = v42;
        v43 = v26 + 55;
        v44 = ((v26 + 55) & 0xFFFFFFFFFFFFFFF8);
        v45 = v27 + 55;
        v46 = (v45 & 0xFFFFFFFFFFFFFFF8);
        v47 = *((v45 & 0xFFFFFFFFFFFFFFF8) + v8);
        if (v47 > 2)
        {
          v58 = v45 & 0xFFFFFFFFFFFFFFF8;
          v59 = v11;
          v60 = v41;
          v144 = v44;
          memcpy(v44, v46, v41);
          v46 = v58;
          v44 = v144;
          v41 = v60;
          v11 = v59;
          v34 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          if (v47 == 2)
          {
            v148 = v11;
            v140 = v45 & 0xFFFFFFFFFFFFFFF8;
            v142 = v44;
            v138 = v45;
            (*(v4 + 16))(v44);
            v65 = &v43[v7] & 0xFFFFFFFFFFFFFFF8;
            v66 = (v138 + v7) & 0xFFFFFFFFFFFFFFF8;
            if (*v66 < 0xFFFFFFFFuLL)
            {
              v77 = *(v66 + 16);
              *v65 = *v66;
              *(v65 + 16) = v77;
            }

            else
            {
              *v65 = *v66;
              *(v65 + 8) = *(v66 + 8);
              *(v65 + 16) = *(v66 + 16);
              *(v65 + 24) = *(v66 + 24);
            }

            v11 = v148;
            v34 = v9 + 8;
            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            v41 = v8 | 1;
            v76 = 2;
          }

          else
          {
            if (v47 != 1)
            {
              *v44 = *v46;
              v67 = v46[1];
              if (v67)
              {
                v44[1] = v67;
                v44[2] = v46[2];
                v44[3] = v46[3];
                v44[4] = v46[4];
                v149 = v11;
                v68 = v44;
                v69 = v45 & 0xFFFFFFFFFFFFFFF8;

                v46 = v69;
                v44 = v68;
                v41 = v8 | 1;
                v11 = v149;
                v34 = v9 + 8;
              }

              else
              {
                v81 = *(v46 + 3);
                *(v44 + 1) = *(v46 + 1);
                *(v44 + 3) = v81;
              }

              v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
              *(v44 + v8) = 0;
              goto LABEL_63;
            }

            v145 = v11;
            v140 = v45 & 0xFFFFFFFFFFFFFFF8;
            v142 = v44;
            v136 = v45;
            (*(v4 + 16))(v44);
            v48 = &v43[v7] & 0xFFFFFFFFFFFFFFF8;
            v49 = (v136 + v7) & 0xFFFFFFFFFFFFFFF8;
            if (*v49 < 0xFFFFFFFFuLL)
            {
              v75 = *(v49 + 16);
              *v48 = *v49;
              *(v48 + 16) = v75;
            }

            else
            {
              *v48 = *v49;
              *(v48 + 8) = *(v49 + 8);
              *(v48 + 16) = *(v49 + 16);
              *(v48 + 24) = *(v49 + 24);
            }

            v11 = v145;
            v34 = v9 + 8;
            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            v41 = v8 | 1;
            v76 = 1;
          }

          v46 = v140;
          v44 = v142;
          *(v142 + v8) = v76;
        }

LABEL_63:
        *(v44 + v41) = *(v46 + v41);
        *(v31 + v9) = 1;
        goto LABEL_67;
      }

      v50 = *v33;
      *(v31 + 8) = *(v33 + 8);
      *v31 = v50;
      v51 = v26 + 55;
      v52 = ((v26 + 55) & 0xFFFFFFFFFFFFFFF8);
      v53 = v27 + 55;
      v54 = (v53 & 0xFFFFFFFFFFFFFFF8);
      v55 = *((v53 & 0xFFFFFFFFFFFFFFF8) + v8);
      if (v55 > 2)
      {
        v61 = v53 & 0xFFFFFFFFFFFFFFF8;
        v62 = v11;
        v63 = v41;
        v147 = v31;
        v64 = v52;
        memcpy(v52, v54, v41);
        v54 = v61;
        v52 = v64;
        v31 = v147;
        v34 = v9 + 8;
        v41 = v63;
        v11 = v62;
        v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        if (v55 == 2)
        {
          v150 = v11;
          v141 = v53 & 0xFFFFFFFFFFFFFFF8;
          v143 = v52;
          v139 = v53;
          (*(v4 + 16))(v52);
          v70 = &v51[v7] & 0xFFFFFFFFFFFFFFF8;
          v71 = (v139 + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v71 < 0xFFFFFFFFuLL)
          {
            v80 = *(v71 + 16);
            *v70 = *v71;
            *(v70 + 16) = v80;
          }

          else
          {
            *v70 = *v71;
            *(v70 + 8) = *(v71 + 8);
            *(v70 + 16) = *(v71 + 16);
            *(v70 + 24) = *(v71 + 24);
          }

          v11 = v150;
          v34 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v41 = v8 | 1;
          v79 = 2;
        }

        else
        {
          if (v55 != 1)
          {
            *v52 = *v54;
            v72 = v54[1];
            if (v72)
            {
              v52[1] = v72;
              v52[2] = v54[2];
              v52[3] = v54[3];
              v52[4] = v54[4];
              v151 = v11;
              v73 = v52;
              v74 = v53 & 0xFFFFFFFFFFFFFFF8;

              v54 = v74;
              v52 = v73;
              v41 = v8 | 1;
              v11 = v151;
              v34 = v9 + 8;
            }

            else
            {
              v82 = *(v54 + 3);
              *(v52 + 1) = *(v54 + 1);
              *(v52 + 3) = v82;
            }

            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v52 + v8) = 0;
            goto LABEL_66;
          }

          v146 = v11;
          v141 = v53 & 0xFFFFFFFFFFFFFFF8;
          v143 = v52;
          v137 = v53;
          (*(v4 + 16))(v52);
          v56 = &v51[v7] & 0xFFFFFFFFFFFFFFF8;
          v57 = (v137 + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v57 < 0xFFFFFFFFuLL)
          {
            v78 = *(v57 + 16);
            *v56 = *v57;
            *(v56 + 16) = v78;
          }

          else
          {
            *v56 = *v57;
            *(v56 + 8) = *(v57 + 8);
            *(v56 + 16) = *(v57 + 16);
            *(v56 + 24) = *(v57 + 24);
          }

          v11 = v146;
          v34 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v41 = v8 | 1;
          v79 = 1;
        }

        v54 = v141;
        v52 = v143;
        *(v143 + v8) = v79;
      }

LABEL_66:
      *(v52 + v41) = *(v54 + v41);
      *(v31 + v9) = 0;
      goto LABEL_67;
    }

    if (!v38)
    {
      goto LABEL_28;
    }

    v39 = *v33;
    if (v9 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  memcpy(((v26 + 39) & 0xFFFFFFFFFFFFFFF8), ((v27 + 39) & 0xFFFFFFFFFFFFFFF8), ((v18 + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
  return a1;
}

uint64_t sub_18E6DFB58(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8;
  v4 = v3 + 16;
  v5 = ~v3 & 0xFFFFFFFFFFFFFFF8;
  v6 = ((v3 + 16 + ((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v5);
  v7 = (v3 + 16) & v5;
  v8 = *(v2 + 64) + 7;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  if (((v7 + v9) | 2) <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = (v7 + v9) | 2;
  }

  v11 = (&v6[v10 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (*v11 >= 0xFFFFFFFFuLL)
  {
    v12 = v6[v10];
    v13 = v12 - 3;
    if (v12 < 3)
    {
      goto LABEL_22;
    }

    if (v10 <= 3)
    {
      v14 = v10;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = *v6;
    }

    else if (v14 == 2)
    {
      v15 = *v6;
    }

    else if (v14 == 3)
    {
      v15 = *v6 | (v6[2] << 16);
    }

    else
    {
      v15 = *v6;
    }

    v16 = (v15 | (v13 << (8 * v10))) + 3;
    v12 = v15 + 3;
    if (v10 < 4)
    {
      v12 = v16;
    }

LABEL_22:
    if (v12 == 2)
    {
      v21 = v6;
    }

    else
    {
      v17 = &v6[v4] & v5;
      v18 = *(v17 + v9);
      if (v18 > 2)
      {
        goto LABEL_30;
      }

      if (v18 != 2 && v18 != 1)
      {
        if (!*((&v6[v4] & v5) + 8))
        {
          goto LABEL_30;
        }

        v37 = *(v17 + 16);

        v21 = (v17 + 32);
        goto LABEL_29;
      }

      (*(v2 + 8))(&v6[v4] & v5);
      v19 = ((v8 + v17) & 0xFFFFFFFFFFFFFFF8);
      if (*v19 < 0xFFFFFFFFuLL)
      {
LABEL_30:
        v23 = v11[1];

        v24 = ((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v25 = ((&v6[v24 + 10] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
        v26 = *(v25 + 8);

        v27 = *(((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

        v28 = (((((v24 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v29 = v6 + 16;
        if (*&v6[v28 + 64] != 1)
        {
        }

        v30 = (((((v28 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        if (*&v29[v30 + 48] != 1)
        {
        }

        v31 = (((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
        v32 = *&v6[v31 + 16];

        v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
        v34 = *&v6[v33 + 72];

        v35 = (((((v33 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (*&v29[v35 + 48] != 1)
        {
        }

        v36 = *&v6[((v35 + 23) & 0xFFFFFFFFFFFFFFF8) + 64];
      }

      v20 = v19[1];

      v21 = v19 + 3;
    }

LABEL_29:
    v22 = *v21;

    goto LABEL_30;
  }

  return result;
}

void *sub_18E6DFE98(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  v15 = *(*(a3 + 16) - 8);
  v16 = *(v15 + 80) & 0xF8;
  v17 = v16 + 16;
  v18 = v16 + 16 + v13;
  v19 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 & v19);
  v21 = ((v16 + 16 + v14) & v19);
  v22 = *(v15 + 64) + 7;
  if ((v22 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v23 = 40;
  }

  else
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v16 + 16) & v19) + v23) | 2) <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = (((v16 + 16) & v19) + v23) | 2;
  }

  v25 = (&v21[v24 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (*v25 < 0xFFFFFFFFuLL)
  {
    memcpy((v18 & v19), v21, (((((((((((((((((((((((((((((((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
    return a1;
  }

  v26 = v21[v24];
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v24 <= 3)
    {
      v28 = v24;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_23;
      }

      v29 = *v21;
      if (v24 < 4)
      {
LABEL_38:
        v43 = v29 | (v27 << (8 * v24));
        v26 = v43 + 3;
        if (v43 == -1)
        {
          goto LABEL_39;
        }

LABEL_24:
        v30 = v23 | 1;
        if (v26 == 1)
        {
          v31 = *v21;
          *((v18 & v19) + 8) = v21[8];
          *v20 = v31;
          v32 = ((v20 + v17) & v19);
          v33 = (&v21[v17] & v19);
          v34 = v33[v23];
          if (v34 > 2)
          {
            memcpy(((v20 + v17) & v19), (&v21[v17] & v19), v23 | 1);
            v30 = v23 | 1;
          }

          else if (v34 == 2)
          {
            (*(v15 + 16))((v20 + v17) & v19, &v21[v17] & v19);
            v44 = &v32[v22] & 0xFFFFFFFFFFFFFFF8;
            v45 = &v33[v22] & 0xFFFFFFFFFFFFFFF8;
            if (*v45 < 0xFFFFFFFFuLL)
            {
              v51 = *(v45 + 16);
              *v44 = *v45;
              *(v44 + 16) = v51;
            }

            else
            {
              *v44 = *v45;
              *(v44 + 8) = *(v45 + 8);
              *(v44 + 16) = *(v45 + 16);
              *(v44 + 24) = *(v45 + 24);
            }

            v30 = v23 | 1;
            v32[v23] = 2;
          }

          else if (v34 == 1)
          {
            (*(v15 + 16))((v20 + v17) & v19, &v21[v17] & v19);
            v35 = &v32[v22] & 0xFFFFFFFFFFFFFFF8;
            v36 = &v33[v22] & 0xFFFFFFFFFFFFFFF8;
            if (*v36 < 0xFFFFFFFFuLL)
            {
              v50 = *(v36 + 16);
              *v35 = *v36;
              *(v35 + 16) = v50;
            }

            else
            {
              *v35 = *v36;
              *(v35 + 8) = *(v36 + 8);
              *(v35 + 16) = *(v36 + 16);
              *(v35 + 24) = *(v36 + 24);
            }

            v30 = v23 | 1;
            v32[v23] = 1;
          }

          else
          {
            *v32 = *v33;
            v46 = *((&v21[v17] & v19) + 8);
            if (v46)
            {
              *(((v20 + v17) & v19) + 8) = v46;
              *(((v20 + v17) & v19) + 0x10) = *((&v21[v17] & v19) + 0x10);
              *(((v20 + v17) & v19) + 0x18) = *((&v21[v17] & v19) + 0x18);
              *(((v20 + v17) & v19) + 0x20) = *((&v21[v17] & v19) + 0x20);

              v30 = v23 | 1;
            }

            else
            {
              v54 = *((&v21[v17] & v19) + 0x18);
              *(((v20 + v17) & v19) + 8) = *((&v21[v17] & v19) + 8);
              *(((v20 + v17) & v19) + 0x18) = v54;
            }

            v32[v23] = 0;
          }

          v32[v30] = v33[v30];
          *(v20 + v24) = 1;
        }

        else
        {
          v37 = *v21;
          *((v18 & v19) + 8) = v21[8];
          *v20 = v37;
          v38 = ((v20 + v17) & v19);
          v39 = (&v21[v17] & v19);
          v40 = v39[v23];
          if (v40 > 2)
          {
            memcpy(((v20 + v17) & v19), (&v21[v17] & v19), v23 | 1);
            v30 = v23 | 1;
          }

          else if (v40 == 2)
          {
            (*(v15 + 16))((v20 + v17) & v19, &v21[v17] & v19);
            v47 = &v38[v22] & 0xFFFFFFFFFFFFFFF8;
            v48 = &v39[v22] & 0xFFFFFFFFFFFFFFF8;
            if (*v48 < 0xFFFFFFFFuLL)
            {
              v53 = *(v48 + 16);
              *v47 = *v48;
              *(v47 + 16) = v53;
            }

            else
            {
              *v47 = *v48;
              *(v47 + 8) = *(v48 + 8);
              *(v47 + 16) = *(v48 + 16);
              *(v47 + 24) = *(v48 + 24);
            }

            v30 = v23 | 1;
            v38[v23] = 2;
          }

          else if (v40 == 1)
          {
            (*(v15 + 16))((v20 + v17) & v19, &v21[v17] & v19);
            v41 = &v38[v22] & 0xFFFFFFFFFFFFFFF8;
            v42 = &v39[v22] & 0xFFFFFFFFFFFFFFF8;
            if (*v42 < 0xFFFFFFFFuLL)
            {
              v52 = *(v42 + 16);
              *v41 = *v42;
              *(v41 + 16) = v52;
            }

            else
            {
              *v41 = *v42;
              *(v41 + 8) = *(v42 + 8);
              *(v41 + 16) = *(v42 + 16);
              *(v41 + 24) = *(v42 + 24);
            }

            v30 = v23 | 1;
            v38[v23] = 1;
          }

          else
          {
            *v38 = *v39;
            v49 = *((&v21[v17] & v19) + 8);
            if (v49)
            {
              *(((v20 + v17) & v19) + 8) = v49;
              *(((v20 + v17) & v19) + 0x10) = *((&v21[v17] & v19) + 0x10);
              *(((v20 + v17) & v19) + 0x18) = *((&v21[v17] & v19) + 0x18);
              *(((v20 + v17) & v19) + 0x20) = *((&v21[v17] & v19) + 0x20);

              v30 = v23 | 1;
            }

            else
            {
              v55 = *((&v21[v17] & v19) + 0x18);
              *(((v20 + v17) & v19) + 8) = *((&v21[v17] & v19) + 8);
              *(((v20 + v17) & v19) + 0x18) = v55;
            }

            v38[v23] = 0;
          }

          v38[v30] = v39[v30];
          *(v20 + v24) = 0;
        }

        goto LABEL_62;
      }
    }

    else if (v28 == 2)
    {
      v29 = *v21;
      if (v24 < 4)
      {
        goto LABEL_38;
      }
    }

    else if (v28 == 3)
    {
      v29 = *v21 | (v21[2] << 16);
      if (v24 < 4)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v29 = *v21;
      if (v24 < 4)
      {
        goto LABEL_38;
      }
    }

    v26 = v29 + 3;
  }

LABEL_23:
  if (v26 != 2)
  {
    goto LABEL_24;
  }

LABEL_39:
  *v20 = *v21;
  *(v20 + v24) = 2;

LABEL_62:
  v56 = ((v20 + v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  v57 = v25[1];
  *v56 = *v25;
  v56[1] = v57;
  v58 = ((v56 + 23) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v58 = *v59;
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v60 = *v61;
  *(v60 + 8) = *(v61 + 8);
  *(v60 + 9) = *(v61 + 9);
  v62 = ((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = v20 + v62 + 10;
  v64 = &v21[v62 + 10];
  *v63 = *v64;
  v63 &= 0xFFFFFFFFFFFFFFF8;
  v64 &= 0xFFFFFFFFFFFFFFF8;
  *(v63 + 8) = *(v64 + 8);
  v65 = ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  v65[1] = v66[1];
  v67 = ((v65 + 23) & 0xFFFFFFFFFFFFFFF8);
  v68 = ((v66 + 23) & 0xFFFFFFFFFFFFFFF8);
  v69 = v68[1];
  *v67 = *v68;
  v67[1] = v69;
  v70 = (((((v62 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = v20 + v70 + 16;
  v72 = &v21[v70 + 16];
  v73 = *(v72 + 6);

  if (v73 == 1)
  {
    v74 = *v72;
    v75 = *(v72 + 1);
    v76 = *(v72 + 2);
    *(v71 + 6) = *(v72 + 6);
    *(v71 + 1) = v75;
    *(v71 + 2) = v76;
    *v71 = v74;
  }

  else
  {
    *v71 = *v72;
    *(v71 + 8) = *(v72 + 8);
    *(v71 + 24) = *(v72 + 24);
    *(v71 + 5) = *(v72 + 5);
    *(v71 + 6) = *(v72 + 6);
  }

  v77 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v20 + v77 + 56);
  v79 = &v21[v77 + 56];
  *v78 = *v79;
  *((v78 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v79 + 23) & 0xFFFFFFFFFFFFFFF8);
  v80 = (((v77 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v81 = v20 + v80 + 16;
  v82 = &v21[v80 + 16];
  if (*(v82 + 6) == 1)
  {
    v83 = *v82;
    v84 = *(v82 + 1);
    v85 = *(v82 + 2);
    *(v81 + 6) = *(v82 + 6);
    *(v81 + 1) = v84;
    *(v81 + 2) = v85;
    *v81 = v83;
  }

  else
  {
    *v81 = *v82;
    *(v81 + 8) = *(v82 + 8);
    *(v81 + 24) = *(v82 + 24);
    *(v81 + 5) = *(v82 + 5);
    *(v81 + 6) = *(v82 + 6);
  }

  v86 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v20 + v86 + 56) = *&v21[v86 + 56];
  v87 = (v86 + 63) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v20 + v87 + 8);
  v89 = &v21[v87 + 8];
  v90 = *(v89 + 1);
  *v88 = *v89;
  v88[1] = v90;
  v91 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v92 = v20 + v91 + 16;
  v93 = &v21[v91 + 16];
  v94 = *v93;
  v95 = *(v93 + 1);
  *(v92 + 25) = *(v93 + 25);
  *v92 = v94;
  *(v92 + 1) = v95;
  v96 = *(v93 + 7);
  *(v92 + 6) = *(v93 + 6);
  *(v92 + 7) = v96;
  v97 = (v91 + 71) & 0xFFFFFFFFFFFFFFF8;
  v98 = v20 + v97 + 16;
  v99 = &v21[v97 + 16];
  *v98 = *v99;
  v98[8] = v99[8];
  v100 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v101 = v20 + v100;
  v102 = &v21[v100];
  v103 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = *v104;
  v106 = *(v104 + 16);
  v107 = *(v104 + 32);
  *(v103 + 48) = *(v104 + 48);
  *(v103 + 16) = v106;
  *(v103 + 32) = v107;
  *v103 = v105;
  v108 = ((v101 + 63) & 0xFFFFFFFFFFFFFFF8);
  v109 = ((v102 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v108 = *v109;
  *((v108 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v109 + 15) & 0xFFFFFFFFFFFFFFF8);
  v110 = (((v97 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = v20 + v110 + 16;
  v112 = &v21[v110 + 16];
  v113 = *(v112 + 6);

  if (v113 == 1)
  {
    v114 = *v112;
    v115 = *(v112 + 1);
    v116 = *(v112 + 2);
    *(v111 + 6) = *(v112 + 6);
    *(v111 + 1) = v115;
    *(v111 + 2) = v116;
    *v111 = v114;
  }

  else
  {
    *v111 = *v112;
    *(v111 + 8) = *(v112 + 8);
    *(v111 + 24) = *(v112 + 24);
    *(v111 + 5) = *(v112 + 5);
    *(v111 + 6) = *(v112 + 6);
  }

  v117 = ((v110 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
  v119 = *&v21[v117];
  v118 = *&v21[v117 + 8];
  v120 = (v20 + v117);
  *v120 = v119;
  v120[1] = v118;

  return a1;
}

void *sub_18E6E0880(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80) & 0xF8;
  v17 = v16 + 16;
  v18 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v19 = ((v16 + 16 + v12) & v18);
  v20 = ((v16 + 16 + v13) & v18);
  v21 = (v16 + 16) & v18;
  v22 = *(v15 + 64) + 7;
  if ((v22 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v23 = 40;
  }

  else
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v24 = v23 | 1;
  if (((v21 + v23) | 2) <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = (v21 + v23) | 2;
  }

  v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v27 = (&v20[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v28 = *v27;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    if (v28 < 0xFFFFFFFF)
    {
      memcpy(v19, v20, (((((((((((((((((((((((((((((((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
      return a1;
    }

    v33 = v20[v25];
    v34 = v33 - 3;
    if (v33 >= 3)
    {
      if (v25 <= 3)
      {
        v35 = v25;
      }

      else
      {
        v35 = 4;
      }

      if (v35 <= 1)
      {
        if (!v35)
        {
          goto LABEL_46;
        }

        v36 = *v20;
        if (v25 < 4)
        {
LABEL_71:
          v69 = v36 | (v34 << (8 * v25));
          v33 = v69 + 3;
          if (v69 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_47;
        }
      }

      else if (v35 == 2)
      {
        v36 = *v20;
        if (v25 < 4)
        {
          goto LABEL_71;
        }
      }

      else if (v35 == 3)
      {
        v36 = *v20 | (v20[2] << 16);
        if (v25 < 4)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v36 = *v20;
        if (v25 < 4)
        {
          goto LABEL_71;
        }
      }

      v33 = v36 + 3;
    }

LABEL_46:
    if (v33 == 2)
    {
LABEL_72:
      *v19 = *v20;
      v19[v25] = 2;

      v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
      v41 = a1;
LABEL_155:
      v133 = v27[1];
      *v26 = *v27;
      v26[1] = v133;
      v134 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
      v135 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v134 = *v135;
      v136 = (v134 + 15) & 0xFFFFFFFFFFFFFFF8;
      v137 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v136 = *v137;
      *(v136 + 8) = *(v137 + 8);
      *(v136 + 9) = *(v137 + 9);
      v138 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v139 = &v19[v138 + 10];
      v140 = &v20[v138 + 10];
      *v139 = *v140;
      v139 &= 0xFFFFFFFFFFFFFFF8;
      v140 &= 0xFFFFFFFFFFFFFFF8;
      *(v139 + 8) = *(v140 + 8);
      v141 = ((v139 + 31) & 0xFFFFFFFFFFFFFFF8);
      v142 = ((v140 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v141[1] = v142[1];
      v143 = ((v141 + 23) & 0xFFFFFFFFFFFFFFF8);
      v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
      v145 = v144[1];
      *v143 = *v144;
      v143[1] = v145;
      v146 = (((((v138 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v147 = &v19[v146 + 16];
      v148 = &v20[v146 + 16];
      v149 = *(v148 + 6);

      if (v149 == 1)
      {
        v150 = *v148;
        v151 = *(v148 + 1);
        v152 = *(v148 + 2);
        *(v147 + 6) = *(v148 + 6);
        *(v147 + 1) = v151;
        *(v147 + 2) = v152;
        *v147 = v150;
      }

      else
      {
        *v147 = *v148;
        *(v147 + 8) = *(v148 + 8);
        *(v147 + 24) = *(v148 + 24);
        *(v147 + 5) = *(v148 + 5);
        *(v147 + 6) = *(v148 + 6);
      }

      v153 = (v146 + 23) & 0xFFFFFFFFFFFFFFF8;
      v154 = &v19[v153 + 56];
      v155 = &v20[v153 + 56];
      *v154 = *v155;
      *((v154 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v155 + 23) & 0xFFFFFFFFFFFFFFF8);
      v156 = (((v153 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v157 = &v19[v156 + 16];
      v158 = &v20[v156 + 16];
      if (*(v158 + 6) == 1)
      {
        v159 = *v158;
        v160 = *(v158 + 1);
        v161 = *(v158 + 2);
        *(v157 + 6) = *(v158 + 6);
        *(v157 + 1) = v160;
        *(v157 + 2) = v161;
        *v157 = v159;
      }

      else
      {
        *v157 = *v158;
        *(v157 + 8) = *(v158 + 8);
        *(v157 + 24) = *(v158 + 24);
        *(v157 + 5) = *(v158 + 5);
        *(v157 + 6) = *(v158 + 6);
      }

      v162 = (v156 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v19[v162 + 56] = *&v20[v162 + 56];
      v163 = (v162 + 63) & 0xFFFFFFFFFFFFFFF8;
      v164 = &v19[v163 + 8];
      v165 = &v20[v163 + 8];
      v166 = *(v165 + 1);
      *v164 = *v165;
      *(v164 + 1) = v166;
      v167 = (v163 + 15) & 0xFFFFFFFFFFFFFFF8;
      v168 = &v19[v167 + 16];
      v169 = &v20[v167 + 16];
      v170 = *v169;
      v171 = *(v169 + 1);
      *(v168 + 25) = *(v169 + 25);
      *v168 = v170;
      *(v168 + 1) = v171;
      v172 = *(v169 + 7);
      *(v168 + 6) = *(v169 + 6);
      *(v168 + 7) = v172;
      v173 = (v167 + 71) & 0xFFFFFFFFFFFFFFF8;
      v174 = &v19[v173 + 16];
      v175 = &v20[v173 + 16];
      *v174 = *v175;
      v174[8] = v175[8];
      v176 = ((v173 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v177 = &v19[v176];
      v178 = &v20[v176];
      v179 = (v177 + 7) & 0xFFFFFFFFFFFFFFF8;
      v180 = (v178 + 7) & 0xFFFFFFFFFFFFFFF8;
      v181 = *v180;
      v182 = *(v180 + 16);
      v183 = *(v180 + 32);
      *(v179 + 48) = *(v180 + 48);
      *(v179 + 16) = v182;
      *(v179 + 32) = v183;
      *v179 = v181;
      v184 = ((v177 + 63) & 0xFFFFFFFFFFFFFFF8);
      v185 = ((v178 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v184 = *v185;
      *((v184 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v185 + 15) & 0xFFFFFFFFFFFFFFF8);
      v186 = (((v173 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v187 = &v19[v186 + 16];
      v188 = &v20[v186 + 16];
      v189 = *(v188 + 6);

      if (v189 == 1)
      {
        v190 = *v188;
        v191 = *(v188 + 1);
        v192 = *(v188 + 2);
        *(v187 + 6) = *(v188 + 6);
        *(v187 + 1) = v191;
        *(v187 + 2) = v192;
        *v187 = v190;
      }

      else
      {
        *v187 = *v188;
        *(v187 + 8) = *(v188 + 8);
        *(v187 + 24) = *(v188 + 24);
        *(v187 + 5) = *(v188 + 5);
        *(v187 + 6) = *(v188 + 6);
      }

      v193 = ((v186 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
      v195 = *&v20[v193];
      v194 = *&v20[v193 + 8];
      v196 = &v19[v193];
      *v196 = v195;
      *(v196 + 1) = v194;

      return v41;
    }

LABEL_47:
    if (v33 == 1)
    {
      v42 = *v20;
      v19[8] = v20[8];
      *v19 = v42;
      v43 = (&v19[v17] & v18);
      v44 = (&v20[v17] & v18);
      v45 = *(v44 + v23);
      if (v45 > 2)
      {
        v60 = v43;
        memcpy(v43, v44, v24);
        v43 = v60;
        v24 = v23 | 1;
        v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
        v41 = a1;
      }

      else
      {
        v41 = a1;
        if (v45 == 2)
        {
          v86 = v14;
          v87 = v43;
          (*(v15 + 16))(v43, v44, v86);
          v48 = v87;
          v88 = (v87 + v22) & 0xFFFFFFFFFFFFFFF8;
          v89 = (v44 + v22) & 0xFFFFFFFFFFFFFFF8;
          if (*v89 < 0xFFFFFFFFuLL)
          {
            v125 = *(v89 + 16);
            *v88 = *v89;
            *(v88 + 16) = v125;
          }

          else
          {
            *v88 = *v89;
            *(v88 + 8) = *(v89 + 8);
            *(v88 + 16) = *(v89 + 16);
            *(v88 + 24) = *(v89 + 24);
          }

          v24 = v23 | 1;
          v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
          v124 = 2;
        }

        else
        {
          if (v45 != 1)
          {
            *v43 = *v44;
            v90 = v44[1];
            if (v90)
            {
              v43[1] = v90;
              v43[2] = v44[2];
              v43[3] = v44[3];
              v43[4] = v44[4];
              v91 = v43;

              v43 = v91;
              v24 = v23 | 1;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v91 + v23) = 0;
            }

            else
            {
              v201 = *(v44 + 3);
              *(v43 + 1) = *(v44 + 1);
              *(v43 + 3) = v201;
              *(v43 + v23) = 0;
            }

            goto LABEL_144;
          }

          v46 = v14;
          v47 = v43;
          (*(v15 + 16))(v43, v44, v46);
          v48 = v47;
          v49 = (v47 + v22) & 0xFFFFFFFFFFFFFFF8;
          v50 = (v44 + v22) & 0xFFFFFFFFFFFFFFF8;
          if (*v50 < 0xFFFFFFFFuLL)
          {
            v123 = *(v50 + 16);
            *v49 = *v50;
            *(v49 + 16) = v123;
          }

          else
          {
            *v49 = *v50;
            *(v49 + 8) = *(v50 + 8);
            *(v49 + 16) = *(v50 + 16);
            *(v49 + 24) = *(v50 + 24);
          }

          v24 = v23 | 1;
          v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
          v124 = 1;
        }

        v43 = v48;
        *(v48 + v23) = v124;
      }

LABEL_144:
      *(v43 + v24) = *(v44 + v24);
      v19[v25] = 1;
      goto LABEL_155;
    }

    v51 = *v20;
    v19[8] = v20[8];
    *v19 = v51;
    v52 = (&v19[v17] & v18);
    v53 = (&v20[v17] & v18);
    v54 = *(v53 + v23);
    if (v54 > 2)
    {
      v61 = v52;
      memcpy(v52, v53, v24);
      v52 = v61;
      v24 = v23 | 1;
      v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
      v41 = a1;
    }

    else
    {
      v41 = a1;
      if (v54 == 2)
      {
        v92 = v14;
        v93 = v52;
        (*(v15 + 16))(v52, v53, v92);
        v57 = v93;
        v94 = (v93 + v22) & 0xFFFFFFFFFFFFFFF8;
        v95 = (v53 + v22) & 0xFFFFFFFFFFFFFFF8;
        if (*v95 < 0xFFFFFFFFuLL)
        {
          v132 = *(v95 + 16);
          *v94 = *v95;
          *(v94 + 16) = v132;
        }

        else
        {
          *v94 = *v95;
          *(v94 + 8) = *(v95 + 8);
          *(v94 + 16) = *(v95 + 16);
          *(v94 + 24) = *(v95 + 24);
        }

        v24 = v23 | 1;
        v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
        v129 = 2;
      }

      else
      {
        if (v54 != 1)
        {
          *v52 = *v53;
          v96 = v53[1];
          if (v96)
          {
            v52[1] = v96;
            v52[2] = v53[2];
            v52[3] = v53[3];
            v52[4] = v53[4];
            v97 = v52;

            v52 = v97;
            v24 = v23 | 1;
            v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
            *(v97 + v23) = 0;
          }

          else
          {
            v202 = *(v53 + 3);
            *(v52 + 1) = *(v53 + 1);
            *(v52 + 3) = v202;
            *(v52 + v23) = 0;
          }

          goto LABEL_154;
        }

        v55 = v14;
        v56 = v52;
        (*(v15 + 16))(v52, v53, v55);
        v57 = v56;
        v58 = (v56 + v22) & 0xFFFFFFFFFFFFFFF8;
        v59 = (v53 + v22) & 0xFFFFFFFFFFFFFFF8;
        if (*v59 < 0xFFFFFFFFuLL)
        {
          v128 = *(v59 + 16);
          *v58 = *v59;
          *(v58 + 16) = v128;
        }

        else
        {
          *v58 = *v59;
          *(v58 + 8) = *(v59 + 8);
          *(v58 + 16) = *(v59 + 16);
          *(v58 + 24) = *(v59 + 24);
        }

        v24 = v23 | 1;
        v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
        v129 = 1;
      }

      v52 = v57;
      *(v57 + v23) = v129;
    }

LABEL_154:
    *(v52 + v24) = *(v53 + v24);
    v19[v25] = 0;
    goto LABEL_155;
  }

  if (v28 >= 0xFFFFFFFF)
  {
    if (v19 == v20)
    {
LABEL_185:
      v209 = v27[1];
      v210 = v26[1];
      *v26 = *v27;
      v26[1] = v209;
      v211 = v26;

      v212 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
      v213 = ((v211 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v213 = *v212;
      v214 = (v213 + 15) & 0xFFFFFFFFFFFFFFF8;
      v215 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v214 = *v215;
      *(v214 + 8) = *(v215 + 8);
      *(v214 + 9) = *(v215 + 9);
      v216 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v217 = &v19[v216 + 10];
      v218 = &v20[v216 + 10];
      *v217 = *v218;
      v217 &= 0xFFFFFFFFFFFFFFF8;
      v218 &= 0xFFFFFFFFFFFFFFF8;
      *(v217 + 8) = *(v218 + 8);
      *(v217 + 16) = *(v218 + 16);
      v219 = ((v217 + 31) & 0xFFFFFFFFFFFFFFF8);
      v220 = ((v218 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v219 = *v220;
      v221 = v219[1];
      v219[1] = v220[1];

      v222 = ((v219 + 23) & 0xFFFFFFFFFFFFFFF8);
      v223 = ((v220 + 23) & 0xFFFFFFFFFFFFFFF8);
      v224 = v223[1];
      v225 = v222[1];
      *v222 = *v223;
      v222[1] = v224;

      v226 = (((((v216 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v227 = &v19[v226 + 16];
      v228 = &v20[v226 + 16];
      v229 = *(v228 + 6);
      if (*(v227 + 6) == 1)
      {
        v41 = a1;
        if (v229 == 1)
        {
          v230 = *v228;
          v231 = *(v228 + 1);
          v232 = *(v228 + 2);
          *(v227 + 6) = *(v228 + 6);
          *(v227 + 1) = v231;
          *(v227 + 2) = v232;
          *v227 = v230;
        }

        else
        {
          *v227 = *v228;
          *(v227 + 8) = *(v228 + 8);
          *(v227 + 24) = *(v228 + 24);
          *(v227 + 5) = *(v228 + 5);
          *(v227 + 6) = *(v228 + 6);
        }
      }

      else
      {
        v41 = a1;
        if (v229 == 1)
        {
          sub_18E6AC114(&v19[v226 + 16]);
          v234 = *(v228 + 1);
          v233 = *(v228 + 2);
          v235 = *v228;
          *(v227 + 6) = *(v228 + 6);
          *(v227 + 1) = v234;
          *(v227 + 2) = v233;
          *v227 = v235;
        }

        else
        {
          *v227 = *v228;
          *(v227 + 1) = *(v228 + 1);
          *(v227 + 2) = *(v228 + 2);
          *(v227 + 3) = *(v228 + 3);
          *(v227 + 4) = *(v228 + 4);
          *(v227 + 5) = *(v228 + 5);
          *(v227 + 6) = *(v228 + 6);
        }
      }

      v236 = (v226 + 23) & 0xFFFFFFFFFFFFFFF8;
      v237 = &v19[v236 + 56];
      v238 = &v20[v236 + 56];
      *v237 = *v238;
      *(v237 + 1) = *(v238 + 1);
      v239 = ((v237 + 23) & 0xFFFFFFFFFFFFFFF8);
      v240 = ((v238 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v239 = *v240;
      v239[1] = v240[1];
      v241 = (((v236 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v242 = &v19[v241 + 16];
      v243 = &v20[v241 + 16];
      v244 = *(v243 + 6);
      if (*(v242 + 6) == 1)
      {
        if (v244 == 1)
        {
          v245 = *v243;
          v246 = *(v243 + 1);
          v247 = *(v243 + 2);
          *(v242 + 6) = *(v243 + 6);
          *(v242 + 1) = v246;
          *(v242 + 2) = v247;
          *v242 = v245;
        }

        else
        {
          *v242 = *v243;
          *(v242 + 8) = *(v243 + 8);
          *(v242 + 24) = *(v243 + 24);
          *(v242 + 5) = *(v243 + 5);
          *(v242 + 6) = *(v243 + 6);
        }
      }

      else if (v244 == 1)
      {
        sub_18E6AC114(&v19[v241 + 16]);
        v249 = *(v243 + 1);
        v248 = *(v243 + 2);
        v250 = *v243;
        *(v242 + 6) = *(v243 + 6);
        *(v242 + 1) = v249;
        *(v242 + 2) = v248;
        *v242 = v250;
      }

      else
      {
        *v242 = *v243;
        *(v242 + 1) = *(v243 + 1);
        *(v242 + 2) = *(v243 + 2);
        *(v242 + 3) = *(v243 + 3);
        *(v242 + 4) = *(v243 + 4);
        *(v242 + 5) = *(v243 + 5);
        *(v242 + 6) = *(v243 + 6);
      }

      v251 = (v241 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v19[v251 + 56] = *&v20[v251 + 56];
      v252 = (v251 + 63) & 0xFFFFFFFFFFFFFFF8;
      v253 = &v19[v252 + 8];
      v254 = &v20[v252 + 8];
      v255 = *(v254 + 1);
      v256 = *(v253 + 1);
      *v253 = *v254;
      *(v253 + 1) = v255;

      v257 = (v252 + 15) & 0xFFFFFFFFFFFFFFF8;
      v258 = &v19[v257 + 16];
      v259 = &v20[v257 + 16];
      v260 = *v259;
      v258[16] = v259[16];
      *v258 = v260;
      v261 = *(v259 + 24);
      v258[40] = v259[40];
      *(v258 + 24) = v261;
      v262 = *(v259 + 7);
      v263 = *(v258 + 7);
      *(v258 + 6) = *(v259 + 6);
      *(v258 + 7) = v262;

      v264 = (v257 + 71) & 0xFFFFFFFFFFFFFFF8;
      v265 = &v19[v264 + 16];
      v266 = &v20[v264 + 16];
      *v265 = *v266;
      v265[8] = v266[8];
      v267 = ((v264 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v268 = &v19[v267];
      v269 = &v20[v267];
      v270 = (v268 + 7) & 0xFFFFFFFFFFFFFFF8;
      v271 = (v269 + 7) & 0xFFFFFFFFFFFFFFF8;
      *v270 = *v271;
      v272 = *(v271 + 8);
      *(v270 + 24) = *(v271 + 24);
      *(v270 + 8) = v272;
      v273 = *(v271 + 32);
      *(v270 + 48) = *(v271 + 48);
      *(v270 + 32) = v273;
      v274 = ((v268 + 63) & 0xFFFFFFFFFFFFFFF8);
      v275 = ((v269 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v274 = *v275;
      v276 = ((v274 + 15) & 0xFFFFFFFFFFFFFFF8);
      v277 = ((v275 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v276 = *v277;
      v276[1] = v277[1];
      v278 = (((v264 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v279 = &v19[v278 + 16];
      v280 = &v20[v278 + 16];
      v281 = *(v280 + 6);
      if (*(v279 + 6) == 1)
      {
        if (v281 == 1)
        {
          v282 = *v280;
          v283 = *(v280 + 1);
          v284 = *(v280 + 2);
          *(v279 + 6) = *(v280 + 6);
          *(v279 + 1) = v283;
          *(v279 + 2) = v284;
          *v279 = v282;
        }

        else
        {
          *v279 = *v280;
          *(v279 + 8) = *(v280 + 8);
          *(v279 + 24) = *(v280 + 24);
          *(v279 + 5) = *(v280 + 5);
          *(v279 + 6) = *(v280 + 6);
        }
      }

      else if (v281 == 1)
      {
        sub_18E6AC114(&v19[v278 + 16]);
        v286 = *(v280 + 1);
        v285 = *(v280 + 2);
        v287 = *v280;
        *(v279 + 6) = *(v280 + 6);
        *(v279 + 1) = v286;
        *(v279 + 2) = v285;
        *v279 = v287;
      }

      else
      {
        *v279 = *v280;
        *(v279 + 1) = *(v280 + 1);
        *(v279 + 2) = *(v280 + 2);
        *(v279 + 3) = *(v280 + 3);
        *(v279 + 4) = *(v280 + 4);
        *(v279 + 5) = *(v280 + 5);
        *(v279 + 6) = *(v280 + 6);
      }

      v288 = ((v278 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
      v289 = &v19[v288];
      v290 = &v20[v288];
      v291 = *(v290 + 1);
      v292 = *(v289 + 1);
      *v289 = *v290;
      *(v289 + 1) = v291;

      return v41;
    }

    v29 = v19[v25];
    v30 = v29 - 3;
    if (v29 >= 3)
    {
      if (v25 <= 3)
      {
        v31 = v25;
      }

      else
      {
        v31 = 4;
      }

      if (v31 <= 1)
      {
        if (!v31)
        {
          goto LABEL_99;
        }

        v32 = *v19;
      }

      else if (v31 == 2)
      {
        v32 = *v19;
      }

      else if (v31 == 3)
      {
        v32 = *v19 | (v19[2] << 16);
      }

      else
      {
        v32 = *v19;
      }

      if (v25 < 4)
      {
        v29 = (v32 | (v30 << (8 * v25))) + 3;
      }

      else
      {
        v29 = v32 + 3;
      }
    }

LABEL_99:
    if (v29 == 2)
    {
      v296 = v23 | 1;
      v100 = v19;
    }

    else
    {
      v98 = *((&v19[v17] & v18) + v23);
      if (v98 > 2)
      {
        goto LABEL_107;
      }

      v296 = v23 | 1;
      if (v98 == 2 || v98 == 1)
      {
        v294 = &v19[v17] & v18;
        (*(v15 + 8))(v294, v14);
        v24 = v23 | 1;
        if (*((v22 + v294) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_107;
        }

        v295 = (v22 + v294) & 0xFFFFFFFFFFFFFFF8;

        v99 = *(v295 + 8);

        v100 = (v295 + 24);
      }

      else
      {
        v24 = v23 | 1;
        if (!*((&v19[v17] & v18) + 8))
        {
LABEL_107:
          v102 = v20[v25];
          v103 = v102 - 3;
          if (v102 < 3)
          {
            goto LABEL_124;
          }

          if (v25 <= 3)
          {
            v104 = v25;
          }

          else
          {
            v104 = 4;
          }

          if (v104 <= 1)
          {
            if (!v104)
            {
              goto LABEL_124;
            }

            v105 = *v20;
          }

          else if (v104 == 2)
          {
            v105 = *v20;
          }

          else if (v104 == 3)
          {
            v105 = *v20 | (v20[2] << 16);
          }

          else
          {
            v105 = *v20;
          }

          if (v25 < 4)
          {
            v102 = (v105 | (v103 << (8 * v25))) + 3;
          }

          else
          {
            v102 = v105 + 3;
          }

LABEL_124:
          if (v102 == 2)
          {
            *v19 = *v20;
            v19[v25] = 2;

            v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
          }

          else if (v102 == 1)
          {
            v107 = *v20;
            v19[8] = v20[8];
            *v19 = v107;
            v108 = (&v19[v17] & v18);
            v109 = (&v20[v17] & v18);
            v110 = *(v109 + v23);
            v111 = v108;
            if (v110 > 2)
            {
              v121 = v24;
              memcpy(v108, v109, v24);
              v108 = v111;
              v24 = v121;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
            }

            else if (v110 == 2)
            {
              v299 = v24;
              (*(v15 + 16))(v108, v109, v14);
              v126 = (v111 + v22) & 0xFFFFFFFFFFFFFFF8;
              v127 = (v109 + v22) & 0xFFFFFFFFFFFFFFF8;
              if (*v127 < 0xFFFFFFFFuLL)
              {
                v108 = v111;
                v204 = *(v127 + 16);
                *v126 = *v127;
                *(v126 + 16) = v204;
              }

              else
              {
                *v126 = *v127;
                *(v126 + 8) = *(v127 + 8);
                *(v126 + 16) = *(v127 + 16);
                *(v126 + 24) = *(v127 + 24);

                v108 = v111;
              }

              v24 = v299;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v108 + v23) = 2;
            }

            else if (v110 == 1)
            {
              v297 = v24;
              (*(v15 + 16))(v108, v109, v14);
              v112 = (v111 + v22) & 0xFFFFFFFFFFFFFFF8;
              v113 = (v109 + v22) & 0xFFFFFFFFFFFFFFF8;
              if (*v113 < 0xFFFFFFFFuLL)
              {
                v108 = v111;
                v203 = *(v113 + 16);
                *v112 = *v113;
                *(v112 + 16) = v203;
              }

              else
              {
                *v112 = *v113;
                *(v112 + 8) = *(v113 + 8);
                *(v112 + 16) = *(v113 + 16);
                *(v112 + 24) = *(v113 + 24);

                v108 = v111;
              }

              v24 = v297;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v108 + v23) = 1;
            }

            else
            {
              *v108 = *v109;
              v130 = v109[1];
              if (v130)
              {
                v108[1] = v130;
                v108[2] = v109[2];
                v108[3] = v109[3];
                v108[4] = v109[4];
                v131 = v24;

                v108 = v111;
                v24 = v131;
              }

              else
              {
                v207 = *(v109 + 3);
                *(v108 + 1) = *(v109 + 1);
                *(v108 + 3) = v207;
              }

              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v108 + v23) = 0;
            }

            *(v108 + v24) = *(v109 + v24);
            v19[v25] = 1;
          }

          else
          {
            v114 = *v20;
            v19[8] = v20[8];
            *v19 = v114;
            v115 = (&v19[v17] & v18);
            v116 = (&v20[v17] & v18);
            v117 = *(v116 + v23);
            v118 = v115;
            if (v117 > 2)
            {
              v122 = v24;
              memcpy(v115, v116, v24);
              v115 = v118;
              v24 = v122;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
            }

            else if (v117 == 2)
            {
              v300 = v24;
              (*(v15 + 16))(v115, v116, v14);
              v197 = (v118 + v22) & 0xFFFFFFFFFFFFFFF8;
              v198 = (v116 + v22) & 0xFFFFFFFFFFFFFFF8;
              if (*v198 < 0xFFFFFFFFuLL)
              {
                v115 = v118;
                v206 = *(v198 + 16);
                *v197 = *v198;
                *(v197 + 16) = v206;
              }

              else
              {
                *v197 = *v198;
                *(v197 + 8) = *(v198 + 8);
                *(v197 + 16) = *(v198 + 16);
                *(v197 + 24) = *(v198 + 24);

                v115 = v118;
              }

              v24 = v300;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v115 + v23) = 2;
            }

            else if (v117 == 1)
            {
              v298 = v24;
              (*(v15 + 16))(v115, v116, v14);
              v119 = (v118 + v22) & 0xFFFFFFFFFFFFFFF8;
              v120 = (v116 + v22) & 0xFFFFFFFFFFFFFFF8;
              if (*v120 < 0xFFFFFFFFuLL)
              {
                v115 = v118;
                v205 = *(v120 + 16);
                *v119 = *v120;
                *(v119 + 16) = v205;
              }

              else
              {
                *v119 = *v120;
                *(v119 + 8) = *(v120 + 8);
                *(v119 + 16) = *(v120 + 16);
                *(v119 + 24) = *(v120 + 24);

                v115 = v118;
              }

              v24 = v298;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v115 + v23) = 1;
            }

            else
            {
              *v115 = *v116;
              v199 = v116[1];
              if (v199)
              {
                v115[1] = v199;
                v115[2] = v116[2];
                v115[3] = v116[3];
                v115[4] = v116[4];
                v200 = v24;

                v115 = v118;
                v24 = v200;
              }

              else
              {
                v208 = *(v116 + 3);
                *(v115 + 1) = *(v116 + 1);
                *(v115 + 3) = v208;
              }

              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v115 + v23) = 0;
            }

            *(v115 + v24) = *(v116 + v24);
            v19[v25] = 0;
          }

          goto LABEL_185;
        }

        v106 = *((&v19[v17] & v18) + 0x10);

        v100 = ((&v19[v17] & v18) + 32);
      }
    }

    v101 = *v100;

    v24 = v296;
    goto LABEL_107;
  }

  v37 = v19[v25];
  v38 = v37 - 3;
  if (v37 >= 3)
  {
    if (v25 <= 3)
    {
      v39 = v25;
    }

    else
    {
      v39 = 4;
    }

    if (v39 <= 1)
    {
      if (!v39)
      {
        goto LABEL_62;
      }

      v40 = *v19;
      if (v25 < 4)
      {
LABEL_74:
        if ((v40 | (v38 << (8 * v25))) == 0xFFFFFFFF)
        {
          goto LABEL_75;
        }

        goto LABEL_63;
      }
    }

    else if (v39 == 2)
    {
      v40 = *v19;
      if (v25 < 4)
      {
        goto LABEL_74;
      }
    }

    else if (v39 == 3)
    {
      v40 = *v19 | (v19[2] << 16);
      if (v25 < 4)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v40 = *v19;
      if (v25 < 4)
      {
        goto LABEL_74;
      }
    }

    v37 = v40 + 3;
  }

LABEL_62:
  if (v37 == 2)
  {
LABEL_75:
    v64 = &v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8;
    v67 = v19;
    v41 = a1;
    goto LABEL_76;
  }

LABEL_63:
  v62 = (&v19[v17] & v18);
  v63 = *(v62 + v23);
  v41 = a1;
  if (v63 <= 2)
  {
    v64 = &v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8;
    if (v63 == 2 || v63 == 1)
    {
      (*(v15 + 8))(v62, v14);
      v65 = ((v62 + v22) & 0xFFFFFFFFFFFFFFF8);
      v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
      if (*v65 >= 0xFFFFFFFFuLL)
      {

        v66 = v65[1];

        v67 = (v65 + 3);
LABEL_76:
        v70 = *v67;

        v26 = v64;
      }
    }

    else if (v62[1])
    {

      v68 = v62[2];

      v67 = (v62 + 4);
      goto LABEL_76;
    }
  }

  v71 = v26[1];

  v72 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = ((&v19[v72 + 10] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v74 = *(v73 + 8);

  v75 = *(((v73 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v76 = (((((v72 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = v19 + 16;
  if (*&v19[v76 + 64] != 1)
  {
  }

  v78 = (((((v76 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*&v77[v78 + 48] != 1)
  {
  }

  v79 = (((v78 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v80 = *&v19[v79 + 16];

  v81 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = *&v19[v81 + 72];

  v83 = (((((v81 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*&v77[v83 + 48] != 1)
  {
  }

  v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
  v85 = *&v19[v84 + 64];

  memcpy(v19, v20, ((v84 + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v41;
}

__n128 sub_18E6E20FC(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v14 = *(*(a3 + 16) - 8);
  v15 = *(v14 + 80) & 0xF8;
  v16 = v15 + 16;
  v17 = v15 + 16 + v12;
  v18 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 & v18);
  v20 = ((v15 + 16 + v13) & v18);
  v21 = *(v14 + 64) + 7;
  if ((v21 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v22 = 40;
  }

  else
  {
    v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v15 + 16) & v18) + v22) | 2) <= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = (((v15 + 16) & v18) + v22) | 2;
  }

  v24 = (&v20[v23 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (*v24 < 0xFFFFFFFFuLL)
  {
    memcpy((v17 & v18), v20, (((((((((((((((((((((((((((((((((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
    return result;
  }

  v25 = v20[v23];
  v26 = v25 - 3;
  if (v25 >= 3)
  {
    if (v23 <= 3)
    {
      v27 = v23;
    }

    else
    {
      v27 = 4;
    }

    if (v27 <= 1)
    {
      if (!v27)
      {
        goto LABEL_23;
      }

      v28 = *v20;
      if (v23 < 4)
      {
LABEL_36:
        v45 = v28 | (v26 << (8 * v23));
        v25 = v45 + 3;
        if (v45 == -1)
        {
          goto LABEL_37;
        }

LABEL_24:
        v30 = v22 | 1;
        if (v25 == 1)
        {
          v31 = *v20;
          *((v17 & v18) + 8) = v20[8];
          *v19 = v31;
          v32 = ((v19 + v16) & v18);
          v33 = (&v20[v16] & v18);
          v34 = *(v33 + v22);
          if (v34 > 2)
          {
            memcpy(((v19 + v16) & v18), (&v20[v16] & v18), v22 | 1);
          }

          else if (v34 == 2)
          {
            (*(v14 + 32))((v19 + v16) & v18, &v20[v16] & v18);
            v47 = ((v32 + v21) & 0xFFFFFFFFFFFFFFF8);
            v48 = ((v33 + v21) & 0xFFFFFFFFFFFFFFF8);
            v49 = v48[1];
            *v47 = *v48;
            v47[1] = v49;
            *(v32 + v22) = 2;
          }

          else if (v34 == 1)
          {
            (*(v14 + 32))((v19 + v16) & v18, &v20[v16] & v18);
            v35 = ((v32 + v21) & 0xFFFFFFFFFFFFFFF8);
            v36 = ((v33 + v21) & 0xFFFFFFFFFFFFFFF8);
            v37 = v36[1];
            *v35 = *v36;
            v35[1] = v37;
            *(v32 + v22) = 1;
          }

          else
          {
            v50 = *v33;
            v51 = *((&v20[v16] & v18) + 0x10);
            *(((v19 + v16) & v18) + 0x20) = *((&v20[v16] & v18) + 0x20);
            *v32 = v50;
            *(((v19 + v16) & v18) + 0x10) = v51;
            *(v32 + v22) = 0;
          }

          *(v32 + v30) = *(v33 + v30);
          v46 = 1;
        }

        else
        {
          v38 = *v20;
          *((v17 & v18) + 8) = v20[8];
          *v19 = v38;
          v39 = ((v19 + v16) & v18);
          v40 = (&v20[v16] & v18);
          v41 = *(v40 + v22);
          if (v41 > 2)
          {
            memcpy(((v19 + v16) & v18), (&v20[v16] & v18), v22 | 1);
          }

          else if (v41 == 2)
          {
            (*(v14 + 32))((v19 + v16) & v18, &v20[v16] & v18);
            v52 = ((v39 + v21) & 0xFFFFFFFFFFFFFFF8);
            v53 = ((v40 + v21) & 0xFFFFFFFFFFFFFFF8);
            v54 = v53[1];
            *v52 = *v53;
            v52[1] = v54;
            *(v39 + v22) = 2;
          }

          else if (v41 == 1)
          {
            (*(v14 + 32))((v19 + v16) & v18, &v20[v16] & v18);
            v42 = ((v39 + v21) & 0xFFFFFFFFFFFFFFF8);
            v43 = ((v40 + v21) & 0xFFFFFFFFFFFFFFF8);
            v44 = v43[1];
            *v42 = *v43;
            v42[1] = v44;
            *(v39 + v22) = 1;
          }

          else
          {
            v55 = *v40;
            v56 = *((&v20[v16] & v18) + 0x10);
            *(((v19 + v16) & v18) + 0x20) = *((&v20[v16] & v18) + 0x20);
            *v39 = v55;
            *(((v19 + v16) & v18) + 0x10) = v56;
            *(v39 + v22) = 0;
          }

          v46 = 0;
          *(v39 + v30) = *(v40 + v30);
        }

        goto LABEL_44;
      }
    }

    else if (v27 == 2)
    {
      v28 = *v20;
      if (v23 < 4)
      {
        goto LABEL_36;
      }
    }

    else if (v27 == 3)
    {
      v28 = *v20 | (v20[2] << 16);
      if (v23 < 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v28 = *v20;
      if (v23 < 4)
      {
        goto LABEL_36;
      }
    }

    v25 = v28 + 3;
  }

LABEL_23:
  if (v25 != 2)
  {
    goto LABEL_24;
  }

LABEL_37:
  *v19 = *v20;
  v46 = 2;
LABEL_44:
  *(v19 + v23) = v46;
  v57 = ((v19 + v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  *v57 = *v24;
  v58 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v58 = *v59;
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v60 = *v61;
  *(v60 + 8) = *(v61 + 8);
  *(v60 + 9) = *(v61 + 9);
  v62 = ((((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = v19 + v62 + 10;
  v64 = &v20[v62 + 10];
  *v63 = *v64;
  v63 &= 0xFFFFFFFFFFFFFFF8;
  v64 &= 0xFFFFFFFFFFFFFFF8;
  *(v63 + 8) = *(v64 + 8);
  v65 = ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  *((v65 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v66 + 23) & 0xFFFFFFFFFFFFFFF8);
  v67 = (((((v62 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = v19 + v67 + 16;
  v69 = &v20[v67 + 16];
  v70 = *v69;
  v71 = *(v69 + 1);
  v72 = *(v69 + 2);
  *(v68 + 6) = *(v69 + 6);
  *(v68 + 1) = v71;
  *(v68 + 2) = v72;
  *v68 = v70;
  v73 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v19 + v73 + 56);
  v75 = &v20[v73 + 56];
  *v74 = *v75;
  *((v74 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v75 + 23) & 0xFFFFFFFFFFFFFFF8);
  v76 = (((v73 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = v19 + v76 + 16;
  v78 = &v20[v76 + 16];
  v79 = *v78;
  v80 = *(v78 + 1);
  v81 = *(v78 + 2);
  *(v77 + 6) = *(v78 + 6);
  *(v77 + 1) = v80;
  *(v77 + 2) = v81;
  *v77 = v79;
  v82 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v19 + v82 + 56) = *&v20[v82 + 56];
  v83 = (v82 + 63) & 0xFFFFFFFFFFFFFFF8;
  *(v19 + v83 + 8) = *&v20[v83 + 8];
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v19 + v84 + 16);
  v86 = &v20[v84 + 16];
  v87 = *v86;
  v88 = *(v86 + 1);
  *(v85 + 25) = *(v86 + 25);
  *v85 = v87;
  v85[1] = v88;
  v85[3] = *(v86 + 3);
  v89 = (v84 + 71) & 0xFFFFFFFFFFFFFFF8;
  v90 = v19 + v89 + 16;
  v91 = &v20[v89 + 16];
  *v90 = *v91;
  v90[8] = v91[8];
  v92 = ((v89 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v93 = v19 + v92;
  v94 = &v20[v92];
  v95 = (v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = *v96;
  v98 = *(v96 + 16);
  v99 = *(v96 + 32);
  *(v95 + 48) = *(v96 + 48);
  *(v95 + 16) = v98;
  *(v95 + 32) = v99;
  *v95 = v97;
  v100 = ((v93 + 63) & 0xFFFFFFFFFFFFFFF8);
  v101 = ((v94 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v100 = *v101;
  *((v100 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v101 + 15) & 0xFFFFFFFFFFFFFFF8);
  v102 = (((v89 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v103 = v19 + v102 + 16;
  v104 = &v20[v102 + 16];
  v105 = *v104;
  v106 = *(v104 + 1);
  v107 = *(v104 + 2);
  *(v103 + 6) = *(v104 + 6);
  *(v103 + 1) = v106;
  *(v103 + 2) = v107;
  *v103 = v105;
  v108 = ((v102 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
  result = *&v20[v108];
  *(v19 + v108) = result;
  return result;
}

void *sub_18E6E27F0(void *result, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *result = v4;
  v5 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80) & 0xF8;
  v17 = v16 + 16;
  v18 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v19 = ((v16 + 16 + v12) & v18);
  v20 = ((v16 + 16 + v13) & v18);
  v21 = (v16 + 16) & v18;
  v22 = *(v15 + 64) + 7;
  if ((v22 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v23 = 40;
  }

  else
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v24 = v23 | 1;
  if (((v21 + v23) | 2) <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = (v21 + v23) | 2;
  }

  v26 = &v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8;
  v27 = (&v20[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v28 = *v27;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    if (v28 < 0xFFFFFFFF)
    {
      v41 = result;
      memcpy(v19, v20, (((((((((((((((((((((((((((((((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
      return v41;
    }

    v33 = v20[v25];
    v34 = v33 - 3;
    if (v33 >= 3)
    {
      if (v25 <= 3)
      {
        v35 = v25;
      }

      else
      {
        v35 = 4;
      }

      if (v35 <= 1)
      {
        if (!v35)
        {
          goto LABEL_46;
        }

        v36 = *v20;
        if (v25 < 4)
        {
LABEL_61:
          v62 = v36 | (v34 << (8 * v25));
          v33 = v62 + 3;
          if (v62 == -1)
          {
            goto LABEL_62;
          }

          goto LABEL_47;
        }
      }

      else if (v35 == 2)
      {
        v36 = *v20;
        if (v25 < 4)
        {
          goto LABEL_61;
        }
      }

      else if (v35 == 3)
      {
        v36 = *v20 | (v20[2] << 16);
        if (v25 < 4)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v36 = *v20;
        if (v25 < 4)
        {
          goto LABEL_61;
        }
      }

      v33 = v36 + 3;
    }

LABEL_46:
    if (v33 == 2)
    {
LABEL_62:
      *v19 = *v20;
      v63 = 2;
LABEL_95:
      v19[v25] = v63;
      *v26 = *v27;
      v100 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
      v101 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v100 = *v101;
      v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
      v103 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v102 = *v103;
      *(v102 + 8) = *(v103 + 8);
      *(v102 + 9) = *(v103 + 9);
      v104 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v105 = &v19[v104 + 10];
      v106 = &v20[v104 + 10];
      *v105 = *v106;
      v105 &= 0xFFFFFFFFFFFFFFF8;
      v106 &= 0xFFFFFFFFFFFFFFF8;
      *(v105 + 8) = *(v106 + 8);
      v107 = ((v105 + 31) & 0xFFFFFFFFFFFFFFF8);
      v108 = ((v106 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v107 = *v108;
      *((v107 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v108 + 23) & 0xFFFFFFFFFFFFFFF8);
      v109 = (((((v104 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v110 = &v19[v109 + 16];
      v111 = &v20[v109 + 16];
      v112 = *v111;
      v113 = *(v111 + 1);
      v114 = *(v111 + 2);
      *(v110 + 6) = *(v111 + 6);
      *(v110 + 1) = v113;
      *(v110 + 2) = v114;
      *v110 = v112;
      v115 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;
      v116 = &v19[v115 + 56];
      v117 = &v20[v115 + 56];
      *v116 = *v117;
      *((v116 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v117 + 23) & 0xFFFFFFFFFFFFFFF8);
      v118 = (((v115 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v119 = &v19[v118 + 16];
      v120 = &v20[v118 + 16];
      v121 = *v120;
      v122 = *(v120 + 1);
      v123 = *(v120 + 2);
      *(v119 + 6) = *(v120 + 6);
      *(v119 + 1) = v122;
      *(v119 + 2) = v123;
      *v119 = v121;
      v124 = (v118 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v19[v124 + 56] = *&v20[v124 + 56];
      v125 = (v124 + 63) & 0xFFFFFFFFFFFFFFF8;
      *&v19[v125 + 8] = *&v20[v125 + 8];
      v126 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
      v127 = &v19[v126 + 16];
      v128 = &v20[v126 + 16];
      v129 = *v128;
      v130 = *(v128 + 1);
      *(v127 + 25) = *(v128 + 25);
      *v127 = v129;
      *(v127 + 1) = v130;
      *(v127 + 3) = *(v128 + 3);
      v131 = (v126 + 71) & 0xFFFFFFFFFFFFFFF8;
      v132 = &v19[v131 + 16];
      v133 = &v20[v131 + 16];
      *v132 = *v133;
      v132[8] = v133[8];
      v134 = ((v131 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v135 = &v19[v134];
      v136 = &v20[v134];
      v137 = (v135 + 7) & 0xFFFFFFFFFFFFFFF8;
      v138 = (v136 + 7) & 0xFFFFFFFFFFFFFFF8;
      v139 = *v138;
      v140 = *(v138 + 16);
      v141 = *(v138 + 32);
      *(v137 + 48) = *(v138 + 48);
      *(v137 + 16) = v140;
      *(v137 + 32) = v141;
      *v137 = v139;
      v142 = ((v135 + 63) & 0xFFFFFFFFFFFFFFF8);
      v143 = ((v136 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v142 = *v143;
      *((v142 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v143 + 15) & 0xFFFFFFFFFFFFFFF8);
      v144 = (((v131 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v145 = &v19[v144 + 16];
      v146 = &v20[v144 + 16];
      v147 = *v146;
      v148 = *(v146 + 1);
      v149 = *(v146 + 2);
      *(v145 + 6) = *(v146 + 6);
      *(v145 + 1) = v148;
      *(v145 + 2) = v149;
      *v145 = v147;
      *&v19[((v144 + 23) & 0xFFFFFFFFFFFFFFF8) + 56] = *&v20[((v144 + 23) & 0xFFFFFFFFFFFFFFF8) + 56];
      return result;
    }

LABEL_47:
    v269 = result;
    if (v33 == 1)
    {
      v42 = *v20;
      v19[8] = v20[8];
      *v19 = v42;
      v43 = (&v19[v17] & v18);
      v44 = (&v20[v17] & v18);
      v45 = *(v44 + v23);
      if (v45 > 2)
      {
        v60 = v23 | 1;
        memcpy(v43, v44, v24);
LABEL_88:
        *(v43 + v60) = *(v44 + v60);
        v63 = 1;
LABEL_94:
        result = v269;
        goto LABEL_95;
      }

      if (v45 == 2)
      {
        v88 = v22;
        (*(v15 + 32))(v43, v44);
        v89 = ((v43 + v88) & 0xFFFFFFFFFFFFFFF8);
        v90 = ((v44 + v88) & 0xFFFFFFFFFFFFFFF8);
        v91 = v90[1];
        *v89 = *v90;
        v89[1] = v91;
        v50 = 2;
      }

      else
      {
        if (v45 != 1)
        {
          v92 = *v44;
          v93 = v44[1];
          *(v43 + 4) = *(v44 + 4);
          *v43 = v92;
          v43[1] = v93;
          *(v43 + v23) = 0;
          goto LABEL_87;
        }

        v46 = v22;
        (*(v15 + 32))(v43, v44);
        v47 = ((v43 + v46) & 0xFFFFFFFFFFFFFFF8);
        v48 = ((v44 + v46) & 0xFFFFFFFFFFFFFFF8);
        v49 = v48[1];
        *v47 = *v48;
        v47[1] = v49;
        v50 = 1;
      }

      *(v43 + v23) = v50;
LABEL_87:
      v60 = v23 | 1;
      goto LABEL_88;
    }

    v51 = *v20;
    v19[8] = v20[8];
    *v19 = v51;
    v52 = (&v19[v17] & v18);
    v53 = (&v20[v17] & v18);
    v54 = *(v53 + v23);
    if (v54 > 2)
    {
      v61 = v23 | 1;
      memcpy(v52, v53, v24);
LABEL_93:
      v63 = 0;
      *(v52 + v61) = *(v53 + v61);
      goto LABEL_94;
    }

    if (v54 == 2)
    {
      v94 = v22;
      (*(v15 + 32))(v52, v53);
      v95 = ((v52 + v94) & 0xFFFFFFFFFFFFFFF8);
      v96 = ((v53 + v94) & 0xFFFFFFFFFFFFFFF8);
      v97 = v96[1];
      *v95 = *v96;
      v95[1] = v97;
      v59 = 2;
    }

    else
    {
      if (v54 != 1)
      {
        v98 = *v53;
        v99 = v53[1];
        *(v52 + 4) = *(v53 + 4);
        *v52 = v98;
        v52[1] = v99;
        *(v52 + v23) = 0;
        goto LABEL_92;
      }

      v55 = v22;
      (*(v15 + 32))(v52, v53);
      v56 = ((v52 + v55) & 0xFFFFFFFFFFFFFFF8);
      v57 = ((v53 + v55) & 0xFFFFFFFFFFFFFFF8);
      v58 = v57[1];
      *v56 = *v57;
      v56[1] = v58;
      v59 = 1;
    }

    *(v52 + v23) = v59;
LABEL_92:
    v61 = v23 | 1;
    goto LABEL_93;
  }

  if (v28 < 0xFFFFFFFF)
  {
    v37 = v19[v25];
    v38 = v37 - 3;
    if (v37 < 3)
    {
      goto LABEL_65;
    }

    if (v25 <= 3)
    {
      v39 = v25;
    }

    else
    {
      v39 = 4;
    }

    if (v39 > 1)
    {
      if (v39 == 2)
      {
        v40 = *v19;
        if (v25 >= 4)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v39 == 3)
        {
          v40 = *v19 | (v19[2] << 16);
          if (v25 < 4)
          {
            goto LABEL_64;
          }

LABEL_59:
          v37 = v40 + 3;
          goto LABEL_65;
        }

        v40 = *v19;
        if (v25 >= 4)
        {
          goto LABEL_59;
        }
      }

LABEL_64:
      v37 = (v40 | (v38 << (8 * v25))) + 3;
LABEL_65:
      v64 = result;
      if (v37 == 2)
      {
        v70 = v19;
      }

      else
      {
        v65 = (&v19[v17] & v18);
        v66 = *(v65 + v23);
        if (v66 > 2)
        {
          goto LABEL_73;
        }

        if (v66 != 2 && v66 != 1)
        {
          if (!v65[1])
          {
            goto LABEL_73;
          }

          v87 = v65[2];

          v70 = (v65 + 4);
          goto LABEL_72;
        }

        v67 = *(*(v14 - 8) + 64) + 7;
        (*(v15 + 8))(v65, v14);
        v68 = ((v65 + v67) & 0xFFFFFFFFFFFFFFF8);
        if (*v68 < 0xFFFFFFFFuLL)
        {
LABEL_73:
          v72 = *(v26 + 8);

          v73 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v74 = ((&v19[v73 + 10] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
          v75 = *(v74 + 8);

          v76 = *(((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

          v77 = (((((v73 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
          v78 = v19 + 16;
          if (*&v19[v77 + 64] != 1)
          {
          }

          v79 = (((((v77 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
          if (*&v78[v79 + 48] != 1)
          {
          }

          v80 = (((v79 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
          v81 = *&v19[v80 + 16];

          v82 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
          v83 = *&v19[v82 + 72];

          v84 = (((((v82 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          if (*&v78[v84 + 48] != 1)
          {
          }

          v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
          v86 = *&v19[v85 + 64];

          memcpy(v19, v20, ((v85 + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
          return v64;
        }

        v69 = v68[1];

        v70 = (v68 + 3);
      }

LABEL_72:
      v71 = *v70;

      goto LABEL_73;
    }

    if (!v39)
    {
      goto LABEL_65;
    }

    v40 = *v19;
    if (v25 < 4)
    {
      goto LABEL_64;
    }

    goto LABEL_59;
  }

  if (v19 != v20)
  {
    v29 = v19[v25];
    v30 = v29 - 3;
    if (v29 < 3)
    {
      goto LABEL_101;
    }

    if (v25 <= 3)
    {
      v31 = v25;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_101;
      }

      v32 = *v19;
    }

    else if (v31 == 2)
    {
      v32 = *v19;
    }

    else if (v31 == 3)
    {
      v32 = *v19 | (v19[2] << 16);
    }

    else
    {
      v32 = *v19;
    }

    if (v25 < 4)
    {
      v29 = (v32 | (v30 << (8 * v25))) + 3;
    }

    else
    {
      v29 = v32 + 3;
    }

LABEL_101:
    v268 = v14;
    v270 = result;
    if (v29 == 2)
    {
      v267 = *(*(v14 - 8) + 64) + 7;
      v152 = v19;
    }

    else
    {
      v150 = &v19[v17] & v18;
      v151 = *(v150 + v23);
      if (v151 > 2)
      {
        goto LABEL_112;
      }

      v267 = *(*(v14 - 8) + 64) + 7;
      if (v151 == 2 || v151 == 1)
      {
        (*(v15 + 8))(&v19[v17] & v18, v14);
        v22 = v267;
        v153 = ((v267 + v150) & 0xFFFFFFFFFFFFFFF8);
        v24 = v23 | 1;
        if (*v153 < 0xFFFFFFFFuLL)
        {
          goto LABEL_112;
        }

        v154 = v153[1];

        v152 = (v153 + 3);
      }

      else
      {
        v24 = v23 | 1;
        if (!*((&v19[v17] & v18) + 8))
        {
          goto LABEL_112;
        }

        v155 = *((&v19[v17] & v18) + 0x10);

        v152 = (v150 + 32);
      }
    }

    v156 = *v152;

    v24 = v23 | 1;
    v22 = v267;
LABEL_112:
    v157 = v20[v25];
    v158 = v157 - 3;
    result = v270;
    if (v157 < 3)
    {
      v160 = v268;
      goto LABEL_128;
    }

    if (v25 <= 3)
    {
      v159 = v25;
    }

    else
    {
      v159 = 4;
    }

    v160 = v268;
    if (v159 <= 1)
    {
      if (!v159)
      {
        goto LABEL_128;
      }

      v161 = *v20;
    }

    else if (v159 == 2)
    {
      v161 = *v20;
    }

    else if (v159 == 3)
    {
      v161 = *v20 | (v20[2] << 16);
    }

    else
    {
      v161 = *v20;
    }

    if (v25 < 4)
    {
      v157 = (v161 | (v158 << (8 * v25))) + 3;
    }

    else
    {
      v157 = v161 + 3;
    }

LABEL_128:
    if (v157 == 2)
    {
      *v19 = *v20;
      v171 = 2;
LABEL_152:
      v19[v25] = v171;
      goto LABEL_153;
    }

    if (v157 == 1)
    {
      v162 = *v20;
      v19[8] = v20[8];
      *v19 = v162;
      v163 = (&v19[v17] & v18);
      v164 = (&v20[v17] & v18);
      v165 = *(v164 + v23);
      if (v165 > 2)
      {
        v181 = v24;
        memcpy(v163, v164, v24);
LABEL_145:
        *(v163 + v181) = *(v164 + v181);
        v171 = 1;
LABEL_151:
        result = v270;
        goto LABEL_152;
      }

      if (v165 == 2)
      {
        v183 = v22;
        (*(v15 + 32))(v163, v164, v160);
        v184 = ((v163 + v183) & 0xFFFFFFFFFFFFFFF8);
        v185 = ((v164 + v183) & 0xFFFFFFFFFFFFFFF8);
        v186 = v185[1];
        *v184 = *v185;
        v184[1] = v186;
        v170 = 2;
      }

      else
      {
        if (v165 != 1)
        {
          v187 = *v164;
          v188 = v164[1];
          *(v163 + 4) = *(v164 + 4);
          *v163 = v187;
          v163[1] = v188;
          *(v163 + v23) = 0;
          goto LABEL_144;
        }

        v166 = v22;
        (*(v15 + 32))(v163, v164, v160);
        v167 = ((v163 + v166) & 0xFFFFFFFFFFFFFFF8);
        v168 = ((v164 + v166) & 0xFFFFFFFFFFFFFFF8);
        v169 = v168[1];
        *v167 = *v168;
        v167[1] = v169;
        v170 = 1;
      }

      *(v163 + v23) = v170;
LABEL_144:
      v181 = v23 | 1;
      goto LABEL_145;
    }

    v172 = *v20;
    v19[8] = v20[8];
    *v19 = v172;
    v173 = (&v19[v17] & v18);
    v174 = (&v20[v17] & v18);
    v175 = *(v174 + v23);
    if (v175 > 2)
    {
      v182 = v24;
      memcpy(v173, v174, v24);
LABEL_150:
      v171 = 0;
      *(v173 + v182) = *(v174 + v182);
      goto LABEL_151;
    }

    if (v175 == 2)
    {
      v189 = v22;
      (*(v15 + 32))(v173, v174, v160);
      v190 = ((v173 + v189) & 0xFFFFFFFFFFFFFFF8);
      v191 = ((v174 + v189) & 0xFFFFFFFFFFFFFFF8);
      v192 = v191[1];
      *v190 = *v191;
      v190[1] = v192;
      v180 = 2;
    }

    else
    {
      if (v175 != 1)
      {
        v193 = *v174;
        v194 = v174[1];
        *(v173 + 4) = *(v174 + 4);
        *v173 = v193;
        v173[1] = v194;
        *(v173 + v23) = 0;
        goto LABEL_149;
      }

      v176 = v22;
      (*(v15 + 32))(v173, v174, v160);
      v177 = ((v173 + v176) & 0xFFFFFFFFFFFFFFF8);
      v178 = ((v174 + v176) & 0xFFFFFFFFFFFFFFF8);
      v179 = v178[1];
      *v177 = *v178;
      v177[1] = v179;
      v180 = 1;
    }

    *(v173 + v23) = v180;
LABEL_149:
    v182 = v23 | 1;
    goto LABEL_150;
  }

LABEL_153:
  v64 = result;
  v195 = *(v26 + 8);
  v197 = *v27;
  v196 = v27 + 23;
  *v26 = v197;

  v198 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v198 = *(v196 & 0xFFFFFFFFFFFFFFF8);
  v199 = (v198 + 15) & 0xFFFFFFFFFFFFFFF8;
  v200 = ((v196 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *v199 = *v200;
  *(v199 + 8) = *(v200 + 8);
  *(v199 + 9) = *(v200 + 9);
  v201 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v202 = &v19[v201 + 10];
  v203 = &v20[v201 + 10];
  *v202 = *v203;
  v202 &= 0xFFFFFFFFFFFFFFF8;
  v203 &= 0xFFFFFFFFFFFFFFF8;
  *(v202 + 8) = *(v203 + 8);
  *(v202 + 16) = *(v203 + 16);
  v204 = ((v202 + 31) & 0xFFFFFFFFFFFFFFF8);
  v205 = ((v203 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v204 = *v205;
  v206 = v204[1];
  v204[1] = v205[1];

  v207 = (v204 + 23) & 0xFFFFFFFFFFFFFFF8;
  v208 = *(v207 + 8);
  *v207 = *((v205 + 23) & 0xFFFFFFFFFFFFFFF8);

  v209 = (((((v201 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v210 = &v19[v209 + 16];
  v211 = &v20[v209 + 16];
  if (*(v210 + 6) == 1)
  {
    v212 = *v211;
    v213 = *(v211 + 1);
    v214 = *(v211 + 2);
    *(v210 + 6) = *(v211 + 6);
    *(v210 + 1) = v213;
    *(v210 + 2) = v214;
    *v210 = v212;
  }

  else if (*(v211 + 6) == 1)
  {
    sub_18E6AC114(&v19[v209 + 16]);
    v216 = *(v211 + 1);
    v215 = *(v211 + 2);
    v217 = *v211;
    *(v210 + 6) = *(v211 + 6);
    *(v210 + 1) = v216;
    *(v210 + 2) = v215;
    *v210 = v217;
  }

  else
  {
    *v210 = *v211;
    *(v210 + 1) = *(v211 + 1);
    *(v210 + 2) = *(v211 + 2);
    *(v210 + 3) = *(v211 + 3);
    *(v210 + 4) = *(v211 + 4);
    *(v210 + 5) = *(v211 + 5);
    *(v210 + 6) = *(v211 + 6);
  }

  v218 = (v209 + 23) & 0xFFFFFFFFFFFFFFF8;
  v219 = &v19[v218 + 56];
  v220 = &v20[v218 + 56];
  *v219 = *v220;
  *(v219 + 1) = *(v220 + 1);
  v221 = ((v219 + 23) & 0xFFFFFFFFFFFFFFF8);
  v222 = ((v220 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v221 = *v222;
  v221[1] = v222[1];
  v223 = (((v218 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v224 = &v19[v223 + 16];
  v225 = &v20[v223 + 16];
  if (*(v224 + 6) == 1)
  {
    v226 = *v225;
    v227 = *(v225 + 1);
    v228 = *(v225 + 2);
    *(v224 + 6) = *(v225 + 6);
    *(v224 + 1) = v227;
    *(v224 + 2) = v228;
    *v224 = v226;
  }

  else if (*(v225 + 6) == 1)
  {
    sub_18E6AC114(&v19[v223 + 16]);
    v230 = *(v225 + 1);
    v229 = *(v225 + 2);
    v231 = *v225;
    *(v224 + 6) = *(v225 + 6);
    *(v224 + 1) = v230;
    *(v224 + 2) = v229;
    *v224 = v231;
  }

  else
  {
    *v224 = *v225;
    *(v224 + 1) = *(v225 + 1);
    *(v224 + 2) = *(v225 + 2);
    *(v224 + 3) = *(v225 + 3);
    *(v224 + 4) = *(v225 + 4);
    *(v224 + 5) = *(v225 + 5);
    *(v224 + 6) = *(v225 + 6);
  }

  v232 = (v223 + 23) & 0xFFFFFFFFFFFFFFF8;
  *&v19[v232 + 56] = *&v20[v232 + 56];
  v233 = (v232 + 63) & 0xFFFFFFFFFFFFFFF8;
  v234 = &v19[v233 + 8];
  v235 = *(v234 + 1);
  *v234 = *&v20[v233 + 8];

  v236 = (v233 + 15) & 0xFFFFFFFFFFFFFFF8;
  v237 = &v19[v236 + 16];
  v238 = &v20[v236 + 16];
  v239 = *v238;
  v237[16] = v238[16];
  *v237 = v239;
  v240 = v238[40];
  *(v237 + 24) = *(v238 + 24);
  v237[40] = v240;
  v241 = *(v237 + 7);
  *(v237 + 3) = *(v238 + 3);

  v242 = (v236 + 71) & 0xFFFFFFFFFFFFFFF8;
  v243 = &v19[v242 + 16];
  v244 = &v20[v242 + 16];
  *v243 = *v244;
  v243[8] = v244[8];
  v245 = ((v242 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v246 = &v19[v245];
  v247 = &v20[v245];
  v248 = (v246 + 7) & 0xFFFFFFFFFFFFFFF8;
  v249 = (v247 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v248 = *v249;
  v250 = *(v249 + 8);
  *(v248 + 24) = *(v249 + 24);
  *(v248 + 8) = v250;
  v251 = *(v249 + 32);
  *(v248 + 48) = *(v249 + 48);
  *(v248 + 32) = v251;
  v252 = ((v247 + 63) & 0xFFFFFFFFFFFFFFF8);
  v253 = ((v246 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v253 = *v252;
  v254 = ((v253 + 15) & 0xFFFFFFFFFFFFFFF8);
  v255 = ((v252 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v254 = *v255;
  v254[1] = v255[1];
  v256 = (((v242 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v257 = &v19[v256 + 16];
  v258 = &v20[v256 + 16];
  if (*(v257 + 6) == 1)
  {
    v259 = *v258;
    v260 = *(v258 + 1);
    v261 = *(v258 + 2);
    *(v257 + 6) = *(v258 + 6);
    *(v257 + 1) = v260;
    *(v257 + 2) = v261;
    *v257 = v259;
  }

  else if (*(v258 + 6) == 1)
  {
    sub_18E6AC114(&v19[v256 + 16]);
    v263 = *(v258 + 1);
    v262 = *(v258 + 2);
    v264 = *v258;
    *(v257 + 6) = *(v258 + 6);
    *(v257 + 1) = v263;
    *(v257 + 2) = v262;
    *v257 = v264;
  }

  else
  {
    *v257 = *v258;
    *(v257 + 1) = *(v258 + 1);
    *(v257 + 2) = *(v258 + 2);
    *(v257 + 3) = *(v258 + 3);
    *(v257 + 4) = *(v258 + 4);
    *(v257 + 5) = *(v258 + 5);
    *(v257 + 6) = *(v258 + 6);
  }

  v265 = ((v256 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
  v266 = *&v19[v265 + 8];
  *&v19[v265] = *&v20[v265];

  return v64;
}

uint64_t sub_18E6E3A04(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6 <= 0x28)
  {
    v6 = 40;
  }

  v7 = v6 + ((v4 + 16) & ~(v4 | 7));
  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v8 = ((v4 + 80) & ~v5) + ((((((((((((((((((((((((((((((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483645;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }

LABEL_21:
      v15 = v13 - 1;
      if (v9)
      {
        v15 = 0;
        v16 = *a1;
      }

      else
      {
        v16 = 0;
      }

      return (v16 | v15) + 0x7FFFFFFF;
    }

    v13 = *(a1 + v8);
    if (v13)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  v17 = *((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & ~v5) + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_18E6E3C10(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = (v4 + 16) & ~(v4 | 7);
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  v8 = (v4 + 80) & ~v5;
  v9 = v7 + v6;
  if (v7 + v6 <= 8)
  {
    v9 = 8;
  }

  v10 = v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v13 = 0;
  }

  else
  {
    v11 = a3 - 2147483645;
    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != -16)
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
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == -16)
    {
      v14 = a2 - 2147483646;
    }

    else
    {
      v14 = 1;
    }

    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != -16)
    {
      v15 = a2 - 0x7FFFFFFF;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v13)
    {
      *(result + v10) = v14;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (v13)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_31:
        *((((((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & ~v5) + v9 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
        return result;
      }

LABEL_30:
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    if (v13 == 2)
    {
      *(result + v10) = 0;
      goto LABEL_30;
    }

    *(result + v10) = 0;
    if (a2)
    {
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t sub_18E6E3E74(void *a1)
{
  v2 = a1[2];
  if (v2 == 1)
  {
    v3 = *(a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a1[5] & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
    if (v6 > 0x3F)
    {
      return TupleTypeMetadata;
    }

    TupleTypeMetadata = swift_checkMetadataState();
    if (v7 > 0x3F)
    {
      return TupleTypeMetadata;
    }

LABEL_9:
    v17[1] = *(TupleTypeMetadata - 8) + 64;
    v17[2] = "0";
    v17[3] = &unk_18E72F1A0;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  if (v2)
  {
    v9 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v10 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
    v11 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = v2;
    do
    {
      v13 = *v9++;
      v14 = *v10++;
      *v11++ = type metadata accessor for CombinerElement();
      --v12;
    }

    while (v12);
  }

  TupleTypeMetadata = swift_getTupleTypeMetadata();
  if (v15 <= 0x3F)
  {
    goto LABEL_9;
  }

  return TupleTypeMetadata;
}

void *sub_18E6E3FFC(void *a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a3 + 16);
    if (v7 == 1)
    {
      v8 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v9 = *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      TupleTypeMetadata = type metadata accessor for CombinerElement();
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      if (v7)
      {
        v13 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
        v14 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
        v15 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        v16 = v7;
        do
        {
          v17 = *v13++;
          v18 = *v14++;
          *v15++ = type metadata accessor for CombinerElement();
          --v16;
        }

        while (v16);
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    (*(*(TupleTypeMetadata - 8) + 16))(v4, a2);
    v19 = *(a3 + 52);
    v20 = (v4 + v19);
    v21 = a2 + v19;
    v22 = *(a2 + v19);
    if (v22)
    {
      v23 = *(v21 + 1);
      *v20 = v22;
      v20[1] = v23;
    }

    else
    {
      *v20 = *v21;
    }

    v24 = *(v21 + 2);
    if (v24)
    {
      v25 = *(v21 + 3);
      v20[2] = v24;
      v20[3] = v25;
    }

    else
    {
      *(v20 + 1) = *(v21 + 1);
    }

    v26 = *(v21 + 5);
    v20[4] = *(v21 + 4);
    v20[5] = v26;
    *(v4 + *(a3 + 56)) = *(a2 + *(a3 + 56));
  }

  return v4;
}

uint64_t sub_18E6E4200(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    v5 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v6 = *(*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v4)
    {
      v9 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v10 = (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v11 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = v4;
      do
      {
        v13 = *v9++;
        v14 = *v10++;
        *v11++ = type metadata accessor for CombinerElement();
        --v12;
      }

      while (v12);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 8))(a1);
  v15 = (a1 + *(a2 + 52));
  if (*v15)
  {
    v16 = v15[1];
  }

  if (v15[2])
  {
    v17 = v15[3];
  }

  v18 = v15[5];
}

uint64_t sub_18E6E4360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (v6 == 1)
  {
    v7 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v6;
      do
      {
        v15 = *v11++;
        v16 = *v12++;
        *v13++ = type metadata accessor for CombinerElement();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, a2);
  v17 = *(a3 + 52);
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = *(a2 + v17);
  if (v20)
  {
    v21 = *(v19 + 8);
    *v18 = v20;
    v18[1] = v21;
  }

  else
  {
    *v18 = *v19;
  }

  v22 = *(v19 + 16);
  if (v22)
  {
    v23 = *(v19 + 24);
    v18[2] = v22;
    v18[3] = v23;
  }

  else
  {
    *(v18 + 1) = *(v19 + 16);
  }

  v24 = *(v19 + 40);
  v18[4] = *(v19 + 32);
  v18[5] = v24;
  *(a1 + *(a3 + 56)) = *(a2 + *(a3 + 56));

  return a1;
}

uint64_t sub_18E6E4504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (v6 == 1)
  {
    v7 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v6;
      do
      {
        v15 = *v11++;
        v16 = *v12++;
        *v13++ = type metadata accessor for CombinerElement();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, a2);
  v17 = *(a3 + 52);
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = *(a1 + v17);
  v21 = *(a2 + v17);
  if (v20)
  {
    if (v21)
    {
      v22 = *(v19 + 8);
      v23 = v18[1];
      *v18 = v21;
      v18[1] = v22;

      goto LABEL_14;
    }

    v25 = v18[1];
  }

  else if (v21)
  {
    v24 = *(v19 + 8);
    *v18 = v21;
    v18[1] = v24;

    goto LABEL_14;
  }

  *v18 = *v19;
LABEL_14:
  v26 = *(v19 + 16);
  if (!v18[2])
  {
    if (v26)
    {
      v29 = *(v19 + 24);
      v18[2] = v26;
      v18[3] = v29;

      goto LABEL_21;
    }

LABEL_20:
    *(v18 + 1) = *(v19 + 16);
    goto LABEL_21;
  }

  if (!v26)
  {
    v30 = v18[3];

    goto LABEL_20;
  }

  v27 = *(v19 + 24);
  v28 = v18[3];
  v18[2] = v26;
  v18[3] = v27;

LABEL_21:
  v31 = *(v19 + 40);
  v32 = v18[5];
  v18[4] = *(v19 + 32);
  v18[5] = v31;

  *(a1 + *(a3 + 56)) = *(a2 + *(a3 + 56));
  return a1;
}

uint64_t sub_18E6E4718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (v6 == 1)
  {
    v7 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v6;
      do
      {
        v15 = *v11++;
        v16 = *v12++;
        *v13++ = type metadata accessor for CombinerElement();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, a2);
  v17 = *(a3 + 52);
  v18 = *(a3 + 56);
  v19 = (a1 + v17);
  v20 = (a2 + v17);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;
  v19[2] = v20[2];
  *(a1 + v18) = *(a2 + v18);
  return a1;
}

uint64_t sub_18E6E4878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  if (v6 == 1)
  {
    v7 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v8 = *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = type metadata accessor for CombinerElement();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v6;
      do
      {
        v15 = *v11++;
        v16 = *v12++;
        *v13++ = type metadata accessor for CombinerElement();
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, a2);
  v17 = *(a3 + 52);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17);
  v21 = *(a2 + v17);
  if (v20)
  {
    if (v21)
    {
      v22 = *(v19 + 8);
      v23 = *(v18 + 8);
      *v18 = v21;
      *(v18 + 8) = v22;

      goto LABEL_14;
    }

    v25 = *(v18 + 8);
  }

  else if (v21)
  {
    v24 = *(v19 + 8);
    *v18 = v21;
    *(v18 + 8) = v24;
    goto LABEL_14;
  }

  *v18 = *v19;
LABEL_14:
  v26 = *(v19 + 16);
  if (!*(v18 + 16))
  {
    if (v26)
    {
      v29 = *(v19 + 24);
      *(v18 + 16) = v26;
      *(v18 + 24) = v29;
      goto LABEL_21;
    }

LABEL_20:
    *(v18 + 16) = *(v19 + 16);
    goto LABEL_21;
  }

  if (!v26)
  {
    v30 = *(v18 + 24);

    goto LABEL_20;
  }

  v27 = *(v19 + 24);
  v28 = *(v18 + 24);
  *(v18 + 16) = v26;
  *(v18 + 24) = v27;

LABEL_21:
  v31 = *(v18 + 40);
  *(v18 + 32) = *(v19 + 32);

  *(a1 + *(a3 + 56)) = *(a2 + *(a3 + 56));
  return a1;
}

uint64_t sub_18E6E4AAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 24);
    result = type metadata accessor for CombinerElement.State();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E6E4B80(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v12 = *(v9 + 80);
  v13 = v12 & 0xF8 | 7;
  v14 = (((v7 + v13) & ~v13) + v11) | 2;
  v15 = v13 | *(v6 + 80);
  v16 = (*(v6 + 80) | v12) & 0x100000;
  if (v15 != 7 || v16 != 0 || v14 > 0x18)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v15 + 16) & ~v15));
  }

  else
  {
    v20 = AssociatedTypeWitness;
    (*(v6 + 16))(a1, a2, v5);
    v21 = a1 + v7 + 7;
    v22 = v21 & 0xFFFFFFFFFFFFFFF8;
    v23 = a2 + v7 + 7;
    v24 = v23 & 0xFFFFFFFFFFFFFFF8;
    v25 = *((v23 & 0xFFFFFFFFFFFFFFF8) + v11);
    if (v25 > 2)
    {
      memcpy((v21 & 0xFFFFFFFFFFFFFFF8), (v23 & 0xFFFFFFFFFFFFFFF8), v11 | 1);
    }

    else if (v25 == 2)
    {
      (*(v9 + 16))(v21 & 0xFFFFFFFFFFFFFFF8, v23 & 0xFFFFFFFFFFFFFFF8, v20);
      v28 = ((v21 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
      v29 = ((v23 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
      if (*v29 < 0xFFFFFFFFuLL)
      {
        v32 = *(v29 + 16);
        *v28 = *v29;
        *(v28 + 16) = v32;
      }

      else
      {
        *v28 = *v29;
        *(v28 + 8) = *(v29 + 8);
        *(v28 + 16) = *(v29 + 16);
        *(v28 + 24) = *(v29 + 24);
      }

      *(v22 + v11) = 2;
    }

    else if (v25 == 1)
    {
      (*(v9 + 16))(v21 & 0xFFFFFFFFFFFFFFF8, v23 & 0xFFFFFFFFFFFFFFF8, v20);
      v26 = ((v21 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
      v27 = ((v23 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
      if (*v27 < 0xFFFFFFFFuLL)
      {
        v31 = *(v27 + 16);
        *v26 = *v27;
        *(v26 + 16) = v31;
      }

      else
      {
        *v26 = *v27;
        *(v26 + 8) = *(v27 + 8);
        *(v26 + 16) = *(v27 + 16);
        *(v26 + 24) = *(v27 + 24);
      }

      *(v22 + v11) = 1;
    }

    else
    {
      *v22 = *v24;
      v30 = *(v24 + 8);
      if (v30)
      {
        *(v22 + 8) = v30;
        *(v22 + 16) = *(v24 + 16);
        *(v22 + 24) = *(v24 + 24);
        *(v22 + 32) = *(v24 + 32);
      }

      else
      {
        v33 = *(v24 + 24);
        *(v22 + 8) = *(v24 + 8);
        *(v22 + 24) = v33;
      }

      *(v22 + v11) = 0;
    }

    *((v11 | 1) + v22) = *((v11 | 1) + v24);
  }

  return a1;
}

uint64_t sub_18E6E4EC4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)(a1, *(a2 + 16));
  v5 = *(v4 + 56) + a1;
  v6 = *(a2 + 24);
  result = swift_getAssociatedTypeWitness();
  v8 = *(result - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((v5 + v9) & ~v9);
  v11 = *(v8 + 64) + 7;
  v12 = (v11 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v12 <= 0x28)
  {
    v12 = 40;
  }

  v13 = *(v10 + v12);
  if (v13 <= 2)
  {
    if (v13 == 2 || v13 == 1)
    {
      (*(v8 + 8))(v10, result);
      v14 = ((v10 + v11) & 0xFFFFFFFFFFFFFFF8);
      result = *v14;
      if (*v14 < 0xFFFFFFFF)
      {
        return result;
      }

      v15 = v14[1];

      v16 = v14 + 3;
    }

    else
    {
      result = v10[1];
      if (!result)
      {
        return result;
      }

      v17 = v10[2];

      v16 = v10 + 4;
    }

    v18 = *v16;
  }

  return result;
}

uint64_t sub_18E6E5050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)(a1, a2, *(a3 + 16));
  v7 = *(v6 + 48);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80) & 0xF8 | 7;
  v12 = ((v7 + v11 + a1) & ~v11);
  v13 = ((v7 + v11 + a2) & ~v11);
  v14 = *(v10 + 64) + 7;
  if ((v14 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v15 = 40;
  }

  else
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v16 = *(v13 + v15);
  if (v16 > 2)
  {
    memcpy(v12, v13, v15 | 1);
  }

  else if (v16 == 2)
  {
    (*(v10 + 16))(v12, v13, AssociatedTypeWitness);
    v19 = (v12 + v14) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v13 + v14) & 0xFFFFFFFFFFFFFFF8;
    if (*v20 < 0xFFFFFFFFuLL)
    {
      v23 = *(v20 + 16);
      *v19 = *v20;
      *(v19 + 16) = v23;
    }

    else
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      *(v19 + 16) = *(v20 + 16);
      *(v19 + 24) = *(v20 + 24);
    }

    *(v12 + v15) = 2;
  }

  else if (v16 == 1)
  {
    (*(v10 + 16))(v12, v13, AssociatedTypeWitness);
    v17 = (v12 + v14) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v13 + v14) & 0xFFFFFFFFFFFFFFF8;
    if (*v18 < 0xFFFFFFFFuLL)
    {
      v22 = *(v18 + 16);
      *v17 = *v18;
      *(v17 + 16) = v22;
    }

    else
    {
      *v17 = *v18;
      *(v17 + 8) = *(v18 + 8);
      *(v17 + 16) = *(v18 + 16);
      *(v17 + 24) = *(v18 + 24);
    }

    *(v12 + v15) = 1;
  }

  else
  {
    *v12 = *v13;
    v21 = v13[1];
    if (v21)
    {
      v12[1] = v21;
      v12[2] = v13[2];
      v12[3] = v13[3];
      v12[4] = v13[4];
    }

    else
    {
      v24 = *(v13 + 3);
      *(v12 + 1) = *(v13 + 1);
      *(v12 + 3) = v24;
    }

    *(v12 + v15) = 0;
  }

  *(v12 + (v15 | 1)) = *(v13 + (v15 | 1));
  return a1;
}

uint64_t sub_18E6E52F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)(a1, a2, *(a3 + 16));
  v7 = *(v6 + 40);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80) & 0xF8 | 7;
  v12 = ((v7 + v11 + a1) & ~v11);
  v13 = ((v7 + v11 + a2) & ~v11);
  v14 = *(v10 + 64) + 7;
  if ((v14 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v15 = 40;
  }

  else
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v16 = *(v12 + v15);
  v17 = *(v13 + v15);
  if (v16 <= 2)
  {
    if (v17 <= 2)
    {
      if (v12 == v13)
      {
        goto LABEL_24;
      }

      if (v16 == 2 || v16 == 1)
      {
        (*(v10 + 8))(v12, AssociatedTypeWitness);
        v18 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
        if (*v18 < 0xFFFFFFFFuLL)
        {
          goto LABEL_30;
        }

        v19 = v18[1];

        v20 = v18 + 3;
      }

      else
      {
        if (!v12[1])
        {
          goto LABEL_30;
        }

        v30 = v12[2];

        v20 = v12 + 4;
      }

      v31 = *v20;

LABEL_30:
      v32 = *(v13 + v15);
      if ((v15 & 0xFFFFFFF8) != 0 && v32 >= 3)
      {
        v32 = *v13 + 3;
      }

      if (v32 != 2)
      {
        if (v32 != 1)
        {
          goto LABEL_38;
        }

LABEL_14:
        (*(v10 + 16))(v12, v13, AssociatedTypeWitness);
        v21 = (v12 + v14) & 0xFFFFFFFFFFFFFFF8;
        v22 = (v13 + v14) & 0xFFFFFFFFFFFFFFF8;
        if (*v22 < 0xFFFFFFFFuLL)
        {
          v29 = *(v22 + 16);
          *v21 = *v22;
          *(v21 + 16) = v29;
        }

        else
        {
          *v21 = *v22;
          *(v21 + 8) = *(v22 + 8);
          *(v21 + 16) = *(v22 + 16);
          *(v21 + 24) = *(v22 + 24);
        }

        *(v12 + v15) = 1;
        goto LABEL_24;
      }

      goto LABEL_41;
    }

    if (v16 == 2 || v16 == 1)
    {
      (*(v10 + 8))(v12, AssociatedTypeWitness);
      v23 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
      if (*v23 >= 0xFFFFFFFFuLL)
      {

        v24 = v23[1];

        v25 = v23 + 3;
LABEL_22:
        v27 = *v25;
      }
    }

    else if (v12[1])
    {

      v26 = v12[2];

      v25 = v12 + 4;
      goto LABEL_22;
    }

LABEL_23:
    memcpy(v12, v13, v15 | 1);
    goto LABEL_24;
  }

  if (v17 > 2)
  {
    goto LABEL_23;
  }

  if (v17 != 2)
  {
    if (v17 != 1)
    {
LABEL_38:
      *v12 = *v13;
      v34 = v13[1];
      if (v34)
      {
        v12[1] = v34;
        v12[2] = v13[2];
        v12[3] = v13[3];
        v12[4] = v13[4];
      }

      else
      {
        v38 = *(v13 + 3);
        *(v12 + 1) = *(v13 + 1);
        *(v12 + 3) = v38;
      }

      *(v12 + v15) = 0;
      goto LABEL_24;
    }

    goto LABEL_14;
  }

LABEL_41:
  (*(v10 + 16))(v12, v13, AssociatedTypeWitness);
  v35 = (v12 + v14) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v13 + v14) & 0xFFFFFFFFFFFFFFF8;
  if (*v36 < 0xFFFFFFFFuLL)
  {
    v37 = *(v36 + 16);
    *v35 = *v36;
    *(v35 + 16) = v37;
  }

  else
  {
    *v35 = *v36;
    *(v35 + 8) = *(v36 + 8);
    *(v35 + 16) = *(v36 + 16);
    *(v35 + 24) = *(v36 + 24);
  }

  *(v12 + v15) = 2;
LABEL_24:
  *(v12 + (v15 | 1)) = *(v13 + (v15 | 1));
  return a1;
}

uint64_t sub_18E6E56E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)(a1, a2, *(a3 + 16));
  v7 = *(v6 + 32);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80) & 0xF8 | 7;
  v12 = ((v7 + v11 + a1) & ~v11);
  v13 = ((v7 + v11 + a2) & ~v11);
  v14 = *(v10 + 64) + 7;
  if ((v14 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v15 = 40;
  }

  else
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v16 = *(v13 + v15);
  if (v16 > 2)
  {
    memcpy(v12, v13, v15 | 1);
  }

  else if (v16 == 2)
  {
    (*(v10 + 32))(v12, v13, AssociatedTypeWitness);
    v20 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v13 + v14) & 0xFFFFFFFFFFFFFFF8);
    v22 = v21[1];
    *v20 = *v21;
    v20[1] = v22;
    *(v12 + v15) = 2;
  }

  else if (v16 == 1)
  {
    (*(v10 + 32))(v12, v13, AssociatedTypeWitness);
    v17 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v13 + v14) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    *(v12 + v15) = 1;
  }

  else
  {
    v23 = *v13;
    v24 = v13[1];
    *(v12 + 4) = *(v13 + 4);
    *v12 = v23;
    v12[1] = v24;
    *(v12 + v15) = 0;
  }

  *(v12 + (v15 | 1)) = *(v13 + (v15 | 1));
  return a1;
}

uint64_t sub_18E6E58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)(a1, a2, *(a3 + 16));
  v7 = *(v6 + 24);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80) & 0xF8 | 7;
  v12 = ((v7 + v11 + a1) & ~v11);
  v13 = ((v7 + v11 + a2) & ~v11);
  v14 = *(v10 + 64) + 7;
  if ((v14 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v15 = 40;
  }

  else
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v16 = *(v12 + v15);
  v17 = *(v13 + v15);
  if (v16 > 2)
  {
    if (v17 <= 2)
    {
      if (v17 != 2)
      {
        if (v17 != 1)
        {
LABEL_34:
          v34 = *v13;
          v35 = v13[1];
          v12[4] = *(v13 + 4);
          *v12 = v34;
          *(v12 + 1) = v35;
          *(v12 + v15) = 0;
          goto LABEL_37;
        }

        goto LABEL_14;
      }

LABEL_35:
      (*(v10 + 32))(v12, v13, AssociatedTypeWitness);
      v36 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
      v37 = ((v13 + v14) & 0xFFFFFFFFFFFFFFF8);
      v38 = v37[1];
      *v36 = *v37;
      v36[1] = v38;
      v24 = 2;
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  if (v17 > 2)
  {
    if (v16 == 2 || v16 == 1)
    {
      (*(v10 + 8))(v12, AssociatedTypeWitness);
      v25 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
      if (*v25 >= 0xFFFFFFFFuLL)
      {

        v26 = v25[1];

        v27 = v25 + 3;
LABEL_21:
        v29 = *v27;
      }
    }

    else if (v12[1])
    {

      v28 = v12[2];

      v27 = v12 + 4;
      goto LABEL_21;
    }

LABEL_22:
    memcpy(v12, v13, v15 | 1);
    goto LABEL_37;
  }

  if (v12 != v13)
  {
    if (v16 == 2 || v16 == 1)
    {
      (*(v10 + 8))(v12, AssociatedTypeWitness);
      v18 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
      if (*v18 < 0xFFFFFFFFuLL)
      {
        goto LABEL_26;
      }

      v19 = v18[1];

      v20 = v18 + 3;
    }

    else
    {
      if (!v12[1])
      {
        goto LABEL_26;
      }

      v30 = v12[2];

      v20 = v12 + 4;
    }

    v31 = *v20;

LABEL_26:
    v32 = *(v13 + v15);
    if ((v15 & 0xFFFFFFF8) != 0 && v32 >= 3)
    {
      v32 = *v13 + 3;
    }

    if (v32 != 2)
    {
      if (v32 != 1)
      {
        goto LABEL_34;
      }

LABEL_14:
      (*(v10 + 32))(v12, v13, AssociatedTypeWitness);
      v21 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
      v22 = ((v13 + v14) & 0xFFFFFFFFFFFFFFF8);
      v23 = v22[1];
      *v21 = *v22;
      v21[1] = v23;
      v24 = 1;
LABEL_36:
      *(v12 + v15) = v24;
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_37:
  *(v12 + (v15 | 1)) = *(v13 + (v15 | 1));
  return a1;
}

uint64_t sub_18E6E5BD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = 40;
  if (((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x28)
  {
    v9 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 > v10)
  {
    v13 = ((v12 & ~v11) + v9) | 2;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_9;
    }

    v16 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (v16 >= 2)
    {
LABEL_9:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_21;
      }

LABEL_16:
      v17 = (v15 - 1) << v14;
      if (v13 <= 3)
      {
        v18 = *a1;
      }

      else
      {
        v17 = 0;
        v18 = *a1;
      }

      v19 = v10 + (v18 | v17);
      return (v19 + 1);
    }
  }

LABEL_21:
  if (v7 < 0xFE)
  {
    v22 = *((v9 | 1) + ((a1 + v12) & ~v11));
    if (v22 < 2)
    {
      return 0;
    }

    v19 = (v22 + 2147483646) & 0x7FFFFFFF;
    return (v19 + 1);
  }

  v20 = *(v6 + 48);

  return v20(a1, v7, v5);
}

void sub_18E6E5E10(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  if (((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = ((v14 & ~v13) + v11) | 2;
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 >= a2)
  {
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      *(a1 + v15) = 0;
    }

    else if (v16)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

LABEL_33:
    if (v9 < 0xFE)
    {
      v22 = ((a1 + v14) & ~v13);
      if (a2 > 0xFE)
      {
        v23 = a2 - 255;
        bzero(v22, v11 | 2);
        if (v11)
        {
          *v22 = v23;
        }

        else
        {
          *v22 = v23;
        }
      }

      else
      {
        *(v22 + (v11 | 1)) = a2 + 1;
      }
    }

    else
    {
      v21 = *(v24 + 56);

      v21(a1, a2, v9, v7);
    }

    return;
  }

  v17 = ~v12 + a2;
  if (v15 <= 3)
  {
    v18 = (v17 >> (8 * v15)) + 1;
    bzero(a1, v15);
    *a1 = v17 & ~(-1 << (8 * v15));
    if (v16 > 1)
    {
LABEL_14:
      if (v16 == 2)
      {
        *(a1 + v15) = v18;
      }

      else
      {
        *(a1 + v15) = v18;
      }

      return;
    }
  }

  else
  {
    bzero(a1, v15);
    *a1 = v17;
    v18 = 1;
    if (v16 > 1)
    {
      goto LABEL_14;
    }
  }

  if (v16)
  {
    *(a1 + v15) = v18;
  }
}

uint64_t sub_18E6E610C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput();
  result = sub_18E72B438();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18E6E61CC(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 80) & 0xF8;
  *a1 = *a2;
  return  + ((v8 + 23) & ~v8 & 0x1F8);
}

uint64_t sub_18E6E6254(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  v8 = *(a1 + v7);
  if (v8 <= 2)
  {
    if (v8 == 2 || v8 == 1)
    {
      (*(*(result - 8) + 8))(a1, result);
      v9 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      result = *v9;
      if (*v9 < 0xFFFFFFFF)
      {
        return result;
      }

      v10 = v9[1];

      v11 = v9 + 3;
    }

    else
    {
      result = a1[1];
      if (!result)
      {
        return result;
      }

      v12 = a1[2];

      v11 = a1 + 4;
    }

    v13 = *v11;
  }

  return result;
}

void *sub_18E6E6388(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v12 = *(a2 + v11);
  if (v12 > 2)
  {
    memcpy(a1, a2, v11 | 1);
  }

  else if (v12 == 2)
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    v15 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v16 < 0xFFFFFFFFuLL)
    {
      v22 = *(v16 + 16);
      *v15 = *v16;
      *(v15 + 16) = v22;
    }

    else
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      *(v15 + 16) = *(v16 + 16);
      *(v15 + 24) = *(v16 + 24);
    }

    *(a1 + v11) = 2;
  }

  else if (v12 == 1)
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    v13 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v14 < 0xFFFFFFFFuLL)
    {
      v21 = *(v14 + 16);
      *v13 = *v14;
      *(v13 + 16) = v21;
    }

    else
    {
      *v13 = *v14;
      *(v13 + 8) = *(v14 + 8);
      *(v13 + 16) = *(v14 + 16);
      *(v13 + 24) = *(v14 + 24);
    }

    *(a1 + v11) = 1;
  }

  else
  {
    *a1 = *a2;
    v17 = a2[1];
    if (v17)
    {
      v19 = a2[2];
      v18 = a2[3];
      a1[1] = v17;
      a1[2] = v19;
      v20 = a2[4];
      a1[3] = v18;
      a1[4] = v20;
    }

    else
    {
      v23 = *(a2 + 3);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 3) = v23;
    }

    *(a1 + v11) = 0;
  }

  *(a1 + (v11 | 1)) = *(a2 + (v11 | 1));
  return a1;
}

void *sub_18E6E65D0(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 <= 2)
  {
    if (v13 <= 2)
    {
      if (a1 == a2)
      {
        goto LABEL_45;
      }

      if (v12 == 2 || v12 == 1)
      {
        (*(v9 + 8))(a1, AssociatedTypeWitness);
        v14 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (*v14 < 0xFFFFFFFFuLL)
        {
          goto LABEL_29;
        }

        v15 = v14[1];

        v16 = v14 + 3;
      }

      else
      {
        if (!a1[1])
        {
          goto LABEL_29;
        }

        v26 = a1[2];

        v16 = a1 + 4;
      }

      v27 = *v16;

LABEL_29:
      v28 = *(a2 + v11);
      if ((v11 & 0xFFFFFFF8) != 0 && v28 >= 3)
      {
        v28 = *a2 + 3;
      }

      if (v28 != 2)
      {
        if (v28 != 1)
        {
          goto LABEL_37;
        }

        goto LABEL_14;
      }

LABEL_40:
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      v31 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (*v32 < 0xFFFFFFFFuLL)
      {
        v33 = *(v32 + 16);
        *v31 = *v32;
        *(v31 + 16) = v33;
      }

      else
      {
        *v31 = *v32;
        *(v31 + 8) = *(v32 + 8);
        *(v31 + 16) = *(v32 + 16);
        *(v31 + 24) = *(v32 + 24);
      }

      v25 = 2;
      goto LABEL_44;
    }

    if (v12 == 2 || v12 == 1)
    {
      (*(v9 + 8))(a1, AssociatedTypeWitness);
      v19 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (*v19 >= 0xFFFFFFFFuLL)
      {

        v20 = v19[1];

        v21 = v19 + 3;
LABEL_22:
        v23 = *v21;
      }
    }

    else if (a1[1])
    {

      v22 = a1[2];

      v21 = a1 + 4;
      goto LABEL_22;
    }

LABEL_23:
    memcpy(a1, a2, v11 | 1);
    goto LABEL_45;
  }

  if (v13 > 2)
  {
    goto LABEL_23;
  }

  if (v13 == 2)
  {
    goto LABEL_40;
  }

  if (v13 == 1)
  {
LABEL_14:
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    v17 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v18 < 0xFFFFFFFFuLL)
    {
      v24 = *(v18 + 16);
      *v17 = *v18;
      *(v17 + 16) = v24;
    }

    else
    {
      *v17 = *v18;
      *(v17 + 8) = *(v18 + 8);
      *(v17 + 16) = *(v18 + 16);
      *(v17 + 24) = *(v18 + 24);
    }

    v25 = 1;
LABEL_44:
    *(a1 + v11) = v25;
    goto LABEL_45;
  }

LABEL_37:
  *a1 = *a2;
  v30 = a2[1];
  if (v30)
  {
    a1[1] = v30;
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    v35 = *(a2 + 3);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 3) = v35;
  }

  *(a1 + v11) = 0;
LABEL_45:
  *(a1 + (v11 | 1)) = *(a2 + (v11 | 1));
  return a1;
}

_OWORD *sub_18E6E6978(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v12 = *(a2 + v11);
  if (v12 > 2)
  {
    memcpy(a1, a2, v11 | 1);
  }

  else if (v12 == 2)
  {
    (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
    v16 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
    *(a1 + v11) = 2;
  }

  else if (v12 == 1)
  {
    (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
    v13 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    *(a1 + v11) = 1;
  }

  else
  {
    v19 = a2[1];
    *a1 = *a2;
    a1[1] = v19;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + v11) = 0;
  }

  *(a1 + (v11 | 1)) = *(a2 + (v11 | 1));
  return a1;
}

void *sub_18E6E6B00(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v12 = *(a1 + v11);
  v13 = a2[v11];
  if (v12 > 2)
  {
    if (v13 <= 2)
    {
      if (v13 != 2)
      {
        if (v13 != 1)
        {
LABEL_34:
          v30 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v30;
          a1[4] = *(a2 + 4);
          *(a1 + v11) = 0;
          goto LABEL_37;
        }

        goto LABEL_14;
      }

LABEL_35:
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      v31 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      v32 = (&a2[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
      v33 = v32[1];
      *v31 = *v32;
      v31[1] = v33;
      v20 = 2;
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  if (v13 > 2)
  {
    if (v12 == 2 || v12 == 1)
    {
      (*(v9 + 8))(a1, AssociatedTypeWitness);
      v21 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (*v21 >= 0xFFFFFFFFuLL)
      {

        v22 = v21[1];

        v23 = v21 + 3;
LABEL_21:
        v25 = *v23;
      }
    }

    else if (a1[1])
    {

      v24 = a1[2];

      v23 = a1 + 4;
      goto LABEL_21;
    }

LABEL_22:
    memcpy(a1, a2, v11 | 1);
    goto LABEL_37;
  }

  if (a1 != a2)
  {
    if (v12 == 2 || v12 == 1)
    {
      (*(v9 + 8))(a1, AssociatedTypeWitness);
      v14 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (*v14 < 0xFFFFFFFFuLL)
      {
        goto LABEL_26;
      }

      v15 = v14[1];

      v16 = v14 + 3;
    }

    else
    {
      if (!a1[1])
      {
        goto LABEL_26;
      }

      v26 = a1[2];

      v16 = a1 + 4;
    }

    v27 = *v16;

LABEL_26:
    v28 = a2[v11];
    if ((v11 & 0xFFFFFFF8) != 0 && v28 >= 3)
    {
      v28 = *a2 + 3;
    }

    if (v28 != 2)
    {
      if (v28 != 1)
      {
        goto LABEL_34;
      }

LABEL_14:
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      v17 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      v18 = (&a2[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
      v19 = v18[1];
      *v17 = *v18;
      v17[1] = v19;
      v20 = 1;
LABEL_36:
      *(a1 + v11) = v20;
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_37:
  *(a1 + (v11 | 1)) = a2[v11 | 1];
  return a1;
}

uint64_t sub_18E6E6DD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v8 <= 0x28)
  {
    v8 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v9 = v8 | 2;
  if ((v8 | 2) <= 3)
  {
    v10 = ((a2 + 65281) >> 16) + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v13 = *(a1 + v9);
      if (v13)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_26;
  }

  if (!v12 || (v13 = *(a1 + v9), !*(a1 + v9)))
  {
LABEL_26:
    v16 = *(a1 + v8 + 1);
    if (v16 >= 2)
    {
      return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_19:
  v14 = (v13 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return (v15 | v14) + 255;
}

void sub_18E6E6F10(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v10 = v9 | 2;
  if (a3 < 0xFF)
  {
    v13 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *(a1 + v10) = 0;
    }

    else if (v13)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      *(a1 + v9 + 1) = a2 + 1;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v10 <= 3)
  {
    v11 = ((a3 + 65281) >> 16) + 1;
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

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v14 = a2 - 255;
  bzero(a1, v9 | 2);
  if (v10 <= 3)
  {
    v15 = HIWORD(v14) + 1;
  }

  else
  {
    v15 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v14;
    if (v13 > 1)
    {
LABEL_21:
      if (v13 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v13 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v13)
  {
    *(a1 + v10) = v15;
  }
}

uint64_t sub_18E6E7084@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = a1;
  v11 = 8 * a4;
  v49 = a6;
  v50 = a7;
  v51 = a5;
  v48 = a2;
  v47 = a8;
  if (a4 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v14 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a4)
    {
      v15 = 0;
      v16 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (a4 < 4)
      {
        goto LABEL_9;
      }

      if (&v14[-v16] < 0x20)
      {
        goto LABEL_9;
      }

      v15 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (v16 + 16);
      v18 = v14 + 16;
      v19 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != a4)
      {
LABEL_9:
        v21 = a4 - v15;
        v22 = 8 * v15;
        v23 = &v14[8 * v15];
        v24 = (v16 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v46[2] = v46;
  v26 = *(*(TupleTypeMetadata - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v29 = v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[1] = v46;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v31 = (v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    v32 = (v51 & 0xFFFFFFFFFFFFFFFELL);
    v33 = (v30 + 32);
    v34 = (v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v35 = a4;
    do
    {
      if (a4 == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = *v33;
      }

      v38 = *v32++;
      v37 = v38;
      v39 = &v29[v36];
      v40 = *v10++;
      (*(*(v37 - 8) + 16))(&v29[v36], v40);
      *v34++ = v39;
      v33 += 4;
      --v35;
    }

    while (v35);
  }

  v41 = *a3;
  v42 = *(a3 + 8);
  v43 = *(a3 + 16);
  v44 = *(a3 + 24);
  v53 = *(a3 + 32);
  sub_18E68CB70(v41);
  sub_18E68CB70(v43);
  sub_18E6EA7EC(&v53, v52);
  return sub_18E6E7788(v31, v48 & 1, a3, a4, v51, v49, v50, v47);
}