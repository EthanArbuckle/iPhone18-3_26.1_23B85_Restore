void *sub_25BB72D08(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_25BB72D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_25BB72B7C(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_25BB72DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BADB604(v20);
  v8 = v20[0];
  (*(a4 + 8))(v20, a3, a4);
  v9 = v20[0];
  LOBYTE(v20[0]) = v8;
  v21 = v9;
  if (!sub_25BADB724(v20, &v21))
  {
    return (*(a4 + 64))(sub_25BB72F4C, a2, MEMORY[0x277D84F78] + 8, a3, a4);
  }

  swift_beginAccess();
  v10 = *(a2 + 48);
  v11 = sub_25BB7135C();
  MEMORY[0x28223BE20](v11);
  v14 = v10;
  v15 = v12;
  v16 = v8;
  v17 = v9;
  v18 = a1;
  v19 = a4;
  return (*(a4 + 64))(sub_25BB72F68);
}

uint64_t sub_25BB72F90(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t sub_25BB72F9C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_25BB72FC4()
{
  result = qword_28154BDC0;
  if (!qword_28154BDC0)
  {
    sub_25BCB6CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BDC0);
  }

  return result;
}

uint64_t sub_25BB73038(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_25BB7304C(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25BB73060(uint64_t result)
{
  if (result)
  {
    sub_25BCB617C();

    return sub_25BCB617C();
  }

  return result;
}

void sub_25BB730A4()
{
  v1 = [v0 shape];
  sub_25BB50DF0();
  v2 = sub_25BCB673C();

  v3 = sub_25BA9BEA0(v2);
  if (v3)
  {
    v4 = v3;
    if (v3 >= 1)
    {
      v5 = 0;
      v6 = 1;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x25F8779B0](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        v9 = [v7 integerValue];

        if ((v6 * v9) >> 64 != (v6 * v9) >> 63)
        {
          break;
        }

        ++v5;
        v6 *= v9;
        if (v4 == v5)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t sub_25BB731A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return TensorShape.subscript.getter(v1 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB731F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB73218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
  return sub_25BCB617C();
}

uint64_t Dense.weight.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *a1 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC();
}

uint64_t sub_25BB732E8@<X0>(void *a1@<X8>)
{
  result = Dense.weight.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_25BB73324(uint64_t *a1)
{
  v2 = *a1;

  return Dense.weight.setter(&v2);
}

uint64_t (*Dense.weight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BB37E84;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t Dense.$weight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t *sub_25BB734A0(uint64_t *a1)
{
  v2 = *a1;

  return Dense.bias.setter(&v2);
}

uint64_t *Dense.bias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 26) == 1)
  {
    if (v2)
    {
      v3 = *result;
      return Parameter.wrappedValue.setter(&v3);
    }

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t (*Dense.bias.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 26) != 1)
  {
    *a1 = 0;
    return sub_25BB73754;
  }

  v3 = *(*(v1 + 16) + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BB7368C;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BB7368C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v5 = a1[1];
      v6 = *a1;
      return Parameter.wrappedValue.setter(&v6);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  v3 = a1[1];
  v6 = *a1;

  Parameter.wrappedValue.setter(&v6);
}

void *sub_25BB73754(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t Dense.$bias.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 26) == 1)
  {
    v3 = *(v1 + 16);
    if (*(v1 + 25))
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 | *(v1 + 24);
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_25BB73820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *a2;
  v8 = *(a2 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_9_19();
  *(a3 + 16) = sub_25BB1AB60(v9);
  *(a3 + 24) = 256;
  *(a3 + 26) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5100, &qword_25BCC2C10);
  v10 = OUTLINED_FUNCTION_68();
  *(v10 + 16) = 0;
  *(a3 + 40) = v10;
  v11 = *(v4 + 32);
  if ((~v11 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
LABEL_11:
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  v12 = *(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  if (*(v12 + 16) <= 1uLL)
  {
    goto LABEL_11;
  }

  *(a3 + 32) = *(v12 + 40);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6;
  if (v7)
  {
    v13 = (v8 >> 8) & 1;
    v14 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_9_19();
    v14 = sub_25BB1AB60(v15);
    LOBYTE(v8) = 0;
    LOBYTE(v13) = 1;
  }

  *(a3 + 16) = v14;
  *(a3 + 24) = v8 & 1;
  *(a3 + 25) = v13;
  *(a3 + 26) = v7 != 0;
  return result;
}

uint64_t Dense.init(weight:bias:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_9_19();
  *&v24 = sub_25BB1AB60(v6);
  WORD4(v24) = 256;
  BYTE10(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5100, &qword_25BCC2C10);
  v7 = OUTLINED_FUNCTION_68();
  *(v7 + 16) = 0;
  *(&v25 + 1) = v7;
  if ((sub_25BAB74D0(2, 2, 0, 0) & 1) == 0)
  {
    v16 = xmmword_25BCC2BC0;
    v17 = 0xE600000000000000;
    v18 = 0;
    v19 = xmmword_25BCBC6A0;
    LOBYTE(v20) = 0;
    v22 = 7;
    OUTLINED_FUNCTION_5_24();
    goto LABEL_14;
  }

  WORD4(v23) = 256;
  *&v16 = v4;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();

  *&v23 = sub_25BAB6D38(&v16, 0x100000000);

  *&v16 = v5;
  OptionalParameter.init(wrappedValue:)(&v16);
  v8 = *(*(v4 + 16) + 152);
  v9 = *(v8 + 16);
  if (v9 <= 1)
  {
    v17 = 0;
    v16 = 1uLL;
    v18 = -1;
    v20 = 0;
    v19 = v9;
    v21 = -1;
    v22 = 4;
LABEL_13:
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
LABEL_14:
    sub_25BADDD28();
  }

  *&v25 = *(v8 + 40);
  if (!v5)
  {
LABEL_8:

    v15 = v24;
    *a3 = v23;
    a3[1] = v15;
    a3[2] = v25;
    return result;
  }

  if ((sub_25BAB74D0(1, 1, 0, 0) & 1) == 0)
  {
    v16 = xmmword_25BCC2BD0;
    v17 = 0xE400000000000000;
    v18 = 0;
    v19 = xmmword_25BCC06A0;
    LOBYTE(v20) = 0;
    v22 = 7;
    OUTLINED_FUNCTION_5_24();
    goto LABEL_14;
  }

  v10 = *(*(v5 + 16) + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  v12 = *(*(v4 + 16) + 152);
  if (!*(v12 + 16))
  {
    v16 = 0uLL;
    v17 = 0;
    v18 = -1;
    v20 = 0;
    v19 = 0uLL;
    v21 = -1;
    v22 = 4;
    sub_25BCB617C();
    goto LABEL_13;
  }

  *(inited + 32) = *(v12 + 32);
  v13 = sub_25BAB5C48(v10, inited);
  swift_setDeallocating();
  if (v13)
  {

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t Dense.init(unitCount:weightInitializer:biasInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_9_19();
  *(a3 + 16) = sub_25BB1AB60(v6);
  *(a3 + 24) = 256;
  *(a3 + 26) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5100, &qword_25BCC2C10);
  v7 = OUTLINED_FUNCTION_68();
  *(v7 + 16) = 0;
  *(a3 + 40) = v7;
  if (a1 < 1)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();

    *a3 = sub_25BB1AB04(v8);
    *(a3 + 8) = 256;
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();
    if (a2)
    {
      v9 = sub_25BB1AB04(a2);
    }

    else
    {
      v10 = OUTLINED_FUNCTION_9_19();
      v9 = sub_25BB1AB60(v10);
    }

    v11 = v9;

    *(a3 + 16) = v11;
    *(a3 + 24) = 256;
    *(a3 + 26) = a2 != 0;
    *(a3 + 32) = a1;
  }

  return result;
}

uint64_t Dense.initializeParameters(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[2];
  v5 = *(v1 + 26);
  v6 = v1[4];
  v7 = *(*(*(*a1 + 16) + 152) + 16);
  LOBYTE(v1) = 1;
  if ((sub_25BAB74D0(v7, 2, 4, 1) & 1) == 0)
  {
LABEL_7:
    v15 = v7;
    v16 = xmmword_25BCBCE20;
    v17 = 0;
    v18 = xmmword_25BCBAE70;
    v19 = v1;
    v20 = 7;
    OUTLINED_FUNCTION_5_24();
    sub_25BADDD28();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE70;
  *(v8 + 32) = v6;
  v1 = *(*(v2 + 16) + 152);

  v9 = sub_25BCB617C();
  v10 = sub_25BB731A8(v9);
  v12 = v11;

  if (v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v8 + 40) = v10;
  v15 = v8;
  sub_25BB1ABC8(&v15);

  if (v5)
  {
    OUTLINED_FUNCTION_1_2();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_25BCBAE50;
    *(v14 + 32) = v6;
    v15 = v14;

    sub_25BB1ABC8(&v15);
  }

  return result;
}

uint64_t sub_25BB7404C()
{
  v0 = sub_25BCB761C();

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

uint64_t sub_25BB740C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB7404C();
  *a2 = result;
  return result;
}

uint64_t sub_25BB740F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BADFA74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BB74128@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB7404C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB74150(uint64_t a1)
{
  v2 = sub_25BB745FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB7418C(uint64_t a1)
{
  v2 = sub_25BB745FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Dense.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5110, &qword_25BCC2C20);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB745FC();
  sub_25BCB7B2C();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    sub_25BB3993C();
    OUTLINED_FUNCTION_12_17();
    sub_25BCB76AC();
    v21 = BYTE8(v18[0]);
    v22 = 1;
    OUTLINED_FUNCTION_12_17();
    sub_25BCB765C();
    v16 = *&v18[0];
    v17 = WORD4(v18[0]);
    v14 = v19;
    v15 = v20;
    sub_25BB73820(&v16, &v14, v18);
    v10 = OUTLINED_FUNCTION_7_1();
    v11(v10);
    v12 = v18[1];
    *a2 = v18[0];
    a2[1] = v12;
    a2[2] = v18[2];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Dense.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5118, &qword_25BCC2C28);
  v4 = OUTLINED_FUNCTION_2(v3);
  v24 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 9);
  v22 = *(v1 + 16);
  v27 = *(v1 + 24);
  LODWORD(v8) = *(v1 + 26);
  v20 = *(v1 + 25);
  v21 = v8;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB745FC();
  sub_25BCB7B6C();
  v25 = v10;
  LOBYTE(v26) = v11;
  HIBYTE(v26) = v12;
  v28 = 0;
  sub_25BB39990();

  OUTLINED_FUNCTION_11_22();
  v14 = v23;
  sub_25BCB779C();

  if (v14)
  {
    return (*(v24 + 8))(v9, v3);
  }

  v16 = v24;
  if (v21)
  {
    if (v20)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 | v27;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v25 = v19;
  v26 = v18;
  v28 = 1;
  OUTLINED_FUNCTION_11_22();
  sub_25BCB773C();

  return (*(v16 + 8))(v9, v3);
}

unint64_t sub_25BB745FC()
{
  result = qword_28154C2B8;
  if (!qword_28154C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C2B8);
  }

  return result;
}

uint64_t sub_25BB74650(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25BB74690(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for Dense.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB747CC()
{
  result = qword_27FBB5120;
  if (!qword_27FBB5120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5120);
  }

  return result;
}

unint64_t sub_25BB74824()
{
  result = qword_28154C2A8;
  if (!qword_28154C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C2A8);
  }

  return result;
}

unint64_t sub_25BB7487C()
{
  result = qword_28154C2B0;
  if (!qword_28154C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C2B0);
  }

  return result;
}

__n128 *sub_25BB748D0(void *a1, id *a2)
{
  v8 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_2_27(v9, xmmword_25BCBB6D0);
  if (v8)
  {
    if (v4)
    {
      MEMORY[0x25F8779B0](0, a2);
    }

    else
    {
      v10 = a2[4];
    }

    OUTLINED_FUNCTION_0_34();
    if (v4)
    {
      MEMORY[0x25F8779B0](1, a2);
    }

    else
    {
      v12 = a2[5];
    }

    OUTLINED_FUNCTION_1_28();
    v13 = &selRef_cumulativeProductWithTensor_axisTensor_exclusive_reverse_name_;
  }

  else
  {
    if (v4)
    {
      MEMORY[0x25F8779B0](0, a2);
    }

    else
    {
      v11 = a2[4];
    }

    OUTLINED_FUNCTION_0_34();
    if (v4)
    {
      MEMORY[0x25F8779B0](1, a2);
    }

    else
    {
      v14 = a2[5];
    }

    OUTLINED_FUNCTION_1_28();
    v13 = &selRef_cumulativeSumWithTensor_axisTensor_exclusive_reverse_name_;
  }

  v15 = sub_25BB74C98(v8, a2, v3, v4, v5, v2, a1, v13);

  v9[2].n128_u64[0] = v15;
  return v9;
}

__n128 *sub_25BB74A4C(void *a1, uint64_t a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_2_27(v8, xmmword_25BCBB6D0);
  if (v4)
  {
    v9 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  sub_25BCB617C();
  v15 = sub_25BB74D34(v10, v11, v12, v14, v13, a1, a3);

  v8[2].n128_u64[0] = v15;
  return v8;
}

uint64_t sub_25BB74B48(uint64_t a1)
{
  result = sub_25BB74C50(&qword_27FBB4D08, type metadata accessor for ArgumentSortOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB74BA0(uint64_t a1)
{
  result = sub_25BB74C50(&qword_27FBB4CF8, type metadata accessor for SortOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB74BF8(uint64_t a1)
{
  result = sub_25BB74C50(&qword_27FBB5128, type metadata accessor for CumulativeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB74C50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB74C98(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, void *a7, SEL *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a7 *a8];

  return v15;
}

id sub_25BB74D34(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, SEL *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a6 *a7];

  return v13;
}

uint64_t sub_25BB74DC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25BBFD334(0, result, *(a2 + 16));
  if ((v5 & 1) == 0)
  {
    v6 = result;
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(a2 + 16);
LABEL_5:
  TensorShape.subscript.getter(0, v6, a3);
}

uint64_t resize(images:size:mode:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = *a4;
  v10 = *(*(*(*a1 + 16) + 152) + 16);
  if ((sub_25BAB74D0(v10, 3, 4, 1) & 1) == 0)
  {
    v29 = v10;
    *v30 = xmmword_25BCC2ED0;
    v30[16] = 0;
    v31 = xmmword_25BCC2EE0;
    v32 = 1;
    v35 = 7;
    OUTLINED_FUNCTION_2_28();
    goto LABEL_6;
  }

  v11 = *(v8 + 16);
  v12 = *(v11 + 160);
  if (!sub_25BAA80BC(v12, &unk_286D42270))
  {
    LOBYTE(v38[0]) = v12;
    v29 = sub_25BC8FACC();
    *v30 = v28;
    *&v30[8] = xmmword_25BCC2ED0;
    LOBYTE(v31) = 0;
    *(&v31 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v32 = 2;
    v35 = 3;
    OUTLINED_FUNCTION_2_28();
LABEL_6:
    sub_25BADDD28();
  }

  v13 = *(v11 + 152);
  v14 = *(v13 + 16) - 2;
  sub_25BCB617C();
  sub_25BB74DC8(v14, v13, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  sub_25BAC0EB8(inited);
  v16 = *(v8 + 16);
  v37[0] = v9;
  v30[0] = *(v16 + 160);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v9;

  v18 = sub_25BAAF074(sub_25BB75CB4);
  v20 = v19;

  v37[111] = 0;
  v38[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ImageOps.swift";
  v38[1] = 110;
  v39 = 2;
  v40 = xmmword_25BCC2EF0;
  v41 = "init(id:operand:size:samplingMode:resultDescriptor:creationSite:backward:)";
  v42 = 74;
  v43 = 2;
  type metadata accessor for ResizeOperation();
  swift_allocObject();
  v21 = sub_25BBA8588(0, 0, 0, v16, a2, a3, v37, &v29, v38, v18, v20);
  sub_25BAA51C8(*(v8 + 16) + 168, v37);
  sub_25BAA51C8(v37, v36);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v29);

  v22 = v34;

  sub_25BAA4AF4(&v29);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v29);

  v23 = v33;

  sub_25BAA4AF4(&v29);
  type metadata accessor for TensorRepresentation();
  v24 = swift_allocObject();
  LOBYTE(v29) = 1;
  v25 = sub_25BC0C92C(v21, 0, v36, 0x100000000, v22, v23, v24);
  type metadata accessor for TensorHandle();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;

  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v37);
  *a5 = v26;
  return result;
}

uint64_t static InterpolationMode.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 != 2)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (v3 != 2)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t InterpolationMode.hash(into:)()
{
  if (*v0 == 2)
  {
    return MEMORY[0x25F878200](1);
  }

  MEMORY[0x25F878200](0);
  return sub_25BCB79EC();
}

uint64_t InterpolationMode.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  if (v1 == 2)
  {
    MEMORY[0x25F878200](1);
  }

  else
  {
    MEMORY[0x25F878200](0);
    sub_25BCB79EC();
  }

  return sub_25BCB7A3C();
}

uint64_t sub_25BB75318()
{
  v1 = *v0;
  sub_25BCB79CC();
  if (v1 == 2)
  {
    MEMORY[0x25F878200](1);
  }

  else
  {
    MEMORY[0x25F878200](0);
    sub_25BCB79EC();
  }

  return sub_25BCB7A3C();
}

uint64_t sub_25BB7537C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v7 = *(result + 32);
      v8 = *(a2 + 32);
      v9 = *(v7 + 16);
      v10 = *(v8 + 16);
      v26[0] = a5;
      v11 = *(v10 + 160);
      v21 = *(v10 + 152);
      v22 = v11;
      v35 = 0;
      v27 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ImageOps.swift";
      v28 = 110;
      v29 = 2;
      v30 = xmmword_25BCC2F00;
      v31 = "init(id:gradientOperand:operand:size:samplingMode:resultDescriptor:creationSite:)";
      v32 = 81;
      v33 = 2;
      v34 = 0;
      type metadata accessor for ResizeGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      v12 = sub_25BBA8718(0, 0, 0, v9, v10, a3, a4, v26, &v21);
      sub_25BAA51C8(*(v7 + 16) + 168, v26);
      sub_25BAA51C8(v26, v25);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v21);

      v13 = v24;

      sub_25BAA4AF4(&v21);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v21);

      v14 = v23;

      sub_25BAA4AF4(&v21);
      type metadata accessor for TensorRepresentation();
      v15 = swift_allocObject();
      LOBYTE(v21) = 1;
      v16 = sub_25BC0DE0C(v12, 0, v25, 0x100000000, v13, v14, v15);
      type metadata accessor for TensorHandle();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_25BCBAE50;
      *(v18 + 32) = v17;
      v19 = *(v8 + 16);

      *(v18 + 40) = sub_25BAC42B0();
      *(v18 + 48) = v20;

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Tensor.resized(to:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  v8 = *v4;
  v7 = v5;
  return resize(images:size:mode:)(&v8, a1, a2, &v7, a4);
}

uint64_t sub_25BB75678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BCDD6F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BB75750(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t sub_25BB75848()
{
  v1 = *v0;
  sub_25BCB79CC();
  sub_25BABA604(v3, v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB75894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB75678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB758BC(uint64_t a1)
{
  v2 = sub_25BB75CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB758F8(uint64_t a1)
{
  v2 = sub_25BB75CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InterpolationMode.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5130, &qword_25BCC2F18);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB75CC0();
  sub_25BCB7B6C();
  if (v12 == 2)
  {
    v19 = 1;
    v18 = 0;
    sub_25BB75D14();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
  }

  else
  {
    v17 = 0;
    sub_25BB75D14();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v2)
    {
      v16 = 1;
      OUTLINED_FUNCTION_1_12();
      sub_25BCB776C();
    }
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t InterpolationMode.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5148, &qword_25BCC2F20);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB75CC0();
  sub_25BCB7B2C();
  if (!v2)
  {
    sub_25BB75D68();
    sub_25BCB76AC();
    if (v17)
    {
      v10 = OUTLINED_FUNCTION_6_3();
      v11(v10);
      v12 = 2;
    }

    else
    {
      v13 = sub_25BCB767C();
      v14 = OUTLINED_FUNCTION_6_3();
      v15(v14);
      v12 = v13 & 1;
    }

    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_25BB75CC0()
{
  result = qword_27FBB5138;
  if (!qword_27FBB5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5138);
  }

  return result;
}

unint64_t sub_25BB75D14()
{
  result = qword_27FBB5140;
  if (!qword_27FBB5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5140);
  }

  return result;
}

unint64_t sub_25BB75D68()
{
  result = qword_27FBB5150;
  if (!qword_27FBB5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5150);
  }

  return result;
}

unint64_t sub_25BB75DC0()
{
  result = qword_27FBB5158;
  if (!qword_27FBB5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5158);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for InterpolationMode(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InterpolationMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BB75FA4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_25BB75FC0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *sub_25BB75FF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB760D8()
{
  result = qword_27FBB5160;
  if (!qword_27FBB5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5160);
  }

  return result;
}

unint64_t sub_25BB76130()
{
  result = qword_27FBB5168;
  if (!qword_27FBB5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5168);
  }

  return result;
}

unint64_t sub_25BB76188()
{
  result = qword_27FBB5170;
  if (!qword_27FBB5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5170);
  }

  return result;
}

unint64_t sub_25BB761E0()
{
  result = qword_27FBB5178;
  if (!qword_27FBB5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5178);
  }

  return result;
}

unint64_t sub_25BB76234()
{
  result = qword_27FBB5180;
  if (!qword_27FBB5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5180);
  }

  return result;
}

uint64_t sub_25BB7628C(void *a1, uint64_t a2)
{
  v6 = *(v2 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBB6D0;
  v8 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  switch(v6)
  {
    case 1:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v22 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_acosWithTensor_name_;
      break;
    case 2:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v18 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_acoshWithTensor_name_;
      break;
    case 3:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v20 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_asinWithTensor_name_;
      break;
    case 4:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v14 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_asinhWithTensor_name_;
      break;
    case 5:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v25 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_atanWithTensor_name_;
      break;
    case 6:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v28 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_atanhWithTensor_name_;
      break;
    case 7:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v21 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_ceilWithTensor_name_;
      break;
    case 8:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v31 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_cosWithTensor_name_;
      break;
    case 9:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v16 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_coshWithTensor_name_;
      break;
    case 10:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v30 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_exponentWithTensor_name_;
      break;
    case 11:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v13 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_exponentBase2WithTensor_name_;
      break;
    case 12:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v15 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_floorWithTensor_name_;
      break;
    case 13:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v27 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_identityWithTensor_name_;
      break;
    case 14:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v12 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_logarithmWithTensor_name_;
      break;
    case 15:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v19 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_reciprocalWithTensor_name_;
      break;
    case 16:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v11 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_roundWithTensor_name_;
      break;
    case 17:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v23 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_reverseSquareRootWithTensor_name_;
      break;
    case 18:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v29 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_signWithTensor_name_;
      break;
    case 19:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v33 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_sinWithTensor_name_;
      break;
    case 20:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v24 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_sinhWithTensor_name_;
      break;
    case 21:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v26 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_squareRootWithTensor_name_;
      break;
    case 22:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v32 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_squareWithTensor_name_;
      break;
    case 23:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v34 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_tanWithTensor_name_;
      break;
    case 24:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v17 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_tanhWithTensor_name_;
      break;
    default:
      if (v8)
      {
        OUTLINED_FUNCTION_1_29();
      }

      else
      {
        v9 = *(a2 + 32);
      }

      OUTLINED_FUNCTION_0_35();
      v10 = &selRef_absoluteWithTensor_name_;
      break;
  }

  v35 = sub_25BB07C28(a2, v3, v2, a1, v10);

  *(v7 + 32) = v35;
  return v7;
}

uint64_t sub_25BB766F8(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  v9 = *(v2 + 24);
  v8 = *(v2 + 32);
  sub_25BCB617C();
  v10 = sub_25BB76860(v7, v9, v8, a1);

  *(v5 + 32) = v10;
  return v5;
}

unint64_t sub_25BB767E0(uint64_t a1)
{
  result = sub_25BB76808();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BB76808()
{
  result = qword_27FBB5188;
  if (!qword_27FBB5188)
  {
    type metadata accessor for UnaryLogicalOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5188);
  }

  return result;
}

id sub_25BB76860(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BCB633C();

  v7 = [a4 notWithTensor:a1 name:v6];

  return v7;
}

uint64_t sub_25BB76908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C();
  }
}

unint64_t sub_25BB76960()
{
  result = qword_27FBB5190;
  if (!qword_27FBB5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5190);
  }

  return result;
}

uint64_t sub_25BB769B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB769F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, char a6)
{
  v13 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25BCBAE50;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v6 + 16) = v14;
  *(v6 + 24) = a3;
  *(v6 + 32) = *(v13 + *MEMORY[0x277D84DE8] + 8);
  *(v6 + 40) = a4;
  *(v6 + 48) = a5 & 1;
  *(v6 + 49) = a6;
  return v6;
}

uint64_t sub_25BB76B4C(uint64_t a1, uint64_t a2)
{
  v10[5] = (*(a2 + 16))();
  v10[2] = a1;
  v10[3] = a2;
  type metadata accessor for StoredPropertyInfo();
  OUTLINED_FUNCTION_4_26();
  v4 = sub_25BCB68CC();
  v5 = type metadata accessor for AnyStoredPropertyInfo();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_25BAB2B20(sub_25BB776AC, v10, v4, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  return v8;
}

uint64_t sub_25BB76C2C(uint64_t a1)
{
  if (__swift_getEnumTagSinglePayload(v1, 1, *(a1 + 16)) == 1)
  {
    type metadata accessor for StoredPropertyInfo();
    OUTLINED_FUNCTION_4_26();
    return sub_25BCB67CC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    swift_allocObject();
    v3 = sub_25BCB676C();
    v5 = v4;
    v6 = type metadata accessor for StoredPropertyInfo();
    MEMORY[0x28223BE20](v6);
    KeyPath = swift_getKeyPath();
    *v5 = sub_25BB76AC0(0x65756C6176, 0xE500000000000000, KeyPath, 0, 1, 1);
    result = v3;
    sub_25BBE4B7C();
  }

  return result;
}

uint64_t sub_25BB76D54(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  sub_25BCB68CC();
  swift_getWitnessTable();
  sub_25BCB6A9C();
  v9 = v10;
  v8[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
  v4 = type metadata accessor for StoredPropertyInfo();
  v5 = sub_25BB42928();
  return sub_25BAB2B20(sub_25BB776CC, v8, v3, v4, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
}

uint64_t sub_25BB76E44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_25BCB68CC();
  type metadata accessor for StoredPropertyInfo();
  sub_25BB6D800();
  v4 = sub_25BCB6FBC();
  v6 = v5;
  KeyPath = swift_getKeyPath();
  result = sub_25BB76AC0(v4, v6, KeyPath, 0, 1, 1);
  *a2 = result;
  return result;
}

uint64_t sub_25BB76F08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = *a1;
  v5 = *a2;
  return sub_25BCB690C();
}

uint64_t sub_25BB76F20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  sub_25BCB68CC();
  v7 = sub_25BCB68FC();
  (*(*(v5 - 8) + 24))(v8, a1, v5);
  return v7(&v10, 0);
}

uint64_t sub_25BB7704C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    type metadata accessor for StoredPropertyInfo();
    swift_getTupleTypeMetadata2();
    AssociatedTypeWitness = sub_25BCB732C();
    if (v5 <= 0x3F)
    {
      sub_25BB77500();
      AssociatedTypeWitness = v6;
      if (v7 <= 0x3F)
      {
        sub_25BB77564();
        AssociatedTypeWitness = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_25BB77158(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  result = swift_getAssociatedTypeWitness();
  v9 = *(*(result - 8) + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(*(result - 8) + 84);
  }

  v11 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
LABEL_26:
    if (v9 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v9, result);
    }
  }

  else
  {
    v12 = ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v13 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = a2 - v10 + 1;
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

    switch(v16)
    {
      case 1:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(a1 + v12);
        if (!v17)
        {
          goto LABEL_26;
        }

LABEL_22:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *a1;
        }

        result = v10 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25BB772F8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 >= a3)
  {
    v16 = 0;
  }

  else
  {
    if (((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a3 - v11 + 1;
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
  }

  if (a2 <= v11)
  {
    switch(v16)
    {
      case 1:
        *(a1 + v13) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v13) = 0;
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
        *(a1 + v13) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 < 0x7FFFFFFF)
          {
            v19 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v20 = (a2 - 1);
            }

            *v19 = v20;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v10, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a2 - v11;
    }

    else
    {
      v17 = 1;
    }

    if (((((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = ~v11 + a2;
      bzero(a1, v13);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v13) = v17;
        break;
      case 2:
        *(a1 + v13) = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v13) = v17;
        break;
      default:
        return;
    }
  }
}

void sub_25BB77500()
{
  if (!qword_28154BD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB5198, qword_25BCC35D8);
    v0 = sub_25BCB6E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28154BD50);
    }
  }
}

void sub_25BB77564()
{
  if (!qword_28154BE58)
  {
    v0 = sub_25BCB68CC();
    if (!v1)
    {
      atomic_store(v0, &qword_28154BE58);
    }
  }
}

uint64_t sub_25BB775D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for StoredPropertyInfo();
  result = swift_dynamicCastClass();
  v5 = result;
  if (result)
  {
  }

  *a2 = v5;
  return result;
}

unint64_t sub_25BB77648()
{
  result = qword_27FBB51B8;
  if (!qword_27FBB51B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB51B0, &unk_25BCC36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB51B8);
  }

  return result;
}

void sub_25BB77708()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  LODWORD(v47) = v2;
  v4 = v3;
  OUTLINED_FUNCTION_9();
  v46 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  sub_25BCB720C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  if (!v4)
  {
LABEL_26:
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v27 = *(v46 + 16);
  OUTLINED_FUNCTION_46_7();
  v28();
  v29 = swift_allocObject();
  *(v29 + 16) = v47 & 1;
  *(v29 + 24) = v4;
  sub_25BAB1090(v11, sub_25BB929F8, v29, v26);
  v44 = v26;
  WitnessTable = v14;
  (*(v14 + 16))(v20, v26, v12);
  OUTLINED_FUNCTION_4_5();
  v30 = swift_getWitnessTable();
  MEMORY[0x25F876DC0](v12, v30);
  v47 = MEMORY[0x277D84F90];
  v46 = v1;
  while (1)
  {
    while (1)
    {
      sub_25BAB173C(v12, &v48);
      if (!v48)
      {
        v42 = *(WitnessTable + 8);
        v42(v23, v12);
        v48 = 0uLL;
        Array<A>.resolve(descriptor:)(&v48, v47);

        v42(v44, v12);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_48_6();
      sub_25BCB736C();
      OUTLINED_FUNCTION_31_10();
      if (swift_dynamicCastClass())
      {
        break;
      }

      sub_25BCB736C();
      OUTLINED_FUNCTION_31_10();
      if (swift_dynamicCastClass() && (v4 & 2) != 0)
      {
        OUTLINED_FUNCTION_23_13();
        OUTLINED_FUNCTION_29_11();
        if ((~v33 & 0xF000000000000007) != 0)
        {

          OUTLINED_FUNCTION_23_13();
          OUTLINED_FUNCTION_29_11();
          if ((~v34 & 0xF000000000000007) != 0 && v34 < 0)
          {
            goto LABEL_17;
          }
        }

LABEL_14:
      }

      else
      {
LABEL_12:
      }
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_29_11();
    if ((~v31 & 0xF000000000000007) == 0)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_29_11();
    if ((~v32 & 0xF000000000000007) == 0 || (v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:

    swift_getAtKeyPath();
    OUTLINED_FUNCTION_29_11();
    if ((~v35 & 0xF000000000000007) == 0)
    {
      OUTLINED_FUNCTION_32_9();
      OUTLINED_FUNCTION_7_0();
      goto LABEL_29;
    }

    if ((v35 & 0x8000000000000000) == 0)
    {
      break;
    }

    v36 = v35 & 0x7FFFFFFFFFFFFFFFLL;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = *(v47 + 16);
      OUTLINED_FUNCTION_8_0();
      sub_25BAA1B64();
      v47 = v40;
    }

    v37 = *(v47 + 16);
    if (v37 >= *(v47 + 24) >> 1)
    {
      sub_25BAA1B64();
      v47 = v41;
    }

    v38 = v47;
    *(v47 + 16) = v37 + 1;
    *(v38 + 8 * v37 + 32) = v36;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_7_0();
LABEL_29:
  sub_25BCB74CC();
  __break(1u);
}

Swift::Void __swiftcall Layer.prepare(for:)(NeuralNetworks::LearningPhase a1)
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v33 = v5;
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  v32[1] = swift_getWitnessTable();
  v14 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v22 = v20 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v32 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v32 - v27;
  v29 = *v4;
  (*(v7 + 16))(v13, v2, v33);
  sub_25BAB1090(v13, sub_25BB8EC74, 0, v28);
  (*(v16 + 16))(v22, v28, v14);
  OUTLINED_FUNCTION_4_5();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F876DC0](v14, WitnessTable);
  while (1)
  {
    sub_25BAB173C(v14, &v34);
    if (!v34)
    {
      break;
    }

    LOBYTE(v34) = v29;
    swift_setAtWritableKeyPath();
  }

  v31 = *(v16 + 8);
  v31(v26, v14);
  v31(v28, v14);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BB77E24(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB92184(__dst, v38);
  sub_25BB88210(__dst, sub_25BB8E45C, 0, __src);
  memcpy(v38, __src, 0x80uLL);
  v2 = v38[15];
  v3 = v38[13];
  memcpy(v35, __src, sizeof(v35));
  sub_25BAA486C(v38, v34, &qword_27FBB5210, &qword_25BCC38C0);
  while (1)
  {
    v4 = v35[12];
    if (!*(v35[12] + 16))
    {
      memcpy(v33, __src, sizeof(v33));
      sub_25BAA6F5C(v33, &qword_27FBB5210, &qword_25BCC38C0);
      memcpy(v34, v35, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB5210, &qword_25BCC38C0);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1958C(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v35[12] = v4;
    v33[0] = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5218, &qword_25BCC38C8);
        v13 = sub_25BB92940(&qword_27FBB5230, &qword_27FBB5218, &qword_25BCC38C8);
        sub_25BAB89AC(v11, v9, v35, v33, v12, v11, v13);
      }

      else
      {
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5218, &qword_25BCC38C8);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5220, &qword_25BCC38D0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5228, &qword_25BCC38D8), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB78260(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB92730(__dst, v38);
  sub_25BB88510(__dst, sub_25BB8E45C, 0, __src);
  memcpy(v38, __src, 0x78uLL);
  v2 = v38[14];
  v3 = v38[12];
  memcpy(v35, __src, sizeof(v35));
  sub_25BAA486C(v38, v34, &qword_27FBB59D8, &qword_25BCC3ED8);
  while (1)
  {
    v4 = v35[11];
    if (!*(v35[11] + 16))
    {
      memcpy(v33, __src, sizeof(v33));
      sub_25BAA6F5C(v33, &qword_27FBB59D8, &qword_25BCC3ED8);
      memcpy(v34, v35, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB59D8, &qword_25BCC3ED8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC195A4(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v35[11] = v4;
    v33[0] = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59E0, &qword_25BCC3EE0);
        v13 = sub_25BB92940(&qword_27FBB59F8, &qword_27FBB59E0, &qword_25BCC3EE0);
        sub_25BAB89AC(v11, v9, v35, v33, v12, v11, v13);
      }

      else
      {
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59E0, &qword_25BCC3EE0);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59E8, &qword_25BCC3EE8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59F0, &qword_25BCC3EF0), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7869C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB92680(__dst, v38);
  sub_25BB88810(__dst, sub_25BB8E45C, 0, __src);
  memcpy(v38, __src, 0xA8uLL);
  v2 = v38[20];
  v3 = v38[18];
  memcpy(v35, __src, sizeof(v35));
  sub_25BAA486C(v38, v34, &qword_27FBB59B0, &qword_25BCC3EB8);
  while (1)
  {
    v4 = v35[17];
    if (!*(v35[17] + 16))
    {
      memcpy(v33, __src, sizeof(v33));
      sub_25BAA6F5C(v33, &qword_27FBB59B0, &qword_25BCC3EB8);
      memcpy(v34, v35, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB59B0, &qword_25BCC3EB8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC195BC(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v35[17] = v4;
    v33[0] = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59B8, &qword_25BCC3EC0);
        v13 = sub_25BB92940(&qword_27FBB59D0, &qword_27FBB59B8, &qword_25BCC3EC0);
        sub_25BAB89AC(v11, v9, v35, v33, v12, v11, v13);
      }

      else
      {
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59B8, &qword_25BCC3EC0);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59C0, &qword_25BCC3EC8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59C8, &qword_25BCC3ED0), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB78AD8(uint64_t a1)
{
  memcpy(__dst, v1, 0x9CuLL);
  sub_25BB923F0(__dst, v38);
  sub_25BB88B14(__dst, sub_25BB8E45C, 0, __src);
  memcpy(v38, __src, 0xC0uLL);
  v2 = v38[23];
  v3 = v38[21];
  memcpy(v35, __src, sizeof(v35));
  sub_25BAA486C(v38, v34, &qword_27FBB52D0, &qword_25BCC3958);
  while (1)
  {
    v4 = v35[20];
    if (!*(v35[20] + 16))
    {
      memcpy(v33, __src, sizeof(v33));
      sub_25BAA6F5C(v33, &qword_27FBB52D0, &qword_25BCC3958);
      memcpy(v34, v35, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB52D0, &qword_25BCC3958);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC195D4(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v35[20] = v4;
    v33[0] = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52D8, &qword_25BCC3960);
        v13 = sub_25BB92940(&qword_27FBB52F0, &qword_27FBB52D8, &qword_25BCC3960);
        sub_25BAB89AC(v11, v9, v35, v33, v12, v11, v13);
      }

      else
      {
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52D8, &qword_25BCC3960);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52E0, &qword_25BCC3968);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52E8, &qword_25BCC3970), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB78F18(uint64_t a1)
{
  memcpy(__dst, v1, 0x43uLL);
  sub_25BB924FC(__dst, v38);
  sub_25BB88E18();
  memcpy(v38, __src, 0x68uLL);
  v2 = v38[12];
  v3 = v38[10];
  memcpy(v35, __src, sizeof(v35));
  sub_25BAA486C(v38, v34, &qword_27FBB56E8, &qword_25BCC3C88);
  while (1)
  {
    v4 = v35[9];
    if (!*(v35[9] + 16))
    {
      memcpy(v33, __src, sizeof(v33));
      sub_25BAA6F5C(v33, &qword_27FBB56E8, &qword_25BCC3C88);
      memcpy(v34, v35, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB56E8, &qword_25BCC3C88);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1955C(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v35[9] = v4;
    v33[0] = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F0, &qword_25BCC3C90);
        v13 = sub_25BB92940(&qword_27FBB5708, &qword_27FBB56F0, &qword_25BCC3C90);
        sub_25BAB89AC(v11, v9, v35, v33, v12, v11, v13);
      }

      else
      {
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F0, &qword_25BCC3C90);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5700, &qword_25BCC3CA0), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB79364(uint64_t a1)
{
  sub_25BB890D8(sub_25BB8E45C, 0, &v40);
  v1 = v40;
  v2 = v41;
  v3 = v43;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;

  sub_25BA9D8C4(v2);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v1 + 16))
    {
      v31 = v41;

      sub_25BA9D148(v31);

      v32 = v37;

      sub_25BA9D148(v32);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC195EC(v1);
      v1 = v4;
    }

    v5 = *(v1 + 16);
    if (!v5)
    {
      break;
    }

    v6 = v5 - 1;
    v7 = v1 + 16 * v6;
    v8 = *(v7 + 32);
    LODWORD(v7) = *(v7 + 40);
    *(v1 + 16) = v6;
    v36 = v1;
    v35 = v7;
    if (v2)
    {
      v9 = v8[4];
      swift_beginAccess();

      LOBYTE(v9) = v2(v9, &v35);
      swift_endAccess();
      if (v9)
      {
        v10 = v8[4];

        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5508, &qword_25BCC3B18);
        v12 = sub_25BB92940(&qword_27FBB5520, &qword_27FBB5508, &qword_25BCC3B18);
        sub_25BAB89AC(v10, v8, &v36, &v35, v11, v10, v12);
      }

      else
      {
      }
    }

    v13 = v8[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5508, &qword_25BCC3B18);
    swift_dynamicCastClassUnconditional();
    v14 = v8[2];
    v15 = *(v14 + 16);
    v16 = *(v3 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v3 + 24) >> 1, v18 = v3, v17 < v16 + v15))
    {
      sub_25BAB1E30();
      v18 = v19;
      v17 = *(v19 + 24) >> 1;
    }

    if (*(v14 + 16))
    {
      if (v17 - *(v18 + 16) < v15)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v18 + 16);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_32;
        }

        *(v18 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5510, &qword_25BCC3B20);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5518, &qword_25BCC3B28), swift_dynamicCastClass()))
    {

      v23 = swift_modifyAtWritableKeyPath();
      v25 = v24;
      v26 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v29 = sub_25BB1B740(a1);
        v30 = *v25;
        *v25 = v29;
      }

      v23(v34, 0);
    }

    v1 = v36;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7973C(uint64_t a1)
{
  v2 = v1[1];
  v38[0] = *v1;
  v38[1] = v2;
  v38[2] = v1[2];
  sub_25BB925D0(v38, __dst);
  sub_25BB8936C(v38, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x50uLL);
  v3 = __dst[9];
  v4 = __dst[7];
  memcpy(v36, __src, sizeof(v36));
  sub_25BAA486C(__dst, v35, &qword_27FBB5848, &qword_25BCC3D98);
  while (1)
  {
    v5 = v36[6];
    if (!*(v36[6] + 16))
    {
      memcpy(v34, __src, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB5848, &qword_25BCC3D98);
      memcpy(v35, v36, sizeof(v35));
      sub_25BAA6F5C(v35, &qword_27FBB5848, &qword_25BCC3D98);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19604(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v36[6] = v5;
    v34[0] = v9;
    if (v4)
    {
      v11 = v10[4];
      swift_beginAccess();

      LOBYTE(v11) = v4(v11, v34);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5850, &qword_25BCC3DA0);
        v14 = sub_25BB92940(&qword_27FBB5868, &qword_27FBB5850, &qword_25BCC3DA0);
        sub_25BAB89AC(v12, v10, v36, v34, v13, v12, v14);
      }

      else
      {
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5850, &qword_25BCC3DA0);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v3 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v3 + 24) >> 1, v20 = v3, v19 < v18 + v17))
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5858, &qword_25BCC3DA8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5860, &qword_25BCC3DB0), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB79B78(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (*(v1 + 9))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = *v1;

  sub_25BB89658(v2, v5 | v3, v4, sub_25BB8E45C, 0, &v46);
  v50[1] = v47;
  v50[2] = v48;
  v50[0] = v46;
  v7 = v49;
  v51 = v49;
  v8 = v48;
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  sub_25BAA486C(v50, v40, &qword_27FBB53E0, &qword_25BCC3A30);
  while (1)
  {
    v9 = *(&v43 + 1);
    if (!*(*(&v43 + 1) + 16))
    {
      v38[0] = v46;
      v38[1] = v47;
      v38[2] = v48;
      v39 = v49;
      sub_25BAA6F5C(v38, &qword_27FBB53E0, &qword_25BCC3A30);
      v40[0] = v42;
      v40[1] = v43;
      v40[2] = v44;
      v41 = v45;
      sub_25BAA6F5C(v40, &qword_27FBB53E0, &qword_25BCC3A30);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1961C(v9);
      v9 = v10;
    }

    v11 = *(v9 + 16);
    if (!v11)
    {
      break;
    }

    v12 = v11 - 1;
    v13 = v9 + 16 * v12;
    v14 = *(v13 + 32);
    LODWORD(v13) = *(v13 + 40);
    *(v9 + 16) = v12;
    *(&v43 + 1) = v9;
    LODWORD(v38[0]) = v13;
    if (v8)
    {
      v15 = v14[4];
      swift_beginAccess();

      LOBYTE(v15) = v8(v15, v38);
      swift_endAccess();
      if (v15)
      {
        v16 = v14[4];

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53E8, &qword_25BCC3A38);
        v18 = sub_25BB92940(&qword_27FBB5400, &qword_27FBB53E8, &qword_25BCC3A38);
        sub_25BAB89AC(v16, v14, &v42, v38, v17, v16, v18);
      }

      else
      {
      }
    }

    v19 = v14[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53E8, &qword_25BCC3A38);
    swift_dynamicCastClassUnconditional();
    v20 = v14[2];
    v21 = *(v20 + 16);
    v22 = *(v7 + 16);
    if (__OFADD__(v22, v21))
    {
      goto LABEL_32;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v23 = *(v7 + 24) >> 1, v24 = v7, v23 < v22 + v21))
    {
      sub_25BAB1E30();
      v24 = v25;
      v23 = *(v25 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v23 - *(v24 + 16) < v21)
      {
        goto LABEL_34;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, v21);
        v28 = v26 + v21;
        if (v27)
        {
          goto LABEL_35;
        }

        *(v24 + 16) = v28;
      }
    }

    else
    {

      if (v21)
      {
        goto LABEL_33;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53F0, &qword_25BCC3A40);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53F8, &qword_25BCC3A48), swift_dynamicCastClass()))
    {

      v29 = swift_modifyAtWritableKeyPath();
      v31 = v30;
      v32 = *v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v31;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v35 = sub_25BB1B740(a1);
        v36 = *v31;
        *v31 = v35;
      }

      v29(v40, 0);
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_25BB79FE4(uint64_t a1)
{
  v2 = v1[1];
  v44[0] = *v1;
  v44[1] = v2;
  sub_25BB924A0(v44, v45);
  sub_25BB8994C(v44, sub_25BB8E45C, 0, &v40);
  v45[2] = v42;
  v45[3] = v43;
  v45[0] = v40;
  v45[1] = v41;
  v3 = *(&v43 + 1);
  v4 = *(&v42 + 1);
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  sub_25BAA486C(v45, v35, &qword_27FBB5390, &qword_25BCC39F0);
  while (1)
  {
    v5 = v38;
    if (!*(v38 + 16))
    {
      v34[0] = v40;
      v34[1] = v41;
      v34[2] = v42;
      v34[3] = v43;
      sub_25BAA6F5C(v34, &qword_27FBB5390, &qword_25BCC39F0);
      v35[0] = v36;
      v35[1] = v37;
      v35[2] = v38;
      v35[3] = v39;
      sub_25BAA6F5C(v35, &qword_27FBB5390, &qword_25BCC39F0);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19634(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *&v38 = v5;
    LODWORD(v34[0]) = v9;
    if (v4)
    {
      v11 = v10[4];
      swift_beginAccess();

      LOBYTE(v11) = v4(v11, v34);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5398, &qword_25BCC39F8);
        v14 = sub_25BB92940(&qword_27FBB53B0, &qword_27FBB5398, &qword_25BCC39F8);
        sub_25BAB89AC(v12, v10, &v36, v34, v13, v12, v14);
      }

      else
      {
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5398, &qword_25BCC39F8);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v3 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v3 + 24) >> 1, v20 = v3, v19 < v18 + v17))
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53A0, &qword_25BCC3A00);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53A8, &qword_25BCC3A08), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7A410(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB92890(__dst, v38);
  sub_25BB89C28(__dst, sub_25BB8E45C, 0, __src);
  memcpy(v38, __src, 0x78uLL);
  v2 = v38[14];
  v3 = v38[12];
  memcpy(v35, __src, sizeof(v35));
  sub_25BAA486C(v38, v34, &qword_27FBB5A28, &qword_25BCC3F18);
  while (1)
  {
    v4 = v35[11];
    if (!*(v35[11] + 16))
    {
      memcpy(v33, __src, sizeof(v33));
      sub_25BAA6F5C(v33, &qword_27FBB5A28, &qword_25BCC3F18);
      memcpy(v34, v35, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB5A28, &qword_25BCC3F18);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1964C(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v35[11] = v4;
    v33[0] = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A30, &qword_25BCC3F20);
        v13 = sub_25BB92940(&qword_27FBB5A48, &qword_27FBB5A30, &qword_25BCC3F20);
        sub_25BAB89AC(v11, v9, v35, v33, v12, v11, v13);
      }

      else
      {
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A30, &qword_25BCC3F20);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A38, &qword_25BCC3F28);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A40, &qword_25BCC3F30), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7A84C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB927E0(__dst, v38);
  sub_25BB89F28(__dst, sub_25BB8E45C, 0, __src);
  memcpy(v38, __src, 0x98uLL);
  v2 = v38[18];
  v3 = v38[16];
  memcpy(v35, __src, sizeof(v35));
  sub_25BAA486C(v38, v34, &qword_27FBB5A00, &qword_25BCC3EF8);
  while (1)
  {
    v4 = v35[15];
    if (!*(v35[15] + 16))
    {
      memcpy(v33, __src, sizeof(v33));
      sub_25BAA6F5C(v33, &qword_27FBB5A00, &qword_25BCC3EF8);
      memcpy(v34, v35, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB5A00, &qword_25BCC3EF8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19664(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v35[15] = v4;
    v33[0] = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A08, &qword_25BCC3F00);
        v13 = sub_25BB92940(&qword_27FBB5A20, &qword_27FBB5A08, &qword_25BCC3F00);
        sub_25BAB89AC(v11, v9, v35, v33, v12, v11, v13);
      }

      else
      {
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A08, &qword_25BCC3F00);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A10, &qword_25BCC3F08);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A18, &qword_25BCC3F10), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7AC88(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 4);

  sub_25BB8A22C(v5, v4, v3, sub_25BB8E45C, 0, &qword_27FBB56A8, &qword_25BCC3C58, &v45, v2);
  v49[1] = v46;
  v49[2] = v47;
  v49[0] = v45;
  v6 = v48;
  v50 = v48;
  v7 = v47;
  v41 = v45;
  v42 = v46;
  v43 = v47;
  v44 = v48;
  sub_25BAA486C(v49, v39, &qword_27FBB56A8, &qword_25BCC3C58);
  while (1)
  {
    v8 = *(&v42 + 1);
    if (!*(*(&v42 + 1) + 16))
    {
      v37[0] = v45;
      v37[1] = v46;
      v37[2] = v47;
      v38 = v48;
      sub_25BAA6F5C(v37, &qword_27FBB56A8, &qword_25BCC3C58);
      v39[0] = v41;
      v39[1] = v42;
      v39[2] = v43;
      v40 = v44;
      sub_25BAA6F5C(v39, &qword_27FBB56A8, &qword_25BCC3C58);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19574(v8);
      v8 = v9;
    }

    v10 = *(v8 + 16);
    if (!v10)
    {
      break;
    }

    v11 = v10 - 1;
    v12 = v8 + 16 * v11;
    v13 = *(v12 + 32);
    LODWORD(v12) = *(v12 + 40);
    *(v8 + 16) = v11;
    *(&v42 + 1) = v8;
    LODWORD(v37[0]) = v12;
    if (v7)
    {
      v14 = v13[4];
      swift_beginAccess();

      LOBYTE(v14) = v7(v14, v37);
      swift_endAccess();
      if (v14)
      {
        v15 = v13[4];

        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B0, &qword_25BCC3C60);
        v17 = sub_25BB92940(&qword_27FBB56C8, &qword_27FBB56B0, &qword_25BCC3C60);
        sub_25BAB89AC(v15, v13, &v41, v37, v16, v15, v17);
      }

      else
      {
      }
    }

    v18 = v13[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B0, &qword_25BCC3C60);
    swift_dynamicCastClassUnconditional();
    v19 = v13[2];
    v20 = *(v19 + 16);
    v21 = *(v6 + 16);
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v22 = *(v6 + 24) >> 1, v23 = v6, v22 < v21 + v20))
    {
      sub_25BAB1E30();
      v23 = v24;
      v22 = *(v24 + 24) >> 1;
    }

    if (*(v19 + 16))
    {
      if (v22 - *(v23 + 16) < v20)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v25 = *(v23 + 16);
        v26 = __OFADD__(v25, v20);
        v27 = v25 + v20;
        if (v26)
        {
          goto LABEL_32;
        }

        *(v23 + 16) = v27;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56C0, &qword_25BCC3C70), swift_dynamicCastClass()))
    {

      v28 = swift_modifyAtWritableKeyPath();
      v30 = v29;
      v31 = *v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v30;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v34 = sub_25BB1B740(a1);
        v35 = *v30;
        *v30 = v34;
      }

      v28(v39, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7B100(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_25BB922E4(__dst, v38);
  sub_25BB8A4E8(__dst, sub_25BB8E45C, 0, __src);
  memcpy(v38, __src, 0x70uLL);
  v2 = v38[13];
  v3 = v38[11];
  memcpy(v35, __src, sizeof(v35));
  sub_25BAA486C(v38, v34, &qword_27FBB5260, &qword_25BCC3900);
  while (1)
  {
    v4 = v35[10];
    if (!*(v35[10] + 16))
    {
      memcpy(v33, __src, sizeof(v33));
      sub_25BAA6F5C(v33, &qword_27FBB5260, &qword_25BCC3900);
      memcpy(v34, v35, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB5260, &qword_25BCC3900);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1967C(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    v35[10] = v4;
    v33[0] = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();

      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];

        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5268, &qword_25BCC3908);
        v13 = sub_25BB92940(&qword_27FBB5280, &qword_27FBB5268, &qword_25BCC3908);
        sub_25BAB89AC(v11, v9, v35, v33, v12, v11, v13);
      }

      else
      {
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5268, &qword_25BCC3908);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5270, &qword_25BCC3910);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5278, &qword_25BCC3918), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7B53C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v38[0] = *v1;
  v38[1] = v2;
  v39 = *(v1 + 32);
  sub_25BB92394(v38, __dst);
  sub_25BB8A7E8(v38, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x48uLL);
  v3 = __dst[8];
  v4 = __dst[6];
  memcpy(v36, __src, sizeof(v36));
  sub_25BAA486C(__dst, v35, &qword_27FBB52A8, &qword_25BCC3938);
  while (1)
  {
    v5 = v36[5];
    if (!*(v36[5] + 16))
    {
      memcpy(v34, __src, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB52A8, &qword_25BCC3938);
      memcpy(v35, v36, sizeof(v35));
      sub_25BAA6F5C(v35, &qword_27FBB52A8, &qword_25BCC3938);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19694(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v36[5] = v5;
    v34[0] = v9;
    if (v4)
    {
      v11 = v10[4];
      swift_beginAccess();

      LOBYTE(v11) = v4(v11, v34);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52B0, &qword_25BCC3940);
        v14 = sub_25BB92940(&qword_27FBB52C8, &qword_27FBB52B0, &qword_25BCC3940);
        sub_25BAB89AC(v12, v10, v36, v34, v13, v12, v14);
      }

      else
      {
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52B0, &qword_25BCC3940);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v3 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v3 + 24) >> 1, v20 = v3, v19 < v18 + v17))
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52B8, &qword_25BCC3948);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52C0, &qword_25BCC3950), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7B978(uint64_t a1)
{
  v2 = v1[1];
  v39[0] = *v1;
  v39[1] = v2;
  v3 = v1[3];
  v39[2] = v1[2];
  v39[3] = v3;
  sub_25BB920D4(v39, __dst);
  sub_25BB8AAD8(v39, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x60uLL);
  v4 = __dst[11];
  v5 = __dst[9];
  memcpy(v37, __src, sizeof(v37));
  sub_25BAA486C(__dst, v36, &qword_27FBB51E8, &qword_25BCC3898);
  while (1)
  {
    v6 = v37[8];
    if (!*(v37[8] + 16))
    {
      memcpy(v35, __src, sizeof(v35));
      sub_25BAA6F5C(v35, &qword_27FBB51E8, &qword_25BCC3898);
      memcpy(v36, v37, sizeof(v36));
      sub_25BAA6F5C(v36, &qword_27FBB51E8, &qword_25BCC3898);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC196AC(v6);
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    v37[8] = v6;
    v35[0] = v10;
    if (v5)
    {
      v12 = v11[4];
      swift_beginAccess();

      LOBYTE(v12) = v5(v12, v35);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];

        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51F0, &qword_25BCC38A0);
        v15 = sub_25BB92940(&qword_27FBB5208, &qword_27FBB51F0, &qword_25BCC38A0);
        sub_25BAB89AC(v13, v11, v37, v35, v14, v13, v15);
      }

      else
      {
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51F0, &qword_25BCC38A0);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v4 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v20 = *(v4 + 24) >> 1, v21 = v4, v20 < v19 + v18))
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_32;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51F8, &qword_25BCC38A8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5200, &unk_25BCC38B0), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v36, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7BDB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v38[0] = *v1;
  v38[1] = v2;
  v38[2] = *(v1 + 32);
  v39 = *(v1 + 48);
  sub_25BB92234(v38, __dst);
  sub_25BB8ADC4(v38, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x58uLL);
  v3 = __dst[10];
  v4 = __dst[8];
  memcpy(v36, __src, sizeof(v36));
  sub_25BAA486C(__dst, v35, &qword_27FBB5238, &qword_25BCC38E0);
  while (1)
  {
    v5 = v36[7];
    if (!*(v36[7] + 16))
    {
      memcpy(v34, __src, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB5238, &qword_25BCC38E0);
      memcpy(v35, v36, sizeof(v35));
      sub_25BAA6F5C(v35, &qword_27FBB5238, &qword_25BCC38E0);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC196C4(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v36[7] = v5;
    v34[0] = v9;
    if (v4)
    {
      v11 = v10[4];
      swift_beginAccess();

      LOBYTE(v11) = v4(v11, v34);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];

        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5240, &qword_25BCC38E8);
        v14 = sub_25BB92940(&qword_27FBB5258, &qword_27FBB5240, &qword_25BCC38E8);
        sub_25BAB89AC(v12, v10, v36, v34, v13, v12, v14);
      }

      else
      {
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5240, &qword_25BCC38E8);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v3 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v3 + 24) >> 1, v20 = v3, v19 < v18 + v17))
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5248, &qword_25BCC38F0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5250, &qword_25BCC38F8), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7C1F8(uint64_t a1)
{
  sub_25BB8B0D0(*v1, *(v1 + 8) | (*(v1 + 9) << 8), sub_25BB8E45C, 0, &v44);
  v2 = v47;
  v3 = v48;
  v4 = v50;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v43 = v50;

  sub_25BA9D8C4(v3);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {
      v32 = v41;

      sub_25BA9D148(v32);

      v33 = v48;

      sub_25BA9D148(v33);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC196F4(v2);
      v2 = v5;
    }

    v6 = *(v2 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v2 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v2 + 16) = v7;
    v40 = v2;
    v36 = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, &v36);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A78, &qword_25BCC3F58);
        v13 = sub_25BB92940(&qword_27FBB5A90, &qword_27FBB5A78, &qword_25BCC3F58);
        sub_25BAB89AC(v11, v9, &v37, &v36, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A78, &qword_25BCC3F58);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v4 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v4 + 24) >> 1, v19 = v4, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A80, &qword_25BCC3F60);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A88, &qword_25BCC3F68), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v35, 0);
    }

    v2 = v40;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7C5E0(uint64_t a1)
{
  v2 = *v1;
  sub_25BB8CFC8();
  v3 = v39;
  v4 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5478, &qword_25BCC3AA8);
  sub_25BA9D8C4(v3);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5478, &qword_25BCC3AA8);
      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1970C(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v36[0] + 1) = v5;
    v35 = v9;
    if (v3)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v3(v11, &v35);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5480, &qword_25BCC3AB0);
        v14 = sub_25BB92940(&qword_27FBB5498, &qword_27FBB5480, &qword_25BCC3AB0);
        sub_25BAB89AC(v12, v10, v36, &v35, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5480, &qword_25BCC3AB0);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v4 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v19 = *(v4 + 24) >> 1, v19 >= v18 + v17))
    {
      v20 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5488, &qword_25BCC3AB8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5490, &qword_25BCC3AC0), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7CA40(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for LogSigmoid.Kind, sub_25BAAF54C, sub_25BB00E88);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19724(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5600, &qword_25BCC3BD8);
        v16 = sub_25BB92940(&qword_27FBB5618, &qword_27FBB5600, &qword_25BCC3BD8);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5600, &qword_25BCC3BD8);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5608, &qword_25BCC3BE0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5610, &qword_25BCC3BE8), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7CE2C(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for LogSoftmax.Kind, sub_25BAAF54C, sub_25BB00EA8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1973C(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5570, &qword_25BCC3B68);
        v16 = sub_25BB92940(&qword_27FBB5588, &qword_27FBB5570, &qword_25BCC3B68);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5570, &qword_25BCC3B68);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5578, &qword_25BCC3B70);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5580, &qword_25BCC3B78), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7D218(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BB8D6DC();
  v5 = v40;
  v4 = v41;
  v42 = v41;
  v43[0] = *(&v39 + 1);
  v37[0] = v39;
  v37[1] = v40;
  v38 = v41;
  sub_25BAA486C(v43, v35, &qword_27FBB5640, &qword_25BCC3C08);
  sub_25BA9D8C4(v5);
  sub_25BAA486C(&v42, v35, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v6 = *(&v37[0] + 1);
    if (!*(*(&v37[0] + 1) + 16))
    {

      sub_25BA9D148(v5);
      sub_25BAA6F5C(&v42, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v43, &qword_27FBB5640, &qword_25BCC3C08);
      sub_25BA9D148(v5);
      sub_25BAA6F5C(&v42, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19754(v6);
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    *(&v37[0] + 1) = v6;
    v36 = v10;
    if (v5)
    {
      v12 = v11[4];
      swift_beginAccess();
      LOBYTE(v12) = v5(v12, &v36);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5648, &qword_25BCC3C10);
        v15 = sub_25BB92940(&qword_27FBB5660, &qword_27FBB5648, &qword_25BCC3C10);
        sub_25BAB89AC(v13, v11, v37, &v36, v14, v13, v15);
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5648, &qword_25BCC3C10);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v4 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v42, v35, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v20 = *(v4 + 24) >> 1, v20 >= v19 + v18))
    {
      v21 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_32;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5650, &qword_25BCC3C18);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5658, &qword_25BCC3C20), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7D678(uint64_t a1)
{
  v2 = *v1;
  sub_25BB8CFC8();
  v3 = v39;
  v4 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5408, &qword_25BCC3A50);
  sub_25BA9D8C4(v3);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5408, &qword_25BCC3A50);
      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1976C(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v36[0] + 1) = v5;
    v35 = v9;
    if (v3)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v3(v11, &v35);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5410, &qword_25BCC3A58);
        v14 = sub_25BB92940(&qword_27FBB5428, &qword_27FBB5410, &qword_25BCC3A58);
        sub_25BAB89AC(v12, v10, v36, &v35, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5410, &qword_25BCC3A58);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v4 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v19 = *(v4 + 24) >> 1, v19 >= v18 + v17))
    {
      v20 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5418, &qword_25BCC3A60);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5420, &qword_25BCC3A68), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7DAD8(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Tanhshrink.Kind, sub_25BAAF54C, sub_25BB00F08);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19784(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5430, &qword_25BCC3A70);
        v16 = sub_25BB92940(&qword_27FBB5448, &qword_27FBB5430, &qword_25BCC3A70);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5430, &qword_25BCC3A70);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5438, &qword_25BCC3A78);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5440, &qword_25BCC3A80), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7DEC4(uint64_t a1)
{
  sub_25BB8B3A8(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), sub_25BB8E45C, 0, &v41);
  v45[1] = v42;
  v45[2] = v43;
  v45[0] = v41;
  v2 = v44;
  v46 = v44;
  v3 = v43;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v40 = v44;
  sub_25BAA486C(v45, v35, &qword_27FBB5A50, &qword_25BCC3F38);
  while (1)
  {
    v4 = *(&v38 + 1);
    if (!*(*(&v38 + 1) + 16))
    {
      v33[0] = v37;
      v33[1] = v38;
      v33[2] = v39;
      v34 = v40;
      sub_25BAA6F5C(v33, &qword_27FBB5A50, &qword_25BCC3F38);
      v35[0] = v41;
      v35[1] = v42;
      v35[2] = v43;
      v36 = v44;
      sub_25BAA6F5C(v35, &qword_27FBB5A50, &qword_25BCC3F38);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1979C(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *(&v38 + 1) = v4;
    LODWORD(v33[0]) = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A58, &qword_25BCC3F40);
        v13 = sub_25BB92940(&qword_27FBB5A70, &qword_27FBB5A58, &qword_25BCC3F40);
        sub_25BAB89AC(v11, v9, &v37, v33, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A58, &qword_25BCC3F40);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A60, &qword_25BCC3F48);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A68, &qword_25BCC3F50), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v35, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7E2D0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BB8D6DC();
  v5 = v40;
  v4 = v41;
  v42 = v41;
  v43[0] = *(&v39 + 1);
  v37[0] = v39;
  v37[1] = v40;
  v38 = v41;
  sub_25BAA486C(v43, v35, &qword_27FBB5340, &qword_25BCC39B0);
  sub_25BA9D8C4(v5);
  sub_25BAA486C(&v42, v35, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v6 = *(&v37[0] + 1);
    if (!*(*(&v37[0] + 1) + 16))
    {

      sub_25BA9D148(v5);
      sub_25BAA6F5C(&v42, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v43, &qword_27FBB5340, &qword_25BCC39B0);
      sub_25BA9D148(v5);
      sub_25BAA6F5C(&v42, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC197B4(v6);
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    *(&v37[0] + 1) = v6;
    v36 = v10;
    if (v5)
    {
      v12 = v11[4];
      swift_beginAccess();
      LOBYTE(v12) = v5(v12, &v36);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5348, &qword_25BCC39B8);
        v15 = sub_25BB92940(&qword_27FBB5360, &qword_27FBB5348, &qword_25BCC39B8);
        sub_25BAB89AC(v13, v11, v37, &v36, v14, v13, v15);
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5348, &qword_25BCC39B8);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v4 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v42, v35, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v20 = *(v4 + 24) >> 1, v20 >= v19 + v18))
    {
      v21 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_32;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5350, &qword_25BCC39C0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5358, &qword_25BCC39C8), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7E730(uint64_t a1)
{
  sub_25BB8B668(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), sub_25BB8E45C, 0, &v39);
  v43[2] = v41;
  v43[3] = v42;
  v43[0] = v39;
  v43[1] = v40;
  v2 = *(&v42 + 1);
  v3 = *(&v41 + 1);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_25BAA486C(v43, v34, &qword_27FBB57D0, &qword_25BCC3D38);
  while (1)
  {
    v4 = v37;
    if (!*(v37 + 16))
    {
      v33[0] = v35;
      v33[1] = v36;
      v33[2] = v37;
      v33[3] = v38;
      sub_25BAA6F5C(v33, &qword_27FBB57D0, &qword_25BCC3D38);
      v34[0] = v39;
      v34[1] = v40;
      v34[2] = v41;
      v34[3] = v42;
      sub_25BAA6F5C(v34, &qword_27FBB57D0, &qword_25BCC3D38);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC197CC(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v37 = v4;
    LODWORD(v33[0]) = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57D8, &qword_25BCC3D40);
        v13 = sub_25BB92940(&qword_27FBB57F0, &qword_27FBB57D8, &qword_25BCC3D40);
        sub_25BAB89AC(v11, v9, &v35, v33, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57D8, &qword_25BCC3D40);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57E0, &qword_25BCC3D48);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57E8, &qword_25BCC3D50), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7EB18(uint64_t a1)
{
  v2 = *(v1 + 16);
  v38[0] = *v1;
  v38[1] = v2;
  v38[2] = *(v1 + 32);
  v39 = *(v1 + 48);
  sub_25BB8B910(v38, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x58uLL);
  v3 = __dst[10];
  v4 = __dst[8];
  memcpy(v36, __src, sizeof(v36));
  sub_25BAA486C(__dst, v35, &qword_27FBB57A8, &qword_25BCC3D18);
  while (1)
  {
    v5 = v36[7];
    if (!*(v36[7] + 16))
    {
      memcpy(v34, v36, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB57A8, &qword_25BCC3D18);
      memcpy(v35, __src, sizeof(v35));
      sub_25BAA6F5C(v35, &qword_27FBB57A8, &qword_25BCC3D18);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC197E4(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v36[7] = v5;
    v34[0] = v9;
    if (v4)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v4(v11, v34);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57B0, &qword_25BCC3D20);
        v14 = sub_25BB92940(&qword_27FBB57C8, &qword_27FBB57B0, &qword_25BCC3D20);
        sub_25BAB89AC(v12, v10, v36, v34, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57B0, &qword_25BCC3D20);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v3 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v3 + 24) >> 1, v20 = v3, v19 < v18 + v17))
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_31;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57B8, &qword_25BCC3D28);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB57C0, &qword_25BCC3D30), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v35, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7EF18(uint64_t a1)
{
  sub_25BB8BBCC(*v1, *(v1 + 8), sub_25BB8E45C, 0, &v39, *(v1 + 16));
  v2 = v41;
  v3 = v42;
  v43 = v42;
  v44[0] = *(&v40 + 1);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_25BAA486C(v44, v33, &qword_27FBB5898, &qword_25BCC3DD8);
  sub_25BA9D8C4(v2);
  sub_25BAA486C(&v43, v33, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v4 = *(&v36 + 1);
    if (!*(*(&v36 + 1) + 16))
    {

      sub_25BA9D148(v2);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v44, &qword_27FBB5898, &qword_25BCC3DD8);
      sub_25BA9D148(v2);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC197FC(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *(&v36 + 1) = v4;
    v34 = v8;
    if (v2)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v2(v10, &v34);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58A0, &qword_25BCC3DE0);
        v13 = sub_25BB92940(&qword_27FBB58B8, &qword_27FBB58A0, &qword_25BCC3DE0);
        sub_25BAB89AC(v11, v9, &v35, &v34, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58A0, &qword_25BCC3DE0);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v43, v33, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v18 = *(v3 + 24) >> 1, v18 >= v17 + v16))
    {
      v19 = v3;
    }

    else
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58A8, &qword_25BCC3DE8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58B0, &qword_25BCC3DF0), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v33, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7F35C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v38[0] = *v1;
  v38[1] = v2;
  v39 = *(v1 + 32);
  sub_25BB8BE44(v38, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x48uLL);
  v3 = __dst[8];
  v4 = __dst[6];
  memcpy(v36, __src, sizeof(v36));
  sub_25BAA486C(__dst, v35, &qword_27FBB5870, &qword_25BCC3DB8);
  while (1)
  {
    v5 = v36[5];
    if (!*(v36[5] + 16))
    {
      memcpy(v34, v36, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB5870, &qword_25BCC3DB8);
      memcpy(v35, __src, sizeof(v35));
      sub_25BAA6F5C(v35, &qword_27FBB5870, &qword_25BCC3DB8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19814(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v36[5] = v5;
    v34[0] = v9;
    if (v4)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v4(v11, v34);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5878, &qword_25BCC3DC0);
        v14 = sub_25BB92940(&qword_27FBB5890, &qword_27FBB5878, &qword_25BCC3DC0);
        sub_25BAB89AC(v12, v10, v36, v34, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5878, &qword_25BCC3DC0);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v3 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v3 + 24) >> 1, v20 = v3, v19 < v18 + v17))
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_31;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5880, &qword_25BCC3DC8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5888, &qword_25BCC3DD0), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v35, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7F754(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BB8D8D0();
  v4 = *(&v41 + 1);
  v5 = *(&v42 + 1);
  v43 = *(&v42 + 1);
  v44[0] = v41;
  v37 = v40;
  v38 = v41;
  v39 = v42;
  sub_25BAA486C(v44, v35, &qword_27FBB58E8, &qword_25BCC3E18);
  sub_25BA9D8C4(v4);
  sub_25BAA486C(&v43, v35, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v6 = v38;
    if (!*(v38 + 16))
    {

      sub_25BA9D148(v4);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v44, &qword_27FBB58E8, &qword_25BCC3E18);
      sub_25BA9D148(v4);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1982C(v6);
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    *&v38 = v6;
    v36 = v10;
    if (v4)
    {
      v12 = v11[4];
      swift_beginAccess();
      LOBYTE(v12) = v4(v12, &v36);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58F0, &qword_25BCC3E20);
        v15 = sub_25BB92940(&qword_27FBB5908, &qword_27FBB58F0, &qword_25BCC3E20);
        sub_25BAB89AC(v13, v11, &v37, &v36, v14, v13, v15);
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58F0, &qword_25BCC3E20);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v5 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v43, v35, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v20 = *(v5 + 24) >> 1, v20 >= v19 + v18))
    {
      v21 = v5;
    }

    else
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_32;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58F8, &qword_25BCC3E28);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5900, &qword_25BCC3E30), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB7FBBC(uint64_t a1)
{
  sub_25BB8C0F4(*v1, v1[1], v1[2], v1[3], sub_25BB8E45C, 0, &v39);
  v43[2] = v41;
  v43[3] = v42;
  v43[0] = v39;
  v43[1] = v40;
  v2 = *(&v42 + 1);
  v3 = *(&v41 + 1);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_25BAA486C(v43, v34, &qword_27FBB58C0, &qword_25BCC3DF8);
  while (1)
  {
    v4 = v37;
    if (!*(v37 + 16))
    {
      v33[0] = v35;
      v33[1] = v36;
      v33[2] = v37;
      v33[3] = v38;
      sub_25BAA6F5C(v33, &qword_27FBB58C0, &qword_25BCC3DF8);
      v34[0] = v39;
      v34[1] = v40;
      v34[2] = v41;
      v34[3] = v42;
      sub_25BAA6F5C(v34, &qword_27FBB58C0, &qword_25BCC3DF8);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19844(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v37 = v4;
    LODWORD(v33[0]) = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58C8, &qword_25BCC3E00);
        v13 = sub_25BB92940(&qword_27FBB58E0, &qword_27FBB58C8, &qword_25BCC3E00);
        sub_25BAB89AC(v11, v9, &v35, v33, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58C8, &qword_25BCC3E00);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58D0, &qword_25BCC3E08);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB58D8, &qword_25BCC3E10), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB7FFA0(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GlobalMaxPool1D.Kind, sub_25BAAF54C, sub_25BB01028);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1985C(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5748, &qword_25BCC3CD0);
        v16 = sub_25BB92940(&qword_27FBB5760, &qword_27FBB5748, &qword_25BCC3CD0);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5748, &qword_25BCC3CD0);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5750, &qword_25BCC3CD8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5758, &qword_25BCC3CE0), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB8038C(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GlobalMaxPool2D.Kind, sub_25BAAF54C, sub_25BB01048);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19874(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5728, &qword_25BCC3CB8);
        v16 = sub_25BB92940(&qword_27FBB5740, &qword_27FBB5728, &qword_25BCC3CB8);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5728, &qword_25BCC3CB8);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5730, &qword_25BCC3CC0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5738, &qword_25BCC3CC8), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB80778(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BB8D8D0();
  v4 = *(&v41 + 1);
  v5 = *(&v42 + 1);
  v43 = *(&v42 + 1);
  v44[0] = v41;
  v37 = v40;
  v38 = v41;
  v39 = v42;
  sub_25BAA486C(v44, v35, &qword_27FBB5938, &qword_25BCC3E58);
  sub_25BA9D8C4(v4);
  sub_25BAA486C(&v43, v35, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v6 = v38;
    if (!*(v38 + 16))
    {

      sub_25BA9D148(v4);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v44, &qword_27FBB5938, &qword_25BCC3E58);
      sub_25BA9D148(v4);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1988C(v6);
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    *&v38 = v6;
    v36 = v10;
    if (v4)
    {
      v12 = v11[4];
      swift_beginAccess();
      LOBYTE(v12) = v4(v12, &v36);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5940, &qword_25BCC3E60);
        v15 = sub_25BB92940(&qword_27FBB5958, &qword_27FBB5940, &qword_25BCC3E60);
        sub_25BAB89AC(v13, v11, &v37, &v36, v14, v13, v15);
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5940, &qword_25BCC3E60);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v5 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v43, v35, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v20 = *(v5 + 24) >> 1, v20 >= v19 + v18))
    {
      v21 = v5;
    }

    else
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_32;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5948, &qword_25BCC3E68);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5950, &qword_25BCC3E70), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB80BE0(uint64_t a1)
{
  sub_25BB8C398(*v1, v1[1], v1[2], v1[3], sub_25BB8E45C, 0, &v39);
  v43[2] = v41;
  v43[3] = v42;
  v43[0] = v39;
  v43[1] = v40;
  v2 = *(&v42 + 1);
  v3 = *(&v41 + 1);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_25BAA486C(v43, v34, &qword_27FBB5910, &qword_25BCC3E38);
  while (1)
  {
    v4 = v37;
    if (!*(v37 + 16))
    {
      v33[0] = v35;
      v33[1] = v36;
      v33[2] = v37;
      v33[3] = v38;
      sub_25BAA6F5C(v33, &qword_27FBB5910, &qword_25BCC3E38);
      v34[0] = v39;
      v34[1] = v40;
      v34[2] = v41;
      v34[3] = v42;
      sub_25BAA6F5C(v34, &qword_27FBB5910, &qword_25BCC3E38);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC198A4(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v37 = v4;
    LODWORD(v33[0]) = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5918, &qword_25BCC3E40);
        v13 = sub_25BB92940(&qword_27FBB5930, &qword_27FBB5918, &qword_25BCC3E40);
        sub_25BAB89AC(v11, v9, &v35, v33, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5918, &qword_25BCC3E40);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5920, &qword_25BCC3E48);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5928, &qword_25BCC3E50), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB80FC4(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GlobalAveragePool1D.Kind, sub_25BAAF54C, sub_25BB010A8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC198BC(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5788, &qword_25BCC3D00);
        v16 = sub_25BB92940(&qword_27FBB57A0, &qword_27FBB5788, &qword_25BCC3D00);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5788, &qword_25BCC3D00);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5790, &qword_25BCC3D08);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5798, &qword_25BCC3D10), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB813B0(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GlobalAveragePool2D.Kind, sub_25BAAF54C, sub_25BB010C8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC198D4(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5768, &qword_25BCC3CE8);
        v16 = sub_25BB92940(&qword_27FBB5780, &qword_27FBB5768, &qword_25BCC3CE8);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5768, &qword_25BCC3CE8);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5770, &qword_25BCC3CF0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5778, &qword_25BCC3CF8), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB8179C(uint64_t a1)
{
  v2 = *v1;
  sub_25BB8CFC8();
  v3 = v39;
  v4 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5548, &qword_25BCC3B48);
  sub_25BA9D8C4(v3);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5548, &qword_25BCC3B48);
      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC198EC(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v36[0] + 1) = v5;
    v35 = v9;
    if (v3)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v3(v11, &v35);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5550, &qword_25BCC3B50);
        v14 = sub_25BB92940(&qword_27FBB5568, &qword_27FBB5550, &qword_25BCC3B50);
        sub_25BAB89AC(v12, v10, v36, &v35, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5550, &qword_25BCC3B50);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v4 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v19 = *(v4 + 24) >> 1, v19 >= v18 + v17))
    {
      v20 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5558, &qword_25BCC3B58);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5560, &qword_25BCC3B60), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB81BFC(uint64_t a1)
{
  v2 = *v1;
  sub_25BB8CFC8();
  v3 = v39;
  v4 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5450, &qword_25BCC3A88);
  sub_25BA9D8C4(v3);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5450, &qword_25BCC3A88);
      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19904(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v36[0] + 1) = v5;
    v35 = v9;
    if (v3)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v3(v11, &v35);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5458, &qword_25BCC3A90);
        v14 = sub_25BB92940(&qword_27FBB5470, &qword_27FBB5458, &qword_25BCC3A90);
        sub_25BAB89AC(v12, v10, v36, &v35, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5458, &qword_25BCC3A90);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v4 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v19 = *(v4 + 24) >> 1, v19 >= v18 + v17))
    {
      v20 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5460, &qword_25BCC3A98);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5468, &qword_25BCC3AA0), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB8205C(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for GELU.Kind, sub_25BAAF54C, sub_25BB01128);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1991C(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5528, &qword_25BCC3B30);
        v16 = sub_25BB92940(&qword_27FBB5540, &qword_27FBB5528, &qword_25BCC3B30);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5528, &qword_25BCC3B30);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5530, &qword_25BCC3B38);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5538, &qword_25BCC3B40), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB82448(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for SELU.Kind, sub_25BAAF54C, sub_25BB01148);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19934(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54A0, &qword_25BCC3AC8);
        v16 = sub_25BB92940(&qword_27FBB54B8, &qword_27FBB54A0, &qword_25BCC3AC8);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54A0, &qword_25BCC3AC8);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54A8, &qword_25BCC3AD0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54B0, &qword_25BCC3AD8), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB82834(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Tanh.Kind, sub_25BAAF54C, sub_25BB01168);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1994C(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5668, &qword_25BCC3C28);
        v16 = sub_25BB92940(&qword_27FBB5680, &qword_27FBB5668, &qword_25BCC3C28);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5668, &qword_25BCC3C28);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5670, &qword_25BCC3C30);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5678, &qword_25BCC3C38), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}