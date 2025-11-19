_DWORD *sub_2144F2930(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
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
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 24);
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
  if (v6 < 0xFD)
  {
    *(result + v8) = a2 + 2;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_2144F2AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2144F2B60@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  result = type metadata accessor for ContextualUnpackRequestMessage();
  *(a6 + *(result + 44)) = v9;
  v11 = (a6 + *(result + 48));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t sub_2144F2C10@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 16);
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for ContextualUnpackFileRequestMessage();
  *(a5 + *(result + 44)) = v6;
  v11 = a5 + *(result + 48);
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  return result;
}

uint64_t sub_2144F2CC4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C914B38, &qword_2147573E0);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v16 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21402D9F8(v8, v9);
  sub_2144F4D44();
  sub_2146DAA28();
  v14 = v8;
  v15 = v9;
  v17 = 0;
  sub_214061684();
  sub_2146DA388();
  sub_213FB54FC(v14, v15);
  if (!v2)
  {
    LOBYTE(v14) = v16;
    v17 = 1;
    sub_2144F4DB0();
    sub_2146DA308();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t sub_2144F2E7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914B28, &qword_2147573D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144F4D44();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  sub_21406116C();
  sub_2146DA1C8();
  v12 = v15[0];
  v11 = v15[1];
  v16 = 1;
  sub_2144F4CF0();
  sub_2146DA148();
  (*(v6 + 8))(v9, v5);
  v13 = v15[0];
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  sub_21402D9F8(v12, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_213FB54FC(v12, v11);
}

uint64_t sub_2144F3074(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914B30, &qword_2147573D8);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v18 = *(v1 + 17);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144F4C9C();

  sub_2146DAA28();
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v19 = 0;
  sub_2140A6418();
  v11 = v13[1];
  sub_2146DA388();

  if (!v11)
  {
    LOBYTE(v15) = v18;
    v19 = 1;
    sub_2144F4DB0();
    sub_2146DA308();
  }

  return (*(v14 + 8))(v6, v3);
}

uint64_t sub_2144F3244@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914B18, &qword_2147573C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144F4C9C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_21406100C();
  sub_2146DA1C8();
  v11 = v16;
  v12 = v17;
  v19 = v18;
  v20 = 1;
  sub_2144F4CF0();
  sub_2146DA148();
  (*(v6 + 8))(v9, v5);
  v13 = v16;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v19;
  *(a2 + 17) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2144F3488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479CD00 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2144F35A8(char a1)
{
  if (!a1)
  {
    return 0x747865746E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 1635017060;
}

uint64_t sub_2144F35FC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v18[0] = *(a2 + 32);
  v18[1] = v4;
  type metadata accessor for ContextualUnpackRequestMessage.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_2146DA3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v6;
  v13 = v18[2];
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  v14 = v18[3];
  sub_2146DA388();
  if (!v14)
  {
    LOBYTE(v19) = *(v13 + *(a2 + 44));
    v21 = 1;
    sub_2144F4DB0();
    sub_2146DA308();
    v15 = (v13 + *(a2 + 48));
    v16 = v15[1];
    v19 = *v15;
    v20 = v16;
    v21 = 2;
    sub_21402D9F8(v19, v16);
    sub_214061684();
    sub_2146DA388();
    sub_213FB54FC(v19, v20);
  }

  return (*(v7 + 8))(v10, v12);
}

uint64_t sub_2144F3810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = *(a2 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](a1);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextualUnpackRequestMessage.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_2146DA258();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v32 = a2;
  v28 = a3;
  v13 = type metadata accessor for ContextualUnpackRequestMessage();
  v25 = *(v13 - 8);
  v14 = *(v25 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v12;
  v18 = v34;
  sub_2146DAA08();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v16;
  v20 = v27;
  LOBYTE(v35) = 0;
  v21 = v32;
  v22 = v30;
  sub_2146DA1C8();
  (*(v20 + 32))(v19, v33, v21);
  v36 = 1;
  sub_2144F4CF0();
  sub_2146DA148();
  v19[*(v13 + 44)] = v35;
  v36 = 2;
  sub_21406116C();
  sub_2146DA1C8();
  (*(v29 + 8))(v31, v22);
  *&v19[*(v13 + 48)] = v35;
  v23 = v25;
  (*(v25 + 16))(v26, v19, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v23 + 8))(v19, v13);
}

uint64_t sub_2144F3C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479CD00 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2144F3D20(char a1)
{
  if (!a1)
  {
    return 0x747865746E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 1701603686;
}

uint64_t sub_2144F3D74(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v18[1] = *(a2 + 32);
  v18[2] = v4;
  type metadata accessor for ContextualUnpackFileRequestMessage.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_2146DA3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v18[3];
  sub_2146DAA28();
  LOBYTE(v19) = 0;
  v13 = v18[4];
  sub_2146DA388();
  if (!v13)
  {
    LOBYTE(v19) = *(v12 + *(a2 + 44));
    v22 = 1;
    sub_2144F4DB0();
    sub_2146DA308();
    v14 = (v12 + *(a2 + 48));
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v14) = *(v14 + 16);
    v19 = v15;
    v20 = v16;
    v21 = v14;
    v22 = 2;
    sub_2140A6418();

    sub_2146DA388();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2144F3FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v33 = *(a2 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](a1);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContextualUnpackFileRequestMessage.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_2146DA258();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v38 = a2;
  v34 = a3;
  v13 = type metadata accessor for ContextualUnpackFileRequestMessage();
  v32 = *(v13 - 8);
  v14 = *(v32 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v12;
  v18 = v40;
  sub_2146DAA08();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v32;
  v19 = v33;
  v40 = v13;
  v21 = v16;
  LOBYTE(v41) = 0;
  v22 = v38;
  v23 = v36;
  sub_2146DA1C8();
  (*(v19 + 32))(v21, v39, v22);
  v44 = 1;
  sub_2144F4CF0();
  sub_2146DA148();
  v21[*(v40 + 44)] = v41;
  v44 = 2;
  sub_21406100C();
  sub_2146DA1C8();
  v24 = a1;
  (*(v35 + 8))(v37, v23);
  v25 = v42;
  v26 = v43;
  v27 = v40;
  v28 = &v21[*(v40 + 48)];
  *v28 = v41;
  *(v28 + 1) = v25;
  v28[16] = v26;
  (*(v20 + 16))(v31, v21, v27);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return (*(v20 + 8))(v21, v27);
}

unint64_t sub_2144F43C8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_2144F4400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479CD00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2144F44E4(uint64_t a1)
{
  v2 = sub_2144F4D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144F4520(uint64_t a1)
{
  v2 = sub_2144F4D44();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2144F4598()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 1701603686;
  }

  *v0;
  return result;
}

uint64_t sub_2144F45D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021479CD00 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2144F46B4(uint64_t a1)
{
  v2 = sub_2144F4C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144F46F0(uint64_t a1)
{
  v2 = sub_2144F4C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2144F4780(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2144F35A8(*v1);
}

uint64_t sub_2144F4790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_2144F3488(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2144F47C4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_214377044();
  *a2 = result;
  return result;
}

uint64_t sub_2144F47F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2144F484C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2144F48DC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void))
{
  sub_2146DA958();
  a4(v8, *v4, a2[2], a2[3], a2[4]);
  return sub_2146DA9B8();
}

uint64_t sub_2144F4938(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2144F3D20(*v1);
}

uint64_t sub_2144F4948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_2144F3C00(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2144F497C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2144F49D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_2144F4AE4()
{
  result = qword_27C914B00;
  if (!qword_27C914B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914B00);
  }

  return result;
}

unint64_t sub_2144F4B38()
{
  result = qword_27C914B08;
  if (!qword_27C914B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914B08);
  }

  return result;
}

uint64_t sub_2144F4BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2144F4BF4()
{
  result = qword_27C914B10;
  if (!qword_27C914B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914B10);
  }

  return result;
}

unint64_t sub_2144F4C48()
{
  result = qword_280B30350;
  if (!qword_280B30350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30350);
  }

  return result;
}

unint64_t sub_2144F4C9C()
{
  result = qword_27C914B20;
  if (!qword_27C914B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914B20);
  }

  return result;
}

unint64_t sub_2144F4CF0()
{
  result = qword_280B30520;
  if (!qword_280B30520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B30520);
  }

  return result;
}

unint64_t sub_2144F4D44()
{
  result = qword_280B33608[0];
  if (!qword_280B33608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B33608);
  }

  return result;
}

unint64_t sub_2144F4DB0()
{
  result = qword_280B34CB8;
  if (!qword_280B34CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34CB8);
  }

  return result;
}

unint64_t sub_2144F4E40()
{
  result = qword_27C914BC0;
  if (!qword_27C914BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914BC0);
  }

  return result;
}

unint64_t sub_2144F4E98()
{
  result = qword_27C914BC8;
  if (!qword_27C914BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914BC8);
  }

  return result;
}

unint64_t sub_2144F4F98()
{
  result = qword_280B335F8;
  if (!qword_280B335F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B335F8);
  }

  return result;
}

unint64_t sub_2144F4FF0()
{
  result = qword_280B33600;
  if (!qword_280B33600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B33600);
  }

  return result;
}

unint64_t sub_2144F5048()
{
  result = qword_27C914BD0;
  if (!qword_27C914BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914BD0);
  }

  return result;
}

unint64_t sub_2144F50A0()
{
  result = qword_27C914BD8;
  if (!qword_27C914BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914BD8);
  }

  return result;
}

unint64_t sub_2144F5110@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2144F95A0;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 255;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(v3 + 40) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214032610;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2144F52A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144F52F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144F534C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144F53A4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144F540C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144F5488()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_2144F5570@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144F55C8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144F5630@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144F5688(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144F56F0()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2144F5770()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

unint64_t sub_2144F57F0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21439DF90;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 255;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

unint64_t sub_2144F5948@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_2143C945C;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_21439DF90;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[2] = sub_214059908;
  v6[3] = 0;
  v6[4] = 255;
  v6[5] = sub_21403C354;
  v6[6] = 0;
  *(v5 + 16) = sub_21439DF90;
  *(v5 + 24) = v6;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

unint64_t sub_2144F5AA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2144F95A0;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 255;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_214059860;
  *(v4 + 24) = v5;
  *(inited + 40) = v4;
  return sub_214042B80(inited, a1);
}

uint64_t sub_2144F5BE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144F5C34(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144F5C90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144F5CDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2144F5D38@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144F5D84(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_u64[1];
  v7 = v1[6].n128_u64[1];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144F5DE0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144F5E38(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2144F5EA0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144F5F1C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144F5F98()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144F6014()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

uint64_t sub_2144F6094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144F61DC(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144F6278(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_2144F6310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144F6454(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144F652C;
  }

  return result;
}

void (*sub_2144F6530(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144F65D0;
}

uint64_t sub_2144F65D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudKitShareParticipant(0) + 24);

  return sub_2144F6638(v3, a1);
}

uint64_t sub_2144F6638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitUserIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144F66BC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CloudKitShareParticipant(0) + 24);

  return sub_2144F6700(a1, v3);
}

uint64_t sub_2144F6700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitUserIdentity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144F67D0(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_2144F686C(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_2144F68E4@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t sub_2144F6918(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_2144F6990@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t sub_2144F69C4(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t sub_2144F6A3C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t sub_2144F6A70(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t sub_2144F6AE8@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t sub_2144F6B1C(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t sub_2144F6B94@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t sub_2144F6BC8(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t sub_2144F6C40@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t sub_2144F6C74(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t sub_2144F6CEC()
{
  v1 = v0 + *(type metadata accessor for CloudKitShareParticipant(0) + 60);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F6D30(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitShareParticipant(0) + 60);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F6DC0()
{
  v1 = v0 + *(type metadata accessor for CloudKitShareParticipant(0) + 64);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F6E04(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitShareParticipant(0) + 64);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F6EB8(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t sub_2144F6F54(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t sub_2144F70A4()
{
  v1 = v0 + *(type metadata accessor for CloudKitShareParticipant(0) + 80);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F70E8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitShareParticipant(0) + 80);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F719C(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t sub_2144F7238(char a1)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t sub_2144F72B0@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CloudKitShareParticipant(0);
  *a1 = *(v1 + *(result + 92));
  return result;
}

uint64_t sub_2144F72E4(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CloudKitShareParticipant(0);
  *(v1 + *(result + 92)) = v2;
  return result;
}

uint64_t sub_2144F735C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 20);
  *(a1 + 160) = *(v1 + 20);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_213FB2E54(v18, v17, &qword_27C917500, &qword_2146F42A8);
}

__n128 sub_2144F7404(uint64_t a1)
{
  v3 = *(v1 + 144);
  v13[8] = *(v1 + 128);
  v13[9] = v3;
  v14 = *(v1 + 160);
  v4 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v4;
  v5 = *(v1 + 112);
  v13[6] = *(v1 + 96);
  v13[7] = v5;
  v6 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v6;
  v7 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v7;
  sub_213FB2DF4(v13, &qword_27C917500, &qword_2146F42A8);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_2144F759C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for CloudKitUserIdentity(0) + 24);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x110uLL);
  return sub_213FB2E54(__dst, &v5, &qword_27C917520, &qword_2146F42B0);
}

void *sub_2144F7614(const void *a1)
{
  v3 = *(type metadata accessor for CloudKitUserIdentity(0) + 24);
  memcpy(v5, (v1 + v3), sizeof(v5));
  sub_213FB2DF4(v5, &qword_27C917520, &qword_2146F42B0);
  return memcpy((v1 + v3), a1, 0x110uLL);
}

uint64_t sub_2144F76D0()
{
  v1 = *(v0 + *(type metadata accessor for CloudKitUserIdentity(0) + 28));
}

uint64_t sub_2144F7704(uint64_t a1)
{
  v3 = *(type metadata accessor for CloudKitUserIdentity(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2144F778C()
{
  v1 = v0 + *(type metadata accessor for CloudKitUserIdentity(0) + 32);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F77D0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitUserIdentity(0) + 32);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F7860()
{
  v1 = v0 + *(type metadata accessor for CloudKitUserIdentity(0) + 36);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F78A4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitUserIdentity(0) + 36);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F7958(char a1)
{
  result = type metadata accessor for CloudKitUserIdentity(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_2144F79F4(char a1)
{
  result = type metadata accessor for CloudKitUserIdentity(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_2144F7A6C()
{
  v1 = v0 + *(type metadata accessor for CloudKitUserIdentity(0) + 48);
  v2 = *v1;
  sub_213FDCA18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2144F7AB0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for CloudKitUserIdentity(0) + 48);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2144F7B64(uint64_t a1)
{
  result = type metadata accessor for CloudKitUserIdentity(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_2144F7BDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144F7D20(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_2144F7DF8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_2144F7E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144F7FDC(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144F95A4;
  }

  return result;
}

void (*sub_2144F80B4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144F95A8;
}

uint64_t sub_2144F8154@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 224);
  v25 = *(v1 + 208);
  v26 = v3;
  v4 = *(v1 + 128);
  v5 = *(v1 + 160);
  v21 = *(v1 + 144);
  v6 = v21;
  v22 = v5;
  v7 = *(v1 + 160);
  v8 = *(v1 + 192);
  v23 = *(v1 + 176);
  v9 = v23;
  v24 = v8;
  v10 = *(v1 + 96);
  v18[0] = *(v1 + 80);
  v18[1] = v10;
  v11 = *(v1 + 128);
  v13 = *(v1 + 80);
  v12 = *(v1 + 96);
  v19 = *(v1 + 112);
  v14 = v19;
  v20 = v11;
  v15 = *(v1 + 224);
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 240);
  *(a1 + 160) = *(v1 + 240);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_213FB2E54(v18, v17, &qword_27C917500, &qword_2146F42A8);
}

__n128 sub_2144F81FC(uint64_t a1)
{
  v3 = *(v1 + 224);
  v13[8] = *(v1 + 208);
  v13[9] = v3;
  v14 = *(v1 + 240);
  v4 = *(v1 + 160);
  v13[4] = *(v1 + 144);
  v13[5] = v4;
  v5 = *(v1 + 192);
  v13[6] = *(v1 + 176);
  v13[7] = v5;
  v6 = *(v1 + 96);
  v13[0] = *(v1 + 80);
  v13[1] = v6;
  v7 = *(v1 + 128);
  v13[2] = *(v1 + 112);
  v13[3] = v7;
  sub_213FB2DF4(v13, &qword_27C917500, &qword_2146F42A8);
  v8 = *(a1 + 144);
  *(v1 + 208) = *(a1 + 128);
  *(v1 + 224) = v8;
  *(v1 + 240) = *(a1 + 160);
  v9 = *(a1 + 80);
  *(v1 + 144) = *(a1 + 64);
  *(v1 + 160) = v9;
  v10 = *(a1 + 112);
  *(v1 + 176) = *(a1 + 96);
  *(v1 + 192) = v10;
  v11 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v11;
  result = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = result;
  return result;
}

uint64_t sub_2144F82EC()
{
  v1 = *(v0 + 256);
  sub_213FDCA18(v1, *(v0 + 264));
  return v1;
}

uint64_t sub_2144F8320(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 256), *(v2 + 264));
  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t sub_2144F8378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144F84C0(void *a1))()
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144F855C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t sub_2144F85F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v12 = *(v3 + 72);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 64);

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144F873C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144F87D8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

uint64_t sub_2144F8870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v12 = *(v3 + 112);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 104);

    *(v3 + 96) = a1;
    *(v3 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144F89B8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2144F8A54(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

uint64_t sub_2144F8AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 120);
  v7 = *(v2 + 128);
  v11 = *(v3 + 152);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 136), *(v3 + 144));

    *(v3 + 136) = a1;
    *(v3 + 144) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2144F8C30(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214476B78;
  }

  return result;
}

void (*sub_2144F8D08(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214476EC4;
}

uint64_t sub_2144F8DD8(uint64_t a1)
{
  *(a1 + 8) = sub_2144F8E5C(&qword_27C9075E8, type metadata accessor for CloudKitShareParticipant);
  result = sub_2144F8E5C(&qword_27C907688, type metadata accessor for CloudKitShareParticipant);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144F8E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2144F8EA4(uint64_t a1)
{
  *(a1 + 8) = sub_2144F8E5C(&qword_27C906220, type metadata accessor for CloudKitUserIdentity);
  result = sub_2144F8E5C(&qword_27C906250, type metadata accessor for CloudKitUserIdentity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2144F8F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

void sub_2144F8FE4()
{
  sub_2144F9388(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v0 <= 0x3F)
  {
    sub_214084AA4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CloudKitUserIdentity(319);
      if (v2 <= 0x3F)
      {
        sub_2144F9388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2144F9334(319, &qword_27C9052F8, type metadata accessor for CloudKitSharingToken);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2144F91A0()
{
  sub_2144F9388(319, &qword_27C914C00, &type metadata for CloudKitRecordID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2144F9334(319, &qword_27C914C08, MEMORY[0x277CC8E50]);
    if (v1 <= 0x3F)
    {
      sub_2144F9388(319, &qword_27C914C10, &type metadata for CloudKitUserIdentityLookupInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2144F9388(319, &qword_27C914C18, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_2144F9388(319, &qword_280B2FDD0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2144F9334(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2144F9388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_9BlastDoor16CloudKitRecordIDVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2144F93F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_2144F9440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2144F94D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2144F951C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2144F95AC(uint64_t a1)
{
  *(a1 + 8) = sub_21405C92C();
  result = sub_21405CA58();
  *(a1 + 16) = result;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MBDRichCardStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MBDRichCardStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_2144F970C()
{
  v0 = sub_2146D8C48();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  __swift_allocate_value_buffer(v2, qword_27C914C20);
  __swift_project_value_buffer(v0, qword_27C914C20);
  sub_2146D8D58();
  return sub_2146D8D78();
}

uint64_t sub_2144F981C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_2146D8D48();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - v6;
  v7 = sub_2146D8C48();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v36 = *(v15 - 8);
  v16 = *(v36 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v15, qword_27CA19E08);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = v15;
  MEMORY[0x216053AD0](v22, v15, v23);
  v43 = 0x28272A7E212E5F2DLL;
  v44 = 0xE900000000000029;
  sub_2146D8D58();
  sub_2146D8D78();
  v24 = sub_2145030B8();
  MEMORY[0x216053AD0](v12, v7, v24);
  v32 = v21;
  v25 = *(v34 + 8);
  v25(v12, v7);
  v26 = v35;
  sub_2146D8BE8();
  v27 = v37;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v28 = MEMORY[0x277D83E40];
  v29 = v39;
  sub_2146D8CF8();
  (*(v40 + 8))(v27, v41);
  MEMORY[0x216053B70](v19, v28);
  (*(v38 + 8))(v26, v29);
  v25(v14, v7);
  return (*(v36 + 8))(v32, v33);
}

uint64_t sub_2144F9CE8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  return sub_2146D8DA8();
}

uint64_t sub_2144F9DB4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - v3;
  v5 = sub_2146D8D48();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = sub_2146D8C48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  sub_2146D8D68();
  sub_2146D8D78();
  v22 = sub_2145030B8();
  MEMORY[0x216053AD0](v19, v13, v22);
  v28 = *(v14 + 8);
  v28(v19, v13);
  if (qword_27C903108 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, qword_27C914C20);
  MEMORY[0x216053AD0](v23, v13, v22);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v24 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v30 + 8))(v8, v31);
  MEMORY[0x216053B70](v4, v24);
  (*(v29 + 8))(v12, v9);
  v25 = v28;
  v28(v19, v13);
  return v25(v21, v13);
}

uint64_t sub_2144FA1BC@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CE8, &qword_214757CC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  sub_2146D8C88();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  sub_2146D8C58();
  v11 = sub_21432076C(&qword_27C914CF0, &qword_27C914CE8, &qword_214757CC8);
  MEMORY[0x216053AF0](v8, v3, v11);
  v12 = *(v4 + 8);
  v12(v8, v3);
  sub_2146D8C08();
  return (v12)(v10, v3);
}

uint64_t sub_2144FA3EC@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v49 = sub_2146D8D48();
  v47 = *(v49 - 8);
  v1 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v3 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v51 = *(v45 - 8);
  v4 = *(v51 + 64);
  v5 = MEMORY[0x28223BE20](v45);
  v50 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v54 = v39 - v8;
  MEMORY[0x28223BE20](v7);
  v53 = v39 - v9;
  v10 = sub_2146D8C48();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v46 = *(v14 - 8);
  v15 = *(v46 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v39 - v19;
  if (qword_27C9031E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_27CA19E38);
  v22 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v21, v14, v22);
  v57 = 42;
  v58 = 0xE100000000000000;
  v23 = sub_2145031D0();
  v24 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v59, &v57, MEMORY[0x277D837D0], v23);
  v55 = 35;
  v56 = 0xE100000000000000;
  MEMORY[0x216053AD0](&v57, &v55, v24, v23);
  if (qword_27C903108 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_27C914C20);
  v26 = v10;
  v41 = v10;
  v27 = v25;
  v42 = sub_2145030B8();
  v40 = v13;
  MEMORY[0x216053AD0](v27, v26, v42);
  v43 = v14;
  v44 = v20;
  sub_2146D8BE8();
  v55 = v59[0];
  v56 = v59[1];
  sub_2146D8C38();
  v28 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v29 = v45;
  v39[1] = v28;
  sub_2146D8CF8();
  v30 = *(v47 + 8);
  v31 = v49;
  v30(v3, v49);

  MEMORY[0x216053B70](v18, MEMORY[0x277D83E40]);
  v55 = v57;
  v56 = v58;
  sub_2146D8C38();
  v32 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  v30(v3, v31);

  v33 = v50;
  v34 = v32;
  MEMORY[0x216053B70](v18, v32);
  sub_2146D8C38();
  v36 = v40;
  v35 = v41;
  sub_2146D8CF8();
  v30(v3, v31);
  MEMORY[0x216053B70](v18, v34);
  v37 = *(v51 + 8);
  v37(v33, v29);
  v37(v54, v29);
  v37(v53, v29);
  (*(v48 + 8))(v36, v35);
  return (*(v46 + 8))(v44, v43);
}

uint64_t sub_2144FAA24@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = sub_2146D8C48();
  v78 = *(v1 - 8);
  v79 = v1;
  v2 = *(v78 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v64 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v65 = &v56 - v6;
  MEMORY[0x28223BE20](v5);
  v77 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v56 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v73 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v76 = &v56 - v18;
  v19 = sub_2146D8D48();
  v20 = *(v19 - 8);
  v81 = v19;
  v82 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v56 - v26;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v80 = *(v72 - 8);
  v28 = *(v80 + 64);
  v29 = MEMORY[0x28223BE20](v72);
  v63 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v56 - v32;
  MEMORY[0x28223BE20](v31);
  v75 = &v56 - v34;
  v83 = 43;
  v84 = 0xE100000000000000;
  v62 = sub_2145031D0();
  MEMORY[0x216053AF0](v85, &v83, MEMORY[0x277D837D0]);
  if (qword_27C903118 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v8, qword_27C914C38);
  v35 = sub_2146D8D88();
  v36 = *(v35 - 8);
  v57 = *(v36 + 56);
  v58 = v36 + 56;
  v57(v27, 1, 1, v35);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v37 = MEMORY[0x277D83E40];
  v38 = v76;
  sub_2146D8CE8();
  v39 = *(v82 + 8);
  v82 += 8;
  v74 = v39;
  v39(v23, v81);
  sub_214503110(v27);
  MEMORY[0x216053B20](v38, v37);
  v71 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v40 = v72;
  MEMORY[0x216053AF0](v33, v72, v71);
  v41 = *(v80 + 8);
  v80 += 8;
  v59 = v33;
  v41(v33, v40);
  v61 = v41;
  sub_2146D8D68();
  v42 = v65;
  sub_2146D8D78();
  v60 = sub_2145030B8();
  v43 = v79;
  MEMORY[0x216053AF0](v42, v79, v60);
  v64 = *(v78 + 8);
  v78 += 8;
  v64(v42, v43);
  v57(v27, 1, 1, v35);
  sub_2146D8C38();
  v44 = v76;
  v45 = MEMORY[0x277D83E40];
  sub_2146D8CE8();
  v74(v23, v81);
  sub_214503110(v27);
  v46 = v63;
  MEMORY[0x216053B20](v44, v45);
  MEMORY[0x216053AF0](v46, v40, v71);
  v41(v46, v40);
  v83 = v85[0];
  v84 = v85[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v47 = v68;
  sub_2146D8D08();
  v48 = v66;
  sub_2146D8D08();
  sub_2146D8CD8();
  v49 = *(v67 + 8);
  v49(v48, v8);
  v49(v47, v8);
  v50 = v74;
  v74(v23, v81);
  sub_2146D8C38();
  sub_2146D8D08();
  v51 = v69;
  sub_2146D8D08();
  sub_2146D8CD8();
  v49(v51, v8);
  v49(v48, v8);
  v50(v23, v81);
  sub_2146D8C38();
  sub_2146D8D08();
  v52 = v59;
  v53 = v72;
  sub_2146D8D08();
  sub_2146D8CD8();
  v49(v51, v8);
  v49(v48, v8);
  v74(v23, v81);
  v49(v47, v8);
  v49(v73, v8);
  v49(v76, v8);
  v54 = v61;
  v61(v52, v53);
  v64(v77, v79);
  return v54(v75, v53);
}

uint64_t sub_2144FB3E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2146D8C88();
  v8 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x216053AF0](v5, v0, v8);
  v9 = *(v1 + 8);
  v9(v5, v0);
  sub_2146D8C08();
  return (v9)(v7, v0);
}

uint64_t sub_2144FB5A0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - v3;
  v5 = sub_2146D8D48();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  if (qword_27C903130 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27CA19D78);
  v21 = sub_2146D8D88();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v22 = MEMORY[0x277D83E40];
  sub_2146D8D18();
  (*(v27 + 8))(v8, v28);
  sub_214503110(v12);
  MEMORY[0x216053B90](v4, v22);
  v23 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  MEMORY[0x216053AF0](v18, v13, v23);
  v24 = *(v14 + 8);
  v24(v18, v13);
  sub_2146D8C08();
  return (v24)(v20, v13);
}

uint64_t sub_2144FB940@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_2146D8D48();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v30 - v24;
  sub_2146D8C88();
  v26 = sub_2146D8D88();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  sub_2146D8D18();
  (*(v31 + 8))(v8, v32);
  sub_214503110(v12);
  (*(v14 + 8))(v17, v13);
  MEMORY[0x216053B90](v4, MEMORY[0x277D83E40]);
  v27 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  MEMORY[0x216053AF0](v23, v18, v27);
  v28 = *(v19 + 8);
  v28(v23, v18);
  sub_2146D8C08();
  return (v28)(v25, v18);
}

uint64_t sub_2144FBD4C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_2146D8D48();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v54 = *(v52 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v52);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v48 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v46 = &v40 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  MEMORY[0x28223BE20](v23);
  v53 = &v40 - v26;
  v57 = 59;
  v58 = 0xE100000000000000;
  v45 = sub_2145031D0();
  MEMORY[0x216053AF0](v59, &v57, MEMORY[0x277D837D0], v45);
  v27 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v28 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v25, v13, v27);
  v29 = *(v14 + 8);
  v29(v25, v13);
  v30 = sub_2146D8D88();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  sub_2146D8C38();
  sub_2144FC3C4(v22);
  sub_2146D8D38();
  v29(v22, v13);
  v31 = *(v55 + 8);
  v55 += 8;
  v50 = v31;
  v31(v4, v56);
  sub_214503110(v8);
  v32 = v47;
  MEMORY[0x216053B10](v25, v28);
  v42 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v33 = v52;
  MEMORY[0x216053AF0](v32, v52, v42);
  v34 = *(v54 + 8);
  v54 += 8;
  v44 = v34;
  v34(v32, v33);
  v57 = v59[0];
  v58 = v59[1];
  v43 = v25;
  sub_2146D8C08();

  sub_2146D8C38();
  v35 = v46;
  sub_2146D8D08();
  v36 = v48;
  sub_2146D8D08();
  v41 = v22;
  sub_2146D8CD8();
  v29(v36, v13);
  v29(v35, v13);
  v50(v4, v56);
  sub_2146D8C38();
  sub_2146D8D08();
  v37 = v51;
  v38 = v52;
  sub_2146D8D08();
  sub_2146D8CD8();
  v29(v36, v13);
  v29(v35, v13);
  v50(v4, v56);
  v29(v41, v13);
  v29(v43, v13);
  v44(v37, v38);
  return (v29)(v53, v13);
}

uint64_t sub_2144FC3C4@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = sub_2146D8D48();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v24 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v27 = 61;
  v28 = 0xE100000000000000;
  v19 = sub_2145031D0();
  MEMORY[0x216053AF0](v29, &v27, MEMORY[0x277D837D0], v19);
  if (qword_27C903138 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_27CA19D90);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v20, v5, v21);
  v27 = v29[0];
  v28 = v29[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v22 = *(v6 + 8);
  v22(v10, v5);
  v22(v13, v5);
  (*(v25 + 8))(v4, v26);
  v22(v16, v5);
  return (v22)(v18, v5);
}

uint64_t sub_2144FC708@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v42 = *(v1 - 8);
  v2 = *(v42 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v40 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = v34 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  v9 = sub_2146D8D48();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v38 = *(v18 - 8);
  v19 = *(v38 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v37 = v34 - v23;
  v43 = 0x3D7478653BLL;
  v44 = 0xE500000000000000;
  v36 = sub_2145031D0();
  MEMORY[0x216053AF0](v45, &v43, MEMORY[0x277D837D0]);
  if (qword_27C903118 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27C914C38);
  v24 = sub_2146D8D88();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v25 = MEMORY[0x277D83E40];
  sub_2146D8D18();
  v26 = *(v10 + 8);
  v34[1] = v10 + 8;
  v35 = v26;
  v26(v13, v9);
  sub_214503110(v17);
  v27 = v8;
  MEMORY[0x216053B90](v8, v25);
  v28 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  v29 = v37;
  MEMORY[0x216053AF0](v22, v18, v28);
  v34[0] = v9;
  v38 = *(v38 + 8);
  (v38)(v22, v18);
  v43 = v45[0];
  v44 = v45[1];
  sub_2146D8C08();

  sub_2146D8C38();
  v30 = v39;
  sub_2146D8D08();
  v31 = v40;
  sub_2146D8D08();
  sub_2146D8CD8();
  v32 = *(v42 + 8);
  v32(v31, v1);
  v32(v30, v1);
  v35(v13, v34[0]);
  v32(v27, v1);
  return (v38)(v29, v18);
}

uint64_t sub_2144FCC48@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v45 = *(v42 - 8);
  v1 = *(v45 + 64);
  v2 = MEMORY[0x28223BE20](v42);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v43 = &v38 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v47 = sub_2146D8D48();
  v49 = *(v47 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v48 = *(v20 - 8);
  v21 = *(v48 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v40 = &v38 - v25;
  v50 = 0x3D627573693BLL;
  v51 = 0xE600000000000000;
  v39 = sub_2145031D0();
  MEMORY[0x216053AF0](v52, &v50, MEMORY[0x277D837D0], v39);
  v26 = MEMORY[0x277D83E40];
  sub_2146D8C88();
  v27 = sub_2146D8D88();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  sub_2146D8D18();
  v28 = *(v49 + 8);
  v49 += 8;
  v41 = v28;
  v28(v10, v47);
  sub_214503110(v14);
  (*(v16 + 8))(v19, v15);
  v29 = v7;
  MEMORY[0x216053B90](v7, v26);
  v30 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  v31 = v40;
  MEMORY[0x216053AF0](v24, v20, v30);
  v32 = *(v48 + 8);
  v48 += 8;
  v32(v24, v20);
  v50 = v52[0];
  v51 = v52[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = v42;
  v34 = v43;
  sub_2146D8D08();
  v35 = v44;
  sub_2146D8D08();
  sub_2146D8CD8();
  v36 = *(v45 + 8);
  v36(v35, v33);
  v36(v34, v33);
  v41(v10, v47);
  v36(v29, v33);
  return (v32)(v31, v20);
}

uint64_t sub_2144FD234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a1;
  v60 = a3;
  v57 = sub_2146D8D48();
  v55 = *(v57 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v59 = *(v52 - 8);
  v7 = *(v59 + 64);
  v8 = MEMORY[0x28223BE20](v52);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - v18;
  v20 = sub_2146D8C48();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v46 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - v27;
  v62 = v54;
  v63 = a2;
  sub_2146D8D58();
  sub_2146D8D78();
  v29 = sub_2145030B8();
  v30 = v28;
  MEMORY[0x216053AD0](v26, v20, v29);
  v31 = *(v21 + 8);
  v32 = v20;
  v54 = v21 + 8;
  v51 = v31;
  v31(v26, v20);
  if (qword_27C903110 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v12, qword_27CA19D60);
  v34 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v33, v12, v34);
  if (qword_27C9031F0 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v12, qword_27CA19E50);
  MEMORY[0x216053AD0](v35, v12, v34);
  v49 = v32;
  v50 = v30;
  sub_2146D8BE8();
  sub_2146D8C38();
  v46 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v47 = v11;
  v36 = MEMORY[0x277D83E40];
  v38 = v52;
  v37 = v53;
  v48 = v19;
  sub_2146D8CF8();
  v39 = *(v55 + 8);
  v40 = v57;
  v39(v6, v57);
  v41 = v56;
  MEMORY[0x216053B70](v37, v36);
  sub_2146D8C38();
  v42 = v61;
  sub_2146D8CF8();
  v39(v6, v40);
  MEMORY[0x216053B70](v37, v36);
  v43 = *(v59 + 8);
  v43(v41, v38);
  v43(v47, v38);
  v44 = *(v58 + 8);
  v44(v42, v12);
  v44(v48, v12);
  return v51(v50, v49);
}

uint64_t sub_2144FD844@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_2146D8D48();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v1);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v43 = *(v40 - 8);
  v4 = *(v43 + 64);
  v5 = MEMORY[0x28223BE20](v40);
  v46 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v33 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - v21;
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v24 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v38 = v22;
  MEMORY[0x216053AD0](v20, v9, v23);
  v25 = *(v10 + 8);
  v25(v20, v9);
  sub_2146D8DA8();
  v35 = v20;
  MEMORY[0x216053AD0](v17, v9, v23);
  v45 = v17;
  v36 = v10 + 8;
  v37 = v25;
  v25(v17, v9);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v14, v9, v23);
  v25(v14, v9);
  v34 = v8;
  sub_2146D8BE8();
  v26 = v39;
  sub_2146D8C38();
  v33 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v27 = v40;
  sub_2146D8CF8();
  v28 = v42;
  v29 = *(v41 + 8);
  v29(v26, v42);
  MEMORY[0x216053B70](v14, v24);
  sub_2146D8C38();
  sub_2146D8CF8();
  v29(v26, v28);
  MEMORY[0x216053B70](v14, v24);
  v30 = *(v43 + 8);
  v30(v46, v27);
  v30(v34, v27);
  v31 = v37;
  v37(v45, v9);
  v31(v35, v9);
  return (v31)(v38, v9);
}

uint64_t sub_2144FDDA4@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v65 = v1;
  v66 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v67 = *(v64 - 8);
  v15 = *(v67 + 64);
  v16 = MEMORY[0x28223BE20](v64);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v50 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v56 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v55 = &v50 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v63 = &v50 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v62 = &v50 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v50 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v50 - v32;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v19, qword_27CA19E08);
  v35 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v60 = v33;
  MEMORY[0x216053AF0](v34, v19, v35);
  v36 = MEMORY[0x277D83E40];
  sub_2146D8C88();
  v37 = sub_2146D8D88();
  (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v38 = v53;
  sub_2146D8CE8();
  v39 = *(v66 + 8);
  v66 += 8;
  v59 = v39;
  v39(v5, v65);
  sub_214503110(v9);
  (*(v54 + 1))(v14, v38);
  v40 = v52;
  v51 = v31;
  MEMORY[0x216053B20](v31, v36);
  v41 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v42 = v64;
  MEMORY[0x216053AF0](v40, v64, v41);
  v43 = *(v67 + 8);
  v67 += 8;
  v54 = v43;
  v43(v40, v42);
  MEMORY[0x216053AF0](v34, v19, v35);
  sub_2146D8C08();
  sub_2146D8C38();
  v44 = v55;
  sub_2146D8D08();
  v45 = v56;
  sub_2146D8D08();
  sub_2146D8CD8();
  v46 = *(v57 + 8);
  v46(v45, v19);
  v46(v44, v19);
  v47 = v65;
  v59(v5, v65);
  sub_2146D8C38();
  sub_2146D8D08();
  v48 = v51;
  sub_2146D8D08();
  sub_2146D8CD8();
  v46(v45, v19);
  v46(v44, v19);
  v59(v5, v47);
  v46(v63, v19);
  v46(v62, v19);
  v46(v48, v19);
  v54(v61, v64);
  return (v46)(v60, v19);
}

uint64_t sub_2144FE51C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_2146D8D48();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = *(v23 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_27CA19E08);
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v17, v9, v18);
  v26 = 45;
  v27 = 0xE100000000000000;
  v19 = sub_2145031D0();
  MEMORY[0x216053AD0](v28, &v26, MEMORY[0x277D837D0], v19);
  sub_2146D8BE8();
  v26 = v28[0];
  v27 = v28[1];
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v20 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v23 + 8))(v4, v24);

  MEMORY[0x216053B70](v14, v20);
  (*(v22 + 8))(v8, v5);
  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_2144FE8EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a3;
  v35 = a4;
  v6 = sub_2146D8D48();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v30 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  if (*a1 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, a2);
  v26 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v25, v14, v26);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v19, v14, v26);
  v27 = *(v15 + 8);
  v27(v19, v14);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v28 = v32;
  sub_2146D8CF8();
  (*(v33 + 8))(v9, v34);
  MEMORY[0x216053B70](v19, MEMORY[0x277D83E40]);
  (*(v31 + 8))(v13, v28);
  v27(v22, v14);
  return (v27)(v24, v14);
}

uint64_t sub_2144FECA0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_2146D8D48();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v50 = *(v9 - 8);
  v10 = *(v50 + 8);
  MEMORY[0x28223BE20](v9);
  v12 = v48 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v13 = *(v55 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v55);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v60 = v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v52 = *(v19 - 8);
  v20 = *(v52 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v53 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v51 = v48 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v57 = v48 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v56 = v48 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v59 = v48 - v30;
  MEMORY[0x28223BE20](v29);
  v58 = v48 - v31;
  if (qword_27C9031E0 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v19, qword_27CA19E20);
  v33 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v32, v19, v33);
  v34 = MEMORY[0x277D83E40];
  sub_2146D8C88();
  v35 = sub_2146D8D88();
  (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v36 = v59;
  sub_2146D8CE8();
  v37 = *(v61 + 8);
  v61 += 8;
  v49 = v37;
  v37(v4, v62);
  sub_214503110(v8);
  (*(v50 + 1))(v12, v9);
  MEMORY[0x216053B20](v36, v34);
  v38 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v39 = v55;
  MEMORY[0x216053AF0](v17, v55, v38);
  v40 = *(v13 + 8);
  v48[1] = v13 + 8;
  v50 = v40;
  v40(v17, v39);
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v19, qword_27CA19E08);
  MEMORY[0x216053AF0](v41, v19, v33);
  sub_2146D8C08();
  sub_2146D8C38();
  v42 = v51;
  sub_2146D8D08();
  v43 = v53;
  sub_2146D8D08();
  sub_2146D8CD8();
  v44 = *(v52 + 8);
  v44(v43, v19);
  v44(v42, v19);
  v45 = v49;
  v49(v4, v62);
  sub_2146D8C38();
  sub_2146D8D08();
  v46 = v59;
  sub_2146D8D08();
  sub_2146D8CD8();
  v44(v43, v19);
  v44(v42, v19);
  v45(v4, v62);
  v44(v57, v19);
  v44(v56, v19);
  v44(v46, v19);
  v50(v60, v55);
  return (v44)(v58, v19);
}

uint64_t sub_2144FF454@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v73 = *(v67 - 8);
  v1 = *(v73 + 64);
  v2 = MEMORY[0x28223BE20](v67);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v66 = &v50 - v4;
  v5 = sub_2146D8D48();
  v63 = v5;
  v74 = *(v5 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v50 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v65 = &v50 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v71 = *(v69 - 8);
  v26 = *(v71 + 64);
  v27 = MEMORY[0x28223BE20](v69);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v72 = &v50 - v30;
  v31 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v32 = MEMORY[0x277D83E40];
  sub_2146D8DA8();
  v54 = sub_2146D8D88();
  v33 = *(v54 - 8);
  v53 = *(v33 + 56);
  v56 = (v33 + 56);
  v53(v12, 1, 1, v54);
  sub_2146D8C38();
  v51 = v12;
  sub_2146D8CE8();
  v34 = *(v74 + 8);
  v74 += 8;
  v70 = v34;
  v34(v8, v5);
  sub_214503110(v12);
  v36 = v68 + 8;
  v35 = *(v68 + 8);
  v64 = v25;
  v35(v25, v13);
  v57 = v35;
  v68 = v36;
  MEMORY[0x216053B20](v23, v32);
  v55 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v37 = v69;
  MEMORY[0x216053AF0](v29, v69, v55);
  v38 = *(v71 + 8);
  v71 += 8;
  v58 = v38;
  v38(v29, v37);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v23, v13, v31);
  v35(v23, v13);
  v39 = v51;
  v53(v51, 1, 1, v54);
  v75 = 46;
  v76 = 0xE100000000000000;
  sub_2146D8C38();
  sub_2145031D0();
  sub_2146D8D38();
  v40 = v63;
  v70(v8, v63);
  sub_214503110(v39);
  v41 = v61;
  MEMORY[0x216053B10](v23, v32);
  v54 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v42 = v67;
  MEMORY[0x216053AF0](v41, v67, v54);
  v43 = *(v73 + 8);
  v73 += 8;
  v56 = v43;
  v43(v41, v42);
  v52 = v23;
  sub_2146D8C08();
  sub_2146D8C38();
  v44 = v59;
  sub_2146D8D08();
  v45 = v60;
  sub_2146D8D08();
  sub_2146D8CD8();
  v46 = v57;
  v57(v45, v13);
  v46(v44, v13);
  v70(v8, v40);
  sub_2146D8C38();
  sub_2146D8D08();
  v48 = v66;
  v47 = v67;
  sub_2146D8D08();
  sub_2146D8CD8();
  v46(v45, v13);
  v46(v44, v13);
  v70(v8, v63);
  v46(v65, v13);
  v46(v52, v13);
  v56(v48, v47);
  v46(v64, v13);
  return v58(v72, v69);
}

uint64_t sub_2144FFCE0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_2146D8D48();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  v26 = v17;
  MEMORY[0x216053AF0](v15, v5, v18);
  v19 = *(v6 + 8);
  v19(v15, v5);
  v31 = 46;
  v32 = 0xE100000000000000;
  v20 = sub_2145031D0();
  MEMORY[0x216053AF0](v33, &v31, MEMORY[0x277D837D0], v20);
  sub_2146D8C08();
  v22 = v33[0];
  v21 = v33[1];
  sub_2146D8C38();
  v31 = v22;
  v32 = v21;
  sub_2146D8D08();
  v23 = v27;
  sub_2146D8D08();

  sub_2146D8CD8();
  v19(v23, v5);
  v19(v12, v5);
  (*(v29 + 8))(v4, v30);
  v19(v15, v5);
  return (v19)(v26, v5);
}

uint64_t sub_214500034@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_2146D8D48();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  if (qword_27C903148 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_27CA19DA8);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AD0](v20, v9, v21);
  if (qword_27C903128 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v9, qword_27C914C68);
  MEMORY[0x216053AD0](v22, v9, v21);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v23 = MEMORY[0x277D83E40];
  sub_2146D8CF8();
  (*(v27 + 8))(v4, v28);
  MEMORY[0x216053B70](v14, v23);
  (*(v26 + 8))(v8, v5);
  v24 = *(v10 + 8);
  v24(v17, v9);
  return (v24)(v19, v9);
}

uint64_t sub_2145003F8@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_2146D8D48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v45 = *(v15 - 8);
  v16 = *(v45 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v44 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v43 = &v37 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  MEMORY[0x28223BE20](v21);
  v48 = &v37 - v24;
  if (qword_27C903128 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_27C914C68);
  v26 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v25, v15, v26);
  if (qword_27C903140 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v15, qword_27C914C80);
  v27 = sub_2146D8D88();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  sub_2146D8C38();
  v28 = MEMORY[0x277D83E40];
  sub_2146D8CE8();
  v29 = *(v2 + 8);
  v39 = v2 + 8;
  v41 = v29;
  v29(v5, v1);
  sub_214503110(v9);
  v30 = v40;
  MEMORY[0x216053B20](v23, v28);
  v31 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v32 = v42;
  MEMORY[0x216053AF0](v30, v10, v31);
  v38 = v1;
  v46 = *(v46 + 8);
  (v46)(v30, v10);
  sub_2146D8C08();
  sub_2146D8C38();
  v33 = v43;
  sub_2146D8D08();
  v34 = v44;
  sub_2146D8D08();
  sub_2146D8CD8();
  v35 = *(v45 + 8);
  v35(v34, v15);
  v35(v33, v15);
  v41(v5, v38);
  v35(v23, v15);
  (v46)(v32, v10);
  return (v35)(v48, v15);
}

uint64_t sub_214500988@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v1 = *(*(v59 - 1) + 64);
  MEMORY[0x28223BE20](v59);
  v57 = v52 - v2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CE8, &qword_214757CC8);
  v74 = *(v71 - 8);
  v3 = *(v74 + 64);
  v4 = MEMORY[0x28223BE20](v71);
  v58 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v73 = v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = v52 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v72 = v52 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v52 - v15;
  v17 = sub_2146D8D48();
  v76 = *(v17 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v52 - v23;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v75 = *(v60 - 8);
  v25 = *(v75 + 64);
  v26 = MEMORY[0x28223BE20](v60);
  v56 = v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v52 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v52 - v31;
  if (qword_27C903120 != -1)
  {
    swift_once();
  }

  v52[2] = __swift_project_value_buffer(v7, qword_27C914C50);
  v54 = sub_2146D8D88();
  v33 = *(v54 - 8);
  v53 = *(v33 + 56);
  v55 = v33 + 56;
  v53(v24, 1, 1, v54);
  sub_2146D8C38();
  v52[1] = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v34 = MEMORY[0x277D83E40];
  sub_2146D8CE8();
  v35 = *(v76 + 8);
  v76 += 8;
  v68 = v35;
  v35(v20, v17);
  sub_214503110(v24);
  MEMORY[0x216053B20](v16, v34);
  v36 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v65 = v30;
  v66 = v36;
  v70 = v32;
  v37 = v60;
  MEMORY[0x216053AF0](v30, v60, v36);
  v69 = *(v75 + 8);
  v75 += 8;
  v69(v30, v37);
  sub_2146D8C88();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v38 = v58;
  v39 = v34;
  sub_2146D8C58();
  v40 = sub_21432076C(&qword_27C914CF0, &qword_27C914CE8, &qword_214757CC8);
  v67 = v17;
  v57 = v40;
  v41 = v71;
  MEMORY[0x216053AF0](v38, v71, v40);
  v42 = *(v74 + 8);
  v74 += 8;
  v59 = v42;
  v42(v38, v41);
  v53(v24, 1, 1, v54);
  sub_2146D8C38();
  v43 = v39;
  sub_2146D8CE8();
  v68(v20, v17);
  sub_214503110(v24);
  v44 = v56;
  v52[0] = v16;
  MEMORY[0x216053B20](v16, v43);
  MEMORY[0x216053AF0](v44, v37, v66);
  v69(v44, v37);
  sub_2146D8C08();
  sub_2146D8C38();
  v45 = v61;
  sub_2146D8D08();
  v46 = v62;
  sub_2146D8D08();
  sub_2146D8CD8();
  v47 = *(v63 + 8);
  v47(v46, v7);
  v47(v45, v7);
  v48 = v68;
  v68(v20, v67);
  sub_2146D8C38();
  sub_2146D8D08();
  v49 = v65;
  sub_2146D8D08();
  sub_2146D8CD8();
  v47(v46, v7);
  v47(v45, v7);
  v48(v20, v67);
  v47(v72, v7);
  v47(v52[0], v7);
  v50 = v69;
  v69(v49, v37);
  v59(v73, v71);
  return v50(v70, v37);
}

uint64_t sub_2145012A4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v32 = sub_2146D8D48();
  v30 = *(v32 - 8);
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  if (qword_27C9031E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_27CA19E38);
  v18 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v31 = v10;
  MEMORY[0x216053AD0](v17, v10, v18);
  v39 = 42;
  v40 = 0xE100000000000000;
  v19 = sub_2145031D0();
  v20 = MEMORY[0x277D837D0];
  MEMORY[0x216053AD0](v41, &v39, MEMORY[0x277D837D0], v19);
  v37 = 35;
  v38 = 0xE100000000000000;
  v27 = v19;
  MEMORY[0x216053AD0](&v39, &v37, v20, v19);
  sub_2146D8BE8();
  v29 = v9;
  v37 = v41[0];
  v38 = v41[1];
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  sub_2146D8CF8();
  v28 = v16;
  v21 = *(v30 + 8);
  v22 = v32;
  v21(v3, v32);

  v23 = v34;
  v24 = MEMORY[0x277D83E40];
  MEMORY[0x216053B70](v14, MEMORY[0x277D83E40]);
  v37 = v39;
  v38 = v40;
  sub_2146D8C38();
  sub_2146D8CF8();
  v21(v3, v22);

  MEMORY[0x216053B70](v14, v24);
  v25 = *(v35 + 8);
  v25(v23, v4);
  v25(v29, v4);
  return (*(v33 + 8))(v28, v31);
}

uint64_t sub_214501718@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v74 = sub_2146D8D48();
  v1 = *(v74 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v74);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v52 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CD0, &qword_214757CC0);
  v73 = *(v70 - 8);
  v9 = *(v73 + 64);
  v10 = MEMORY[0x28223BE20](v70);
  v58 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = v52 - v13;
  MEMORY[0x28223BE20](v12);
  v69 = v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v59 = v52 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v60 = v52 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v68 = v52 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v66 = v52 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v52 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v52 - v31;
  v33 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  v67 = v32;
  MEMORY[0x216053AF0](v30, v15, v33);
  v34 = *(v16 + 8);
  v56 = v16 + 8;
  v57 = v34;
  v34(v30, v15);
  if (qword_27C903140 != -1)
  {
    swift_once();
  }

  v52[2] = __swift_project_value_buffer(v15, qword_27C914C80);
  v54 = sub_2146D8D88();
  v35 = *(v54 - 8);
  v53 = *(v35 + 56);
  v55 = v35 + 56;
  v53(v8, 1, 1, v54);
  sub_2146D8C38();
  v36 = MEMORY[0x277D83E40];
  sub_2146D8CE8();
  v71 = *(v1 + 8);
  v71(v4, v74);
  v52[1] = v1 + 8;
  sub_214503110(v8);
  v37 = v72;
  v64 = v30;
  MEMORY[0x216053B20](v30, v36);
  v63 = sub_21432076C(&qword_27C914CD8, &qword_27C914CD0, &qword_214757CC0);
  v38 = v70;
  MEMORY[0x216053AF0](v37, v70, v63);
  v65 = *(v73 + 8);
  v73 += 8;
  v65(v37, v38);
  v39 = v66;
  v40 = v36;
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v39, v15, v33);
  v41 = v39;
  v42 = v57;
  v57(v39, v15);
  v53(v8, 1, 1, v54);
  sub_2146D8C38();
  sub_2146D8CE8();
  v71(v4, v74);
  sub_214503110(v8);
  v43 = v58;
  MEMORY[0x216053B20](v41, v40);
  v44 = v70;
  MEMORY[0x216053AF0](v43, v70, v63);
  v65(v43, v44);
  sub_2146D8C08();
  sub_2146D8C38();
  v45 = v60;
  sub_2146D8D08();
  v46 = v59;
  sub_2146D8D08();
  sub_2146D8CD8();
  v42(v46, v15);
  v42(v45, v15);
  v47 = v74;
  v71(v4, v74);
  sub_2146D8C38();
  sub_2146D8D08();
  v48 = v61;
  sub_2146D8D08();
  sub_2146D8CD8();
  v42(v48, v15);
  v42(v46, v15);
  v71(v4, v47);
  sub_2146D8C38();
  sub_2146D8D08();
  v49 = v70;
  sub_2146D8D08();
  sub_2146D8CD8();
  v42(v48, v15);
  v42(v46, v15);
  v71(v4, v74);
  v42(v45, v15);
  v42(v68, v15);
  v42(v66, v15);
  v50 = v65;
  v65(v72, v49);
  v42(v64, v15);
  v50(v69, v49);
  return (v42)(v67, v15);
}

uint64_t sub_214502048@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_2146D8D48();
  v28 = *(v1 - 8);
  v29 = v1;
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v18, v10, v21);
  v22 = *(v11 + 8);
  v22(v18, v10);
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v15, v10, v21);
  v22(v15, v10);
  sub_2146D8BE8();
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v23 = v26;
  sub_2146D8CF8();
  (*(v28 + 8))(v4, v29);
  MEMORY[0x216053B70](v15, MEMORY[0x277D83E40]);
  (*(v27 + 8))(v9, v23);
  v22(v18, v10);
  return (v22)(v20, v10);
}

uint64_t sub_214502430@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = sub_2146D8D48();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v24 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v27 = 980182388;
  v28 = 0xE400000000000000;
  v19 = sub_2145031D0();
  MEMORY[0x216053AF0](v29, &v27, MEMORY[0x277D837D0], v19);
  if (qword_27C903150 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_27CA19DC0);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v20, v5, v21);
  v27 = v29[0];
  v28 = v29[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v22 = *(v6 + 8);
  v22(v10, v5);
  v22(v13, v5);
  (*(v25 + 8))(v4, v26);
  v22(v16, v5);
  return (v22)(v18, v5);
}

uint64_t sub_214502778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v6 = sub_2146D8D48();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v28 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v28 - v20;
  MEMORY[0x28223BE20](v19);
  v29 = &v28 - v22;
  v34 = a1;
  v35 = a2;
  v23 = sub_2145031D0();
  MEMORY[0x216053AF0](v36, &v34, MEMORY[0x277D837D0], v23);
  v24 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DA8();
  MEMORY[0x216053AF0](v21, v10, v24);
  v25 = *(v11 + 8);
  v25(v21, v10);
  v34 = v36[0];
  v35 = v36[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  v26 = v29;
  sub_2146D8D08();
  sub_2146D8CD8();
  v25(v15, v10);
  v25(v18, v10);
  (*(v32 + 8))(v9, v33);
  v25(v21, v10);
  return (v25)(v26, v10);
}

uint64_t sub_214502AB4()
{
  strcpy(v2, "tel:anonymous");
  HIWORD(v2[1]) = -4864;
  v0 = sub_2145031D0();
  MEMORY[0x216053AF0](v3, v2, MEMORY[0x277D837D0], v0);
  v2[0] = v3[0];
  v2[1] = v3[1];
  sub_2146D8C08();
}

uint64_t sub_214502B88@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_2146D8D48();
  v40 = *(v43 - 8);
  v1 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v36 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v42 = *(v39 - 8);
  v3 = *(v42 + 64);
  v4 = MEMORY[0x28223BE20](v39);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v45 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v34 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v34 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, qword_27CA19DD8);
  v22 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v38 = v20;
  MEMORY[0x216053AD0](v21, v7, v22);
  v23 = MEMORY[0x277D83E40];
  v24 = v15;
  sub_2146D8DA8();
  v35 = v18;
  MEMORY[0x216053AD0](v15, v7, v22);
  v25 = *(v8 + 8);
  v34[1] = v8 + 8;
  v46 = v24;
  v25(v24, v7);
  v37 = v25;
  sub_2146D8DA8();
  MEMORY[0x216053AD0](v12, v7, v22);
  v25(v12, v7);
  sub_2146D8BE8();
  v26 = v36;
  sub_2146D8C38();
  v34[0] = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v27 = v39;
  sub_2146D8CF8();
  v28 = *(v40 + 8);
  v29 = v43;
  v28(v26, v43);
  v30 = v41;
  MEMORY[0x216053B70](v12, v23);
  sub_2146D8C38();
  sub_2146D8CF8();
  v28(v26, v29);
  MEMORY[0x216053B70](v12, v23);
  v31 = *(v42 + 8);
  v31(v30, v27);
  v31(v45, v27);
  v32 = v37;
  v37(v46, v7);
  v32(v35, v7);
  return (v32)(v38, v7);
}

unint64_t sub_2145030B8()
{
  result = qword_27C914CB0;
  if (!qword_27C914CB0)
  {
    sub_2146D8C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914CB0);
  }

  return result;
}

uint64_t sub_214503110(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2145031D0()
{
  result = qword_27C914CE0;
  if (!qword_27C914CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914CE0);
  }

  return result;
}

uint64_t sub_214503314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AD0, &qword_214757E00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = &unk_214757E10;
    *(v10 + 24) = v9;
    v11[1] = &unk_2147417E8;
    v11[2] = v10;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
    sub_2146D99D8();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2145034C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UnpackResponseSessionFinishedMessage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-v9];
  v11 = sub_2146D8B88();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v10[*(v4 + 20)] = 1;
  type metadata accessor for XPCEncoder();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  v13 = sub_21469F7B4(v10);
  v14 = xpc_connection_send_message_with_reply_sync(*(v2 + 24), v13);
  swift_getObjectType();
  v15 = sub_21408FD98();
  if (v15 == 7)
  {
    type metadata accessor for XPCDecoder();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = sub_214046008(MEMORY[0x277D84F90]);
    sub_2146C6E9C(v14);
    if ((sub_2146D8B48() & 1) != 0 && v8[*(v4 + 20)] == 1)
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_214506E00(v8, type metadata accessor for UnpackResponseSessionFinishedMessage);
      v17 = v10;
      return sub_214506E00(v17, type metadata accessor for UnpackResponseSessionFinishedMessage);
    }
  }

  else if (v15 == 13)
  {
    if (qword_280B34F40[0] != -1)
    {
      swift_once();
    }

    v18 = sub_2146D9208();
    __swift_project_value_buffer(v18, qword_280B34D98);
    swift_unknownObjectRetain();
    v19 = sub_2146D91E8();
    v20 = sub_2146D9BA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      v27[15] = sub_21408FFD8();
      v23 = sub_2146D9618();
      v25 = sub_2144AEA38(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_213FAF000, v19, v20, "Got an XPC Error: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x216056AC0](v22, -1, -1);
      MEMORY[0x216056AC0](v21, -1, -1);
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v17 = v10;
    return sub_214506E00(v17, type metadata accessor for UnpackResponseSessionFinishedMessage);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214503928()
{
  v1 = v0;
  v2 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v3 = qword_280B35410;
  if (os_log_type_enabled(qword_280B35410, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v10 = *(v1 + 24);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
    v6 = sub_2146D9618();
    v8 = sub_2144AEA38(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_213FAF000, v3, v2, "XPC client %s closed connection.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x216056AC0](v5, -1, -1);
    MEMORY[0x216056AC0](v4, -1, -1);
  }

  if (swift_weakLoadStrong())
  {
    sub_21448162C(v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  return sub_2146D99E8();
}

uint64_t sub_214503AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_214503AE0, 0, 0);
}

uint64_t sub_214503AE0()
{
  v32 = v0;
  v1 = v0[3];
  swift_getObjectType();
  v2 = sub_21408FD98();
  if (v2 == 13)
  {
    v7 = v0[3];
    v8 = sub_2146D9368();
    swift_unknownObjectRelease();
    if (v8 == v7)
    {
      v20 = v0[4];
      sub_214503928();
    }

    else
    {
      v9 = v0[3];
      v10 = sub_2146D9378();
      swift_unknownObjectRelease();
      if (v10 == v9)
      {
        v21 = sub_2146D9B88();
        if (qword_280B35360 != -1)
        {
          swift_once();
        }

        v22 = qword_280B35410;
        if (os_log_type_enabled(qword_280B35410, v21))
        {
          v23 = v0[4];
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v31 = v25;
          *v24 = 136315138;
          v0[2] = *(v23 + 24);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F60, &qword_2146F08F0);
          v26 = sub_2146D9618();
          v28 = sub_2144AEA38(v26, v27, &v31);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_213FAF000, v22, v21, "XPC client %s interrupted connection.", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x216056AC0](v25, -1, -1);
          MEMORY[0x216056AC0](v24, -1, -1);
        }
      }

      else
      {
        v11 = MEMORY[0x216056D30](v0[3]);
        v12 = sub_2146D96E8();
        v14 = v13;
        v15 = sub_2146D9B88();
        if (qword_280B35360 != -1)
        {
          swift_once();
        }

        v16 = qword_280B35410;
        if (os_log_type_enabled(qword_280B35410, v15))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v31 = v18;
          *v17 = 136315138;
          v19 = sub_2144AEA38(v12, v14, &v31);

          *(v17 + 4) = v19;
          _os_log_impl(&dword_213FAF000, v16, v15, "XPC connection triggered error: %s.", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v18);
          MEMORY[0x216056AC0](v18, -1, -1);
          MEMORY[0x216056AC0](v17, -1, -1);
        }

        else
        {
        }

        v29 = v0[4];
        if (swift_weakLoadStrong())
        {
          sub_21448162C(v0[4]);
        }

        free(v11);
      }
    }
  }

  else if (v2 == 7)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_214503E80;
    v4 = v0[3];
    v5 = v0[4];

    return sub_214503F74(v4);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_214503E80()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_214503F74(uint64_t a1)
{
  v2[116] = v1;
  v2[115] = a1;
  v3 = type metadata accessor for EncoderErrorResponseMessage(0);
  v2[117] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[118] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D08, &qword_214757DC8);
  v2[119] = v5;
  v6 = *(v5 - 8);
  v2[120] = v6;
  v7 = *(v6 + 64) + 15;
  v2[121] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D10, &unk_214757DD0);
  v2[122] = v8;
  v9 = *(v8 - 8);
  v2[123] = v9;
  v10 = *(v9 + 64) + 15;
  v2[124] = swift_task_alloc();
  v11 = sub_2146D8B88();
  v2[125] = v11;
  v12 = *(v11 - 8);
  v2[126] = v12;
  v13 = *(v12 + 64) + 15;
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8) + 64) + 15;
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  if (qword_280B30970 != -1)
  {
    swift_once();
  }

  v15 = qword_280B30978;
  v2[133] = qword_280B30978;

  return MEMORY[0x2822009F8](sub_2145041D8, v15, 0);
}

uint64_t sub_2145041D8()
{
  v157 = v0;
  v1 = *(v0 + 920);
  swift_getObjectType();
  if (sub_21408FD98() != 7)
  {
    __break(1u);
    goto LABEL_55;
  }

  v2 = *(v0 + 928);
  swift_beginAccess();
  if (*(*(v2 + 72) + 16))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v3 = *(v0 + 928);
  Strong = swift_weakLoadStrong();
  *(v0 + 1072) = Strong;
  if (!Strong)
  {
    sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 928);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2146EA710;
    v42 = *(v40 + 64);
    v43 = *(v40 + 48);
    *(v0 + 1184) = *(v40 + 32);
    *(v0 + 1200) = v43;
    *(v0 + 1216) = v42;
    v44 = sub_2146D9618();
    v46 = v45;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_213FB2DA0();
    *(v41 + 32) = v44;
    *(v41 + 40) = v46;
    sub_2146D91D8();

    return sub_2146DA018();
  }

  v5 = Strong;
  v6 = *(v0 + 920);
  v7 = sub_2140900F4();
  if (!v8)
  {
LABEL_22:
    sub_2146D9BA8();
    if (qword_280B35358 == -1)
    {
LABEL_23:
      sub_2146D91D8();
      return sub_2146DA018();
    }

LABEL_56:
    swift_once();
    goto LABEL_23;
  }

  v9 = v7;
  v10 = v8;
  v11 = *(v0 + 920);
  v12 = sub_2140901DC();
  *(v0 + 1080) = v12;
  if (!v12)
  {
LABEL_21:

    goto LABEL_22;
  }

  v155 = v12;
  v13 = *(v0 + 920);
  sub_2140900F4();
  if (!v14)
  {
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v15 = *(v0 + 920);
  sub_2140902B8(*(v0 + 1056));
  v151 = sub_2146D9588();
  *(v0 + 1088) = v151;
  v16 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v17 = qword_280B35410;
  *(v0 + 1096) = qword_280B35410;
  v152 = v9;
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v156 = v19;
    *v18 = 136446210;
    *(v0 + 912) = v151;
    type metadata accessor for BlastDoorInstanceType(0);
    v20 = v151;
    v21 = sub_2146D9618();
    v23 = sub_2144AEA38(v21, v22, &v156);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_213FAF000, v17, v16, "Unpacking with instance type: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x216056AC0](v19, -1, -1);
    v24 = v18;
    v9 = v152;
    MEMORY[0x216056AC0](v24, -1, -1);
  }

  swift_beginAccess();
  v25 = *(v5 + 48);
  if (!*(v25 + 16))
  {
    goto LABEL_26;
  }

  v26 = *(v5 + 48);

  v27 = sub_21408C300(v9, v10);
  if ((v28 & 1) == 0)
  {

LABEL_26:
    sub_2146D9BA8();
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 944);
    v148 = *(v0 + 936);
    v49 = *(v0 + 928);
    v149 = *(v0 + 1056);
    v150 = *(v0 + 920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2146E6910;
    v51 = *(v49 + 64);
    v52 = *(v49 + 48);
    *(v0 + 1220) = *(v49 + 32);
    *(v0 + 1236) = v52;
    *(v0 + 1252) = v51;
    v53 = sub_2146D9618();
    v55 = v54;
    v56 = MEMORY[0x277D837D0];
    *(v50 + 56) = MEMORY[0x277D837D0];
    v57 = sub_213FB2DA0();
    *(v50 + 64) = v57;
    *(v50 + 32) = v53;
    *(v50 + 40) = v55;
    *(v0 + 840) = v152;
    *(v0 + 848) = v10;
    swift_bridgeObjectRetain_n();
    v58 = sub_2146D9618();
    *(v50 + 96) = v56;
    *(v50 + 104) = v57;
    *(v50 + 72) = v58;
    *(v50 + 80) = v59;
    sub_2146D91D8();

    sub_213FB2E54(v149, v48 + *(v148 + 20), &unk_27C904F30, &unk_2146EFA20);
    *v48 = 0xD000000000000013;
    v48[1] = 0x800000021479CE50;
    v48[2] = 0xD000000000000018;
    v48[3] = 0x800000021479CE70;
    v48[4] = v152;
    v48[5] = v10;
    type metadata accessor for XPCEncoder();
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0u;
    *(v60 + 40) = 0u;
    *(v60 + 56) = 0;
    v61 = swift_unknownObjectRetain();
    reply = xpc_dictionary_create_reply(v61);
    if (reply)
    {
      v67 = reply;
      v68 = *(v0 + 944);
      v69 = *(v0 + 920);
      swift_unknownObjectRelease();
      *(v60 + 64) = v67;
      swift_beginAccess();
      *(v60 + 16) = 0;
      v70 = sub_21469FC34(v68);
      reply = xpc_dictionary_get_remote_connection(*(v0 + 920));
      if (reply)
      {
        v71 = reply;
        v72 = *(v0 + 1056);
        v73 = *(v0 + 944);

        xpc_connection_send_message(v71, v70);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_214506E00(v73, type metadata accessor for EncoderErrorResponseMessage);
        v74 = v72;
LABEL_47:
        sub_213FB2DF4(v74, &unk_27C904F30, &unk_2146EFA20);
        goto LABEL_48;
      }

      goto LABEL_59;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return MEMORY[0x2822005A8](reply, v63, v64, v65, v66);
  }

  sub_214053840(*(v25 + 56) + 40 * v27, v0 + 16);

  sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 928);
  *(v0 + 1104) = qword_280B35408;
  *(v0 + 1112) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2146E6910;
  v31 = *(v29 + 64);
  v32 = *(v29 + 48);
  *(v0 + 1256) = *(v29 + 32);
  *(v0 + 1272) = v32;
  *(v0 + 1288) = v31;
  v33 = sub_2146D9618();
  v35 = v34;
  *(v30 + 56) = MEMORY[0x277D837D0];
  v36 = sub_213FB2DA0();
  *(v0 + 1120) = v36;
  *(v30 + 64) = v36;
  *(v30 + 32) = v33;
  *(v30 + 40) = v35;
  sub_214053840(v0 + 16, v0 + 176);
  sub_213FB2E54(v0 + 176, v0 + 256, &qword_27C914370, &qword_21474BE98);
  if (*(v0 + 280))
  {
    sub_213FB77C8((v0 + 256), v0 + 216);
    sub_214053840(v0 + 216, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D18, &qword_214757DE0);
    v37 = sub_2146D9618();
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_1((v0 + 216));
    sub_213FB2DF4(v0 + 176, &qword_27C914370, &qword_21474BE98);
  }

  else
  {
    v37 = 7104878;
    sub_213FB2DF4(v0 + 256, &qword_27C914370, &qword_21474BE98);
    sub_213FB2DF4(v0 + 176, &qword_27C914370, &qword_21474BE98);
    v39 = 0xE300000000000000;
  }

  v75 = *(v0 + 920);
  *(v30 + 96) = MEMORY[0x277D837D0];
  *(v30 + 104) = v36;
  *(v30 + 72) = v37;
  *(v30 + 80) = v39;
  sub_2146D91D8();

  type metadata accessor for XPCEncoder();
  v76 = swift_allocObject();
  *(v0 + 1128) = v76;
  *(v76 + 16) = 0;
  *(v76 + 24) = 0u;
  *(v76 + 40) = 0u;
  *(v76 + 56) = 0;
  v77 = swift_unknownObjectRetain();
  reply = xpc_dictionary_create_reply(v77);
  if (!reply)
  {
    goto LABEL_58;
  }

  v78 = reply;
  v79 = *(v0 + 1056);
  v80 = *(v0 + 1048);
  v81 = *(v0 + 928);
  v82 = *(v0 + 920);
  swift_unknownObjectRelease();
  *(v76 + 64) = v78;
  swift_beginAccess();
  *(v76 + 16) = 1;
  sub_214053840(v0 + 16, v0 + 336);
  sub_213FB2E54(v79, v80, &unk_27C904F30, &unk_2146EFA20);
  sub_214053840(v0 + 16, v0 + 376);

  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D18, &qword_214757DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D20, &qword_214757DE8);
  if (swift_dynamicCast())
  {

    sub_213FB77C8((v0 + 416), v0 + 96);
    v83 = *(v0 + 120);
    v84 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v83);
    v85 = (*(v84 + 16))(v155, v76, v83, v84);
    v99 = *(v0 + 928);
    v100 = v85;
    sub_213FB2DF4(*(v0 + 1048), &unk_27C904F30, &unk_2146EFA20);
    __swift_destroy_boxed_opaque_existential_1((v0 + 336));
    xpc_connection_send_message(*(v99 + 24), v100);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    v101 = *(v0 + 1120);
    v102 = *(v0 + 1112);
    v103 = *(v0 + 928);
    __swift_destroy_boxed_opaque_existential_1((v0 + 376));
    sub_2146D9BC8();
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_2146E6910;
    v105 = *(v103 + 64);
    v106 = *(v103 + 48);
    *(v0 + 868) = *(v103 + 32);
    *(v0 + 884) = v106;
    *(v0 + 900) = v105;
    v107 = sub_2146D9618();
    *(v104 + 56) = MEMORY[0x277D837D0];
    *(v104 + 64) = v101;
    *(v104 + 32) = v107;
    *(v104 + 40) = v108;
    sub_214053840(v0 + 16, v0 + 656);
    sub_213FB2E54(v0 + 656, v0 + 576, &qword_27C914370, &qword_21474BE98);
    if (*(v0 + 600))
    {
      v109 = *(v0 + 1136);
      sub_213FB77C8((v0 + 576), v0 + 616);
      sub_214053840(v0 + 616, v0 + 296);
      v110 = sub_2146D9618();
      v112 = v111;
      __swift_destroy_boxed_opaque_existential_1((v0 + 616));
      sub_213FB2DF4(v0 + 656, &qword_27C914370, &qword_21474BE98);
    }

    else
    {
      v110 = 7104878;
      sub_213FB2DF4(v0 + 576, &qword_27C914370, &qword_21474BE98);
      sub_213FB2DF4(v0 + 656, &qword_27C914370, &qword_21474BE98);
      v112 = 0xE300000000000000;
    }

    v113 = *(v0 + 1128);
    v114 = *(v0 + 1120);
    v115 = *(v0 + 1104);
    v116 = *(v0 + 1088);
    v117 = *(v0 + 1080);
    v118 = *(v0 + 1072);
    v119 = *(v0 + 928);
    *(v104 + 96) = MEMORY[0x277D837D0];
    *(v104 + 104) = v114;
    *(v104 + 72) = v110;
    *(v104 + 80) = v112;
    sub_2146D91D8();
    swift_unknownObjectRelease();

    v120 = *(v0 + 1056);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v74 = v120;
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D28, &qword_214757DF0);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D30, &qword_214757DF8);
    if (swift_dynamicCast())
    {
      v91 = *(v0 + 1056);
      v92 = *(v0 + 1040);
      v93 = *(v0 + 1008);
      v94 = *(v0 + 1000);

      sub_213FB77C8((v0 + 496), v0 + 536);
      sub_213FB2E54(v91, v92, &unk_27C904F30, &unk_2146EFA20);
      if ((*(v93 + 48))(v92, 1, v94) == 1)
      {
        v154 = *(v0 + 1056);
        v95 = *(v0 + 1048);
        v96 = *(v0 + 928);
        sub_213FB2DF4(*(v0 + 1040), &unk_27C904F30, &unk_2146EFA20);
        sub_214506D5C();
        v97 = swift_allocError();
        *v98 = 1;
        sub_214506398(v97, v96, v0 + 336, v95, v76);
        swift_unknownObjectRelease();

        sub_213FB2DF4(v95, &unk_27C904F30, &unk_2146EFA20);
        __swift_destroy_boxed_opaque_existential_1((v0 + 336));
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        sub_213FB2DF4(v154, &unk_27C904F30, &unk_2146EFA20);

        __swift_destroy_boxed_opaque_existential_1((v0 + 536));
        __swift_destroy_boxed_opaque_existential_1((v0 + 376));
LABEL_48:
        v121 = *(v0 + 1056);
        v122 = *(v0 + 1048);
        v123 = *(v0 + 1040);
        v124 = *(v0 + 1032);
        v125 = *(v0 + 1024);
        v126 = *(v0 + 1016);
        v127 = *(v0 + 992);
        v128 = *(v0 + 968);
        v129 = *(v0 + 944);

        v130 = *(v0 + 8);

        return v130();
      }

      v131 = *(v0 + 1032);
      v132 = *(v0 + 968);
      v133 = *(v0 + 928);
      (*(*(v0 + 1008) + 32))(v131, *(v0 + 1040), *(v0 + 1000));
      v134 = swift_allocObject();
      *(v134 + 16) = sub_214506D50;
      *(v134 + 24) = v133;
      swift_beginAccess();

      v135 = *(v2 + 72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156 = *(v2 + 72);
      *(v2 + 72) = 0x8000000000000000;
      sub_214052B38(sub_214506DB0, v134, v131, isUniquelyReferenced_nonNull_native);
      *(v2 + 72) = v156;
      swift_endAccess();
      v137 = *(v0 + 560);
      v138 = *(v0 + 568);
      __swift_project_boxed_opaque_existential_1((v0 + 536), v137);
      (*(v138 + 16))(v155, v131, v76, v137, v138);
      v139 = *(v0 + 992);
      v140 = *(v0 + 968);
      v141 = *(v0 + 960);
      v142 = *(v0 + 952);
      sub_2146D9A08();
      (*(v141 + 8))(v140, v142);
      v143 = sub_214506DB8(&qword_27C914D40, type metadata accessor for UnpackerActor);
      *(v0 + 1168) = v143;
      v144 = *(v0 + 1064);
      v145 = *(MEMORY[0x277D858B8] + 4);
      v146 = swift_task_alloc();
      *(v0 + 1176) = v146;
      *v146 = v0;
      v146[1] = sub_21450593C;
      v147 = *(v0 + 992);
      v65 = *(v0 + 976);
      reply = (v0 + 856);
      v66 = v0 + 904;
      v63 = v144;
      v64 = v143;

      return MEMORY[0x2822005A8](reply, v63, v64, v65, v66);
    }

    sub_213FB2DF4(*(v0 + 1048), &unk_27C904F30, &unk_2146EFA20);
    __swift_destroy_boxed_opaque_existential_1((v0 + 336));
    return sub_2146DA018();
  }

  sub_213FB77C8((v0 + 456), v0 + 136);
  v86 = *(v0 + 160);
  v87 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v86);
  v88 = *(v87 + 16);
  v153 = (v88 + *v88);
  v89 = v88[1];
  v90 = swift_task_alloc();
  *(v0 + 1144) = v90;
  *v90 = v0;
  v90[1] = sub_214505520;

  return v153(v155, v76, v86, v87);
}

uint64_t sub_214505520(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[143];
  v11 = *v2;
  (*v2)[144] = v1;

  if (v1)
  {
    v6 = v4[133];
    v7 = sub_214506038;
  }

  else
  {
    v8 = v4[133];
    v9 = v4[131];
    v4[145] = a1;
    sub_213FB2DF4(v9, &unk_27C904F30, &unk_2146EFA20);
    __swift_destroy_boxed_opaque_existential_1(v4 + 42);
    v7 = sub_214505670;
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_214505670()
{
  xpc_connection_send_message(*(*(v0 + 928) + 24), *(v0 + 1160));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 928);
  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  sub_2146D9BC8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = *(v3 + 64);
  v6 = *(v3 + 48);
  *(v0 + 868) = *(v3 + 32);
  *(v0 + 884) = v6;
  *(v0 + 900) = v5;
  v7 = sub_2146D9618();
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = v1;
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  sub_214053840(v0 + 16, v0 + 656);
  sub_213FB2E54(v0 + 656, v0 + 576, &qword_27C914370, &qword_21474BE98);
  if (*(v0 + 600))
  {
    v10 = *(v0 + 1136);
    sub_213FB77C8((v0 + 576), v0 + 616);
    sub_214053840(v0 + 616, v0 + 296);
    v11 = sub_2146D9618();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1((v0 + 616));
    sub_213FB2DF4(v0 + 656, &qword_27C914370, &qword_21474BE98);
  }

  else
  {
    sub_213FB2DF4(v0 + 576, &qword_27C914370, &qword_21474BE98);
    sub_213FB2DF4(v0 + 656, &qword_27C914370, &qword_21474BE98);
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  v14 = *(v0 + 1128);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1104);
  v17 = *(v0 + 1088);
  v18 = *(v0 + 1080);
  v19 = *(v0 + 1072);
  v20 = *(v0 + 928);
  *(v4 + 96) = v8;
  *(v4 + 104) = v15;
  *(v4 + 72) = v11;
  *(v4 + 80) = v13;
  sub_2146D91D8();
  swift_unknownObjectRelease();

  v21 = *(v0 + 1056);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_213FB2DF4(v21, &unk_27C904F30, &unk_2146EFA20);
  v22 = *(v0 + 1056);
  v23 = *(v0 + 1048);
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1032);
  v26 = *(v0 + 1024);
  v27 = *(v0 + 1016);
  v28 = *(v0 + 992);
  v29 = *(v0 + 968);
  v30 = *(v0 + 944);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_21450593C()
{
  v2 = *v1;
  v3 = *(*v1 + 1176);
  v7 = *v1;

  v4 = *(v2 + 1064);
  if (v0)
  {
    v5 = sub_2145061C4;
  }

  else
  {
    v5 = sub_214505A50;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_214505A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = v5;
  v6 = *(v5 + 856);
  if (v6)
  {
    if (*(*(*(v5 + 928) + 72) + 16) != 1)
    {
      __break(1u);
      return MEMORY[0x2822005A8](a1, a2, a3, a4, a5);
    }

    v7 = *(v5 + 864);
    v8 = *(v5 + 1096);
    v9 = *(v5 + 1032);
    v10 = *(v5 + 1024);
    v11 = *(v5 + 1008);
    v12 = *(v5 + 1000);
    v13 = sub_2146D9B88();
    (*(v11 + 16))(v10, v9, v12);
    if (os_log_type_enabled(v8, v13))
    {
      log = *(v5 + 1096);
      v14 = *(v5 + 1024);
      v15 = *(v5 + 1008);
      v16 = *(v5 + 1000);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v72 = v18;
      *v17 = 136315138;
      sub_214506DB8(&qword_27C918120, MEMORY[0x277CC95F0]);
      v70 = v13;
      v19 = v16;
      v20 = v7;
      v21 = sub_2146DA428();
      v23 = v22;
      (*(v15 + 8))(v14, v19);
      v24 = v21;
      LOBYTE(v21) = v20;
      v25 = sub_2144AEA38(v24, v23, &v72);

      *(v17 + 4) = v25;
      _os_log_impl(&dword_213FAF000, log, v70, "Sending frame update over xpc %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x216056AC0](v18, -1, -1);
      MEMORY[0x216056AC0](v17, -1, -1);
      if ((v21 & 1) == 0)
      {
LABEL_10:
        xpc_connection_send_message(*(*(v5 + 928) + 24), v6);
        swift_unknownObjectRelease();
        v46 = *(v5 + 1168);
        v47 = *(v5 + 1064);
        v48 = *(MEMORY[0x277D858B8] + 4);
        v49 = swift_task_alloc();
        *(v5 + 1176) = v49;
        *v49 = v5;
        v49[1] = sub_21450593C;
        v50 = *(v5 + 992);
        a4 = *(v5 + 976);
        a1 = v5 + 856;
        a5 = v5 + 904;
        a2 = v47;
        a3 = v46;

        return MEMORY[0x2822005A8](a1, a2, a3, a4, a5);
      }
    }

    else
    {
      (*(*(v5 + 1008) + 8))(*(v5 + 1024), *(v5 + 1000));
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v45 = *(v5 + 928);
    sub_2145034C4(*(v5 + 1032));
    goto LABEL_10;
  }

  v26 = *(v5 + 1048);
  v27 = *(v5 + 1032);
  v28 = *(v5 + 1016);
  v29 = *(v5 + 1008);
  v30 = *(v5 + 1000);
  v31 = *(v5 + 928);
  (*(*(v5 + 984) + 8))(*(v5 + 992), *(v5 + 976));
  sub_213FB2DF4(v26, &unk_27C904F30, &unk_2146EFA20);
  __swift_destroy_boxed_opaque_existential_1((v5 + 336));
  (*(v29 + 16))(v28, v27, v30);
  swift_beginAccess();
  sub_214480264(0, 0, v28);
  swift_endAccess();
  (*(v29 + 8))(v27, v30);
  __swift_destroy_boxed_opaque_existential_1((v5 + 536));
  v32 = *(v5 + 1120);
  v33 = *(v5 + 1112);
  v34 = *(v5 + 928);
  __swift_destroy_boxed_opaque_existential_1((v5 + 376));
  sub_2146D9BC8();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2146E6910;
  v36 = *(v34 + 64);
  v37 = *(v34 + 48);
  *(v5 + 868) = *(v34 + 32);
  *(v5 + 884) = v37;
  *(v5 + 900) = v36;
  v38 = sub_2146D9618();
  v39 = MEMORY[0x277D837D0];
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = v32;
  *(v35 + 32) = v38;
  *(v35 + 40) = v40;
  sub_214053840(v5 + 16, v5 + 656);
  sub_213FB2E54(v5 + 656, v5 + 576, &qword_27C914370, &qword_21474BE98);
  if (*(v5 + 600))
  {
    v41 = *(v5 + 1136);
    sub_213FB77C8((v5 + 576), v5 + 616);
    sub_214053840(v5 + 616, v5 + 296);
    v42 = sub_2146D9618();
    v44 = v43;
    __swift_destroy_boxed_opaque_existential_1((v5 + 616));
    sub_213FB2DF4(v5 + 656, &qword_27C914370, &qword_21474BE98);
  }

  else
  {
    sub_213FB2DF4(v5 + 576, &qword_27C914370, &qword_21474BE98);
    sub_213FB2DF4(v5 + 656, &qword_27C914370, &qword_21474BE98);
    v44 = 0xE300000000000000;
    v42 = 7104878;
  }

  v51 = *(v5 + 1128);
  v52 = *(v5 + 1120);
  v53 = *(v5 + 1104);
  v54 = *(v5 + 1088);
  v55 = *(v5 + 1080);
  v56 = *(v5 + 1072);
  v57 = *(v5 + 928);
  *(v35 + 96) = v39;
  *(v35 + 104) = v52;
  *(v35 + 72) = v42;
  *(v35 + 80) = v44;
  sub_2146D91D8();
  swift_unknownObjectRelease();

  v58 = *(v5 + 1056);
  __swift_destroy_boxed_opaque_existential_1((v5 + 16));
  sub_213FB2DF4(v58, &unk_27C904F30, &unk_2146EFA20);
  v59 = *(v5 + 1056);
  v60 = *(v5 + 1048);
  v61 = *(v5 + 1040);
  v62 = *(v5 + 1032);
  v63 = *(v5 + 1024);
  v64 = *(v5 + 1016);
  v65 = *(v5 + 992);
  v66 = *(v5 + 968);
  v67 = *(v5 + 944);

  v68 = *(v5 + 8);

  return v68();
}

uint64_t sub_214506038()
{
  v1 = v0[116];

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v2 = v0[144];
  v3 = v0[141];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[131];
  v8 = v0[116];
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_214506398(v2, v8, (v0 + 42), v7, v3);
  swift_unknownObjectRelease();

  sub_213FB2DF4(v7, &unk_27C904F30, &unk_2146EFA20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v9 = v0[132];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_213FB2DF4(v9, &unk_27C904F30, &unk_2146EFA20);
  v10 = v0[132];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[129];
  v14 = v0[128];
  v15 = v0[127];
  v16 = v0[124];
  v17 = v0[121];
  v18 = v0[118];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2145061C4()
{
  v1 = v0[129];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[123];
  v6 = v0[122];
  v7 = v0[116];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = v0[113];
  __swift_destroy_boxed_opaque_existential_1(v0 + 67);
  v9 = v0[141];
  v10 = v0[136];
  v11 = v0[135];
  v12 = v0[134];
  v13 = v0[131];
  v14 = v0[116];
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_214506398(v8, v14, (v0 + 42), v13, v9);
  swift_unknownObjectRelease();

  sub_213FB2DF4(v13, &unk_27C904F30, &unk_2146EFA20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v15 = v0[132];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_213FB2DF4(v15, &unk_27C904F30, &unk_2146EFA20);
  v16 = v0[132];
  v17 = v0[131];
  v18 = v0[130];
  v19 = v0[129];
  v20 = v0[128];
  v21 = v0[127];
  v22 = v0[124];
  v23 = v0[121];
  v24 = v0[118];

  v25 = v0[1];

  return v25();
}

uint64_t sub_214506398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v50 - v10;
  v11 = sub_2146D8B88();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v50 - v15;
  v55 = type metadata accessor for EncoderErrorResponseMessage(0);
  v16 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1;
  sub_214689A34(a1, 0, 0, &v68);
  v20 = *(&v68 + 1);
  v58 = v68;
  v21 = *(&v69 + 1);
  v57 = v69;
  v22 = v71;
  v56 = v70;
  v54 = sub_2146D9BA8();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  v53 = qword_280B35408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E68D0;
  v24 = *(a2 + 48);
  v68 = *(a2 + 32);
  v69 = v24;
  LODWORD(v70) = *(a2 + 64);
  v25 = sub_2146D9618();
  v27 = v26;
  *(v23 + 56) = MEMORY[0x277D837D0];
  v28 = sub_213FB2DA0();
  *(v23 + 64) = v28;
  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  sub_214053840(a3, &v68);
  sub_213FB2E54(&v68, &v65, &qword_27C914370, &qword_21474BE98);
  v64 = a2;
  if (v66)
  {
    sub_213FB77C8(&v65, v67);
    sub_214053840(v67, &v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914D18, &qword_214757DE0);
    v29 = sub_2146D9618();
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_1(v67);
    sub_213FB2DF4(&v68, &qword_27C914370, &qword_21474BE98);
  }

  else
  {
    sub_213FB2DF4(&v65, &qword_27C914370, &qword_21474BE98);
    sub_213FB2DF4(&v68, &qword_27C914370, &qword_21474BE98);
    v31 = 0xE300000000000000;
    v29 = 7104878;
  }

  v32 = MEMORY[0x277D837D0];
  *(v23 + 96) = MEMORY[0x277D837D0];
  *(v23 + 104) = v28;
  *(v23 + 72) = v29;
  *(v23 + 80) = v31;
  v33 = v58;
  *&v68 = v58;
  *(&v68 + 1) = v20;
  v34 = v57;
  *&v69 = v57;
  *(&v69 + 1) = v21;
  v35 = v56;
  v70 = v56;
  v71 = v22;

  v36 = sub_2146D9618();
  *(v23 + 136) = v32;
  *(v23 + 144) = v28;
  *(v23 + 112) = v36;
  *(v23 + 120) = v37;
  sub_2146D91D8();

  v38 = v55;
  v39 = v60;
  sub_213FB2E54(v60, v18 + *(v55 + 20), &unk_27C904F30, &unk_2146EFA20);
  *v18 = v33;
  v18[1] = v20;
  v18[2] = v34;
  v18[3] = v21;
  v18[4] = v35;
  v18[5] = v22;
  v40 = *(v64 + 24);
  v41 = *(*v59 + 200);
  v42 = sub_214506DB8(&unk_27C914D50, type metadata accessor for EncoderErrorResponseMessage);
  v43 = v41(v18, v38, v42);
  xpc_connection_send_message(v40, v43);
  swift_unknownObjectRelease();
  v44 = v61;
  sub_213FB2E54(v39, v61, &unk_27C904F30, &unk_2146EFA20);
  v46 = v62;
  v45 = v63;
  if ((*(v62 + 48))(v44, 1, v63) == 1)
  {
    sub_214506E00(v18, type metadata accessor for EncoderErrorResponseMessage);
    return sub_213FB2DF4(v44, &unk_27C904F30, &unk_2146EFA20);
  }

  else
  {
    v48 = v52;
    (*(v46 + 32))(v52, v44, v45);
    v49 = v51;
    (*(v46 + 16))(v51, v48, v45);
    swift_beginAccess();
    sub_214480264(0, 0, v49);
    swift_endAccess();
    (*(v46 + 8))(v48, v45);
    return sub_214506E00(v18, type metadata accessor for EncoderErrorResponseMessage);
  }
}

uint64_t sub_2145069E0()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  sub_214506E00(v0 + OBJC_IVAR____TtC9BlastDoor16ClientConnection_clientConnectionQueue, type metadata accessor for AsyncSerialQueue);
  return v0;
}

uint64_t sub_214506A34()
{
  swift_weakDestroy();
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[9];

  sub_214506E00(v0 + OBJC_IVAR____TtC9BlastDoor16ClientConnection_clientConnectionQueue, type metadata accessor for AsyncSerialQueue);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 sub_214506AC4@<Q0>(__n128 *a1@<X8>)
{
  v2 = *v1;
  result = (*v1)[2];
  v4 = (*v1)[3];
  *a1 = result;
  a1[1] = v4;
  a1[2].n128_u32[0] = v2[4].n128_u32[0];
  return result;
}

void sub_214506ADC()
{
  v1 = *(*v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_213FB1508;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_213FB14A8;
  v4[3] = &block_descriptor_2;
  v3 = _Block_copy(v4);

  xpc_connection_set_event_handler(v1, v3);
  _Block_release(v3);
  xpc_connection_activate(v1);
}

uint64_t type metadata accessor for ClientConnection()
{
  result = qword_280B30790;
  if (!qword_280B30790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214506C58()
{
  sub_214444CB8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_214506D5C()
{
  result = qword_27C914D38;
  if (!qword_27C914D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914D38);
  }

  return result;
}

uint64_t sub_214506DB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214506E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214506E60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214445244;

  return sub_214503AC0(v2, v3);
}

uint64_t sub_214506EF8(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v43 = a2;
  v50 = *MEMORY[0x277D85DE8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  v36 = *(v41 - 8);
  v3 = v36;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20);
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AC8, &qword_2147417C8);
  v12 = *(v11 - 8);
  v13 = v12;
  v37 = v11;
  v38 = v12;
  v14 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D70, &unk_2147417D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v35 - v19;
  swift_weakInit();
  *(v2 + 72) = MEMORY[0x277D84F98];
  v21 = OBJC_IVAR____TtC9BlastDoor16ClientConnection_clientConnectionQueue;
  v22 = sub_2146D99B8();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  (*(v13 + 104))(v16, *MEMORY[0x277D85778], v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AC0, &qword_2147417B0);
  v23 = v44;
  sub_2146D99C8();
  v24 = *(v3 + 16);
  v25 = v41;
  v24(v2 + v21, v23, v41);
  v26 = v39;
  v27 = v40;
  (*(v6 + 16))(v39, v10, v40);
  v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  (*(v6 + 32))(v29 + v28, v26, v27);
  sub_21444337C(0, 0, v20, &unk_2147417C0, v29);

  (*(v36 + 8))(v44, v25);
  (*(v6 + 8))(v10, v27);
  (*(v38 + 8))(v16, v37);
  sub_213FB2DF4(v20, &unk_27C914D70, &unk_2147417D0);
  swift_weakAssign();
  *(v2 + 24) = v43;
  v45 = 0u;
  v46 = 0u;
  v30 = swift_unknownObjectRetain();
  xpc_connection_get_audit_token();
  pid = xpc_connection_get_pid(v30);
  v49 = pid;
  v32 = v46;
  v47 = v45;
  v48 = v46;
  *(v2 + 32) = v45;
  *(v2 + 48) = v32;
  *(v2 + 64) = pid;
  v33 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2145073B0@<X0>(void *a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_21408FFD8();
  result = swift_unknownObjectRelease();
  v4 = 0xEE00646568736172;
  v5 = 0x4365636976726553;
  v6 = 0xEC000000726F7272;
  v7 = 0x456E776F6E6B6E55;
  if (!v2)
  {
    v7 = 0xD000000000000011;
    v6 = 0x800000021479D020;
  }

  if (v2 != 1)
  {
    v5 = v7;
    v4 = v6;
  }

  *a1 = 0xD000000000000017;
  a1[1] = 0x800000021479CFE0;
  if (v2 == 2)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = v5;
  }

  if (v2 == 2)
  {
    v4 = 0x800000021479D000;
  }

  a1[2] = v8;
  a1[3] = v4;
  a1[4] = 0;
  a1[5] = 0;
  return result;
}

uint64_t sub_21450749C()
{
  v5 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v1 = sub_2146D9558();
  v3 = v2;

  MEMORY[0x2160545D0](v1, v3);

  sub_2146D8888();
}

uint64_t sub_214507564()
{
  v5 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v1 = sub_2146D9558();
  v3 = v2;

  MEMORY[0x2160545D0](v1, v3);

  return 47;
}

uint64_t sub_21450760C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_2146D9798();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214507654(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(i - 3);
      v7 = *(i - 2);

      v9 = MEMORY[0x216054530](v8, v7, v5, v6);
      sub_214507EEC(v9, v10);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_214507704(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      sub_214507EEC(v5, v6);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_214507790@<X0>(unint64_t result@<X0>, char a2@<W2>, void *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (result)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v4 = HIDWORD(result);
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((result & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_33;
  }

  v4 = result >> 16;
  if (result >> 16 > 0x10)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result > 0x7F)
  {
    goto LABEL_26;
  }

  v5 = result + 1;
  while (1)
  {
    v32[0] = (v5 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v5) >> 3))));
LABEL_10:
    v6 = sub_2146D9678();
    v8 = v7;
    result = sub_21450760C(v6, v7);
    if (!v9)
    {
      break;
    }

    if (result == 47 && v9 == 0xE100000000000000)
    {

LABEL_15:
      v32[0] = 47;
      v32[1] = 0xE100000000000000;
      MEMORY[0x28223BE20](result);
      v30[2] = v32;
      v11 = sub_214508AC4(0x7FFFFFFFFFFFFFFFLL, 1, sub_214508F10, v30, v6, v8, &v31);
      v12 = *(v11 + 16);
      if (v12)
      {
        v32[0] = MEMORY[0x277D84F90];
        sub_21409FD08(0, v12, 0);
        v13 = v32[0];
        v14 = (v11 + 56);
        do
        {
          v15 = *(v14 - 3);
          v16 = *(v14 - 2);
          v17 = *(v14 - 1);
          v18 = *v14;

          v19 = MEMORY[0x216054530](v15, v16, v17, v18);
          v21 = v20;

          v32[0] = v13;
          v23 = *(v13 + 16);
          v22 = *(v13 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_21409FD08((v22 > 1), v23 + 1, 1);
            v13 = v32[0];
          }

          *(v13 + 16) = v23 + 1;
          v24 = v13 + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
          v14 += 4;
          --v12;
        }

        while (v12);
      }

      else
      {

        v13 = MEMORY[0x277D84F90];
      }

      *a3 = v13;
      return result;
    }

    v10 = sub_2146DA6A8();

    if (v10)
    {
      goto LABEL_15;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    v25 = (result & 0x3F) << 8;
    v26 = (result >> 6) + v25 + 33217;
    v27 = (v25 | (result >> 6) & 0x3F) << 8;
    v28 = (result >> 18) + ((v27 | (result >> 12) & 0x3F) << 8) - 2122219023;
    v29 = (result >> 12) + v27 + 8487393;
    if (v4)
    {
      v5 = v28;
    }

    else
    {
      v5 = v29;
    }

    if (result < 0x800)
    {
      v5 = v26;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_214507A50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = 47;
  v33 = &v34;

  v7 = sub_214508AC4(0x7FFFFFFFFFFFFFFFLL, 1, sub_214508FF8, v32, a1, a2, v6);
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = v7 + 24;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (v10 + 32 * v8);
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    ++v8;
    v13 = v12 + 4;
    v15 = v12[1];
    v14 = v12[2];
    v12 += 4;
    if ((v14 ^ v15) >= 0x4000)
    {
      v31 = v10;
      v28 = *(v13 - 1);
      v29 = a1;
      v16 = *v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v11;
      v30 = a2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21409FD88(0, *(v11 + 16) + 1, 1);
        v11 = v34;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      v10 = v31;
      if (v19 >= v18 >> 1)
      {
        sub_21409FD88((v18 > 1), v19 + 1, 1);
        v10 = v31;
        v11 = v34;
      }

      *(v11 + 16) = v19 + 1;
      v20 = (v11 + 32 * v19);
      v20[4] = v15;
      v20[5] = v14;
      v20[6] = v28;
      v20[7] = v16;
      a2 = v30;
      a1 = v29;
      goto LABEL_2;
    }
  }

  v21 = sub_21450760C(a1, a2);
  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = v21;
  v24 = v22;
  if (v21 == 47 && v22 == 0xE100000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    v35 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (v23 == 126 && v24 == 0xE100000000000000)
  {
LABEL_24:

    goto LABEL_25;
  }

  v25 = sub_2146DA6A8();

  if (v25)
  {
LABEL_25:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_19:

  sub_214507D2C(&v35);
LABEL_20:
  sub_214507654(v11);
  if (v3)
  {
  }

  else
  {

    *a3 = v35;
  }

  return result;
}

uint64_t sub_214507D2C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 currentDirectoryPath];

  sub_2146D95B8();
  sub_214069AD8();
  v4 = sub_2146D9DB8();

  v5 = *(v4 + 16);
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v5, 0);
    v6 = v16;
    v7 = (v4 + 40);
    do
    {
      v17 = *(v7 - 1);
      v18 = *v7;

      v8 = sub_2146D97A8();
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        v14 = v9;
        v15 = v8;
        sub_21409FD08((v10 > 1), v11 + 1, 1);
        v9 = v14;
        v8 = v15;
      }

      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *a1 = v6;
  return result;
}

uint64_t sub_214507EEC(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    sub_214508F2C();
    swift_allocError();
    v8 = 0;
    goto LABEL_14;
  }

  v6 = v2;
  sub_214069AD8();
  if (sub_2146D9E08())
  {
    sub_214508F2C();
    swift_allocError();
    v8 = 1;
LABEL_14:
    *v7 = v8;
    return swift_willThrow();
  }

  if (a1 == 46 && a2 == 0xE100000000000000 || (sub_2146DA6A8() & 1) != 0 || a1 == 11822 && a2 == 0xE200000000000000 || (sub_2146DA6A8() & 1) != 0)
  {
    sub_214508F2C();
    swift_allocError();
    v8 = 2;
    goto LABEL_14;
  }

  v10 = *v2;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v10;
  if ((result & 1) == 0)
  {
    result = sub_2140960E0(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *v6 = result;
  }

  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = v11 + 1;
  if (v11 >= v12 >> 1)
  {
    v17 = v11 + 1;
    v15 = v10;
    v16 = *(v10 + 16);
    result = sub_2140960E0((v12 > 1), v11 + 1, 1, v15);
    v11 = v16;
    v13 = v17;
    v10 = result;
  }

  *(v10 + 16) = v13;
  v14 = v10 + 16 * v11;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *v6 = v10;
  return result;
}

uint64_t sub_2145080F8()
{
  v1 = v0;
  v23 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v2 = sub_2146D9558();
  v4 = v3;

  MEMORY[0x2160545D0](v2, v4);

  v5 = sub_2146D9628();

  v6 = realpath_DARWIN_EXTSN((v5 + 32), 0);

  if (!v6)
  {
    v21 = 4;
LABEL_18:
    sub_214508F2C();
    swift_allocError();
    *v22 = v21;
    return swift_willThrow();
  }

  MEMORY[0x216054540](v6);
  if (!v7)
  {
    v21 = 3;
    goto LABEL_18;
  }

  sub_214069AD8();
  v8 = sub_2146D9DB8();

  v10 = 0;
  v11 = *(v8 + 16);
  v12 = MEMORY[0x277D84F90];
LABEL_4:
  v13 = (v8 + 40 + 16 * v10);
  while (1)
  {
    if (v11 == v10)
    {

      v20 = *v1;

      *v1 = v12;
      return result;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    ++v10;
    v15 = *(v13 - 1);
    v14 = *v13;
    v13 += 2;
    v16 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v16 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v24 = v1;
      if ((result & 1) == 0)
      {
        result = sub_21409FD08(0, *(v12 + 16) + 1, 1);
      }

      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_21409FD08((v17 > 1), v18 + 1, 1);
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      v1 = v24;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214508368@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;

  sub_2145080F8();
  result = v5;
  if (v2)
  {
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2145083C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = *v3;

  sub_214507EEC(a1, a2);
  result = v9;
  if (v4)
  {
  }

  *a3 = v9;
  return result;
}

uint64_t sub_21450844C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *v2;

  sub_214507704(a1);
  result = v7;
  if (v3)
  {
  }

  *a2 = v7;
  return result;
}

uint64_t sub_2145084AC()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (*v0 + 16 + 16 * v1);
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2145084F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16))
  {

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v5 = *(v3 + 16);
      if (v5)
      {
LABEL_4:
        v6 = v5 - 1;
        v7 = *(v3 + 16 * v6 + 40);
        *(v3 + 16) = v6;

        *a1 = v3;
        return result;
      }
    }

    else
    {
      result = sub_214508EFC(v3);
      v3 = result;
      v5 = *(result + 16);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_2145085A0@<X0>(void *a1@<X8>)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];

  sub_2146D88E8();
  v9 = sub_2146D8878();
  (*(v3 + 8))(v6, v2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v25 = MEMORY[0x277D84F90];
    sub_21409FD08(0, v10, 0);
    v11 = v25;
    v12 = (v9 + 40);
    do
    {
      v13 = *v12;
      v23 = *(v12 - 1);
      v24 = v13;

      v14 = sub_2146D97A8();
      v25 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        v21 = v15;
        v22 = v14;
        sub_21409FD08((v16 > 1), v17 + 1, 1);
        v15 = v21;
        v14 = v22;
        v11 = v25;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *a1 = v11;
  return result;
}

uint64_t sub_2145087B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (sub_2146D8848())
  {
    v4 = sub_2146D8908();
    sub_214507A50(v4, v5, &v10);
    v7 = sub_2146D8958();
    result = (*(*(v7 - 8) + 8))(a1, v7);
    v9 = v10;
  }

  else
  {
    v6 = sub_2146D8958();
    result = (*(*(v6 - 8) + 8))(a1, v6);
    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_21450888C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DA9E8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v6 = sub_2146DA6B8();
    sub_214507A50(v6, v7, &v10);
    v9 = v10;
    __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214508960(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2146DAA18();
  v8[6] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v4 = sub_2146D9558();
  v6 = v5;

  MEMORY[0x2160545D0](v4, v6);

  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2146DA708();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

unint64_t sub_214508AC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2146D97B8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_214095520(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_214095520((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2146D9798();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2146D96B8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2146D96B8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2146D97B8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_214095520(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2146D97B8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_214095520(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_214095520((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2146D96B8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214508E98(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2146DA028();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2146D9F18();
}

unint64_t sub_214508F2C()
{
  result = qword_27C914D80;
  if (!qword_27C914D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914D80);
  }

  return result;
}

unint64_t sub_214508FA4()
{
  result = qword_27C914D88;
  if (!qword_27C914D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914D88);
  }

  return result;
}

uint64_t sub_214509020@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if ((result + 1) < 3)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_214509038@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  v4 = sub_214069764(&unk_2826532A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21403254C;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214509190()
{
  result = qword_27C914D90;
  if (!qword_27C914D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914D90);
  }

  return result;
}

unint64_t sub_2145092C4()
{
  result = qword_27C914D98;
  if (!qword_27C914D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914D98);
  }

  return result;
}

unint64_t sub_2145093F8()
{
  result = qword_27C914DA0;
  if (!qword_27C914DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914DA0);
  }

  return result;
}

uint64_t sub_214509554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145095D0()
{
  result = qword_27C914DA8;
  if (!qword_27C914DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914DA8);
  }

  return result;
}

unint64_t sub_214509624()
{
  result = qword_27C914DB0;
  if (!qword_27C914DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914DB0);
  }

  return result;
}

unint64_t sub_214509678()
{
  result = qword_27C914DB8;
  if (!qword_27C914DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C914DB8);
  }

  return result;
}

uint64_t sub_2145096F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21450973C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214509798()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214509814@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_214509838(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = v1->n128_u64[1];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  v1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_214509890()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t (*sub_2145098F8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 24))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 16);
    return sub_2143D0368;
  }

  return result;
}

void (*sub_214509980(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 25);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_2143D0480;
}

uint64_t sub_214509A18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13[0] = a1;
  v13[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v12 = *(v3 + 32);
  v11[0] = 0x6E776F6E6B6E753CLL;
  v11[1] = 0xE90000000000003ELL;
  v11[2] = 0xD00000000000001CLL;
  v11[3] = 0x800000021478A360;
  if (v6(v13, &v12, v11))
  {
    v8 = *(v3 + 24);

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214509B60(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214509BFC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

uint64_t sub_214509C94@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v1 + 64);
  return sub_21430298C(v2);
}

__n128 sub_214509CB0(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  sub_21430299C(*(v1 + 40));
  result = v8;
  *(v1 + 40) = v8;
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t sub_214509D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v7 = *(v1 + 48);
    v4 = *(v1 + 64) & 0xFF01;

    v6 = v7;
  }

  else
  {
    v4 = 0;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_214509E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor18CPMGroupManagementV9GroupDataOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_214509EA8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1 - 1;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  return v4;
}

unint64_t sub_214509F48()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 1701869940;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v1 - 1;
  v4 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(v3);
  return v4;
}

uint64_t sub_214509FE8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_21450A018(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21450A070()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21450A0A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_21450A0F8()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21450A16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_21450A1D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t sub_21450A224(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_21450A26C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_21450A31C;
}

uint64_t sub_21450A350()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_21450A388()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_213FDCA18(*v1, v2);
  return v3;
}

uint64_t sub_21450A3D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32));
  v5 = *v4;
  v6 = v4[1];
  sub_21402D9F8(v2, v3);
  result = sub_213FDC6BC(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_21450A43C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  result = sub_213FDC6BC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*sub_21450A484(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_213FDCA18(v5, v6);
  return sub_21450A4F8;
}

double sub_21450A530()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
  sub_213FDC6BC(*v1, *(v1 + 8));
  result = 0.0;
  *v1 = xmmword_2146E68C0;
  return result;
}

double sub_21450A5E8@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoConnectionRequest(0);
  v3 = a1 + v2[6];
  sub_2146D8DE8();
  v4 = (a1 + v2[7]);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + v2[8]) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21450A780@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(v1 + *(v7 + 24), v6, &qword_27C914EC0, qword_214758530);
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C914EC0, qword_214758530);
    return sub_2146D8DE8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450ACF8(v6, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    return sub_2146D8DE8();
  }

  return sub_21450B2C0(v6, a1, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
}

uint64_t sub_21450A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(a1 + *(v8 + 24), v7, &qword_27C914EC0, qword_214758530);
  v9 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C914EC0, qword_214758530);
    return sub_2146D8DE8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450ACF8(v7, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    return sub_2146D8DE8();
  }

  return sub_21450B2C0(v7, a2, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
}

void (*sub_21450AAB0(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  *(v5 + 12) = v12;
  sub_213FB2E54(v1 + v12, v8, &qword_27C914EC0, qword_214758530);
  v13 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC0, qword_214758530);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21450B2C0(v8, v11, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      return sub_21450ACC8;
    }

    sub_21450ACF8(v8, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  }

  sub_2146D8DE8();
  return sub_21450ACC8;
}

uint64_t sub_21450ACF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21450AD58@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(v1 + *(v7 + 24), v6, &qword_27C914EC0, qword_214758530);
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C914EC0, qword_214758530);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_21450B2C0(v6, a1, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    }

    sub_21450ACF8(v6, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  }

  *a1 = xmmword_2146ECC00;
  v10 = a1 + *(type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0) + 20);
  return sub_2146D8DE8();
}

uint64_t sub_21450AED8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  sub_213FB2E54(a1 + *(v8 + 24), v7, &qword_27C914EC0, qword_214758530);
  v9 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C914EC0, qword_214758530);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_21450B2C0(v7, a2, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
    }

    sub_21450ACF8(v7, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
  }

  *a2 = xmmword_2146ECC00;
  v11 = a2 + *(type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0) + 20);
  return sub_2146D8DE8();
}

uint64_t sub_21450B05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  sub_21450B6F8(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  sub_213FB2DF4(a2 + v13, &qword_27C914EC0, qword_214758530);
  sub_21450B2C0(v12, a2 + v13, a6);
  v14 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t sub_21450B194(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  sub_213FB2DF4(v2 + v5, &qword_27C914EC0, qword_214758530);
  sub_21450B2C0(a1, v2 + v5, a2);
  v6 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

uint64_t sub_21450B260@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_2146ECC00;
  v1 = a1 + *(type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0) + 20);
  return sub_2146D8DE8();
}

uint64_t sub_21450B2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*sub_21450B328(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  *(v5 + 12) = v13;
  sub_213FB2E54(v1 + v13, v8, &qword_27C914EC0, qword_214758530);
  v14 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC0, qword_214758530);
LABEL_15:
    *v12 = xmmword_2146ECC00;
    v16 = v12 + *(v9 + 20);
    sub_2146D8DE8();
    return sub_21450B560;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450ACF8(v8, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    goto LABEL_15;
  }

  sub_21450B2C0(v8, v12, type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent);
  return sub_21450B560;
}

void sub_21450B590(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_21450B6F8(v11, v10, a3);
    sub_213FB2DF4(v12 + v9, &qword_27C914EC0, qword_214758530);
    sub_21450B2C0(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_21450ACF8(v11, a5);
  }

  else
  {
    sub_213FB2DF4(v12 + v9, &qword_27C914EC0, qword_214758530);
    sub_21450B2C0(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

uint64_t sub_21450B6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21450B760@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 28);
  v4 = sub_2146D8DF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21450B7DC(uint64_t a1)
{
  v3 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 28);
  v4 = sub_2146D8DF8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_21450B8A4(uint64_t a1, uint64_t a2)
{
  if ((sub_214466780(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for NearbyProtoConnectionResponseContent.ApprovalContent(0) + 20);
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21450B958()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_21450B98C(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_21450BA7C@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoConnectionResponseContent(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  return sub_2146D8DE8();
}

uint64_t sub_21450BB2C()
{
  v1 = (v0 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_21450BB80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_21450BBE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t sub_21450BC38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*sub_21450BC80(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_21451548C;
}

void sub_21450BD30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

uint64_t (*sub_21450BE18(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_213FDCA18(v5, v6);
  return sub_214515490;
}

uint64_t sub_21450BEE8(char a1)
{
  result = type metadata accessor for NearbyProtoJoinRequestContent(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_21450BF18(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinRequestContent(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_21450BF74;
}

uint64_t sub_21450BFCC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21450C068(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double sub_21450C130@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoJoinRequestContent(0);
  v3 = a1 + v2[5];
  sub_2146D8DE8();
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_2146E68C0;
  *(a1 + v2[8]) = 2;
  return result;
}

uint64_t sub_21450C290@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(v1 + *(v7 + 20), v6, &qword_27C914EC8, &unk_214784480);
  v8 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C914EC8, &unk_214784480);
    return sub_2146D8DE8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450ACF8(v6, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    return sub_2146D8DE8();
  }

  return sub_21450B2C0(v6, a1, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
}

uint64_t sub_21450C3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(a1 + *(v8 + 20), v7, &qword_27C914EC8, &unk_214784480);
  v9 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_213FB2DF4(v7, &qword_27C914EC8, &unk_214784480);
    return sub_2146D8DE8();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21450ACF8(v7, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    return sub_2146D8DE8();
  }

  return sub_21450B2C0(v7, a2, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
}

void (*sub_21450C584(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  *(v5 + 12) = v12;
  sub_213FB2E54(v1 + v12, v8, &qword_27C914EC8, &unk_214784480);
  v13 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC8, &unk_214784480);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21450B2C0(v8, v11, type metadata accessor for NearbyProtoJoinResponseContent.DeniedContent);
      return sub_21450C79C;
    }

    sub_21450ACF8(v8, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  }

  sub_2146D8DE8();
  return sub_21450C79C;
}

void sub_21450C7CC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = *(*a1 + 12);
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v12 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_21450B6F8(v11, v10, a3);
    sub_213FB2DF4(v12 + v9, &qword_27C914EC8, &unk_214784480);
    sub_21450B2C0(v10, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
    sub_21450ACF8(v11, a5);
  }

  else
  {
    sub_213FB2DF4(v12 + v9, &qword_27C914EC8, &unk_214784480);
    sub_21450B2C0(v11, v12 + v9, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12 + v9, 0, 1, v7);
  }

  free(v11);
  free(v10);
  free(v14);

  free(v6);
}

double sub_21450C934@<D0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  sub_213FB2E54(v1 + *(v7 + 20), v6, &qword_27C914EC8, &unk_214784480);
  v8 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C914EC8, &unk_214784480);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21450B2C0(v6, a1, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
      return result;
    }

    sub_21450ACF8(v6, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  v10 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v11 = a1 + *(v10 + 24);
  sub_2146D8DE8();
  result = 0.0;
  *(a1 + *(v10 + 28)) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21450CAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  sub_21450B6F8(a1, &v16 - v11, a6);
  v13 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  sub_213FB2DF4(a2 + v13, &qword_27C914EC8, &unk_214784480);
  sub_21450B2C0(v12, a2 + v13, a6);
  v14 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2 + v13, 0, 1, v14);
}

uint64_t sub_21450CC08(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  sub_213FB2DF4(v2 + v5, &qword_27C914EC8, &unk_214784480);
  sub_21450B2C0(a1, v2 + v5, a2);
  v6 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

double sub_21450CCD4@<D0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  v2 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v3 = a1 + *(v2 + 24);
  sub_2146D8DE8();
  result = 0.0;
  *(a1 + *(v2 + 28)) = xmmword_2146E68C0;
  return result;
}

void (*sub_21450CD30(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC8, &unk_214784480) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for NearbyProtoJoinResponseContent(0) + 20);
  *(v5 + 12) = v13;
  sub_213FB2E54(v1 + v13, v8, &qword_27C914EC8, &unk_214784480);
  v14 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_213FB2DF4(v8, &qword_27C914EC8, &unk_214784480);
LABEL_15:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = MEMORY[0x277D84F90];
    v16 = v12 + *(v9 + 24);
    sub_2146D8DE8();
    *(v12 + *(v9 + 28)) = xmmword_2146E68C0;
    return sub_21450CF80;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21450ACF8(v8, type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation);
    goto LABEL_15;
  }

  sub_21450B2C0(v8, v12, type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent);
  return sub_21450CF80;
}

uint64_t sub_21450CFC8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21450D064(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_2146D8DF8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21450D134()
{
  sub_2146D8DF8();
  sub_21451415C(&qword_27C903D38, MEMORY[0x277D216C8]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21450D1EC(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_21450D250(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = v2[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >> 60 != 15)
  {
    v5 = v2[1];
  }

  sub_213FDCA18(*v2, v3);
  return v4;
}

uint64_t sub_21450D2A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (a2 + *(a5(0) + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_21402D9F8(v5, v6);
  result = sub_213FDC6BC(v8, v9);
  *v7 = v5;
  v7[1] = v6;
  return result;
}

uint64_t sub_21450D328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = v3 + *(a3(0) + 28);
  result = sub_213FDC6BC(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t (*sub_21450D374(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_213FDCA18(v5, v6);
  return sub_214515490;
}

uint64_t sub_21450D3E8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_21402D9F8(*a1, v2);
    sub_213FDC6BC(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_213FB54FC(v4, v2);
  }

  else
  {
    result = sub_213FDC6BC(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

double sub_21450D4B8()
{
  v1 = v0 + *(type metadata accessor for NearbyProtoJoinResponseContent.ApprovalContent(0) + 28);
  sub_213FDC6BC(*v1, *(v1 + 8));
  result = 0.0;
  *v1 = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21450D598@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for NearbyProtoJoinResponseContent(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for NearbyProtoJoinResponseContent.OneOf_Operation(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  return sub_2146D8DE8();
}

uint64_t sub_21450D684()
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 28);
        sub_2146D8F38();
      }

      else if (result == 4)
      {
        v4 = *(type metadata accessor for NearbyProtoConnectionRequest(0) + 32);
        sub_2146D8EC8();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_2146D8F48();
    }
  }

  return result;
}

uint64_t sub_21450D778()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_2146D90A8(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_2146D90A8(), !v1))
    {
      result = sub_21450D86C(v0);
      if (!v1)
      {
        sub_21450D8E4(v0);
        v8 = v0 + *(type metadata accessor for NearbyProtoConnectionRequest(0) + 24);
        return sub_2146D8DD8();
      }
    }
  }

  return result;
}

uint64_t sub_21450D86C(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoConnectionRequest(0);
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21450D8E4(uint64_t a1)
{
  result = type metadata accessor for NearbyProtoConnectionRequest(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21402D9F8(*v3, *(v3 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v5, v4);
  }

  return result;
}

double sub_21450D9D0@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v4 = a2 + a1[6];
  sub_2146D8DE8();
  v5 = a1[8];
  v6 = (a2 + a1[7]);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  *(a2 + v5) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_21450DA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_21451415C(&qword_27C9150B8, type metadata accessor for NearbyProtoConnectionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21450DB10(uint64_t a1)
{
  v2 = sub_21451415C(&qword_27C914F18, type metadata accessor for NearbyProtoConnectionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21450DB7C()
{
  sub_21451415C(&qword_27C914F18, type metadata accessor for NearbyProtoConnectionRequest);

  return sub_2146D9008();
}

uint64_t sub_21450DC38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_2146D9148();
  __swift_allocate_value_buffer(v6, a2);
  __swift_project_value_buffer(v6, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2146E68F0;
  v11 = (v10 + v9);
  v12 = v11 + v7[14];
  *v11 = 1;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_2146D9118();
  v15 = *(*(v14 - 8) + 104);
  (v15)(v12, v13, v14);
  v16 = v11 + v8 + v7[14];
  *(v11 + v8) = 2;
  *v16 = "handle";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v15();
  v17 = v7[14];
  v18 = (v11 + 2 * v8);
  *v18 = 3;
  v19 = v18 + v17;
  *v19 = a3;
  *(v19 + 1) = a4;
  v19[16] = 2;
  v15();
  v20 = (v11 + 3 * v8);
  v21 = v20 + v7[14];
  *v20 = 4;
  *v21 = a5;
  *(v21 + 1) = 8;
  v21[16] = 2;
  v15();
  return sub_2146D9128();
}

uint64_t sub_21450DE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_2146D8E78();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_21450DF68(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_21450E534(v5, a1, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_2146D8F48();
    }
  }

  return result;
}

uint64_t sub_21450DF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914EC0, qword_214758530);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9150E0, &qword_214759238);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for NearbyProtoConnectionResponseContent(0) + 24);
  v47 = a1;
  v45 = v32;
  sub_213FB2E54(a1 + v32, v14, &qword_27C914EC0, qword_214758530);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_213FB2DF4(v14, &qword_27C914EC0, qword_214758530);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    sub_21450B2C0(v14, v22, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    sub_21450B2C0(v22, v20, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21450ACF8(v20, type metadata accessor for NearbyProtoConnectionResponseContent.OneOf_Operation);
      v35 = v53;
    }

    else
    {
      sub_213FB2DF4(v28, &qword_27C9150E0, &qword_214759238);
      v36 = v20;
      v37 = v49;
      sub_21450B2C0(v36, v49, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      sub_21450B2C0(v37, v28, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  sub_21451415C(&qword_27C914F60, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
  v39 = v52;
  sub_2146D8F98();
  if (v39)
  {
    return sub_213FB2DF4(v28, &qword_27C9150E0, &qword_214759238);
  }

  sub_213FB2E54(v28, v38, &qword_27C9150E0, &qword_214759238);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    sub_213FB2DF4(v28, &qword_27C9150E0, &qword_214759238);
    return sub_213FB2DF4(v38, &qword_27C9150E0, &qword_214759238);
  }

  else
  {
    v41 = v48;
    sub_21450B2C0(v38, v48, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
    if (v33 != 1)
    {
      sub_2146D8E88();
    }

    sub_213FB2DF4(v28, &qword_27C9150E0, &qword_214759238);
    v42 = v47;
    v43 = v45;
    sub_213FB2DF4(v47 + v45, &qword_27C914EC0, qword_214758530);
    sub_21450B2C0(v41, v42 + v43, type metadata accessor for NearbyProtoConnectionResponseContent.DeniedContent);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}