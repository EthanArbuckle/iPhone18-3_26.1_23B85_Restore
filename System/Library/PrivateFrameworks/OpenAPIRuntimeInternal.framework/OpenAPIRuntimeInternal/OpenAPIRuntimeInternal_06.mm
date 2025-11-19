uint64_t sub_25DD67490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25DD67570()
{
  result = sub_25DD96814();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HTTPBody();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25DD675F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_25DD67984();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25DD6767C(_DWORD *a1, unsigned int a2, uint64_t a3)
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_25DD677C0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_25DD67984()
{
  if (!qword_27FCC24E8)
  {
    v0 = sub_25DD96F04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC24E8);
    }
  }
}

void sub_25DD679D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_25DD67984();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25DD67A5C(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_25DD67BA8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *v19 = 0;
          v19[1] = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v19[1] = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
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

uint64_t sub_25DD67E10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD67E64()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD1BF14;

  return sub_25DD67068(v3, v2);
}

uint64_t MultipartRawPart.init(name:filename:headerFields:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v34 = a5;
  v32 = a7;
  v11 = sub_25DD969E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_25DD96814();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  v35 = sub_25DD06C04(MEMORY[0x277D84F90]);
  if (a2)
  {
    sub_25DD03C10(a1, a2, 0, 0);
  }

  if (a4)
  {
    sub_25DD03C10(a3, a4, 0, 1uLL);
  }

  v20 = nullsub_1(0);
  v22 = v21;
  v24 = v23;
  v25 = v14[2];
  v26 = v25(v19, v34, v13);
  MEMORY[0x25F8A2FE0](v26);
  sub_25DD04148(v20, v22, v24);

  sub_25DD96834();
  v27 = v31;
  v25(v31, v19, v13);
  MultipartRawPart.init(headerFields:body:)(v27, v33, v32);
  v28 = v14[1];
  v28(v34, v13);
  return (v28)(v19, v13);
}

uint64_t sub_25DD68198(unint64_t a1)
{
  v2 = sub_25DD969E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F8A2FE0](v5);
  v8 = MEMORY[0x25F8A2E40](v7);
  v10 = v9;
  (*(v3 + 8))(v7, v2);
  if (v10)
  {
    sub_25DD04144(v8, v10);
    if (v11)
    {
      v12 = v11;
      if (*(v11 + 16))
      {
        v13 = sub_25DD043CC(0, a1);
        if (v14)
        {
          v15 = (*(v12 + 56) + 16 * v13);
          v17 = *v15;
          v16 = v15[1];

          return v17;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_25DD682F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD969E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  MEMORY[0x25F8A2FE0](v10);
  v13 = MEMORY[0x25F8A2E40](v12);
  v15 = v14;
  result = (*(v7 + 8))(v12, v6);
  if (v15 && (result = sub_25DD04144(v13, v15), v18))
  {
    v19 = result;
    v20 = v17;
    v28 = v18;
    sub_25DD03828(0, a1);

    v21 = sub_25DD03C10(a2, a3, 0, a1);
    MEMORY[0x25F8A2FE0](v21);
    sub_25DD04148(v19, v20, v28);
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    MEMORY[0x25F8A2FE0](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2180, &qword_25DD98820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DD98100;
    *(inited + 32) = 0;
    *(inited + 40) = a1;
    *(inited + 48) = a2;
    *(inited + 56) = a3;
    sub_25DD03828(0, a1);
    sub_25DD06C04(inited);
    swift_setDeallocating();
    sub_25DD687CC(inited + 32);
    v24 = nullsub_1(0);
    sub_25DD04148(v24, v25, v26);
  }

  return sub_25DD96834();
}

uint64_t sub_25DD68560@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25DD68198(0);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MultipartRawPart.name.setter(uint64_t a1, uint64_t a2)
{
  sub_25DD682F0(0, a1, a2);
}

uint64_t (*MultipartRawPart.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_25DD68198(0);
  a1[1] = v3;
  return sub_25DD6864C;
}

uint64_t sub_25DD6865C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25DD68198(1uLL);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MultipartRawPart.filename.setter(uint64_t a1, uint64_t a2)
{
  sub_25DD682F0(1uLL, a1, a2);
}

uint64_t (*MultipartRawPart.filename.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_25DD68198(1uLL);
  a1[1] = v3;
  return sub_25DD68748;
}

uint64_t sub_25DD68750(uint64_t *a1, char a2, unint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];

    sub_25DD682F0(a3, v5, v4);
  }

  else
  {
    sub_25DD682F0(a3, v5, v4);
  }
}

uint64_t sub_25DD687CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2188, &qword_25DD98828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25DD68834()
{
  result = qword_27FCC2748;
  if (!qword_27FCC2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2748);
  }

  return result;
}

uint64_t sub_25DD68888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v5 + 16))(v9, v2, v4);
  sub_25DD96DF4();
  return sub_25DD689D4(v14, a2);
}

uint64_t sub_25DD689D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
  v5 = type metadata accessor for MultipartRawPartsToFramesSequence.Iterator();
  return sub_25DD68C74(a1, a2 + *(v5 + 36));
}

uint64_t sub_25DD68A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_25DD68B00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 40);

  return v7(v2, a1, AssociatedTypeWitness);
}

uint64_t sub_25DD68B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for MultipartRawPartsToFramesSequence.Serializer();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t sub_25DD68BF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for MultipartRawPartsToFramesSequence.Serializer();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t sub_25DD68C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a2, a1, AssociatedTypeWitness);
  result = type metadata accessor for MultipartRawPartsToFramesSequence.Serializer();
  v6 = (a2 + *(result + 36));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_25DD68D48(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 36);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for MultipartRawPartsToFramesSequence.Serializer();
  *v6 = v2;
  v6[1] = sub_25DD1BF14;

  return sub_25DD68E0C(a1, v9);
}

uint64_t sub_25DD68E0C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_25DD68E30, 0, 0);
}

uint64_t sub_25DD68E30()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 176) = *(v1 + 36);
  v3 = *(v1 + 16);
  *(v0 + 72) = v3;
  v4 = *(v1 + 24);
  *(v0 + 80) = v4;
  *(v0 + 88) = type metadata accessor for MultipartRawPartsToFramesSequence.StateMachine();
  sub_25DD6981C((v0 + 16));
  v5 = *(v0 + 16);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = swift_task_alloc();
      *(v0 + 120) = v6;
      *v6 = v0;
      v6[1] = sub_25DD69158;
      v7 = *(v0 + 64);
      v8 = *(v0 + 48);

      return sub_25DD6A450(v8, v7, v3, v4);
    }

    else
    {
      v13 = *(v0 + 24);
      *(v0 + 32) = v5;
      *(v0 + 40) = v13;
      v14 = swift_task_alloc();
      *(v0 + 96) = v14;
      *v14 = v0;
      v14[1] = sub_25DD6901C;

      return HTTPBody.Iterator.next()();
    }
  }

  else
  {
    v10 = *(v0 + 48);
    v11 = type metadata accessor for MultipartFrame();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_25DD6901C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v5;
  v10 = *(*v5 + 96);
  v11 = *v5;
  v9[13] = a1;
  v9[14] = v4;

  if (v4)
  {
    v12 = sub_25DD695FC;
  }

  else
  {
    v9[17] = a4;
    v9[18] = a3;
    v9[19] = a2;
    v12 = sub_25DD69284;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_25DD69158()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_25DD695E4;
  }

  else
  {
    v3 = sub_25DD6926C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD69284()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 64) + *(v0 + 176);
  v5 = sub_25DD6A3B8(*(v0 + 104));
  if (v5)
  {
    if (v5 == 1)
    {
      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      *v9 = v0;
      v9[1] = sub_25DD69464;
      v10 = *(v0 + 72);
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      v13 = *(v0 + 48);

      return sub_25DD6A450(v13, v12, v10, v11);
    }

    v19 = *(v0 + 104);
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    v22 = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;

    swift_unknownObjectRelease();
    *v21 = v22;
    v21[1] = v23;
    v21[2] = v24;
    v21[3] = v25;
    v26 = type metadata accessor for MultipartFrame();
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  }

  else
  {
    v15 = *(v0 + 104);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);

    swift_unknownObjectRelease();
    v18 = type metadata accessor for MultipartFrame();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_25DD69464()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_25DD69660;
  }

  else
  {
    v3 = sub_25DD69578;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD69578()
{
  v1 = v0[13];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25DD695FC()
{
  v1 = v0[5];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25DD69660()
{
  v1 = v0[13];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

uint64_t sub_25DD696CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1C68C;

  return sub_25DD68D48(a1, a2);
}

uint64_t sub_25DD69774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD68888(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

unint64_t sub_25DD697D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_25DD6A8D8(v2);
}

unint64_t sub_25DD697E0(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];
  result = sub_25DD6A8EC(*v1);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

unint64_t sub_25DD6981C@<X0>(unint64_t *a1@<X8>)
{
  result = *v1;
  v3 = v1[1];
  if (*v1)
  {
    if (result == 2)
    {
      *a1 = 0;
      a1[1] = 0;
    }

    else
    {
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      *a1 = result;
      a1[1] = v3;
    }
  }

  else
  {
    v4 = v1[1];
    sub_25DD6A8EC(0);
    result = 0;
    *v1 = xmmword_25DD9E4F0;
    *a1 = xmmword_25DD9E4F0;
  }

  return sub_25DD6A8D8(result);
}

uint64_t sub_25DD698BC(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_25DD96814();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MultipartRawPartsToFramesSequence.StateMachine.ReceivedPartAction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = &v27 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v27 - v15;
  v17 = *(v14 + 48);
  v28 = v8;
  v18 = *(v8 + 16);
  v18(&v27 - v15, v29, v7);
  v18(&v16[v17], a2, v7);
  v29 = v4;
  v19 = *(v4 + 48);
  if (v19(v16, 1, v3) == 1)
  {
    v20 = 1;
    if (v19(&v16[v17], 1, v3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18(v30, v16, v7);
    if (v19(&v16[v17], 1, v3) != 1)
    {
      v21 = v29;
      v22 = &v16[v17];
      v23 = v27;
      (*(v29 + 32))(v27, v22, v3);
      v24 = v30;
      v20 = MEMORY[0x25F8A2E10](v30, v23);
      v25 = *(v21 + 8);
      v25(v23, v3);
      v25(v24, v3);
LABEL_8:
      v12 = v28;
      goto LABEL_9;
    }

    (*(v29 + 8))(v30, v3);
  }

  v20 = 0;
  v7 = TupleTypeMetadata2;
LABEL_9:
  (*(v12 + 8))(v16, v7);
  return v20 & 1;
}

uint64_t sub_25DD69C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v2, a2);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x25F8A3F90](0);
  }

  (*(v5 + 32))(v9, v12, v4);
  MEMORY[0x25F8A3F90](1);
  sub_25DD6A918();
  sub_25DD96AC4();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_25DD69DD0(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD69C00(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD69E20(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  sub_25DD69C00(v4, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD69E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_25DD698BC(a1, a2);
}

uint64_t sub_25DD69E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v26 - v7;
  v9 = type metadata accessor for MultipartRawPart();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2 == 2)
  {
    v17 = sub_25DD96814();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }

  else if (*v2 == 1)
  {
    sub_25DD6A970(a1, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_25DD6A9E0(v8);
      v15 = v2[1];
      sub_25DD6A8EC(*v2);
      *v2 = xmmword_25DD9D830;
      v16 = sub_25DD96814();
      return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }

    else
    {
      sub_25DD6AA48(v8, v14);
      v19 = v2;
      v20 = *&v14[*(v9 + 20)];
      HTTPBody.makeAsyncIterator()(v26);
      v21 = v26[0];
      v22 = v26[1];
      v23 = v19[1];
      sub_25DD6A8EC(*v19);
      *v19 = v21;
      v19[1] = v22;
      v24 = sub_25DD96814();
      v25 = *(v24 - 8);
      (*(v25 + 16))(a2, v14, v24);
      sub_25DD6AAAC(v14);
      return (*(v25 + 56))(a2, 0, 1, v24);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_25DD6A138(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!result)
  {
    return !a5;
  }

  if (result)
  {
    return a5 == 1;
  }

  if (a5 < 2)
  {
    return 0;
  }

  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = a8 >> 1;
  v11 = (a8 >> 1) - a7;
  if (__OFSUB__(a8 >> 1, a7))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v9 != v11)
  {
    return 0;
  }

  if (!v9)
  {
    return 1;
  }

  result = 1;
  if (a2 + a3 != a6 + a7 && v8 != a3)
  {
    if (v8 <= a3)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    if (v10 == a7)
    {
      return 0;
    }

    v12 = 0;
    if (a7 <= v10)
    {
      v13 = a8 >> 1;
    }

    else
    {
      v13 = a7;
    }

    v14 = v13 - a7;
    while (v14 != v12)
    {
      if (*(a2 + a3 + v12) != *(a6 + a7 + v12))
      {
        return 0;
      }

      if (~a3 + v8 == v12)
      {
        return 1;
      }

      v15 = a3 + v12 + 1;
      if (v15 < a3 || v15 >= v8)
      {
        goto LABEL_32;
      }

      result = 0;
      if (v11 == ++v12)
      {
        return result;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_25DD6A230(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 < 2)
  {
    return MEMORY[0x25F8A3F90](a2);
  }

  MEMORY[0x25F8A3F90](2);
  v9 = a5 >> 1;
  result = v9 - a4;
  if (__OFSUB__(v9, a4))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = MEMORY[0x25F8A3F90](result);
  v10 = __OFSUB__(v9, a4);
  v11 = v9 - a4;
  if (!v11)
  {
    return result;
  }

  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = (a3 + a4);
  do
  {
    v13 = *v12++;
    result = sub_25DD97984();
    --v11;
  }

  while (v11);
  return result;
}

uint64_t sub_25DD6A2B8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_25DD97964();
  sub_25DD6A230(v9, a1, a2, a3, a4);
  return sub_25DD979A4();
}

uint64_t sub_25DD6A338()
{
  sub_25DD97964();
  sub_25DD6A230(v2, *v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  return sub_25DD979A4();
}

uint64_t sub_25DD6A3B8(uint64_t result)
{
  if (*v1 == 2)
  {
    return 0;
  }

  if (*v1 >= 2)
  {
    if (result)
    {
      return swift_unknownObjectRetain();
    }

    else
    {
      v2 = v1[1];
      sub_25DD6A8EC(*v1);
      *v1 = xmmword_25DD9E4F0;
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25DD6A450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for MultipartRawPartsToFramesSequence.StateMachine.ReceivedPartAction() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[7] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = sub_25DD6A5CC;

  return MEMORY[0x282200308](v7, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_25DD6A5CC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_25DD6A86C;
  }

  else
  {
    v3 = sub_25DD6A6E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25DD6A6E0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = v5 + *(type metadata accessor for MultipartRawPartsToFramesSequence.Serializer() + 36);
  sub_25DD69E70(v1, v2);
  sub_25DD6A9E0(v1);
  v7 = sub_25DD96814();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    v9 = type metadata accessor for MultipartFrame();
    v10 = 1;
  }

  else
  {
    (*(v8 + 32))(v0[2], v0[6], v7);
    v9 = type metadata accessor for MultipartFrame();
    swift_storeEnumTagMultiPayload();
    v10 = 0;
  }

  v12 = v0[6];
  v11 = v0[7];
  (*(*(v9 - 8) + 56))(v0[2], v10, 1, v9);

  v13 = v0[1];

  return v13();
}

uint64_t sub_25DD6A86C()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

unint64_t sub_25DD6A8D8(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_25DD6A8EC(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t sub_25DD6A918()
{
  result = qword_27FCC22E8;
  if (!qword_27FCC22E8)
  {
    sub_25DD96814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC22E8);
  }

  return result;
}

uint64_t sub_25DD6A970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD6A9E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD6AA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartRawPart();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD6AAAC(uint64_t a1)
{
  v2 = type metadata accessor for MultipartRawPart();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD6AB8C(int *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFC)
  {
    v11 = 2147483644;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = v12 + v13;
  v15 = v12 + 7;
  if (v11 < a2)
  {
    v16 = (v15 & 0xFFFFFFFFFFFFFFF8) + (v14 & ~v13) + 16;
    v17 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v11 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_27;
      }

      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_27;
      }
    }

    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    v27 = v11 + (v24 | v23);
    return (v27 + 1);
  }

LABEL_27:
  if (v10 < 0x7FFFFFFC)
  {
    v26 = *((v15 + ((a1 + v14) & ~v13)) & 0xFFFFFFFFFFFFFFF8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    v27 = v26 - 3;
    if (v27 < 0)
    {
      v27 = -1;
    }

    return (v27 + 1);
  }

  v25 = *(v9 + 48);

  return v25(a1);
}

void sub_25DD6AD4C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFC)
  {
    v12 = 2147483644;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = v11 + v13;
  v15 = (v11 + v13) & ~v13;
  v16 = v11 + 7;
  v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + v15 + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v16 & 0xFFFFFFF8) + v15 == -16)
    {
      v18 = a3 - v12 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
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
      if (v10 <= 0x7FFFFFFB)
      {
        v25 = ((v16 + ((a1 + v14) & ~v13)) & 0xFFFFFFFFFFFFFFF8);
        if (a2 >= 0x7FFFFFFD)
        {
          *v25 = (a2 - 2147483645);
          v25[1] = 0;
        }

        else
        {
          *v25 = (a2 + 2);
        }
      }

      else
      {
        v24 = *(v9 + 56);

        v24(a1, a2);
      }

      return;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v12 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

uint64_t sub_25DD6AF68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6AFA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25DD6B004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_25DD6B05C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6B098(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD6B0F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_25DD6B144(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_25DD6B17C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6B1B8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_25DD6B20C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25DD6B280()
{
  v0 = sub_25DD96814();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_25DD6B300()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v8 <= 0x3F)
  {
    result = a4(319, v6, v5);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD6B424(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFC)
  {
    v11 = 2147483644;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v11 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_28;
      }

      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      LODWORD(v14) = *a1;
    }

    v21 = v11 + (v14 | v20);
    return (v21 + 1);
  }

LABEL_28:
  if (v10 < 0x7FFFFFFC)
  {
    v23 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v21 = v23 - 3;
    if (v21 < 0)
    {
      v21 = -1;
    }

    return (v21 + 1);
  }

  v22 = *(v9 + 48);

  return v22(a1);
}

void sub_25DD6B5BC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFC)
  {
    v12 = 2147483644;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 <= 0x7FFFFFFB)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 >= 0x7FFFFFFD)
    {
      *v21 = (a2 - 2147483645);
      v21[1] = 0;
    }

    else
    {
      *v21 = (a2 + 2);
    }
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

uint64_t sub_25DD6B7CC(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_25DD6B808(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_25DD6B85C(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_25DD6B8A8(uint64_t *a1, uint64_t *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || (sub_25DD0F9FC(a1[1], a2[1]) & 1) == 0 || (sub_25DD0F9FC(a1[2], a2[2]) & 1) == 0 || (sub_25DD0F9FC(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a2[4];

  return sub_25DD0F9FC(v4, v5);
}

uint64_t sub_25DD6B934(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_25DD97984();
  sub_25DD6E49C(a1, v2[1]);
  sub_25DD6E49C(a1, v2[2]);
  sub_25DD6E49C(a1, v2[3]);
  v5 = v2[4];

  return sub_25DD6E49C(a1, v5);
}

uint64_t sub_25DD6B9A0()
{
  v1 = *v0;
  sub_25DD97964();
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25DD97984();
  sub_25DD6E49C(v7, v2);
  sub_25DD6E49C(v7, v3);
  sub_25DD6E49C(v7, v4);
  sub_25DD6E49C(v7, v5);
  return sub_25DD979A4();
}

uint64_t sub_25DD6BA30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_25DD6BA40()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25DD97964();
  sub_25DD97984();
  sub_25DD6E49C(v7, v2);
  sub_25DD6E49C(v7, v3);
  sub_25DD6E49C(v7, v4);
  sub_25DD6E49C(v7, v5);
  return sub_25DD979A4();
}

uint64_t sub_25DD6BAD0(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_25DD97984();
  sub_25DD6E49C(a1, v4);
  sub_25DD6E49C(a1, v5);
  sub_25DD6E49C(a1, v6);

  return sub_25DD6E49C(a1, v7);
}

uint64_t sub_25DD6BB50()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_25DD97964();
  sub_25DD97984();
  sub_25DD6E49C(v7, v2);
  sub_25DD6E49C(v7, v3);
  sub_25DD6E49C(v7, v4);
  sub_25DD6E49C(v7, v5);
  return sub_25DD979A4();
}

uint64_t sub_25DD6BBDC(uint64_t *a1, uint64_t *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = a1[2];
  if ((sub_25DD0F9FC(a1[1], a2[1]) & 1) == 0 || (sub_25DD0F9FC(v7, v6) & 1) == 0 || (sub_25DD0F9FC(v3, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_25DD0F9FC(v2, v4);
}

uint64_t sub_25DD6BC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
}

__n128 sub_25DD6BCEC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);
  v5 = *(v4 + 8);

  v6 = *(v4 + 16);

  v7 = *(v4 + 24);

  v8 = *(v4 + 32);

  result = *a1;
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  *(v4 + 32) = *(a1 + 32);
  return result;
}

__n128 sub_25DD6BD44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for MultipartValidationSequence() + 36);
  result = *a2;
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 32) = *(a2 + 32);
  return result;
}

double sub_25DD6BDD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v16 = &v21[-v15 - 8];
  (*(v7 + 16))(v11, v3, v6);
  sub_25DD96DF4();
  v17 = v3 + *(a1 + 36);
  v18 = *(v17 + 16);
  v22[0] = *v17;
  v22[1] = v18;
  v24 = *(&v22[0] + 1);
  v25 = v18;
  v23 = *(v17 + 32);
  v26 = v23;
  sub_25DD12B90(&v24, v21, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v25, v21, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v25 + 8, v21, &qword_27FCC2380, &qword_25DD9E8F0);
  sub_25DD12B90(&v26, v21, &qword_27FCC2380, &qword_25DD9E8F0);
  return sub_25DD6BFB0(v16, v22, a2);
}

double sub_25DD6BFB0@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 16))(a3, a1, AssociatedTypeWitness);
  v8 = sub_25DD6C1A8(a2, v13);
  (*(v7 + 8))(a1, AssociatedTypeWitness, v8);
  v9 = (a3 + *(type metadata accessor for MultipartValidationSequence.Iterator() + 36));
  v10 = v13[1];
  *v9 = v13[0];
  v9[1] = v10;
  result = *&v14;
  v12 = v15;
  v9[2] = v14;
  v9[3] = v12;
  return result;
}

uint64_t sub_25DD6C0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for MultipartValidationSequence.Validator();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t sub_25DD6C12C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for MultipartValidationSequence.Validator();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

__n128 sub_25DD6C1A8@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);

  v8 = *(a1 + 24);

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  result = v8;
  *(a2 + 24) = v8;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v8.n128_u64[0];
  return result;
}

uint64_t sub_25DD6C224(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v3[5] = v6;
  v3[6] = *(a2 + 24);
  v3[7] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(MEMORY[0x277D856D0] + 4);
  v10 = swift_task_alloc();
  v3[8] = v10;
  *v10 = v3;
  v10[1] = sub_25DD6C374;

  return MEMORY[0x282200308](v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_25DD6C374()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD6C688, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];
    v6 = v3[4];
    v7 = *(v3[3] + 36);
    v8 = swift_task_alloc();
    v3[10] = v8;
    v9 = type metadata accessor for MultipartValidationSequence.Validator();
    *v8 = v3;
    v8[1] = sub_25DD6C524;
    v10 = v3[5];
    v11 = v3[2];

    return sub_25DD6C750(v11, v10, v9);
  }
}

uint64_t sub_25DD6C524()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 40);
  v4 = *v1;
  v4[11] = v0;

  sub_25DD6A9E0(v3);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD6C6EC, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_25DD6C688()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25DD6C6EC()
{
  v1 = v0[11];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25DD6C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = v3;
  v4[2] = a1;
  v4[5] = *(a3 + 16);
  v4[6] = *(a3 + 24);
  Action = type metadata accessor for MultipartValidationSequence.StateMachine.NextAction();
  v4[7] = Action;
  v6 = *(*(Action - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD6C7F8, 0, 0);
}

uint64_t sub_25DD6C7F8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = type metadata accessor for MultipartValidationSequence.StateMachine();
  sub_25DD6D6E4(v6, v7, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_25DD6AA48(v0[8], v0[2]);
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v18 = v0[8];
    v19 = v0[2];
    v20 = type metadata accessor for MultipartRawPart();
    (*(*(v20 - 8) + 56))(v19, v9, 1, v20);

    v17 = v0[1];
  }

  else
  {
    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    v13 = *v10;
    v14 = v10[1];
    v15 = *(v10 + 16);
    type metadata accessor for MultipartValidationSequence.ValidatorError();
    swift_getWitnessTable();
    swift_allocError();
    *v16 = v13;
    *(v16 + 8) = v14;
    *(v16 + 16) = v15;
    swift_willThrow();

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_25DD6C980(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1BF14;

  return sub_25DD6C224(a1, a2);
}

uint64_t sub_25DD6CA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4.n128_f64[0] = sub_25DD6BDD0(a1, a2);
  v5 = *(*(a1 - 8) + 8);

  return v5(v2, a1, v4);
}

uint64_t sub_25DD6CA90(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_25DD6CAE4(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_25DD6CB38(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_25DD6CB84(uint64_t *a1, uint64_t *a2)
{
  if (((*a1 ^ *a2) & 1) != 0 || (sub_25DD0F9FC(a1[1], a2[1]) & 1) == 0 || (sub_25DD0F9FC(a1[2], a2[2]) & 1) == 0 || (sub_25DD0F9FC(a1[3], a2[3]) & 1) == 0 || (sub_25DD0F9FC(a1[4], a2[4]) & 1) == 0 || (sub_25DD0F9FC(a1[5], a2[5]) & 1) == 0 || (sub_25DD0F9FC(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[7];
  v5 = a2[7];

  return sub_25DD0F9FC(v4, v5);
}

uint64_t sub_25DD6CC40(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_25DD97984();
  sub_25DD6E49C(a1, v2[1]);
  sub_25DD6E49C(a1, v2[2]);
  sub_25DD6E49C(a1, v2[3]);
  sub_25DD6E49C(a1, v2[4]);
  sub_25DD6E49C(a1, v2[5]);
  sub_25DD6E49C(a1, v2[6]);
  v5 = v2[7];

  return sub_25DD6E49C(a1, v5);
}

uint64_t sub_25DD6CCD0()
{
  sub_25DD97964();
  sub_25DD6CC40(v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD6CD10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_25DD6CD30()
{
  sub_25DD97964();
  sub_25DD6CC40(v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD6CD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for MultipartValidationSequence.StateMachine.State();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

__n128 sub_25DD6CDDC(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v9[0] = *v2;
  v9[1] = v4;
  v5 = v2[3];
  v9[2] = v2[2];
  v9[3] = v5;
  (*(*(a2 - 8) + 8))(v9);
  v6 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  v2[2] = result;
  v2[3] = v8;
  return result;
}

uint64_t sub_25DD6CE50@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  return result;
}

uint64_t sub_25DD6CEC0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      return a6 == 3 && !(a5 | a4);
    }

    if (a6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (!a3)
    {
      if (!a6 && (sub_25DD0F9FC(a1, a4) & 1) != 0)
      {

        return sub_25DD0F9FC(a2, a5);
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_25DD975D4();
}

uint64_t sub_25DD6CFA8(__int128 *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      return MEMORY[0x25F8A3F90](1);
    }

    v8 = 3;
  }

  else
  {
    if (!a4)
    {
      MEMORY[0x25F8A3F90](0);
      sub_25DD6E49C(a1, a2);

      return sub_25DD6E49C(a1, a3);
    }

    v8 = 2;
  }

  MEMORY[0x25F8A3F90](v8);

  return sub_25DD96B94();
}

uint64_t sub_25DD6D070(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_25DD97964();
  sub_25DD6CFA8(v7, a1, a2, a3);
  return sub_25DD979A4();
}

uint64_t sub_25DD6D0E8()
{
  sub_25DD97964();
  sub_25DD6CFA8(v2, *v0, *(v0 + 8), *(v0 + 16));
  return sub_25DD979A4();
}

uint64_t sub_25DD6D148(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for MultipartRawPart();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Action = type metadata accessor for MultipartValidationSequence.StateMachine.NextAction();
  v7 = *(Action - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](Action);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v32 - v18;
  v20 = &v32 + *(v17 + 48) - v18;
  v34 = v7;
  v21 = *(v7 + 16);
  v21(&v32 - v18, a1, Action);
  v21(v20, v35, Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21(v13, v19, Action);
    v25 = *v13;
    v26 = *(v13 + 1);
    v27 = v13[16];
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = *v20;
      v30 = *(v20 + 1);
      v31 = v20[16];
      v24 = sub_25DD6CEC0(v25, v26, v27, v29, v30, v31);
      sub_25DD6E6A0(v25, v26, v27);
      sub_25DD6E6A0(v29, v30, v31);
      v15 = v34;
      goto LABEL_11;
    }

    sub_25DD6E6A0(v25, v26, v27);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v24 = 1;
      v15 = v34;
      goto LABEL_11;
    }

LABEL_10:
    v24 = 0;
    Action = TupleTypeMetadata2;
    goto LABEL_11;
  }

  v21(v11, v19, Action);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25DD6AAAC(v11);
    goto LABEL_10;
  }

  v23 = v33;
  sub_25DD6AA48(v20, v33);
  v24 = static MultipartRawPart.== infix(_:_:)(v11, v23);
  sub_25DD6AAAC(v23);
  sub_25DD6AAAC(v11);
  v15 = v34;
LABEL_11:
  (*(v15 + 8))(v19, Action);
  return v24 & 1;
}

uint64_t sub_25DD6D4A4(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MultipartRawPart();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_25DD6AA48(v13, v10);
      MEMORY[0x25F8A3F90](2);
      sub_25DD6E6F4();
      sub_25DD96AC4();
      return sub_25DD6AAAC(v10);
    }

    else
    {
      return MEMORY[0x25F8A3F90](0);
    }
  }

  else
  {
    v17 = *v13;
    v18 = *(v13 + 1);
    v19 = v13[16];
    MEMORY[0x25F8A3F90](1);
    sub_25DD6CFA8(a1, v17, v18, v19);
    return sub_25DD6E6A0(v17, v18, v19);
  }
}

uint64_t sub_25DD6D644(uint64_t a1)
{
  sub_25DD97964();
  sub_25DD6D4A4(v3, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD6D694(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  sub_25DD6D4A4(v4, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD6D6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_25DD6D148(a1, a2);
}

uint64_t sub_25DD6D6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2750, &qword_25DD9E900);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for MultipartRawPart();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD12B90(a1, v11, &qword_27FCC2750, &qword_25DD9E900);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    sub_25DD6AA48(v11, v16);
    v22 = MultipartRawPart.name.getter();
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      if (sub_25DD6DA20(v22, v23, *(v4 + 40)) & 1) != 0 || (sub_25DD6DA20(v24, v25, *(v4 + 48)) & 1) != 0 || (sub_25DD6DA20(v24, v25, *(v4 + 56)))
      {
        sub_25DD6DFB4(v24, v25);

LABEL_11:
        sub_25DD6AA48(v16, a3);
        v26 = *(a2 + 16);
        v27 = *(a2 + 24);
        type metadata accessor for MultipartValidationSequence.StateMachine.NextAction();
        return swift_storeEnumTagMultiPayload();
      }

      if (sub_25DD6DA20(v24, v25, *(v4 + 8)) & 1) != 0 || (sub_25DD6DA20(v24, v25, *(v4 + 24)))
      {
        sub_25DD6AAAC(v16);
        *a3 = v24;
        *(a3 + 8) = v25;
        v28 = 2;
      }

      else
      {
        if ((sub_25DD6DA20(v24, v25, *(v4 + 16)) & 1) != 0 || (sub_25DD6DA20(v24, v25, *(v4 + 32)) & 1) != 0 || *v4 == 1)
        {

          goto LABEL_11;
        }

        sub_25DD6AAAC(v16);
        *a3 = v24;
        *(a3 + 8) = v25;
        v28 = 1;
      }
    }

    else
    {
      if (*v4 == 1)
      {
        goto LABEL_11;
      }

      sub_25DD6AAAC(v16);
      *a3 = 0;
      *(a3 + 8) = 0;
      v28 = 3;
    }

    *(a3 + 16) = v28;
    v31 = *(a2 + 16);
    v32 = *(a2 + 24);
    type metadata accessor for MultipartValidationSequence.StateMachine.NextAction();
    return swift_storeEnumTagMultiPayload();
  }

  sub_25DD6A9E0(v11);
  v18 = *(v4 + 40);
  v17 = *(v4 + 48);
  if (*(v18 + 16) || *(v17 + 16))
  {
    *a3 = v18;
    *(a3 + 8) = v17;
    *(a3 + 16) = 0;
    v19 = *(a2 + 16);
    v20 = *(a2 + 24);
    type metadata accessor for MultipartValidationSequence.StateMachine.NextAction();
    swift_storeEnumTagMultiPayload();
  }

  v29 = *(a2 + 16);
  v30 = *(a2 + 24);
  type metadata accessor for MultipartValidationSequence.StateMachine.NextAction();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DD6DA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25DD97964();
  sub_25DD96B94();
  v7 = sub_25DD979A4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25DD975D4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25DD6DB58(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_25DD6E6A0(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

char *sub_25DD6DB9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  if (a3 > 1u)
  {
    goto LABEL_6;
  }

  if (!a3)
  {

    v6 = sub_25DD6DE94(v5, a1);
    a1 = v6;
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = sub_25DD6E320(*(v6 + 16), 0);
      v9 = sub_25DD1849C(&v19, v8 + 4, v7, a1);

      sub_25DD07900();
      if (v9 != v7)
      {
        __break(1u);
LABEL_6:
        if (v4 != 2)
        {
          return 0xD00000000000006ALL;
        }

        v19 = 0;
        v20 = 0xE000000000000000;
        v10 = a2;

        sub_25DD97124();
        MEMORY[0x25F8A3200](0xD00000000000002ALL, 0x800000025DDAB0D0);
        MEMORY[0x25F8A3200](a1, v10);
        sub_25DD6E6A0(a1, v10, 2u);
        v11 = "an one value of the part '";
        v12 = 0xD000000000000050;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v19 = v8;
    sub_25DD6E2B4(&v19);

    v19 = 0;
    v20 = 0xE000000000000000;
    sub_25DD97124();

    v19 = 0xD000000000000018;
    v20 = 0x800000025DDAB250;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
    sub_25DD0CFAC();
    v16 = sub_25DD96AD4();
    v18 = v17;

    MEMORY[0x25F8A3200](v16, v18);

    v12 = 46;
    v14 = 0xE100000000000000;
    goto LABEL_13;
  }

  v19 = 0;
  v20 = 0xE000000000000000;

  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD00000000000001ALL, 0x800000025DDAB160);
  MEMORY[0x25F8A3200](a1, a2);
  sub_25DD6E6A0(a1, a2, 1u);
  v11 = "Received an unknown part '";
  v12 = 0xD000000000000053;
LABEL_9:
  v14 = v11 | 0x8000000000000000;
LABEL_13:
  MEMORY[0x25F8A3200](v12, v14);
  return v19;
}

uint64_t sub_25DD6DE94(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_25DD1176C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD6DFB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_25DD97964();
  sub_25DD96B94();
  v7 = sub_25DD979A4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_25DD975D4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25DD11C9C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_25DD6E0F0(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_25DD6E0F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_25DD970C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_25DD97964();

        sub_25DD96B94();
        v15 = sub_25DD979A4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25DD6E2B4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25DD6F378(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25DD6E3A4(v5);
  *a1 = v2;
  return result;
}

void *sub_25DD6E320(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_25DD6E3A4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25DD96D64();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25DD15630(v7, v8, a1, v4);
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
    return sub_25DD15560(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD6E49C(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_25DD979A4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_25DD97964();

    sub_25DD96B94();
    v15 = sub_25DD979A4();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x25F8A3F90](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD6E6A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }
  }
}

unint64_t sub_25DD6E6F4()
{
  result = qword_27FCC2758;
  if (!qword_27FCC2758)
  {
    type metadata accessor for MultipartRawPart();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2758);
  }

  return result;
}

uint64_t sub_25DD6E74C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }
  }
}

unint64_t sub_25DD6E7A4()
{
  result = qword_27FCC2760;
  if (!qword_27FCC2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2760);
  }

  return result;
}

uint64_t sub_25DD6E894(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD6E90C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_25DD6EA48(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 8) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_25DD6EC0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for MultipartValidationSequence.Validator();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD6ECBC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *(((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

double sub_25DD6EE4C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 64);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 64;
  if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFC0)
  {
    v15 = a3 - v13 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v13 < a3)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (a2 > v13)
  {
    if (((v12 + 7) & 0xFFFFFFF8) == 0xFFFFFFC0)
    {
      v19 = a2 - v13;
    }

    else
    {
      v19 = 1;
    }

    if (((v12 + 7) & 0xFFFFFFF8) != 0xFFFFFFC0)
    {
      v20 = ~v13 + a2;
      bzero(a1, v14);
      *a1 = v20;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        *(a1 + v14) = v19;
      }

      else
      {
        *(a1 + v14) = v19;
      }
    }

    else if (v18)
    {
      *(a1 + v14) = v19;
    }

    return result;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v14) = 0;
  }

  else if (v18)
  {
    *(a1 + v14) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v11 < 0x7FFFFFFF)
  {
    v22 = (a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v22 + 56) = 0;
      result = 0.0;
      *(v22 + 40) = 0u;
      *(v22 + 24) = 0u;
      *(v22 + 8) = 0u;
      *v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 8) = (a2 - 1);
    }
  }

  else
  {
    v21 = *(v9 + 56);

    v21(a1, a2);
  }

  return result;
}

uint64_t sub_25DD6F040()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_25DD6F090()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6F0D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal27MultipartValidationSequenceV12StateMachineV11ActionErrorOyx__G(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_25DD6F134(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25DD6F164(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for MultipartValidationSequence.StateMachine.ActionError();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for MultipartRawPart();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD6F1DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6F218(uint64_t a1, int a2)
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

uint64_t sub_25DD6F260(uint64_t result, int a2, int a3)
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

uint64_t sub_25DD6F2B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25DD6F2EC(uint64_t a1, unsigned int a2)
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

uint64_t sub_25DD6F334(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Optional<A>.requiredBoundary()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (!v2 || *(v1 + 32) != 1 || ((v3 = *(v1 + 16), v4 = *(v1 + 24), *v1 == 0x72617069746C756DLL) ? (v5 = *(v1 + 8) == 0xE900000000000074) : (v5 = 0), !v5 && (sub_25DD975D4() & 1) == 0 || (v3 != 0x7461642D6D726F66 || v4 != 0xE900000000000061) && (sub_25DD975D4() & 1) == 0))
  {
    v11 = 4;
LABEL_15:
    sub_25DD01034();
    v12 = swift_allocError();
    *v13 = v11;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0;
    *(v13 + 48) = 20;
    v10 = v12;
    swift_willThrow();
    return v10;
  }

  if (!*(v2 + 16) || (v6 = sub_25DCFF99C(0x797261646E756F62, 0xE800000000000000), (v7 & 1) == 0))
  {
    v11 = 5;
    goto LABEL_15;
  }

  v8 = (*(v2 + 56) + 16 * v6);
  v10 = *v8;
  v9 = v8[1];

  return v10;
}

uint64_t sub_25DD6F500(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_25DD6F510(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD979F4();
  sub_25DD97A14();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

unint64_t sub_25DD6F60C()
{
  result = qword_27FCC2768;
  if (!qword_27FCC2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2768);
  }

  return result;
}

unint64_t sub_25DD6F664()
{
  result = qword_27FCC2770;
  if (!qword_27FCC2770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2770);
  }

  return result;
}

uint64_t sub_25DD6F6B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_25DD6F6CC()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_25DD6F6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25DD97374();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_25DD6F734(uint64_t a1)
{
  v2 = sub_25DD6F85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25DD6F770(uint64_t a1)
{
  v2 = sub_25DD6F85C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_25DD6F7C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25DD6F808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25DD6F85C()
{
  result = qword_27FCC2778;
  if (!qword_27FCC2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2778);
  }

  return result;
}

uint64_t sub_25DD6F8B0()
{
  v0 = sub_25DD972F4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD6F904(char a1)
{
  if (a1)
  {
    return 43;
  }

  else
  {
    return 3158565;
  }
}

uint64_t sub_25DD6F928(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 43;
  }

  else
  {
    v4 = 3158565;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  if (*a2)
  {
    v6 = 43;
  }

  else
  {
    v6 = 3158565;
  }

  if (*a2)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25DD975D4();
  }

  return v9 & 1;
}

uint64_t sub_25DD6F9BC()
{
  v1 = *v0;
  sub_25DD97964();
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DD6FA2C()
{
  *v0;
  sub_25DD96B94();
}

uint64_t sub_25DD6FA88()
{
  v1 = *v0;
  sub_25DD97964();
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DD6FAF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25DD972F4();

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

void sub_25DD6FB54(uint64_t *a1@<X8>)
{
  v2 = 3158565;
  if (*v1)
  {
    v2 = 43;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25DD6FBF0(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_25DD19D44(a1, v1 + 8);
}

uint64_t sub_25DD6FC30@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, __int128 *a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3 & 1;
  return sub_25DD19D44(a4, (a5 + 8));
}

unint64_t sub_25DD6FC50()
{
  result = qword_27FCC2780;
  if (!qword_27FCC2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2780);
  }

  return result;
}

unint64_t sub_25DD6FCA8()
{
  result = qword_27FCC2788;
  if (!qword_27FCC2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2788);
  }

  return result;
}

uint64_t sub_25DD6FCFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD6FD44(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_25DD6FDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27D8, &qword_25DD9F428);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v9 = &v43 - v8;
  v10 = type metadata accessor for URIEncodedNode(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](&v43 - v14);
  v17 = &v43 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v23 = &v43 - v20;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v45 = v18;
  v46 = v22;
  v47 = v21;
  v25 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v49 = *(v19 + 72);
  v44 = &v43 - v20;
  while (1)
  {
    sub_25DD729CC(v26, v23, type metadata accessor for URIEncodedNode);
    sub_25DD729CC(v27, v17, type metadata accessor for URIEncodedNode);
    v28 = *(v50 + 48);
    sub_25DD729CC(v23, v9, type metadata accessor for URIEncodedNode);
    sub_25DD729CC(v17, &v9[v28], type metadata accessor for URIEncodedNode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_22;
        }

        goto LABEL_6;
      }

      v36 = v47;
      sub_25DD729CC(v9, v47, type metadata accessor for URIEncodedNode);
      v37 = *v36;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_20;
      }

      v38 = sub_25DD70498(v37, *&v9[v28]);
      goto LABEL_17;
    }

    if (!EnumCaseMultiPayload)
    {
      break;
    }

    v39 = v46;
    sub_25DD729CC(v9, v46, type metadata accessor for URIEncodedNode);
    v40 = *v39;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_20:

      goto LABEL_22;
    }

    v38 = sub_25DD6FDC8(v40, *&v9[v28]);
LABEL_17:
    v41 = v38;

    if ((v41 & 1) == 0)
    {
LABEL_18:
      sub_25DD73000(v9, type metadata accessor for URIEncodedNode);
      goto LABEL_23;
    }

LABEL_6:
    sub_25DD73000(v9, type metadata accessor for URIEncodedNode);
    sub_25DD73000(v17, type metadata accessor for URIEncodedNode);
    sub_25DD73000(v23, type metadata accessor for URIEncodedNode);
    v27 += v49;
    v26 += v49;
    if (!--v24)
    {
      return 1;
    }
  }

  v30 = v17;
  v31 = v10;
  v32 = v45;
  sub_25DD729CC(v9, v45, type metadata accessor for URIEncodedNode);
  v33 = v31;
  if (!swift_getEnumCaseMultiPayload())
  {
    v34 = v48;
    sub_25DD73060(&v9[v28], v48, type metadata accessor for URIEncodedNode.Primitive);
    v35 = sub_25DD71DEC(v32, v34);
    sub_25DD73000(v34, type metadata accessor for URIEncodedNode.Primitive);
    sub_25DD73000(v32, type metadata accessor for URIEncodedNode.Primitive);
    v10 = v33;
    v17 = v30;
    v23 = v44;
    if ((v35 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_6;
  }

  sub_25DD73000(v32, type metadata accessor for URIEncodedNode.Primitive);
  v17 = v30;
  v23 = v44;
LABEL_22:
  sub_25DD114CC(v9, &qword_27FCC27D8, &qword_25DD9F428);
LABEL_23:
  sub_25DD73000(v17, type metadata accessor for URIEncodedNode);
  sub_25DD73000(v23, type metadata accessor for URIEncodedNode);
  return 0;
}

uint64_t sub_25DD702EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_25DD729CC(v14, v11, type metadata accessor for URIEncodedNode.Primitive);
        sub_25DD729CC(v15, v8, type metadata accessor for URIEncodedNode.Primitive);
        v17 = sub_25DD71DEC(v11, v8);
        sub_25DD73000(v8, type metadata accessor for URIEncodedNode.Primitive);
        sub_25DD73000(v11, type metadata accessor for URIEncodedNode.Primitive);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_25DD70498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27E0, &qword_25DD9F430);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = (&v51 - v17);
  v18 = 0;
  v52 = a1;
  v19 = *(a1 + 64);
  v51 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
    v56 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
    v25 = v55;
LABEL_16:
    v30 = (*(v52 + 48) + 16 * v24);
    v31 = *v30;
    v32 = v30[1];
    sub_25DD729CC(*(v52 + 56) + *(v5 + 72) * v24, v11, type metadata accessor for URIEncodedNode);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27E8, &qword_25DD9F438);
    v34 = *(v33 + 48);
    *v25 = v31;
    v25[1] = v32;
    sub_25DD73060(v11, v25 + v34, type metadata accessor for URIEncodedNode);
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);

LABEL_17:
    v35 = v54;
    sub_25DD730C8(v25, v54);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27E8, &qword_25DD9F438);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = v11;
    v40 = v5;
    v41 = *(v36 + 48);
    v43 = *v35;
    v42 = v35[1];
    sub_25DD73060(v35 + v41, v9, type metadata accessor for URIEncodedNode);
    v44 = v53;
    v45 = sub_25DCFF99C(v43, v42);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      sub_25DD73000(v9, type metadata accessor for URIEncodedNode);
      return 0;
    }

    v48 = *(v44 + 56);
    v5 = v40;
    v11 = v39;
    sub_25DD729CC(v48 + *(v40 + 72) * v45, v39, type metadata accessor for URIEncodedNode);
    v49 = sub_25DD725C4(v39, v9);
    sub_25DD73000(v39, type metadata accessor for URIEncodedNode);
    result = sub_25DD73000(v9, type metadata accessor for URIEncodedNode);
    v22 = v56;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v23 <= v18 + 1)
  {
    v26 = v18 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  v25 = v55;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27E8, &qword_25DD9F438);
      (*(*(v50 - 8) + 56))(v25, 1, 1, v50);
      v56 = 0;
      v18 = v27;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v18;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD70920(uint64_t a1)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD729CC(v1, v6, type metadata accessor for URIEncodedNode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_25DD73000(v1, type metadata accessor for URIEncodedNode);
      sub_25DD729CC(a1, v1, type metadata accessor for URIEncodedNode.Primitive);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_25DD72978();
      swift_allocError();
      *v10 = 0;
      swift_willThrow();
      return sub_25DD73000(v6, type metadata accessor for URIEncodedNode);
    }
  }

  else
  {
    sub_25DD73000(v6, type metadata accessor for URIEncodedNode);
    sub_25DD72978();
    swift_allocError();
    *v8 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_25DD70AC4(uint64_t a1)
{
  v39 = a1;
  v2 = v1;
  v3 = type metadata accessor for URIEncodedNode(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v39 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = (&v39 - v12);
  sub_25DD729CC(v1, &v39 - v12, type metadata accessor for URIEncodedNode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25DD72978();
      swift_allocError();
      *v15 = 4;
      swift_willThrow();
      return sub_25DD73000(v13, type metadata accessor for URIEncodedNode);
    }

    v11 = *v13;
    v22 = sub_25DD97A14();
    if (v23)
    {
      sub_25DD72978();
      swift_allocError();
      *v24 = 5;
      swift_willThrow();
    }

    v34 = v22;
    sub_25DD73000(v2, type metadata accessor for URIEncodedNode);
    if (v34 == v11[2])
    {
      swift_storeEnumTagMultiPayload();
      sub_25DD73000(v2, type metadata accessor for URIEncodedNode);
      sub_25DD729CC(v39, v8, type metadata accessor for URIEncodedNode);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_12:
        v36 = v11[2];
        v35 = v11[3];
        if (v36 >= v35 >> 1)
        {
          v11 = sub_25DD71434(v35 > 1, v36 + 1, 1, v11);
        }

        v11[2] = v36 + 1;
        sub_25DD73060(v8, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, type metadata accessor for URIEncodedNode);
        goto LABEL_17;
      }

LABEL_20:
      v11 = sub_25DD71434(0, v11[2] + 1, 1, v11);
      goto LABEL_12;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_25DD73000(v1, type metadata accessor for URIEncodedNode);
    v17 = *v13;
    swift_storeEnumTagMultiPayload();
    sub_25DD73000(v1, type metadata accessor for URIEncodedNode);
    v18 = sub_25DD979F4();
    v20 = v19;
    sub_25DD729CC(v39, v11, type metadata accessor for URIEncodedNode);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v17;
    sub_25DD71984(v11, v18, v20, isUniquelyReferenced_nonNull_native);

    v11 = v40;
  }

  else
  {
    sub_25DD73000(v1, type metadata accessor for URIEncodedNode);
    v25 = sub_25DD97A14();
    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2798, &qword_25DD9F280);
      v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27A0, &qword_25DD9F288) - 8);
      v28 = *(*v27 + 72);
      v29 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_25DD98100;
      v31 = (v30 + v29);
      v32 = v27[14];
      *v31 = sub_25DD979F4();
      v31[1] = v33;
      sub_25DD729CC(v39, v31 + v32, type metadata accessor for URIEncodedNode);
      v11 = sub_25DD72A54(v30);
      swift_setDeallocating();
      sub_25DD114CC(v31, &qword_27FCC27A0, &qword_25DD9F288);
      swift_deallocClassInstance();
    }

    else
    {
      if (v25)
      {
        goto LABEL_19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27A8, qword_25DD9F290);
      v37 = *(v4 + 72);
      v38 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v11 = swift_allocObject();
      *(v11 + 1) = xmmword_25DD98100;
      sub_25DD729CC(v39, v11 + v38, type metadata accessor for URIEncodedNode);
    }
  }

LABEL_17:
  *v2 = v11;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DD7101C()
{
  v1 = v0;
  v2 = type metadata accessor for URIEncodedNode(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD729CC(v1, v5, type metadata accessor for URIEncodedNode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_25DD73000(v1, type metadata accessor for URIEncodedNode);
    *v1 = MEMORY[0x277D84F90];
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_25DD72978();
      swift_allocError();
      *v7 = 3;
      swift_willThrow();
    }

    return sub_25DD73000(v5, type metadata accessor for URIEncodedNode);
  }
}

uint64_t sub_25DD71160(uint64_t a1)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (v19 - v9);
  sub_25DD729CC(v1, v19 - v9, type metadata accessor for URIEncodedNode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_25DD73000(v1, type metadata accessor for URIEncodedNode);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27A8, qword_25DD9F290);
    v15 = *(v4 + 72);
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25DD98100;
    sub_25DD729CC(a1, v12 + v16, type metadata accessor for URIEncodedNode);
LABEL_9:
    *v1 = v12;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_25DD73000(v1, type metadata accessor for URIEncodedNode);
    v12 = *v10;
    swift_storeEnumTagMultiPayload();
    sub_25DD73000(v1, type metadata accessor for URIEncodedNode);
    sub_25DD729CC(a1, v8, type metadata accessor for URIEncodedNode);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_25DD71434(0, *(v12 + 16) + 1, 1, v12);
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_25DD71434(v13 > 1, v14 + 1, 1, v12);
    }

    *(v12 + 16) = v14 + 1;
    sub_25DD73060(v8, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for URIEncodedNode);
    goto LABEL_9;
  }

  sub_25DD72978();
  swift_allocError();
  *v18 = 2;
  swift_willThrow();
  return sub_25DD73000(v10, type metadata accessor for URIEncodedNode);
}

size_t sub_25DD71434(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27A8, qword_25DD9F290);
  v10 = *(type metadata accessor for URIEncodedNode(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URIEncodedNode(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25DD7160C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for URIEncodedNode(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27D0, &qword_25DD9F420);
  v44 = a2;
  result = sub_25DD972B4();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_25DD73060(v31, v45, type metadata accessor for URIEncodedNode);
      }

      else
      {
        sub_25DD729CC(v31, v45, type metadata accessor for URIEncodedNode);
      }

      v32 = *(v12 + 40);
      sub_25DD97964();
      sub_25DD96B94();
      result = sub_25DD979A4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_25DD73060(v45, *(v12 + 56) + v30 * v20, type metadata accessor for URIEncodedNode);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_25DD71984(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25DCFF99C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25DD71B94();
      goto LABEL_7;
    }

    sub_25DD7160C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_25DCFF99C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25DD978F4();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for URIEncodedNode(0) - 8) + 72) * v12;

    return sub_25DD72F2C(a1, v20);
  }

LABEL_13:
  sub_25DD71AE8(v12, a2, a3, a1, v18);
}

uint64_t sub_25DD71AE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for URIEncodedNode(0);
  result = sub_25DD73060(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for URIEncodedNode);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_25DD71B94()
{
  v1 = v0;
  v2 = type metadata accessor for URIEncodedNode(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27D0, &qword_25DD9F420);
  v5 = *v0;
  v6 = sub_25DD972A4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_25DD729CC(*(v5 + 56) + v27, v31, type metadata accessor for URIEncodedNode);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_25DD73060(v26, *(v28 + 56) + v27, type metadata accessor for URIEncodedNode);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_25DD71DEC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_25DD967C4();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v44 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v44 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v44 - v18);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27F8, &qword_25DD9F448);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v44 - v25;
  v27 = (&v44 + *(v24 + 56) - v25);
  sub_25DD729CC(a1, &v44 - v25, type metadata accessor for URIEncodedNode.Primitive);
  sub_25DD729CC(v47, v27, type metadata accessor for URIEncodedNode.Primitive);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_25DD729CC(v26, v16, type metadata accessor for URIEncodedNode.Primitive);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = *v16 == *v27;
LABEL_11:
        v31 = v29;
        goto LABEL_16;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_25DD729CC(v26, v13, type metadata accessor for URIEncodedNode.Primitive);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v29 = *v13 == *v27;
        goto LABEL_11;
      }
    }

    else
    {
      sub_25DD729CC(v26, v10, type metadata accessor for URIEncodedNode.Primitive);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v33 = v44;
        v32 = v45;
        v34 = v27;
        v35 = v46;
        (*(v45 + 32))(v44, v34, v46);
        v31 = sub_25DD967A4();
        v36 = *(v32 + 8);
        v36(v33, v35);
        v36(v10, v35);
LABEL_16:
        sub_25DD73000(v26, type metadata accessor for URIEncodedNode.Primitive);
        return v31 & 1;
      }

      (*(v45 + 8))(v10, v46);
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    sub_25DD729CC(v26, v19, type metadata accessor for URIEncodedNode.Primitive);
    v38 = *v19;
    v37 = v19[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v38 == *v27 && v37 == *(v27 + 1))
      {
        v43 = *(v27 + 1);
      }

      else
      {
        v40 = *(v27 + 1);
        v41 = sub_25DD975D4();

        if ((v41 & 1) == 0)
        {
          sub_25DD73000(v26, type metadata accessor for URIEncodedNode.Primitive);
LABEL_27:
          v31 = 0;
          return v31 & 1;
        }
      }

      sub_25DD73000(v26, type metadata accessor for URIEncodedNode.Primitive);
      v31 = 1;
      return v31 & 1;
    }

LABEL_26:
    sub_25DD114CC(v26, &qword_27FCC27F8, &qword_25DD9F448);
    goto LABEL_27;
  }

  sub_25DD729CC(v26, v21, type metadata accessor for URIEncodedNode.Primitive);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_26;
  }

  v30 = *v21 ^ *v27;
  sub_25DD73000(v26, type metadata accessor for URIEncodedNode.Primitive);
  v31 = v30 ^ 1;
  return v31 & 1;
}

uint64_t sub_25DD722DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27F0, &qword_25DD9F440);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v24 - v18;
  v20 = *(v17 + 56);
  sub_25DD729CC(a1, &v24 - v18, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
  sub_25DD729CC(a2, &v19[v20], type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25DD729CC(v19, v12, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    v21 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = sub_25DD702EC(v21, *&v19[v20]);

LABEL_9:
      sub_25DD73000(v19, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
      return v22 & 1;
    }
  }

  else
  {
    sub_25DD729CC(v19, v14, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_25DD73060(&v19[v20], v7, type metadata accessor for URIEncodedNode.Primitive);
      v22 = sub_25DD71DEC(v14, v7);
      sub_25DD73000(v7, type metadata accessor for URIEncodedNode.Primitive);
      sub_25DD73000(v14, type metadata accessor for URIEncodedNode.Primitive);
      goto LABEL_9;
    }

    sub_25DD73000(v14, type metadata accessor for URIEncodedNode.Primitive);
  }

  sub_25DD114CC(v19, &qword_27FCC27F0, &qword_25DD9F440);
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_25DD725C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v30 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27D8, &qword_25DD9F428);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  sub_25DD729CC(a1, &v30 - v21, type metadata accessor for URIEncodedNode);
  sub_25DD729CC(a2, &v22[v23], type metadata accessor for URIEncodedNode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25DD729CC(v22, v17, type metadata accessor for URIEncodedNode);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_25DD73000(v17, type metadata accessor for URIEncodedNode.Primitive);
LABEL_14:
        sub_25DD114CC(v22, &qword_27FCC27D8, &qword_25DD9F428);
        v28 = 0;
        return v28 & 1;
      }

      sub_25DD73060(&v22[v23], v7, type metadata accessor for URIEncodedNode.Primitive);
      v28 = sub_25DD71DEC(v17, v7);
      sub_25DD73000(v7, type metadata accessor for URIEncodedNode.Primitive);
      sub_25DD73000(v17, type metadata accessor for URIEncodedNode.Primitive);
LABEL_16:
      sub_25DD73000(v22, type metadata accessor for URIEncodedNode);
      return v28 & 1;
    }

    sub_25DD729CC(v22, v15, type metadata accessor for URIEncodedNode);
    v27 = *v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = sub_25DD6FDC8(v27, *&v22[v23]);
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_25DD729CC(v22, v12, type metadata accessor for URIEncodedNode);
    v25 = *v12;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v26 = sub_25DD70498(v25, *&v22[v23]);
LABEL_10:
      v28 = v26;

      goto LABEL_16;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_14;
  }

  sub_25DD73000(v22, type metadata accessor for URIEncodedNode);
  v28 = 1;
  return v28 & 1;
}

unint64_t sub_25DD72978()
{
  result = qword_27FCC2790;
  if (!qword_27FCC2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2790);
  }

  return result;
}

uint64_t sub_25DD729CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25DD72A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27A0, &qword_25DD9F288);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27D0, &qword_25DD9F420);
    v8 = sub_25DD972C4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25DD72F90(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_25DCFF99C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for URIEncodedNode(0);
      result = sub_25DD73060(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for URIEncodedNode);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25DD72C30()
{
  result = qword_27FCC27B0;
  if (!qword_27FCC27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC27B0);
  }

  return result;
}

void sub_25DD72C84()
{
  type metadata accessor for URIEncodedNode.Primitive(319);
  if (v0 <= 0x3F)
  {
    sub_25DD72EC8(319, &qword_27FCC27B8, type metadata accessor for URIEncodedNode);
    if (v1 <= 0x3F)
    {
      sub_25DD72D28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_25DD72D28()
{
  if (!qword_27FCC27C0)
  {
    type metadata accessor for URIEncodedNode(255);
    v0 = sub_25DD96A94();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC27C0);
    }
  }
}

uint64_t sub_25DD72D90()
{
  result = sub_25DD967C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25DD72E38()
{
  type metadata accessor for URIEncodedNode.Primitive(319);
  if (v0 <= 0x3F)
  {
    sub_25DD72EC8(319, &qword_27FCC27C8, type metadata accessor for URIEncodedNode.Primitive);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25DD72EC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25DD96D84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25DD72F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD72F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27A0, &qword_25DD9F288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD73000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DD73060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD730C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC27E0, &qword_25DD9F430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD7313C(uint64_t a1, uint64_t a2)
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
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      v6 = v5 && *(v3 - 3) >> 16 == *(i - 3) >> 16;
      v7 = v6 && *(v3 - 2) >> 16 == *(i - 2) >> 16;
      if (!v7 && (sub_25DD97364() & 1) == 0)
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

uint64_t sub_25DD731F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8A3F90](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 1);
      v8 = *v5;
      result = sub_25DD96AC4();
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25DD73288(uint64_t a1)
{
  sub_25DD97964();
  v2 = *(a1 + 16);
  MEMORY[0x25F8A3F90](v2);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 1);
      v7 = *v3;
      sub_25DD96AC4();
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD73334()
{
  v1 = *v0;
  result = MEMORY[0x25F8A3F90](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 1);
      v7 = *v4;
      result = sub_25DD96AC4();
      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25DD733C8()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 1);
      v7 = *v3;
      sub_25DD96AC4();
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD7347C()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];

  return v1;
}

uint64_t sub_25DD734C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[4];

  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
  return result;
}

uint64_t sub_25DD7350C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_25DD7313C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];

  return sub_25DD73570(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_25DD73570(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_25DD97364() & 1;
  }
}

uint64_t sub_25DD735F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_25DD73600(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  if ((sub_25DD7313C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_25DD73570(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_25DD736A8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0x3E7974706D653CLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2800, qword_25DD9F450);
  sub_25DD73758();
  sub_25DD07CBC();
  v1 = sub_25DD96CF4();

  return v1;
}

unint64_t sub_25DD73758()
{
  result = qword_27FCC2808;
  if (!qword_27FCC2808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2800, qword_25DD9F450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2808);
  }

  return result;
}

unint64_t sub_25DD737C0()
{
  result = qword_27FCC2810;
  if (!qword_27FCC2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2810);
  }

  return result;
}

uint64_t sub_25DD73814()
{
  if (!*(*v0 + 16))
  {
    return 0x3E7974706D653CLL;
  }

  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2800, qword_25DD9F450);
  sub_25DD73758();
  sub_25DD07CBC();
  v1 = sub_25DD96CF4();

  return v1;
}

uint64_t sub_25DD738D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25DD73920(uint64_t result, int a2, int a3)
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

__n128 sub_25DD73978@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_25DD73A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t))
{
  v11 = v10;
  type metadata accessor for URIValueFromNodeDecoder();

  v14 = sub_25DD96CA4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_25DD739D0(v11, v26);
  sub_25DD73C08(a4, a5, a6, a7, v14, v16, v18, v20, v26);
  a10(a1, a8, a9);
}

uint64_t sub_25DD73BB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t sub_25DD73C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  sub_25DD73CB0(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

uint64_t sub_25DD73CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a5;
  *(v9 + 24) = a6;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  sub_25DD08A7C(a9 + 8, v9 + 48);
  sub_25DD739D0(a9, v9 + 88);
  sub_25DD739D0(a9, v17);
  sub_25DD8C788(v17, a1, a2, a3, a4, v18);
  v14 = v18[0];
  *(v9 + 152) = v18[1];
  v15 = v18[3];
  *(v9 + 168) = v18[2];
  *(v9 + 184) = v15;
  *(v9 + 200) = v18[4];
  *(v9 + 136) = v14;
  *(v9 + 232) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 248) = -1;
  *(v9 + 256) = 0;
  *(v9 + 264) = -1;
  *(v9 + 272) = 0;
  *(v9 + 280) = -1;
  sub_25DD73D9C(a9);
  *(v9 + 288) = MEMORY[0x277D84F90];
  return v9;
}

uint64_t sub_25DD73DF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v23 = a2;
  v24 = a3;
  v6 = *v3;
  v7 = sub_25DD967C4();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  result = swift_beginAccess();
  if (*(*(v4 + 36) + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (swift_dynamicCastMetatype())
  {

    v14 = nullsub_1(v19);
    v25 = v14;
    sub_25DD74188();
    sub_25DD741DC(&qword_27FCC2828, 255, MEMORY[0x277CC9578]);
    v20 = v28;
    sub_25DD97624();
    v6 = v20;
    if (!v20)
    {
LABEL_9:
      swift_dynamicCast();

      result = (*(v10 + 32))(v24, v16, a1);
      goto LABEL_11;
    }

    if (!*(*(v4 + 36) + 16))
    {
      return result;
    }

    __break(1u);
  }

  v26 = v6;
  v27 = sub_25DD741DC(&qword_27FCC2818, v18, type metadata accessor for URIValueFromNodeDecoder);
  v25 = v4;

  v21 = v28;
  result = sub_25DD96E64();
  if (v21)
  {
    if (!*(*(v4 + 36) + 16))
    {
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  v22 = *(v10 + 32);
  v22(v16, v14, a1);
  result = (v22)(v24, v16, a1);
LABEL_11:
  if (*(*(v4 + 36) + 16))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

unint64_t sub_25DD74130@<X0>(uint64_t *a1@<X8>)
{

  v3 = nullsub_1(v2);
  a1[3] = &type metadata for URISingleValueDecodingContainer;
  result = sub_25DD74188();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_25DD74188()
{
  result = qword_27FCC2820;
  if (!qword_27FCC2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2820);
  }

  return result;
}

uint64_t sub_25DD741DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_25DD74224@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(v3 + 88))
  {
    v7 = a2;
    if (*(v3 + 88) == 1)
    {
      result = sub_25DD74330();
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_25DD74508();
      if (v4)
      {
        return result;
      }
    }

    v9 = *(result + 16);

    if (!v9)
    {
      return (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
    }

    a2 = v7;
  }

  result = sub_25DD73DF0(a1, a2, a3);
  if (!v4)
  {
    return (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
  }

  return result;
}

void *sub_25DD74330()
{
  v2 = *(v0 + 264);
  if (v2 == 255)
  {
    v17 = v0;
    v4 = sub_25DD8D834(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
    if (v1)
    {
      v3 = v1;
      swift_willThrow();
    }

    else
    {
      v5 = *(v4 + 2);
      if (v5)
      {
        v20 = MEMORY[0x277D84F90];
        v6 = v4;
        sub_25DD76594(0, v5, 0);
        v3 = v20;
        v7 = (v6 + 64);
        do
        {
          v8 = *(v7 - 2);
          v18 = *(v7 - 3);
          v10 = *(v7 - 1);
          v9 = *v7;
          v12 = v20[2];
          v11 = v20[3];

          if (v12 >= v11 >> 1)
          {
            sub_25DD76594((v11 > 1), v12 + 1, 1);
            v0 = v17;
          }

          v20[2] = v12 + 1;
          v13 = &v20[4 * v12];
          v13[4] = v18;
          v13[5] = v8;
          v13[6] = v10;
          v13[7] = v9;
          v7 += 5;
          --v5;
        }

        while (v5);
      }

      else
      {

        v3 = MEMORY[0x277D84F90];
      }

      v14 = *(v0 + 256);
      *(v0 + 256) = v3;
      v15 = *(v0 + 264);
      *(v0 + 264) = 0;
      swift_bridgeObjectRetain_n();
      sub_25DCFE0D4(v14, v15);
    }
  }

  else
  {
    v3 = *(v0 + 256);
    if (v2)
    {
      v19 = *(v0 + 256);
      sub_25DD77894(v3, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_25DCFE138(*(v0 + 256), v2);
    }
  }

  return v3;
}

uint64_t sub_25DD74508()
{
  v2 = *(v0 + 280);
  if (v2 != 255)
  {
    v3 = *(v0 + 272);
    if (v2)
    {
      v56[0] = *(v0 + 272);
      sub_25DD77894(v3, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_25DCFE138(*(v0 + 272), v2);
    }

    return v3;
  }

  v48 = v0;
  v4 = sub_25DD8EB64(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (v1)
  {
LABEL_5:
    v3 = v1;
    swift_willThrow();
    return v3;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {

    v9 = MEMORY[0x277D84F90];
LABEL_23:
    if (*(v9 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2868, &qword_25DD9F908);
      v27 = sub_25DD972C4();
    }

    else
    {
      v27 = MEMORY[0x277D84F98];
    }

    v56[0] = v27;
    sub_25DD77178(v9, 1, v56);

    v3 = v56[0];
    v28 = *(v48 + 272);
    *(v48 + 272) = v56[0];
    v29 = *(v48 + 280);
    *(v48 + 280) = 0;

    sub_25DCFE0D4(v28, v29);

    return v3;
  }

  v57 = MEMORY[0x277D84F90];
  v6 = v4;
  sub_25DD765B4(0, v5, 0);
  v7 = v6;
  v8 = 0;
  v9 = v57;
  v52 = *(v48 + 88);
  v10 = (v6 + 64);
  v49 = *(v48 + 89);
  v50 = v5;
  v51 = v6;
  while (v8 < *(v7 + 16))
  {
    v55 = v9;
    v11 = *(v10 - 4);
    v12 = *(v10 - 3);
    v13 = *(v10 - 2);
    v14 = *(v10 - 1);
    v15 = *v10;
    if (!v52)
    {
      goto LABEL_13;
    }

    if (v52 == 1)
    {
      if (v49)
      {
LABEL_13:
        if (*(v11 + 16) != 1)
        {
          goto LABEL_28;
        }

        v16 = *v10;
        v17 = 32;
        v18 = 40;
        v19 = 48;
        v20 = 56;
        goto LABEL_18;
      }
    }

    else if ((v49 & 1) == 0)
    {
      v40 = *(v10 - 4);

      v41 = sub_25DD97194();
      v47 = swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
      *v43 = MEMORY[0x277D837D0];
      swift_beginAccess();
      v45 = *(v48 + 288);

      sub_25DD76128(v46);

      sub_25DD97174();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      goto LABEL_30;
    }

    if (*(v11 + 16) != 2)
    {
LABEL_28:
      v31 = *(v10 - 4);

      v56[0] = 0;
      v56[1] = 0xE000000000000000;
      sub_25DD97124();
      MEMORY[0x25F8A3200](0xD000000000000054, 0x800000025DDAB430);
      v32 = sub_25DD97374();
      MEMORY[0x25F8A3200](v32);

      MEMORY[0x25F8A3200](0x203A746F67202CLL, 0xE700000000000000);
      v33 = sub_25DD97374();
      MEMORY[0x25F8A3200](v33);

      MEMORY[0x25F8A3200](46, 0xE100000000000000);
      v34 = sub_25DD97194();
      v47 = swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
      *v36 = MEMORY[0x277D837D0];
      swift_beginAccess();
      v38 = *(v48 + 288);

      sub_25DD76128(v39);

      sub_25DD97174();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
LABEL_30:
      swift_willThrow();

      v1 = v47;
      goto LABEL_5;
    }

    v16 = *v10;
    v17 = 64;
    v18 = 72;
    v19 = 80;
    v20 = 88;
LABEL_18:
    v54 = *(v11 + v17);
    v53 = *(v11 + v18);
    v21 = *(v11 + v19);
    v22 = *(v11 + v20);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25DD98100;
    *(v23 + 32) = v12;
    *(v23 + 40) = v13;
    *(v23 + 48) = v14;
    *(v23 + 56) = v16;
    v9 = v55;
    v57 = v55;
    v24 = *(v55 + 16);
    v25 = *(v55 + 24);

    if (v24 >= v25 >> 1)
    {
      sub_25DD765B4((v25 > 1), v24 + 1, 1);
      v9 = v57;
    }

    ++v8;
    *(v9 + 16) = v24 + 1;
    v26 = (v9 + 40 * v24);
    v26[4] = v54;
    v26[5] = v53;
    v26[6] = v21;
    v26[7] = v22;
    v26[8] = v23;
    v10 += 5;
    v7 = v51;
    if (v50 == v8)
    {

      goto LABEL_23;
    }
  }

  __break(1u);

  MEMORY[0x25F8A43F0](v9);

  __break(1u);
  return result;
}

uint64_t sub_25DD74BB0()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  sub_25DD73D9C(v0 + 88);
  sub_25DD74C40(v0 + 136);
  v2 = *(v0 + 256);
  v3 = *(v0 + 272);
  v4 = *(v0 + 264);
  v5 = *(v0 + 280);
  sub_25DD74C94(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248));
  sub_25DCFE0D4(v2, v4);
  sub_25DCFE0D4(v3, v5);
  v6 = *(v0 + 288);

  return v0;
}

uint64_t sub_25DD74C94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_25DD74CAC(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_25DD74CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    JUMPOUT(0x25F8A43F0);
  }
}

uint64_t sub_25DD74CBC(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x25F8A43F0);
  }
}

uint64_t sub_25DD74CC8()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  sub_25DD73D9C(v0 + 88);
  sub_25DD74C40(v0 + 136);
  v2 = *(v0 + 256);
  v3 = *(v0 + 272);
  v4 = *(v0 + 264);
  v5 = *(v0 + 280);
  sub_25DD74C94(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248));
  sub_25DCFE0D4(v2, v4);
  sub_25DCFE0D4(v3, v5);
  v6 = *(v0 + 288);

  return swift_deallocClassInstance();
}

uint64_t sub_25DD74D70(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v9 = *(v4 + 288);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 288) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_25DD76488(0, *(v9 + 2) + 1, 1, v9);
    *(v4 + 288) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_25DD76488((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[32 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  *(v13 + 6) = a3;
  v13[56] = a4 & 1;
  *(v4 + 288) = v9;
  return swift_endAccess();
}

uint64_t sub_25DD74E64()
{
  swift_beginAccess();
  v1 = *(v0 + 288);
  if (!*(v1 + 16))
  {
    __break(1u);
LABEL_6:
    result = sub_25DD77164(v1);
    v1 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v2 = *(v0 + 288);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + 16);
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    v6 = *(v1 + 32 * v5 + 40);
    *(v1 + 16) = v5;
    *(v0 + 288) = v1;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25DD74F04()
{
  swift_beginAccess();
  v1 = *(v0 + 288);

  v3 = sub_25DD76128(v2);

  return v3;
}

uint64_t sub_25DD74F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x277D84F90];
  sub_25DD055C4(0, v1, 0);
  v2 = v35;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_25DD970B4();
  v7 = result;
  v8 = 0;
  v30 = v3 + 72;
  v31 = v1;
  v32 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v33 = v8;
    v34 = *(v3 + 36);
    v11 = (*(v3 + 48) + 32 * v7);
    v12 = *v11;
    v13 = v11[1];
    v14 = v3;
    v15 = v11[2];
    v16 = v11[3];

    v17 = MEMORY[0x25F8A3180](v12, v13, v15, v16);
    v19 = v18;

    v21 = *(v35 + 16);
    v20 = *(v35 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_25DD055C4((v20 > 1), v21 + 1, 1);
    }

    *(v35 + 16) = v21 + 1;
    v22 = v35 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v9 = 1 << *(v14 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v3 = v14;
    v4 = v32;
    v23 = *(v32 + 8 * v10);
    if ((v23 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v7 & 0x3F));
    if (v24)
    {
      v9 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v10 << 6;
      v26 = v10 + 1;
      v27 = (v30 + 8 * v10);
      while (v26 < (v9 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_25DD0D514(v7, v34, 0);
          v9 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_25DD0D514(v7, v34, 0);
    }

LABEL_4:
    v8 = v33 + 1;
    v7 = v9;
    if (v33 + 1 == v31)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25DD751A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_25DD96CA4();
  if (*(a3 + 16))
  {
    v10 = sub_25DD76990(v6, v7, v8, v9);
    v12 = v11;

    if (v12)
    {
      v13 = *(*(a3 + 56) + 8 * v10);

      v14 = v13[2];
      if (!v14)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v13 = MEMORY[0x277D84F90];
  v14 = *(MEMORY[0x277D84F90] + 16);
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v14 != 1)
  {

    v14 = sub_25DD97194();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v19 = MEMORY[0x277D837D0];
    swift_beginAccess();
    v21 = *(v4 + 288);

    sub_25DD76128(v22);

    sub_25DD97174();
    (*(*(v14 - 8) + 104))(v19, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    return v14;
  }

  v14 = v13[4];
  v15 = v13[5];
  v16 = v13[6];
  v17 = v13[7];

LABEL_9:

  return v14;
}

uint64_t sub_25DD753B8()
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v0 + 288);
  v4 = *(v3 + 16);
  if (v4 == 2)
  {
    v14 = *(v3 + 32);
    v15 = *(v3 + 40);

    v16 = sub_25DD96CA4();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v24 = *(v0 + 288);
    if (*(v24 + 16) < 2uLL)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (*(v24 + 88))
    {

      v25 = sub_25DD97194();
      v2 = swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
      *v27 = MEMORY[0x277D837D0];
      v0 = *(v0 + 288);

      sub_25DD76128(v29);

LABEL_14:
      sub_25DD97174();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      goto LABEL_39;
    }

    v38 = *(v24 + 80);
    v39 = sub_25DD74508();
    if (v2)
    {
LABEL_9:

      goto LABEL_39;
    }

    v45 = v39;
    if (*(v39 + 16))
    {
      v46 = sub_25DD76990(v16, v18, v20, v22);
      v48 = v47;

      if (v48)
      {
        v49 = *(*(v45 + 56) + 8 * v46);

        goto LABEL_33;
      }
    }

    else
    {
    }

    v49 = MEMORY[0x277D84F90];
LABEL_33:

    if ((v38 & 0x8000000000000000) == 0)
    {
      if (v38 < *(v49 + 16))
      {
        v53 = (v49 + 32 * v38);
        v0 = v53[4];
        v54 = v53[5];
        v55 = v53[6];
        v56 = v53[7];

        goto LABEL_39;
      }

LABEL_46:
      __break(1u);
      return result;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v4 == 1)
  {
    if (*(v3 + 56))
    {
      v11 = *(v3 + 32);
      v12 = *(v3 + 40);

      v13 = sub_25DD74508();
      if (!v1)
      {
        v0 = sub_25DD751A8(v11, v12, v13);
        v2 = 0;

        goto LABEL_39;
      }

      goto LABEL_9;
    }

    v33 = *(v3 + 48);
    result = sub_25DD74330();
    if (v1)
    {
      v2 = v1;
      goto LABEL_39;
    }

    if ((v33 & 0x8000000000000000) == 0)
    {
      if (v33 < *(result + 16))
      {
        v34 = (result + 32 * v33);
        v0 = v34[4];
        v35 = v34[5];
        v36 = v34[6];
        v37 = v34[7];

        v2 = 0;
        goto LABEL_39;
      }

      goto LABEL_44;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v4)
  {
    v25 = sub_25DD97194();
    v2 = swift_allocError();
    v27 = v30;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v27 = MEMORY[0x277D837D0];
    v0 = *(v0 + 288);

    sub_25DD76128(v32);

    goto LABEL_14;
  }

  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  if (v9 == 255)
  {
    v64 = *(v0 + 232);
    v65 = *(v0 + 240);
    v63 = *(v0 + 224);
    v40 = *(v0 + 16);
    v41 = *(v0 + 24);
    v42 = *(v0 + 32);
    v43 = *(v0 + 40);
    v44 = v0;
    v0 += 136;
    sub_25DD8CC10(v40, v41, v42, v43, v67);
    if (v1)
    {
      swift_willThrow();
      goto LABEL_39;
    }

    if (v67[0])
    {
      v50 = v67[3];
      v51 = v67[4];
      v0 = v67[1];
      v52 = v67[2];
      v68 = v67[0];
      sub_25DD77840(&v68);
    }

    else
    {
      v0 = 0;
      v52 = 0;
      v50 = 0;
      v51 = 0;
    }

    v57 = v44;
    v58 = *(v44 + 224);
    v61 = *(v44 + 232);
    v62 = *(v44 + 216);
    v60 = *(v44 + 240);
    *(v44 + 216) = v0;
    *(v44 + 224) = v52;
    *(v44 + 232) = v50;
    *(v44 + 240) = v51;
    v59 = *(v44 + 248);
    *(v57 + 248) = 0;
    swift_bridgeObjectRetain_n();
    sub_25DD74C94(v62, v58, v61, v60, v59);

    v5 = v63;
    v7 = v64;
    v8 = v65;
  }

  else
  {
    if (v9)
    {
      v66 = *(v0 + 216);
      sub_25DD77830(v6, v5, v7, v8, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
      swift_willThrowTypedImpl();
      v2 = v6;
      goto LABEL_39;
    }

    v0 = *(v0 + 216);
  }

  sub_25DD77818(v6, v5, v7, v8, v9);
LABEL_39:
  if (v2)
  {
    return v10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25DD75910()
{
  swift_beginAccess();
  v2 = *(v0 + 288);
  if (!v2[2])
  {
    v6 = sub_25DD74330();
    if (v1)
    {
      return v0;
    }

    v0 = v6[2];
    goto LABEL_3;
  }

  v4 = v2[4];
  v3 = v2[5];

  v5 = sub_25DD74508();
  if (!v1)
  {
    v7 = v5;
    v8 = sub_25DD96CA4();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    if (*(v7 + 16))
    {
      v15 = sub_25DD76990(v8, v10, v12, v14);
      v17 = v16;

      if (v17)
      {
        v18 = *(*(v7 + 56) + 8 * v15);

        v0 = *(v18 + 16);
        goto LABEL_3;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_3:

  return v0;
}

uint64_t sub_25DD75A88(unint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 288);
  if (!v4[2])
  {
    result = sub_25DD74330();
    if (v2)
    {
      return v1;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    v20 = result;
    if (*(result + 16) > a1)
    {
LABEL_16:
      v21 = (v20 + 32 * a1);
      v1 = v21[4];
      v22 = v21[5];
      v23 = v21[6];
      v24 = v21[7];

      return v1;
    }

    __break(1u);
    goto LABEL_12;
  }

  v6 = v4[4];
  v5 = v4[5];

  v7 = sub_25DD74508();
  if (v2)
  {

    return v1;
  }

  v9 = v7;
  v10 = sub_25DD96CA4();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (!*(v9 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v17 = sub_25DD76990(v10, v12, v14, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_13:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v20 = *(*(v9 + 56) + 8 * v17);

LABEL_14:

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v20 + 16) > a1)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25DD75C40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(v2 + 288) + 16))
  {
    v6 = sub_25DD97194();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v8 = MEMORY[0x277D837D0];
    v2 = *(v2 + 288);

    sub_25DD76128(v10);

    sub_25DD97174();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
  }

  else
  {
    v11 = sub_25DD74508();
    if (!v3)
    {
      v2 = sub_25DD751A8(a1, a2, v11);
    }
  }

  return v2;
}

uint64_t sub_25DD75DDC()
{
  swift_beginAccess();
  if (*(*(v0 + 288) + 16))
  {
    v1 = sub_25DD97194();
    v2 = swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v4 = MEMORY[0x277D837D0];
    v6 = *(v0 + 288);

    sub_25DD76128(v7);

    sub_25DD97174();
    (*(*(v1 - 8) + 104))(v4, *MEMORY[0x277D84160], v1);
    swift_willThrow();
    MEMORY[0x25F8A43F0](v2);
  }

  else
  {
    v10 = sub_25DD74508();
    v11 = sub_25DD96CA4();
    if (*(v10 + 16))
    {
      sub_25DD76990(v11, v12, v13, v14);
      v8 = v15;

      return v8 & 1;
    }
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_25DD75FB8()
{
  swift_beginAccess();
  if (*(*(v0 + 288) + 16))
  {
    v1 = sub_25DD97194();
    v2 = swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v4 = MEMORY[0x277D837D0];
    v6 = *(v0 + 288);

    sub_25DD76128(v7);

    sub_25DD97174();
    (*(*(v1 - 8) + 104))(v4, *MEMORY[0x277D84160], v1);
    swift_willThrow();
    MEMORY[0x25F8A43F0](v2);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v8 = sub_25DD74508();
    v10 = sub_25DD74F5C(v8);

    return v10;
  }
}

uint64_t sub_25DD76128(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25DD765D4(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_25DD765D4((v9 > 1), v10 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for URICoderCodingKey;
      v15 = sub_25DD6F85C();
      v11 = swift_allocObject();
      *&v13 = v11;
      *(v11 + 16) = v6;
      *(v11 + 24) = v5;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      *(v2 + 16) = v10 + 1;
      sub_25DCFE2FC(&v13, v2 + 40 * v10 + 32);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25DD76258()
{

  nullsub_1(v0);
  type metadata accessor for URIKeyedDecodingContainer();
  swift_getWitnessTable();
  return sub_25DD97324();
}

unint64_t sub_25DD762F8@<X0>(void *a1@<X8>)
{

  sub_25DD8204C();
  v3 = v2;
  v5 = v4;
  a1[3] = &type metadata for URIUnkeyedDecodingContainer;
  result = sub_25DD775D4();
  a1[4] = result;
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_25DD76354()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 288);

  v4 = sub_25DD76128(v3);

  return v4;
}

unint64_t sub_25DD763D4@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  sub_25DD8204C();
  v5 = v4;
  v7 = v6;
  a1[3] = &type metadata for URIUnkeyedDecodingContainer;
  result = sub_25DD775D4();
  a1[4] = result;
  *a1 = v5;
  a1[1] = v7;
  return result;
}

unint64_t sub_25DD76430@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;

  v5 = nullsub_1(v4);
  a1[3] = &type metadata for URISingleValueDecodingContainer;
  result = sub_25DD74188();
  a1[4] = result;
  *a1 = v5;
  return result;
}

char *sub_25DD76488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2860, &unk_25DD9F8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25DD76594(char *a1, int64_t a2, char a3)
{
  result = sub_25DD765F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DD765B4(void *a1, int64_t a2, char a3)
{
  result = sub_25DD76700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DD765D4(void *a1, int64_t a2, char a3)
{
  result = sub_25DD76848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25DD765F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25DD76700(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2870, &qword_25DD9F910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2878, &unk_25DD9F918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25DD76848(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2850, &unk_25DDA0010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2858, &qword_25DD9F8F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25DD76990(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_25DD97964();
  sub_25DD96AC4();
  v10 = sub_25DD979A4();
  return sub_25DD76EE0(a1, a2, a3, a4, v10);
}

unint64_t sub_25DD76A30(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25DD97254();
  v5 = sub_25DD96AB4();

  return sub_25DD76FCC(a1, v5);
}

void *sub_25DD76A94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2868, &qword_25DD9F908);
  v2 = *v0;
  v3 = sub_25DD972A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 32 * v17;
        *v22 = *v18;
        *(v22 + 16) = v20;
        *(v22 + 24) = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25DD76C0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2868, &qword_25DD9F908);
  v37 = a2;
  result = sub_25DD972B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 32 * v21);
      v23 = v22[1];
      v39 = *v22;
      v24 = v22[3];
      v38 = v22[2];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_25DD97964();
      sub_25DD96AC4();
      result = sub_25DD979A4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v39;
      v17[1] = v23;
      v17[2] = v38;
      v17[3] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_25DD76EE0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    v11 = a1 >> 16;
    v12 = a2 >> 16;
    do
    {
      v13 = (*(v5 + 48) + 32 * v7);
      if (v13[2] == a3 && v13[3] == a4 && *v13 >> 16 == v11 && v13[1] >> 16 == v12)
      {
        break;
      }

      if (sub_25DD97364())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_25DD76FCC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_25DD97254();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_25DD96B04();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_25DD77178(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v5 = (result + 64);
  while (1)
  {
    v39 = v3;
    v8 = *(v5 - 4);
    v9 = *(v5 - 3);
    v11 = *(v5 - 2);
    v10 = *(v5 - 1);
    v12 = *v5;
    v13 = *a3;

    result = sub_25DD76990(v8, v9, v11, v10);
    v15 = v13[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v13[3] >= v18)
    {
      if ((a2 & 1) == 0)
      {
        v38 = result;
        sub_25DD76A94();
        result = v38;
      }
    }

    else
    {
      sub_25DD76C0C(v18, a2 & 1);
      v20 = *a3;
      result = sub_25DD76990(v8, v9, v11, v10);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_35;
      }
    }

    v22 = *a3;
    if (v19)
    {
      v23 = v22[7];
      v24 = *(v23 + 8 * result);
      v25 = *(v12 + 16);
      v26 = *(v24 + 2);
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_30;
      }

      v28 = result;
      v29 = *(v23 + 8 * result);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v31 = *(v24 + 3) >> 1, v31 >= v27))
      {
        if (!*(v12 + 16))
        {
LABEL_3:

          if (v25)
          {
            goto LABEL_32;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v26 <= v27)
        {
          v35 = v26 + v25;
        }

        else
        {
          v35 = v26;
        }

        v24 = sub_25DD05434(isUniquelyReferenced_nonNull_native, v35, 1, v24);
        v31 = *(v24 + 3) >> 1;
        if (!*(v12 + 16))
        {
          goto LABEL_3;
        }
      }

      if (v31 - *(v24 + 2) < v25)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v36 = *(v24 + 2);
        v17 = __OFADD__(v36, v25);
        v37 = v36 + v25;
        if (v17)
        {
          goto LABEL_34;
        }

        *(v24 + 2) = v37;
      }

LABEL_4:

      v6 = v22[7];
      v7 = *(v6 + 8 * v28);
      *(v6 + 8 * v28) = v24;

      goto LABEL_5;
    }

    v22[(result >> 6) + 8] |= 1 << result;
    v32 = (v22[6] + 32 * result);
    *v32 = v8;
    v32[1] = v9;
    v32[2] = v11;
    v32[3] = v10;
    *(v22[7] + 8 * result) = v12;
    v33 = v22[2];
    v17 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v17)
    {
      goto LABEL_31;
    }

    v22[2] = v34;
LABEL_5:
    v5 += 5;
    a2 = 1;
    v3 = v39 - 1;
    if (v39 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_25DD978F4();
  __break(1u);
  return result;
}

unint64_t sub_25DD773FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2840, &unk_25DDA0000);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2848, &unk_25DD9F8E0);
    v8 = sub_25DD972C4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25DD777A8(v10, v6);
      result = sub_25DD76A30(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25DD97254();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_25DD0DD04(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25DD775D4()
{
  result = qword_27FCC2830;
  if (!qword_27FCC2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2830);
  }

  return result;
}

unint64_t sub_25DD7762C()
{
  result = qword_27FCC2838;
  if (!qword_27FCC2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2838);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySsSgs5Error_pGSg(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_s6ResultOySaySsGs5Error_pGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_25DD776F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_25DD77740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_25DD777A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2840, &unk_25DDA0000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_25DD77818(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_25DD77830(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

id sub_25DD77830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return a1;
  }

  else
  {
  }
}

id sub_25DD77894(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_25DD778A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25DD979F4();
  v10 = sub_25DD75C40(v8, v9);
  if (v4)
  {
  }

  v13 = v11;
  v14 = v10;

  if (v13)
  {
    return v14;
  }

  v15 = sub_25DD97194();
  swift_allocError();
  v17 = v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2428, &qword_25DD99C28) + 48);
  v17[3] = a3;
  v17[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_25DD74F04();
  sub_25DD97174();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84158], v15);
  return swift_willThrow();
}

uint64_t sub_25DD77A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_25DD778A8(a1, a2, a3, a5);
  if (!v5)
  {
    sub_25DD96E54();
    if (v8)
    {
      v9 = sub_25DD97194();
      swift_allocError();
      v11 = v10;
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
      *v11 = a4;
      sub_25DD74F04();
      sub_25DD97174();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
      return swift_willThrow();
    }

    else
    {
      return sub_25DD96A64();
    }
  }

  return result;
}

uint64_t sub_25DD77BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a5;
  v65 = a6;
  v67 = a7;
  v68 = a3;
  v72 = a4;
  v9 = sub_25DD96F04();
  v10 = sub_25DD96F04();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v60 - v16;
  v66 = *(v9 - 8);
  v18 = *(v66 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v60 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v60 - v25;
  v27 = v70;
  result = sub_25DD778A8(a1, a2, v68, v69);
  if (!v27)
  {
    v32 = v31;
    v61 = v17;
    v62 = v24;
    v63 = v14;
    v33 = v65;
    v68 = v21;
    v69 = a2;
    v70 = v26;
    v71[0] = result;
    v71[1] = v29;
    v71[2] = v30;
    v71[3] = v31;
    if ((result ^ v29) >> 14)
    {
      v60[1] = v60;
      v34 = MEMORY[0x28223BE20](result);
      v60[-4] = v72;
      v60[-3] = v33;
      v60[-2] = 10;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v40 = v61;
      v41 = v35;
      v42 = v9;
      sub_25DD7A950(sub_25DD7A030, v41, v37, v39, v32, v9, v61);
      v60[0] = 0;

      v43 = v63;
      v44 = v64;
      (*(v64 + 32))(v63, v40, v10);
      v45 = v66;
      if ((*(v66 + 48))(v43, 1, v42) == 1)
      {
        v46 = sub_25DD07CBC();
        v47 = v33;
        v48 = v62;
        sub_25DD7A0AC(v71, 10, MEMORY[0x277D83E40], v72, v46, v47, v62);

        (*(v44 + 8))(v43, v10);
        v49 = *(v45 + 32);
      }

      else
      {

        v49 = *(v45 + 32);
        v48 = v62;
        v49(v62, v43, v42);
      }

      v50 = v68;
      v49(v68, v48, v42);
      v51 = *(v72 - 8);
      v52 = v51;
      if ((*(v51 + 48))(v50, 1) != 1)
      {
        v54 = v70;
        (*(v51 + 32))(v70, v50, v72);
        v53 = 0;
LABEL_10:
        v55 = v72;
        (*(v52 + 56))(v54, v53, 1, v72);
        if ((*(v52 + 48))(v54, 1, v55) != 1)
        {
          return (*(v52 + 32))(v67, v54, v72);
        }

        (*(v45 + 8))(v54, v42);
        v56 = sub_25DD97194();
        swift_allocError();
        v58 = v57;
        v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
        *v58 = v72;
        sub_25DD74F04();
        sub_25DD97174();
        (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
        return swift_willThrow();
      }

      (*(v45 + 8))(v50, v42);
    }

    else
    {
      v60[0] = 0;

      v51 = *(v72 - 8);
      v42 = v9;
      v45 = v66;
    }

    v52 = v51;
    v53 = 1;
    v54 = v70;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_25DD78160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  result = sub_25DD778A8(a1, a2, a3, a4);
  if (!v5)
  {
    v17 = a5;
    v24[1] = 0;
    MEMORY[0x25F8A3180](result);

    v18 = MEMORY[0x277D839B0];
    sub_25DD97584();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      (*(v12 + 8))(v15, v11);
      v20 = sub_25DD97194();
      swift_allocError();
      v22 = v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
      *v22 = v18;
      sub_25DD74F04();
      sub_25DD97174();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      return swift_willThrow();
    }

    else
    {
      return (*(v19 + 32))(v17, v15, MEMORY[0x277D839B0]);
    }
  }

  return result;
}