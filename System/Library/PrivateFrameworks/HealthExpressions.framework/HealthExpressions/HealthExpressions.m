uint64_t sub_25172618C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2517500AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    sub_251728864(0, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands, MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2517262B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2517500AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    sub_251728864(0, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands, MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_2517263E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2517500AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_251726500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2517500AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_251726638(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_251726654()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25172668C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2517266CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_251726704(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251726714(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251726744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25175002C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251726800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25175002C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2517268B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251726920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2517500AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_25173F430(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_251726A40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2517500AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_25173F430(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_251726B6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2517500AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251726C18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2517500AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251726CBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2517500AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251726D68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2517500AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_251726E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_2517500AC();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_251726F88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_251742EDC(0, &qword_27F458720, type metadata accessor for ProtoComparatorExpressionConfiguration.OneOf_Operands, MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_2517500AC();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_2517270B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2517500AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2517271D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2517500AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_251742EDC(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void *sub_251727304@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void *sub_251727318@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 2;
  return result;
}

uint64_t sub_251727348(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_25174A728(*a2, *(a2 + 8), *(a2 + 16));
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_251727380@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 16) == 1)
  {
    v4 = *result;
    v3 = *(result + 8);
    result = sub_25173CDCC(*result, v3, 1);
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_2517273D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);

  result = sub_25174A728(v5, v6, v7);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_251727438@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  if (*(result + 16) != 2)
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_251727454(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_25174A728(*a2, *(a2 + 8), *(a2 + 16));
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t sub_251727490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 16);
    if (v4 <= 2)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = sub_2517500AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_251727534(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    v7 = sub_2517500AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2517275D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2517500AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_251727680(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2517500AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_25172772C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

void ProtoArithmeticExpressionConfiguration.operation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ProtoArithmeticExpressionConfiguration.operation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t ProtoArithmeticExpressionConfiguration.operands.getter@<X0>(uint64_t a1@<X8>)
{
  sub_251728864(0, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands, MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v14 - v5;
  v7 = type metadata accessor for ProtoArithmeticExpressionConfiguration(0);
  sub_2517288C8(v1 + *(v7 + 24), v6, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  v8 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_251727E58(v6, a1);
  }

  sub_25175009C();
  v10 = *(v8 + 20);
  v11 = sub_25175007C();
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  v12(a1 + *(v8 + 24), 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_251728948(v6, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  }

  return result;
}

uint64_t sub_25172796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251728864(0, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands, MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v15 - v6;
  v8 = type metadata accessor for ProtoArithmeticExpressionConfiguration(0);
  sub_2517288C8(a1 + *(v8 + 24), v7, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  v9 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_251727E58(v7, a2);
  }

  sub_25175009C();
  v11 = *(v9 + 20);
  v12 = sub_25175007C();
  v13 = *(*(v12 - 8) + 56);
  v13(a2 + v11, 1, 1, v12);
  v13(a2 + *(v9 + 24), 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251728948(v7, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  }

  return result;
}

uint64_t sub_251727B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251728290(a1, v8);
  v9 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration(0) + 24);
  sub_251728948(a2 + v9, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  sub_251727E58(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoArithmeticExpressionConfiguration.operands.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration(0) + 24);
  sub_251728948(v1 + v3, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  sub_251727E58(a1, v1 + v3);
  v4 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.init()@<X0>(uint64_t a1@<X8>)
{
  sub_25175009C();
  v2 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v3 = *(v2 + 20);
  v4 = sub_25175007C();
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 24);

  return v7(v5, 1, 1, v4);
}

uint64_t sub_251727E20(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251727E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*ProtoArithmeticExpressionConfiguration.operands.modify(void *a1))(uint64_t **a1, char a2)
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
  sub_251728864(0, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration(0) + 24);
  *(v5 + 12) = v16;
  sub_2517288C8(v1 + v16, v9, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_25175009C();
    v18 = *(v10 + 20);
    v19 = sub_25175007C();
    v20 = *(*(v19 - 8) + 56);
    v20(v15 + v18, 1, 1, v19);
    v20(v15 + *(v10 + 24), 1, 1, v19);
    if (v17(v9, 1, v10) != 1)
    {
      sub_251728948(v9, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
    }
  }

  else
  {
    sub_251727E58(v9, v15);
  }

  return sub_251728160;
}

void sub_251728160(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_251728290((*a1)[5], v4);
    sub_251728948(v9 + v3, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
    sub_251727E58(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_2517282F4(v5);
  }

  else
  {
    sub_251728948(v9 + v3, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
    sub_251727E58(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_251728290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2517282F4(uint64_t a1)
{
  v2 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProtoArithmeticExpressionConfiguration.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProtoArithmeticExpressionConfiguration.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration(0) + 20);
  v4 = sub_2517500AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t ProtoArithmeticExpressionConfiguration.Operation.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_25172859C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2517505BC();
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_251728608(uint64_t a1, uint64_t a2)
{
  v4 = sub_25172A2FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251728654()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_2517505BC();
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.leftArgument.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D215C8];
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  sub_2517288C8(v1 + *(v8 + 20), v7, &qword_27F457F70, v3);
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_25175006C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251728948(v7, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  return result;
}

void sub_251728864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2517288C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251728864(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251728948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251728864(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2517289B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D215C8];
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  v9 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  sub_2517288C8(a1 + *(v9 + 20), v8, &qword_27F457F70, v4);
  v10 = sub_25175007C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_25175006C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_251728948(v8, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  return result;
}

uint64_t sub_251728B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 20);
  sub_251728948(a2 + v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.leftArgument.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 20);
  sub_251728948(v1 + v3, &qword_27F457F70, MEMORY[0x277D215C8]);
  v4 = sub_25175007C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoArithmeticExpressionConfiguration.Operands.leftArgument.modify(void *a1))()
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
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_25175007C();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 20);
  *(v5 + 12) = v16;
  sub_2517288C8(v1 + v16, v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_25175006C();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251728948(v9, &qword_27F457F70, MEMORY[0x277D215C8]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_251728FBC;
}

BOOL ProtoArithmeticExpressionConfiguration.Operands.hasLeftArgument.getter()
{
  v1 = MEMORY[0x277D215C8];
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v10 - v4;
  v6 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  sub_2517288C8(v0 + *(v6 + 20), v5, &qword_27F457F70, v1);
  v7 = sub_25175007C();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_251728948(v5, &qword_27F457F70, v1);
  return v8;
}

Swift::Void __swiftcall ProtoArithmeticExpressionConfiguration.Operands.clearLeftArgument()()
{
  v1 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 20);
  sub_251728948(v0 + v1, &qword_27F457F70, MEMORY[0x277D215C8]);
  v2 = sub_25175007C();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.rightArgument.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D215C8];
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  sub_2517288C8(v1 + *(v8 + 24), v7, &qword_27F457F70, v3);
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_25175006C();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_251728948(v7, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  return result;
}

uint64_t sub_251729304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D215C8];
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v14 - v7;
  v9 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  sub_2517288C8(a1 + *(v9 + 24), v8, &qword_27F457F70, v4);
  v10 = sub_25175007C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_25175006C();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_251728948(v8, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  return result;
}

uint64_t sub_25172949C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 24);
  sub_251728948(a2 + v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.rightArgument.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 24);
  sub_251728948(v1 + v3, &qword_27F457F70, MEMORY[0x277D215C8]);
  v4 = sub_25175007C();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*ProtoArithmeticExpressionConfiguration.Operands.rightArgument.modify(void *a1))()
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
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_25175007C();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 24);
  *(v5 + 12) = v16;
  sub_2517288C8(v1 + v16, v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_25175006C();
    if (v17(v9, 1, v10) != 1)
    {
      sub_251728948(v9, &qword_27F457F70, MEMORY[0x277D215C8]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_25172CDF0;
}

void sub_251729908(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_251728948(v9 + v3, &qword_27F457F70, MEMORY[0x277D215C8]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_251728948(v9 + v3, &qword_27F457F70, MEMORY[0x277D215C8]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_251729AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_251728864(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_2517288C8(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_251728948(v12, a1, a2);
  return v15;
}

uint64_t sub_251729C34(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_251728948(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2517500AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.unknownFields.setter(uint64_t a1)
{
  v3 = sub_2517500AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ProtoArithmeticExpressionConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for ProtoArithmeticExpressionConfiguration(0);
  v3 = a1 + *(v2 + 20);
  sub_25175009C();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_251729E80()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F457EB8);
  __swift_project_value_buffer(v0, qword_27F457EB8);
  sub_251728864(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251750B10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "operation";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25175024C();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "operands";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_25175025C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ProtoArithmeticExpressionConfiguration.decodeMessage<A>(decoder:)()
{
  result = sub_25175011C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_25172A2FC();
        sub_25175014C();
      }

      else if (result == 2)
      {
        sub_25172A17C();
      }

      result = sub_25175011C();
    }
  }

  return result;
}

uint64_t sub_25172A17C()
{
  v0 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration(0) + 24);
  type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  sub_25172C5A0(&qword_27F457FD8, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  return sub_25175018C();
}

uint64_t ProtoArithmeticExpressionConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), sub_25172A2FC(), result = sub_2517501FC(), !v4))
  {
    result = sub_25172A350(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for ProtoArithmeticExpressionConfiguration(0) + 20);
      return sub_25175008C();
    }
  }

  return result;
}

unint64_t sub_25172A2FC()
{
  result = qword_27F457F78;
  if (!qword_27F457F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F457F78);
  }

  return result;
}

uint64_t sub_25172A350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251728864(0, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands, MEMORY[0x277D83D88]);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v16 - v7;
  v9 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoArithmeticExpressionConfiguration(0);
  sub_2517288C8(a1 + *(v14 + 24), v8, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251728948(v8, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  }

  sub_251727E58(v8, v13);
  sub_25172C5A0(&qword_27F457FD8, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  sub_25175023C();
  return sub_2517282F4(v13);
}

uint64_t sub_25172A5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  sub_25175009C();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_25172A668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2517500AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25172A6DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_2517500AC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_25172A750(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_25172A7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25172C5A0(&qword_27F458010, type metadata accessor for ProtoArithmeticExpressionConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25172A844(uint64_t a1)
{
  v2 = sub_25172C5A0(&qword_27F457FC0, type metadata accessor for ProtoArithmeticExpressionConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25172A8B0()
{
  sub_25172C5A0(&qword_27F457FC0, type metadata accessor for ProtoArithmeticExpressionConfiguration);

  return sub_2517501CC();
}

uint64_t sub_25172A930()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F457ED8);
  __swift_project_value_buffer(v0, qword_27F457ED8);
  sub_251728864(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251750B20;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "OPERATION_ADD";
  *(v7 + 8) = 13;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25175024C();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "OPERATION_SUBTRACT";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "OPERATION_MULTIPLY";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "OPERATION_DIVIDE";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v10();
  return sub_25175025C();
}

uint64_t sub_25172ABF4()
{
  v0 = sub_25175026C();
  __swift_allocate_value_buffer(v0, qword_27F457EF8);
  __swift_project_value_buffer(v0, qword_27F457EF8);
  sub_251728864(0, &qword_27F458038, sub_25172CD04, MEMORY[0x277D84560]);
  sub_25172CD04();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251750B10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "leftArgument";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_25175024C();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "rightArgument";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v10();
  return sub_25175025C();
}

uint64_t sub_25172ADF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25175026C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_25175011C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_25172AF24();
    }

    else if (result == 2)
    {
      sub_25172AFD8();
    }
  }

  return result;
}

uint64_t sub_25172AF24()
{
  v0 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 20);
  sub_25175007C();
  sub_25172C5A0(&qword_27F458030, MEMORY[0x277D215C8]);
  return sub_25175018C();
}

uint64_t sub_25172AFD8()
{
  v0 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0) + 24);
  sub_25175007C();
  sub_25172C5A0(&qword_27F458030, MEMORY[0x277D215C8]);
  return sub_25175018C();
}

uint64_t ProtoArithmeticExpressionConfiguration.Operands.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25172B0FC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_25172B348(v3, a1, a2, a3);
    return sub_25175008C();
  }

  return result;
}

uint64_t sub_25172B0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x277D215C8];
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v17 - v8;
  v10 = sub_25175007C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  sub_2517288C8(a1 + *(v15 + 20), v9, &qword_27F457F70, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_251728948(v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_25172C5A0(&qword_27F458030, MEMORY[0x277D215C8]);
  sub_25175023C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_25172B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x277D215C8];
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v17 - v8;
  v10 = sub_25175007C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  sub_2517288C8(a1 + *(v15 + 24), v9, &qword_27F457F70, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_251728948(v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_25172C5A0(&qword_27F458030, MEMORY[0x277D215C8]);
  sub_25175023C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_25172B5E0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2517505BC();
  a1(0);
  sub_25172C5A0(a2, a3);
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_25172B668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25175009C();
  v4 = *(a1 + 20);
  v5 = sub_25175007C();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_25172B73C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2517500AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25172B7A4(uint64_t a1)
{
  v3 = sub_2517500AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_25172B85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25172C5A0(&qword_27F458008, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25172B8FC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25175026C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_25172B998(uint64_t a1)
{
  v2 = sub_25172C5A0(&qword_27F457FD8, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25172BA04()
{
  sub_2517505BC();
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t sub_25172BA5C()
{
  sub_25172C5A0(&qword_27F457FD8, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);

  return sub_2517501CC();
}

uint64_t sub_25172BAD8()
{
  sub_2517505BC();
  sub_2517502CC();
  return sub_2517505DC();
}

uint64_t _s17HealthExpressions38ProtoArithmeticExpressionConfigurationV8OperandsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25175007C();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  (MEMORY[0x28223BE20])();
  v44 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x277D215C8];
  sub_251728864(0, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v43 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v41[-v12];
  sub_25172CD6C(0, &qword_27F458018, &qword_27F457F70, v7);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v46 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v41[-v19];
  v45 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v21 = *(v45 + 20);
  v22 = *(v15 + 48);
  v47 = a1;
  v23 = a1 + v21;
  v24 = v49;
  sub_2517288C8(v23, v20, &qword_27F457F70, v7);
  v48 = a2;
  sub_2517288C8(a2 + v21, &v20[v22], &qword_27F457F70, v7);
  v25 = *(v24 + 48);
  if (v25(v20, 1, v4) != 1)
  {
    sub_2517288C8(v20, v13, &qword_27F457F70, MEMORY[0x277D215C8]);
    if (v25(&v20[v22], 1, v4) != 1)
    {
      v28 = v44;
      (*(v24 + 32))(v44, &v20[v22], v4);
      sub_25172C5A0(&qword_27F458028, MEMORY[0x277D215C8]);
      v42 = sub_25175031C();
      v29 = *(v24 + 8);
      v29(v28, v4);
      v29(v13, v4);
      sub_251728948(v20, &qword_27F457F70, MEMORY[0x277D215C8]);
      if ((v42 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v24 + 8))(v13, v4);
LABEL_6:
    v26 = MEMORY[0x277D215C8];
    v27 = v20;
LABEL_14:
    sub_25172CC44(v27, &qword_27F458018, &qword_27F457F70, v26);
    goto LABEL_15;
  }

  if (v25(&v20[v22], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251728948(v20, &qword_27F457F70, MEMORY[0x277D215C8]);
LABEL_8:
  v30 = v46;
  v31 = *(v45 + 24);
  v32 = *(v15 + 48);
  v33 = MEMORY[0x277D215C8];
  sub_2517288C8(v47 + v31, v46, &qword_27F457F70, MEMORY[0x277D215C8]);
  sub_2517288C8(v48 + v31, &v30[v32], &qword_27F457F70, v33);
  if (v25(v30, 1, v4) == 1)
  {
    if (v25(&v30[v32], 1, v4) == 1)
    {
      sub_251728948(v30, &qword_27F457F70, MEMORY[0x277D215C8]);
LABEL_18:
      sub_2517500AC();
      sub_25172C5A0(&qword_27F458020, MEMORY[0x277D216C8]);
      v35 = sub_25175031C();
      return v35 & 1;
    }

    goto LABEL_13;
  }

  v34 = v43;
  sub_2517288C8(v30, v43, &qword_27F457F70, MEMORY[0x277D215C8]);
  if (v25(&v30[v32], 1, v4) == 1)
  {
    (*(v24 + 8))(v34, v4);
LABEL_13:
    v26 = MEMORY[0x277D215C8];
    v27 = v30;
    goto LABEL_14;
  }

  v37 = v44;
  (*(v24 + 32))(v44, &v30[v32], v4);
  sub_25172C5A0(&qword_27F458028, MEMORY[0x277D215C8]);
  v38 = v34;
  v39 = sub_25175031C();
  v40 = *(v24 + 8);
  v40(v37, v4);
  v40(v38, v4);
  sub_251728948(v30, &qword_27F457F70, MEMORY[0x277D215C8]);
  if (v39)
  {
    goto LABEL_18;
  }

LABEL_15:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s17HealthExpressions38ProtoArithmeticExpressionConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251728864(0, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v29 - v11;
  sub_25172CD6C(0, &qword_27F458048, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        if (v18 != 2)
        {
          goto LABEL_22;
        }
      }

      else if (v18 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (v19)
    {
      if (v18 != 1)
      {
        goto LABEL_22;
      }
    }

    else if (v18)
    {
      goto LABEL_22;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_22;
  }

  v20 = type metadata accessor for ProtoArithmeticExpressionConfiguration(0);
  v21 = a1;
  v29[0] = v20;
  v29[1] = a1;
  v22 = *(v20 + 24);
  v23 = *(v14 + 48);
  sub_2517288C8(v21 + v22, v17, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  sub_2517288C8(a2 + v22, &v17[v23], &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) != 1)
  {
    sub_2517288C8(v17, v12, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
    if (v24(&v17[v23], 1, v4) == 1)
    {
      sub_2517282F4(v12);
      goto LABEL_15;
    }

    sub_251727E58(&v17[v23], v8);
    v25 = _s17HealthExpressions38ProtoArithmeticExpressionConfigurationV8OperandsV2eeoiySbAE_AEtFZ_0(v12, v8);
    sub_2517282F4(v8);
    sub_2517282F4(v12);
    sub_251728948(v17, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
    if (v25)
    {
      goto LABEL_21;
    }

LABEL_22:
    v27 = 0;
    return v27 & 1;
  }

  if (v24(&v17[v23], 1, v4) != 1)
  {
LABEL_15:
    sub_25172CC44(v17, &qword_27F458048, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
    goto LABEL_22;
  }

  sub_251728948(v17, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
LABEL_21:
  v26 = *(v29[0] + 20);
  sub_2517500AC();
  sub_25172C5A0(&qword_27F458020, MEMORY[0x277D216C8]);
  v27 = sub_25175031C();
  return v27 & 1;
}

uint64_t sub_25172C5A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25172C5EC()
{
  result = qword_27F457F90;
  if (!qword_27F457F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F457F90);
  }

  return result;
}

unint64_t sub_25172C644()
{
  result = qword_27F457F98;
  if (!qword_27F457F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F457F98);
  }

  return result;
}

void sub_25172C6E0()
{
  if (!qword_27F457FA8)
  {
    v0 = sub_25175038C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F457FA8);
    }
  }
}

unint64_t sub_25172C734()
{
  result = qword_27F457FB0;
  if (!qword_27F457FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F457FB0);
  }

  return result;
}

void sub_25172C9F0()
{
  sub_2517500AC();
  if (v0 <= 0x3F)
  {
    sub_251728864(319, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProtoArithmeticExpressionConfiguration.Operation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProtoArithmeticExpressionConfiguration.Operation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_25172CB1C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25172CB38(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_25172CB90()
{
  sub_2517500AC();
  if (v0 <= 0x3F)
  {
    sub_251728864(319, &qword_27F457F70, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25172CC44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25172CD6C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

void sub_25172CD04()
{
  if (!qword_27F458040)
  {
    sub_25175024C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F458040);
    }
  }
}

void sub_25172CD6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251728864(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_25172CDFC()
{
  sub_2517505BC();
  sub_25175033C();

  return sub_2517505DC();
}

uint64_t sub_25172CEB8()
{
  sub_2517505BC();
  sub_25175033C();

  return sub_2517505DC();
}

uint64_t sub_25172CF70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 60;
  v5 = 0xE200000000000000;
  v6 = 15649;
  v7 = 0xE100000000000000;
  v8 = 62;
  if (a1 != 4)
  {
    v8 = 15678;
    v7 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 15676;
  if (a1 != 1)
  {
    v9 = 15677;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE200000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE200000000000000;
      if (v10 != 15649)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE100000000000000;
      if (v10 != 62)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v10 != 15678)
      {
LABEL_33:
        v13 = sub_2517504FC();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE200000000000000;
    if (a2 == 1)
    {
      if (v10 != 15676)
      {
        goto LABEL_33;
      }
    }

    else if (v10 != 15677)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0xE100000000000000;
    if (v10 != 60)
    {
      goto LABEL_33;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_33;
  }

  v13 = 1;
LABEL_34:

  return v13 & 1;
}

uint64_t *CodableComparatorExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_25172D38C(0, &qword_27F458050);
    a2[3] = v5;
    a2[4] = &protocol witness table for ComparatorExpression<A>;
    v6 = swift_allocObject();
    *a2 = v6;
    v7 = sub_251731D48;
  }

  else
  {
    sub_25172D38C(0, &qword_27F458058);
    a2[3] = v8;
    a2[4] = &protocol witness table for ComparatorExpression<A>;
    v6 = swift_allocObject();
    *a2 = v6;
    v7 = sub_251731D98;
  }

  result = sub_25172D27C(a1, v7, sub_25172F5E8, v6 + 16);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a2);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_25172D27C@<X0>(uint64_t a1@<X0>, void *(*a2)(void *__return_ptr, uint64_t)@<X2>, void (*a3)(void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  result = a2(v12, a1 + 24);
  if (!v4)
  {
    a2(v11, a1 + 72);
    v10 = 0x40503020100uLL >> (8 * *(a1 + 64));
    a3(v12, a4);
    result = (a3)(v11, a4 + 48);
    *(a4 + 40) = v10;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x253080F10);
  }

  return result;
}

void sub_25172D38C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ComparatorExpression();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t *sub_25172D43C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_25172D38C(0, &qword_27F458050);
    a2[3] = v5;
    a2[4] = &protocol witness table for ComparatorExpression<A>;
    v6 = swift_allocObject();
    *a2 = v6;
    v7 = sub_251731D48;
  }

  else
  {
    sub_25172D38C(0, &qword_27F458058);
    a2[3] = v8;
    a2[4] = &protocol witness table for ComparatorExpression<A>;
    v6 = swift_allocObject();
    *a2 = v6;
    v7 = sub_251731D98;
  }

  result = sub_25172D27C(a1, v7, sub_25172F5E8, v6 + 16);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a2);
  }

  return result;
}

HealthExpressions::CodableComparatorExpressionConfiguration::Operation_optional __swiftcall CodableComparatorExpressionConfiguration.Operation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25175049C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CodableComparatorExpressionConfiguration.Operation.rawValue.getter()
{
  v1 = *v0;
  v2 = 60;
  v3 = 15649;
  v4 = 62;
  if (v1 != 4)
  {
    v4 = 15678;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 15676;
  if (v1 != 1)
  {
    v5 = 15677;
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

uint64_t sub_25172D658()
{
  *v0;
  *v0;
  *v0;
  sub_25175033C();
}

void sub_25172D710(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 60;
  v5 = 0xE200000000000000;
  v6 = 15649;
  v7 = 0xE100000000000000;
  v8 = 62;
  if (v2 != 4)
  {
    v8 = 15678;
    v7 = 0xE200000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 15676;
  if (v2 != 1)
  {
    v9 = 15677;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

HealthExpressions::CodableComparatorExpressionConfiguration::Operands_optional __swiftcall CodableComparatorExpressionConfiguration.Operands.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25175049C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CodableComparatorExpressionConfiguration.Operands.rawValue.getter()
{
  if (*v0)
  {
    return 0x73676E69727473;
  }

  else
  {
    return 0x73656C62756F64;
  }
}

uint64_t sub_25172D8CC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x73676E69727473;
  }

  else
  {
    v2 = 0x73656C62756F64;
  }

  if (*a2)
  {
    v3 = 0x73676E69727473;
  }

  else
  {
    v3 = 0x73656C62756F64;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2517504FC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25172D954()
{
  v1 = *v0;
  sub_2517505BC();
  sub_25175033C();

  return sub_2517505DC();
}

uint64_t sub_25172D9CC()
{
  *v0;
  sub_25175033C();
}

uint64_t sub_25172DA28()
{
  v1 = *v0;
  sub_2517505BC();
  sub_25175033C();

  return sub_2517505DC();
}

uint64_t sub_25172DA9C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25175049C();

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

void sub_25172DAFC(uint64_t *a1@<X8>)
{
  v2 = 0x73656C62756F64;
  if (*v1)
  {
    v2 = 0x73676E69727473;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t CodableComparatorExpressionConfiguration.expressionIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t CodableComparatorExpressionConfiguration.expressionIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_25172DDE8()
{
  v1 = *v0;
  sub_2517505BC();
  MEMORY[0x253080AA0](v1);
  return sub_2517505DC();
}

uint64_t sub_25172DE5C()
{
  v1 = *v0;
  sub_2517505BC();
  MEMORY[0x253080AA0](v1);
  return sub_2517505DC();
}

unint64_t sub_25172DEA0()
{
  v1 = *v0;
  v2 = 0x73646E617265706FLL;
  v3 = 0x756772417466656CLL;
  v4 = 0x6F6974617265706FLL;
  if (v1 != 3)
  {
    v4 = 0x6772417468676972;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25172DF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25172F368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25172DF98(uint64_t a1)
{
  v2 = sub_25172E284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25172DFD4(uint64_t a1)
{
  v2 = sub_25172E284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableComparatorExpressionConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  sub_25172E7BC(0, &qword_27F458060, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25172E284();
  sub_25175063C();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v15 = 0;
  sub_25172E31C();

  sub_2517504CC();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v16) = *(v3 + 16);
    v15 = 1;
    sub_25172E370();
    sub_2517504CC();
    LOBYTE(v16) = 2;
    sub_25172E3C4();
    sub_2517504CC();
    LOBYTE(v16) = *(v3 + 64);
    v15 = 3;
    sub_25172E418();
    sub_2517504CC();
    LOBYTE(v16) = 4;
    sub_2517504CC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_25172E284()
{
  result = qword_27F458068;
  if (!qword_27F458068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458068);
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

unint64_t sub_25172E31C()
{
  result = qword_27F458070;
  if (!qword_27F458070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458070);
  }

  return result;
}

unint64_t sub_25172E370()
{
  result = qword_27F458078;
  if (!qword_27F458078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458078);
  }

  return result;
}

unint64_t sub_25172E3C4()
{
  result = qword_27F458080;
  if (!qword_27F458080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458080);
  }

  return result;
}

unint64_t sub_25172E418()
{
  result = qword_27F458088;
  if (!qword_27F458088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458088);
  }

  return result;
}

uint64_t CodableComparatorExpressionConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25172E7BC(0, &qword_27F458090, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25172E284();
  sub_25175061C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_25172E820();
  sub_2517504AC();
  v17 = v14;
  v26 = 1;
  sub_25172E874();
  sub_2517504AC();
  v18 = v14;
  v26 = 2;
  sub_25172E91C();
  sub_2517504AC();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v26 = 3;
  sub_25172E970();
  sub_2517504AC();
  v22 = v14;
  v26 = 4;
  sub_2517504AC();
  (*(v7 + 8))(v10, v6);
  v23 = v14;
  v24 = v15;
  v25 = v16;
  sub_25172E9C4(&v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25172E9FC(&v17);
}

void sub_25172E7BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_25172E284();
    v7 = a3(a1, &type metadata for CodableComparatorExpressionConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25172E820()
{
  result = qword_27F458098;
  if (!qword_27F458098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458098);
  }

  return result;
}

unint64_t sub_25172E874()
{
  result = qword_27F4580A0;
  if (!qword_27F4580A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580A0);
  }

  return result;
}

unint64_t sub_25172E91C()
{
  result = qword_27F4580A8;
  if (!qword_27F4580A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580A8);
  }

  return result;
}

unint64_t sub_25172E970()
{
  result = qword_27F4580B0;
  if (!qword_27F4580B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580B0);
  }

  return result;
}

uint64_t sub_25172EA2C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 CodableComparatorExpressionConfiguration.init(operands:leftArgument:operation:rightArgument:)@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a2 + 16);
  *(a5 + 24) = *a2;
  *(a5 + 40) = v5;
  v7 = *a4;
  result = a4[1];
  *(a5 + 88) = result;
  v8 = *a1;
  v9 = *a3;
  *a5 = 0xD000000000000030;
  *(a5 + 8) = 0x8000000251753DD0;
  *(a5 + 16) = v8;
  *(a5 + 56) = *(a2 + 32);
  *(a5 + 64) = v9;
  *(a5 + 104) = *(a4 + 4);
  *(a5 + 72) = v7;
  return result;
}

unint64_t sub_25172EAC4()
{
  result = qword_27F4580B8;
  if (!qword_27F4580B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580B8);
  }

  return result;
}

unint64_t sub_25172EB1C()
{
  result = qword_27F4580C0;
  if (!qword_27F4580C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580C0);
  }

  return result;
}

unint64_t sub_25172EB74()
{
  result = qword_27F4580C8;
  if (!qword_27F4580C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580C8);
  }

  return result;
}

unint64_t sub_25172EBC8(uint64_t a1)
{
  *(a1 + 8) = sub_25172EBF8();
  result = sub_25172EC4C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25172EBF8()
{
  result = qword_27F4580D0;
  if (!qword_27F4580D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580D0);
  }

  return result;
}

unint64_t sub_25172EC4C()
{
  result = qword_27F4580D8;
  if (!qword_27F4580D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableComparatorExpressionConstructor(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CodableComparatorExpressionConstructor(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_25172EDA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_25172EDEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableComparatorExpressionConfiguration.Operation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CodableComparatorExpressionConfiguration.Operation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CodableComparatorExpressionConfiguration.Operands(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CodableComparatorExpressionConfiguration.Operands(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CodableComparatorExpressionConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CodableComparatorExpressionConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25172F264()
{
  result = qword_27F4580E0;
  if (!qword_27F4580E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580E0);
  }

  return result;
}

unint64_t sub_25172F2BC()
{
  result = qword_27F4580E8;
  if (!qword_27F4580E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580E8);
  }

  return result;
}

unint64_t sub_25172F314()
{
  result = qword_27F4580F0;
  if (!qword_27F4580F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580F0);
  }

  return result;
}

uint64_t sub_25172F368(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000251753CB0 == a2 || (sub_2517504FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646E617265706FLL && a2 == 0xE800000000000000 || (sub_2517504FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756772417466656CLL && a2 == 0xEC000000746E656DLL || (sub_2517504FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL || (sub_2517504FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6772417468676972 && a2 == 0xED0000746E656D75)
  {

    return 4;
  }

  else
  {
    v5 = sub_2517504FC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_25172F538()
{
  result = qword_27F4580F8;
  if (!qword_27F4580F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4580F8);
  }

  return result;
}

unint64_t sub_25172F58C()
{
  result = qword_27F458100;
  if (!qword_27F458100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458100);
  }

  return result;
}

uint64_t AnyCodableExpressionConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25175041C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25172FB04();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25172FBB4(a1, &v37);
  v41 = &type metadata for CodableLiteralExpressionConfiguration;
  v42 = sub_25172FC18();
  CodableLiteralExpressionConfiguration.init(from:)(&v37, &v40);
  if (v2)
  {
    __swift_deallocate_boxed_opaque_existential_1(&v40);
    *&v40 = v2;
    MEMORY[0x253080D90](v2);
    sub_25173001C(0, &qword_27F458120);
    if (swift_dynamicCast())
    {
      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D84160])
      {
        MEMORY[0x253080D80](v2);
        (*(v6 + 96))(v9, v5);
        sub_25172FC6C();
        v17 = *(v16 + 48);
        v18 = sub_25175040C();
        (*(*(v18 - 8) + 8))(&v9[v17], v18);
        MEMORY[0x253080D80](v40);
        v19 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_25172FB60();
        sub_25175061C();
        sub_25172E820();
        sub_2517504AC();
        v22 = *(&v40 + 1);
        v45 = v40;
        v23 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        Decoder.codableExpressionConfigurationTypeProvider.getter(&v37);
        if (!v38)
        {

          sub_25172FF58(&v37);
          sub_251730078();
          swift_allocError();
          *v30 = 0;
          v30[1] = 0;
          swift_willThrow();
          (*(v12 + 8))(v15, v11);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        sub_251726638(&v37, &v40);
        v24 = v41;
        v34 = v42;
        __swift_project_boxed_opaque_existential_1(&v40, v41);
        *&v37 = v45;
        *(&v37 + 1) = v22;
        v35 = v22;
        v25 = (*(v34 + 8))(&v37, v24);
        if (!v25)
        {
          sub_251730078();
          swift_allocError();
          v31 = v35;
          *v32 = v45;
          v32[1] = v31;
          swift_willThrow();
          (*(v12 + 8))(v15, v11);
          __swift_destroy_boxed_opaque_existential_1(&v40);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v27 = v25;
        v28 = v26;

        sub_25172FBB4(a1, v36);
        v38 = v27;
        v39 = v28;
        __swift_allocate_boxed_opaque_existential_1(&v37);
        v29 = *(v28 + 8);
        sub_25175039C();
        (*(v12 + 8))(v15, v11);
        sub_251726638(&v37, v43);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        goto LABEL_6;
      }

      (*(v6 + 8))(v9, v5);
    }

    MEMORY[0x253080D80](v40);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_251726638(&v40, v43);
LABEL_6:
  v20 = v43[1];
  *a2 = v43[0];
  *(a2 + 16) = v20;
  *(a2 + 32) = v44;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_25172FB04()
{
  if (!qword_27F458108)
  {
    sub_25172FB60();
    v0 = sub_2517504BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F458108);
    }
  }
}

unint64_t sub_25172FB60()
{
  result = qword_27F458110;
  if (!qword_27F458110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458110);
  }

  return result;
}

uint64_t sub_25172FBB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25172FC18()
{
  result = qword_27F458118;
  if (!qword_27F458118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458118);
  }

  return result;
}

void sub_25172FC6C()
{
  if (!qword_27F458128)
  {
    sub_25172FCDC();
    sub_25175040C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F458128);
    }
  }
}

unint64_t sub_25172FCDC()
{
  result = qword_27F458130;
  if (!qword_27F458130)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F458130);
  }

  return result;
}

uint64_t Decoder.codableExpressionConfigurationTypeProvider.getter@<X0>(uint64_t a1@<X8>)
{
  sub_251730384();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25175044C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_25175060C();
  sub_25175043C();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v7 + 32))(v10, v5, v6);
  if (*(v11 + 16) && (v13 = sub_2517303F4(v10), (v14 & 1) != 0))
  {
    sub_251730458(*(v11 + 56) + 32 * v13, v15);
    (*(v7 + 8))(v10, v6);

    sub_25173001C(0, &qword_27F458140);
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }
  }

  else
  {

    result = (*(v7 + 8))(v10, v6);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25172FF58(uint64_t a1)
{
  sub_25172FFB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25172FFB4()
{
  if (!qword_27F458138)
  {
    sub_25173001C(255, &qword_27F458140);
    v0 = sub_2517503CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F458138);
    }
  }
}

uint64_t sub_25173001C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_251730078()
{
  result = qword_27F458148;
  if (!qword_27F458148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458148);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t AnyCodableExpressionConfiguration.encode(to:)()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 16);
  return sub_2517502AC();
}

uint64_t sub_2517301A4()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *(v1 + 16);
  return sub_2517502AC();
}

uint64_t Dictionary<>.configurationType(for:)(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_251730674(*a1, a1[1], sub_2517306F8);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  result = *v5;
  v7 = v5[1];
  return result;
}

uint64_t static CodingUserInfoKey.codableExpressionConfigurationTypeProvider.getter@<X0>(uint64_t a1@<X8>)
{
  sub_251730384();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25175043C();
  v6 = sub_25175044C();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

void sub_251730384()
{
  if (!qword_27F458150)
  {
    sub_25175044C();
    v0 = sub_2517503CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F458150);
    }
  }
}

unint64_t sub_2517303F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25175044C();
  v5 = sub_2517502BC();

  return sub_2517307B0(a1, v5);
}

uint64_t sub_251730458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2517304C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_251730510(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_251730588(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2517305D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25173062C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_251730644(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_251730674(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_2517505BC();
  sub_25175033C();
  v7 = sub_2517505DC();

  return a3(a1, a2, v7);
}

unint64_t sub_2517306F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2517504FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2517307B0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_25175044C();
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
      v18 = sub_25175031C();
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

uint64_t NotExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251730BB4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoNotExpressionConfiguration();
  sub_251730C0C(a1 + *(v14 + 20), v8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    sub_25175006C();
    if (v15(v8, 1, v9) != 1)
    {
      sub_251730C70(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  sub_251730D6C(v13, &qword_27F458190, MEMORY[0x277D839B0], sub_25172F5E8, sub_25173175C, v19);
  if (v2)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v10 + 8))(v13, v9);
  a2[3] = &type metadata for NotExpression;
  a2[4] = &protocol witness table for NotExpression;
  v17 = swift_allocObject();
  *a2 = v17;
  return sub_251726638(v19, v17 + 16);
}

void sub_251730BB4()
{
  if (!qword_27F457F70)
  {
    sub_25175007C();
    v0 = sub_2517503CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F457F70);
    }
  }
}

uint64_t sub_251730C0C(uint64_t a1, uint64_t a2)
{
  sub_251730BB4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251730C70(uint64_t a1)
{
  sub_251730BB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251730D6C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v53 = a5;
  v44 = a4;
  v43 = a6;
  v11 = sub_25175005C();
  v13 = v11;
  v14 = v12;
  v15 = *(v6 + 16);
  if (*(v15 + 16) && (v16 = *(v6 + 16), v17 = sub_2517303DC(v11, v12), (v18 & 1) != 0))
  {
    sub_25172FBB4(*(v15 + 56) + 40 * v17, &v48);

    sub_251726638(&v48, v50);
    v19 = v51;
    v20 = v52;
    v21 = __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_25174D7F4(a1, v21, v19, v20, &v48);
    if (!v7)
    {
      sub_25172FBB4(&v48, &v46);
      sub_251731604();
      sub_2517316F8(0, a2);
      if (swift_dynamicCast())
      {
        v44(v45, v43);
      }

      else
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_2517503EC();
        MEMORY[0x253080820](0x63757274736E6F43, 0xEC00000020726F74);
        v25 = v51;
        v26 = __swift_project_boxed_opaque_existential_1(v50, v51);
        v27 = *(*(v25 - 8) + 64);
        MEMORY[0x28223BE20](v26);
        (*(v29 + 16))(&v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        v30 = sub_25175032C();
        MEMORY[0x253080820](v30);

        MEMORY[0x253080820](0xD000000000000030, 0x8000000251753E90);
        __swift_project_boxed_opaque_existential_1(&v48, v49);
        v45[0] = sub_25173C1E4();
        swift_getMetatypeMetadata();
        v31 = sub_25175032C();
        MEMORY[0x253080820](v31);

        MEMORY[0x253080820](540877088, 0xE400000000000000);
        v45[0] = a3;
        v53(0);
        v32 = sub_25175032C();
        MEMORY[0x253080820](v32);

        MEMORY[0x253080820](0x736572707845202ELL, 0xED00003D6E6F6973);
        v33 = v49;
        v34 = __swift_project_boxed_opaque_existential_1(&v48, v49);
        v35 = *(*(v33 - 8) + 64);
        MEMORY[0x28223BE20](v34);
        (*(v37 + 16))(&v42 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
        v38 = sub_25175032C();
        MEMORY[0x253080820](v38);

        v39 = v46;
        v40 = v47;
        sub_2517315B0();
        swift_allocError();
        *v41 = v39;
        *(v41 + 8) = v40;
        *(v41 + 16) = 1;
        swift_willThrow();
      }

      __swift_destroy_boxed_opaque_existential_1(&v48);
    }

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_2517503EC();

    v50[0] = 0xD000000000000013;
    v50[1] = 0x8000000251753E70;
    MEMORY[0x253080820](v13, v14);

    MEMORY[0x253080820](0x7473676E6F6D6120, 0xE900000000000020);
    *&v48 = *(v15 + 16);
    v22 = sub_2517504DC();
    MEMORY[0x253080820](v22);

    MEMORY[0x253080820](0x7274736967657220, 0xEE00736E6F697461);
    sub_2517315B0();
    swift_allocError();
    *v23 = 0xD000000000000013;
    *(v23 + 8) = 0x8000000251753E70;
    *(v23 + 16) = 0;
    return swift_willThrow();
  }
}

unint64_t sub_2517312E0()
{
  result = qword_27F458158;
  if (!qword_27F458158)
  {
    type metadata accessor for ProtoNotExpressionConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458158);
  }

  return result;
}

uint64_t sub_251731338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251730BB4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25175007C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProtoNotExpressionConfiguration();
  sub_251730C0C(a1 + *(v14 + 20), v8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    sub_25175006C();
    if (v15(v8, 1, v9) != 1)
    {
      sub_251730C70(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  sub_251730D6C(v13, &qword_27F458190, MEMORY[0x277D839B0], sub_25172F5E8, sub_25173175C, v19);
  if (v2)
  {
    return (*(v10 + 8))(v13, v9);
  }

  (*(v10 + 8))(v13, v9);
  a2[3] = &type metadata for NotExpression;
  a2[4] = &protocol witness table for NotExpression;
  v17 = swift_allocObject();
  *a2 = v17;
  return sub_251726638(v19, v17 + 16);
}

unint64_t sub_2517315B0()
{
  result = qword_27F458160;
  if (!qword_27F458160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458160);
  }

  return result;
}

unint64_t sub_251731604()
{
  result = qword_27F458168;
  if (!qword_27F458168)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F458168);
  }

  return result;
}

unint64_t sub_251731668()
{
  result = qword_27F458178;
  if (!qword_27F458178)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F458178);
  }

  return result;
}

unint64_t sub_2517316B0()
{
  result = qword_27F458188;
  if (!qword_27F458188)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F458188);
  }

  return result;
}

uint64_t sub_2517316F8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25173175C()
{
  result = qword_27F458198;
  if (!qword_27F458198)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F458198);
  }

  return result;
}

uint64_t CodableAndExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v10 = a2;
    v13 = MEMORY[0x277D84F90];
    result = sub_2517329BC(0, v4, 0);
    v6 = 0;
    v5 = v13;
    v7 = v3 + 32;
    while (v6 < *(v3 + 16))
    {
      sub_25172DC88(v7, v11);
      sub_25173191C(v11, v12);
      if (v2)
      {
        sub_25172E8C8(v11);
      }

      sub_25172E8C8(v11);
      v13 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2517329BC((v8 > 1), v9 + 1, 1);
        v5 = v13;
      }

      ++v6;
      *(v5 + 16) = v9 + 1;
      result = sub_251726638(v12, v5 + 40 * v9 + 32);
      v7 += 40;
      if (v4 == v6)
      {
        a2 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    a2[3] = &type metadata for AndExpression;
    a2[4] = &protocol witness table for AndExpression;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_25173191C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(&v36, v7, v8);
  if (!*(v6 + 16))
  {

    goto LABEL_7;
  }

  v9 = sub_2517303DC(v36, v37);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_7:
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    (*(v17 + 24))(v40, v16, v17);
    v18 = v40[0];
    v19 = v40[1];
    sub_251732E54();
    swift_allocError();
    *v20 = v18;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    return swift_willThrow();
  }

  sub_25172FBB4(*(v6 + 56) + 40 * v9, &v38);
  sub_251726638(&v38, v40);
  v12 = v41;
  v13 = v42;
  v14 = __swift_project_boxed_opaque_existential_1(v40, v41);
  sub_25173B9E8(a1, v14, v12, v13, &v38);
  if (!v3)
  {
    sub_25172FBB4(&v38, &v36);
    sub_251731604();
    v15 = MEMORY[0x277D839B0];
    sub_2517316F8(0, &qword_27F458190);
    if (swift_dynamicCast())
    {
      sub_251726638(v35, a2);
    }

    else
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_2517503EC();
      MEMORY[0x253080820](0x63757274736E6F43, 0xEC00000020726F74);
      v22 = a1[3];
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      (*(v23 + 24))(v35, v22, v23);
      MEMORY[0x253080820](*&v35[0], *(&v35[0] + 1));

      MEMORY[0x253080820](0xD000000000000030, 0x8000000251753E90);
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      *&v35[0] = sub_25173C1E4();
      swift_getMetatypeMetadata();
      v24 = sub_25175032C();
      MEMORY[0x253080820](v24);

      MEMORY[0x253080820](540877088, 0xE400000000000000);
      *&v35[0] = v15;
      sub_25173175C();
      v25 = sub_25175032C();
      MEMORY[0x253080820](v25);

      MEMORY[0x253080820](0x736572707845202ELL, 0xED00003D6E6F6973);
      v26 = v39;
      v27 = __swift_project_boxed_opaque_existential_1(&v38, v39);
      v28 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v27);
      (*(v30 + 16))(v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = sub_25175032C();
      MEMORY[0x253080820](v31);

      v32 = v36;
      v33 = v37;
      sub_251732E54();
      swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v33;
      *(v34 + 16) = 1;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_251731DE8@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v41 = a4;
  v40 = a6;
  v11 = *(v6 + 16);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 24))(&v43, v12, v13);
  if (!*(v11 + 16))
  {

    goto LABEL_7;
  }

  v14 = sub_2517303DC(v43, v44);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_7:
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 24))(v47, v20, v21);
    v22 = v47[0];
    v23 = v47[1];
    sub_251732E54();
    swift_allocError();
    *v24 = v22;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return swift_willThrow();
  }

  sub_25172FBB4(*(v11 + 56) + 40 * v14, &v45);
  sub_251726638(&v45, v47);
  v17 = v48;
  v18 = v49;
  v19 = __swift_project_boxed_opaque_existential_1(v47, v48);
  sub_25173B9E8(a1, v19, v17, v18, &v45);
  if (!v7)
  {
    sub_25172FBB4(&v45, &v43);
    sub_251731604();
    sub_2517316F8(0, a2);
    if (swift_dynamicCast())
    {
      v41(v42, v40);
    }

    else
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_2517503EC();
      MEMORY[0x253080820](0x63757274736E6F43, 0xEC00000020726F74);
      v26 = a1[3];
      v27 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v26);
      (*(v27 + 24))(v42, v26, v27);
      MEMORY[0x253080820](v42[0], v42[1]);

      MEMORY[0x253080820](0xD000000000000030, 0x8000000251753E90);
      __swift_project_boxed_opaque_existential_1(&v45, v46);
      v42[0] = sub_25173C1E4();
      swift_getMetatypeMetadata();
      v28 = sub_25175032C();
      MEMORY[0x253080820](v28);

      MEMORY[0x253080820](540877088, 0xE400000000000000);
      v42[0] = a3;
      v50(0);
      v29 = sub_25175032C();
      MEMORY[0x253080820](v29);

      MEMORY[0x253080820](0x736572707845202ELL, 0xED00003D6E6F6973);
      v30 = v46;
      v31 = __swift_project_boxed_opaque_existential_1(&v45, v46);
      v32 = *(*(v30 - 8) + 64);
      MEMORY[0x28223BE20](v31);
      (*(v34 + 16))(&v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      v35 = sub_25175032C();
      MEMORY[0x253080820](v35);

      v36 = v43;
      v37 = v44;
      sub_251732E54();
      swift_allocError();
      *v38 = v36;
      *(v38 + 8) = v37;
      *(v38 + 16) = 1;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t CodableAndExpressionConfiguration.expressionIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t CodableAndExpressionConfiguration.expressionIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t CodableAndExpressionConfiguration.arguments.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

unint64_t sub_25173233C()
{
  if (*v0)
  {
    result = 0x746E656D75677261;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_251732380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000251753CB0 == a2 || (sub_2517504FC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2517504FC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_25173247C(uint64_t a1)
{
  v2 = sub_2517329DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2517324B8(uint64_t a1)
{
  v2 = sub_2517329DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableAndExpressionConfiguration.encode(to:)(void *a1)
{
  sub_251732A80(0, &qword_27F4581A0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14[0] = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2517329DC();

  sub_25175063C();
  v15 = v9;
  v16 = v10;
  v17 = 0;
  sub_25172E31C();
  v12 = v14[1];
  sub_2517504CC();

  if (!v12)
  {
    v15 = v14[0];
    v17 = 1;
    sub_251732A30();
    sub_251732AE4(&qword_27F4581B8, sub_25172E3C4);
    sub_2517504CC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CodableAndExpressionConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_251732A80(0, &qword_27F4581C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2517329DC();
  sub_25175061C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_25172E820();
  sub_2517504AC();
  v13 = v16[0];
  v12 = v16[1];
  sub_251732A30();
  v17 = 1;
  sub_251732AE4(&qword_27F4581C8, sub_25172E91C);
  sub_2517504AC();
  (*(v7 + 8))(v10, v6);
  v14 = v16[0];
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

HealthExpressions::CodableAndExpressionConfiguration __swiftcall CodableAndExpressionConfiguration.init(arguments:)(Swift::OpaquePointer arguments)
{
  v1->_rawValue = 0xD000000000000029;
  v1[1]._rawValue = 0x8000000251753ED0;
  v1[2]._rawValue = arguments._rawValue;
  result.expressionIdentifier.rawValue._countAndFlagsBits = arguments._rawValue;
  return result;
}

void *sub_2517329BC(void *a1, int64_t a2, char a3)
{
  result = sub_251732EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2517329DC()
{
  result = qword_27F4581A8;
  if (!qword_27F4581A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4581A8);
  }

  return result;
}

void sub_251732A30()
{
  if (!qword_27F4581B0)
  {
    v0 = sub_25175038C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4581B0);
    }
  }
}

void sub_251732A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2517329DC();
    v7 = a3(a1, &type metadata for CodableAndExpressionConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251732AE4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_251732A30();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251732B54()
{
  result = qword_27F4581D0;
  if (!qword_27F4581D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4581D0);
  }

  return result;
}

unint64_t sub_251732BA8(uint64_t a1)
{
  *(a1 + 8) = sub_251732BD8();
  result = sub_251732C2C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_251732BD8()
{
  result = qword_27F4581D8;
  if (!qword_27F4581D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4581D8);
  }

  return result;
}

unint64_t sub_251732C2C()
{
  result = qword_27F4581E0;
  if (!qword_27F4581E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4581E0);
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

uint64_t sub_251732CA4(uint64_t a1, int a2)
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

uint64_t sub_251732CEC(uint64_t result, int a2, int a3)
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

unint64_t sub_251732D50()
{
  result = qword_27F4581E8;
  if (!qword_27F4581E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4581E8);
  }

  return result;
}

unint64_t sub_251732DA8()
{
  result = qword_27F4581F0;
  if (!qword_27F4581F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4581F0);
  }

  return result;
}

unint64_t sub_251732E00()
{
  result = qword_27F4581F8;
  if (!qword_27F4581F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4581F8);
  }

  return result;
}

unint64_t sub_251732E54()
{
  result = qword_27F458200;
  if (!qword_27F458200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458200);
  }

  return result;
}

void *sub_251732EA8(void *result, int64_t a2, char a3, void *a4)
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
    sub_251732FE8();
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
    sub_2517316F8(0, &qword_27F458190);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_251732FE8()
{
  if (!qword_27F458208)
  {
    sub_2517316F8(255, &qword_27F458190);
    v0 = sub_2517504EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F458208);
    }
  }
}

uint64_t ArithmeticExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v59 = a3;
  sub_251733838(0, &qword_27F457F70, MEMORY[0x277D215C8]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - v8;
  v10 = sub_25175007C();
  v69 = *(v10 - 8);
  v11 = *(v69 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  sub_251733838(0, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - v20;
  v22 = type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v62 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v57 - v27;
  v29 = *(type metadata accessor for ProtoArithmeticExpressionConfiguration(0) + 24);
  v65 = a1;
  v60 = v29;
  v30 = v69;
  sub_25173388C(a1 + v29, v21, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  v31 = *(v23 + 48);
  v32 = v31(v21, 1, v22);
  v61 = v31;
  if (v32 == 1)
  {
    sub_25175009C();
    v33 = *(v22 + 20);
    v58 = v9;
    v34 = *(v30 + 56);
    v34(&v28[v33], 1, 1, v10);
    v34(&v28[*(v22 + 24)], 1, 1, v10);
    v35 = v31(v21, 1, v22);
    v9 = v58;
    if (v35 != 1)
    {
      sub_2517338F8(v21, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
    }
  }

  else
  {
    sub_251727E58(v21, v28);
  }

  sub_25173388C(&v28[*(v22 + 20)], v9, &qword_27F457F70, MEMORY[0x277D215C8]);
  v36 = v69;
  v37 = *(v69 + 48);
  if (v37(v9, 1, v10) == 1)
  {
    sub_25175006C();
    sub_2517282F4(v28);
    if (v37(v9, 1, v10) != 1)
    {
      sub_2517338F8(v9, &qword_27F457F70, MEMORY[0x277D215C8]);
    }
  }

  else
  {
    sub_2517282F4(v28);
    (*(v36 + 32))(v15, v9, v10);
  }

  v38 = v67;
  sub_25173128C(v15, v73);
  if (v38)
  {
    return (*(v69 + 8))(v15, v10);
  }

  v67 = v37;
  v40 = v69;
  v41 = *(v69 + 8);
  v58 = (v69 + 8);
  v57 = v41;
  v41(v15, v10);
  v42 = v66;
  sub_25173388C(v65 + v60, v66, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
  v43 = v61;
  if (v61(v42, 1, v22) == 1)
  {
    v44 = v62;
    sub_25175009C();
    v45 = *(v40 + 56);
    v45(v44 + *(v22 + 20), 1, 1, v10);
    v45(v44 + *(v22 + 24), 1, 1, v10);
    v46 = v44;
    v47 = v66;
    v48 = v43(v66, 1, v22);
    v49 = v63;
    if (v48 != 1)
    {
      sub_2517338F8(v47, &qword_27F457F68, type metadata accessor for ProtoArithmeticExpressionConfiguration.Operands);
    }
  }

  else
  {
    v46 = v62;
    sub_251727E58(v42, v62);
    v49 = v63;
  }

  v50 = v46 + *(v22 + 24);
  v51 = v64;
  sub_25173388C(v50, v64, &qword_27F457F70, MEMORY[0x277D215C8]);
  v52 = v67;
  if (v67(v51, 1, v10) == 1)
  {
    sub_25175006C();
    sub_2517282F4(v46);
    if (v52(v51, 1, v10) != 1)
    {
      sub_2517338F8(v51, &qword_27F457F70, MEMORY[0x277D215C8]);
    }
  }

  else
  {
    sub_2517282F4(v46);
    (*(v69 + 32))(v49, v51, v10);
  }

  sub_25173128C(v49, v72);
  v57(v49, v10);
  v53 = *(v65 + 8);
  v70 = *v65;
  v71 = v53;
  sub_251733954(&v70, &v74);
  v54 = v74;
  v55 = v59;
  v59[3] = &type metadata for ArithmeticExpression;
  v55[4] = &protocol witness table for ArithmeticExpression;
  v56 = swift_allocObject();
  *v55 = v56;
  sub_25172F5E8(v73, v56 + 16);
  result = sub_25172F5E8(v72, v56 + 64);
  *(v56 + 56) = v54;
  return result;
}

void sub_251733838(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2517503CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25173388C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251733838(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2517338F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251733838(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251733954@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8))
  {
    *a2 = *result;
  }

  else
  {
    sub_2517503EC();

    v2 = sub_2517504DC();
    MEMORY[0x253080820](v2);

    sub_2517315B0();
    swift_allocError();
    *v3 = 0xD000000000000013;
    *(v3 + 8) = 0x8000000251753F00;
    *(v3 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_251733A3C()
{
  result = qword_27F457FC0;
  if (!qword_27F457FC0)
  {
    type metadata accessor for ProtoArithmeticExpressionConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F457FC0);
  }

  return result;
}

uint64_t NotExpression.argument.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_25172F5E8(a1, v1);
}

uint64_t sub_251733B50()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_251733C7C;

  return v8(v0 + 40, v2, v3);
}

uint64_t sub_251733C7C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_251733DB4;
  }

  else
  {
    v3 = sub_251733D90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251733DF0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_251733F14;

  return v8(v2, v3);
}

uint64_t sub_251733F14(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_251734034()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_25173440C;

  return v8(v2, v3);
}

uint64_t sub_251734158(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_251734178, 0, 0);
}

uint64_t sub_251734178()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_2517342A4;

  return v8(v0 + 48, v2, v3);
}

uint64_t sub_2517342A4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2517343E4;
  }

  else
  {
    v3 = sub_2517343B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t OrExpression.arguments.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void sub_251734490()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v0[8] = v2;
  v0[9] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_25172FBB4(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
      v5 = *(v4 + 24);
      v9 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v7[1] = sub_251734620;

      (v9)(v0 + 12, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[1];

    v8(0);
  }
}

uint64_t sub_251734620()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(v2 + 88) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if (v0)
  {
    v4 = sub_251734900;
  }

  else
  {
    v4 = sub_25173473C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_25173473C()
{
  v1 = *(v0 + 72);
  if (*(v0 + 96) == 1)
  {
    v2 = *(v0 + 64);
LABEL_4:
    v3 = *(v0 + 8);

    v3(v1 != v2);
    return;
  }

  v2 = v1 + 1;
  *(v0 + 72) = v1 + 1;
  v1 = v2;
  if (v2 == *(v0 + 64))
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 56);
  if (v2 >= *(v4 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_25172FBB4(v4 + 40 * v2 + 32, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = *(v6 + 24);
    v10 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_251734620;

    v10(v0 + 96, v5, v6);
  }
}

void sub_251734940()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v0[8] = v2;
  if (v2)
  {
    v0[9] = MEMORY[0x277D84F90];
    v0[10] = 0;
    if (*(v1 + 16))
    {
      sub_25172FBB4(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
      v5 = *(v4 + 16);
      v10 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      v0[11] = v7;
      *v7 = v0;
      v7[1] = sub_251734AD8;

      v10(v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    v8(v9);
  }
}

uint64_t sub_251734AD8(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[11];
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[9];
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);

    v6 = sub_251734EAC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v6 = sub_251734C08;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void *sub_251734C08()
{
  v1 = v0[12];
  result = v0[9];
  v3 = *(v1 + 16);
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[9];
  if (result && v5 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v3;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251735430(result, v11, 1, v0[9], &qword_28151F168, &qword_28151F170);
  v6 = result;
  if (!*(v1 + 16))
  {
LABEL_13:
    v12 = v0[12];

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v3)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v0[12];
  sub_25173001C(0, &qword_28151F170);
  swift_arrayInitWithCopy();

  if (v3)
  {
    v8 = v6[2];
    v9 = __OFADD__(v8, v3);
    v10 = v8 + v3;
    if (v9)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v6[2] = v10;
  }

LABEL_14:
  v13 = v0[10] + 1;
  if (v13 == v0[8])
  {
    v14 = v0[1];

    return v14(v6);
  }

  v0[9] = v6;
  v0[10] = v13;
  v15 = v0[7];
  if (v13 >= *(v15 + 16))
  {
    goto LABEL_25;
  }

  sub_25172FBB4(v15 + 40 * v13 + 32, (v0 + 2));
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  v18 = *(v17 + 16);
  v21 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_251734AD8;

  return v21(v16, v17);
}

void *sub_251734EFC(void *result, unint64_t *a2, unint64_t *a3)
{
  v4 = result[2];
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= v5[3] >> 1)
  {
    if (v10[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  result = sub_251735430(result, v15, 1, v5, a2, a3);
  v5 = result;
  if (!v10[2])
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v5[3] >> 1) - v5[2] < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_25173001C(0, a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v12 = v5[2];
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    v5[2] = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_251735044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517350D0;

  return OrExpression.orchestrationInputSignals()();
}

uint64_t sub_2517350D0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2517351D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_251735260;

  return OrExpression.resolve()();
}

uint64_t sub_251735260(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_25173539C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2517353E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_251735430(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_251735584(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_25173001C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_251735584(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_25173001C(255, a3);
    v4 = sub_2517504EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t CodableExpressionIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CodableExpressionIdentifier.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

HealthExpressions::CodableExpressionIdentifier_optional __swiftcall CodableExpressionIdentifier.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.rawValue = rawValue;
  return result;
}

unint64_t sub_251735728()
{
  result = qword_27F458230;
  if (!qword_27F458230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458230);
  }

  return result;
}

unint64_t sub_25173578C()
{
  result = qword_27F458238;
  if (!qword_27F458238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458238);
  }

  return result;
}

uint64_t sub_2517357E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2517505BC();
  sub_25175033C();
  return sub_2517505DC();
}

uint64_t sub_25173582C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25175033C();
}

uint64_t sub_251735834()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2517505BC();
  sub_25175033C();
  return sub_2517505DC();
}

unint64_t sub_251735880()
{
  result = qword_27F458240;
  if (!qword_27F458240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458240);
  }

  return result;
}

uint64_t sub_2517358E0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2517504FC();
  }
}

uint64_t sub_25173591C(uint64_t a1, int a2)
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

uint64_t sub_251735964(uint64_t result, int a2, int a3)
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

unint64_t sub_2517359B0()
{
  result = qword_27F458248;
  if (!qword_27F458248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458248);
  }

  return result;
}

uint64_t CodableNotExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25172DC88(a1 + 16, v6);
  sub_25173191C(v6, v7);
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v2)
  {
    a2[3] = &type metadata for NotExpression;
    a2[4] = &protocol witness table for NotExpression;
    v5 = swift_allocObject();
    *a2 = v5;
    return sub_25172F5E8(v7, v5 + 16);
  }

  return result;
}

uint64_t sub_251735AF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25172DC88(a1 + 16, v6);
  sub_25173191C(v6, v7);
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v2)
  {
    a2[3] = &type metadata for NotExpression;
    a2[4] = &protocol witness table for NotExpression;
    v5 = swift_allocObject();
    *a2 = v5;
    return sub_25172F5E8(v7, v5 + 16);
  }

  return result;
}

uint64_t CodableNotExpressionConfiguration.expressionIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t CodableNotExpressionConfiguration.expressionIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

unint64_t sub_251735C28()
{
  if (*v0)
  {
    result = 0x746E656D75677261;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_251735C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000251753CB0 == a2 || (sub_2517504FC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2517504FC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_251735D50(uint64_t a1)
{
  v2 = sub_251735F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251735D8C(uint64_t a1)
{
  v2 = sub_251735F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableNotExpressionConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  sub_251736214(0, &qword_27F458250, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251735F84();
  sub_25175063C();
  v12 = v3[1];
  v15 = *v3;
  v16 = v12;
  v14[15] = 0;
  sub_25172E31C();

  sub_2517504CC();

  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_25172E3C4();
    sub_2517504CC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_251735F84()
{
  result = qword_27F458258;
  if (!qword_27F458258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458258);
  }

  return result;
}

uint64_t CodableNotExpressionConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_251736214(0, &qword_27F458260, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251735F84();
  sub_25175061C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_25172E820();
  sub_2517504AC();
  v15[0] = v13[0];
  v17 = 1;
  sub_25172E91C();
  sub_2517504AC();
  (*(v7 + 8))(v10, v6);
  v15[1] = v13[0];
  v15[2] = v13[1];
  v16 = v14;
  sub_251736278(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2517362B0(v15);
}

void sub_251736214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251735F84();
    v7 = a3(a1, &type metadata for CodableNotExpressionConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 CodableNotExpressionConfiguration.init(argument:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000029;
  *(a2 + 8) = 0x8000000251753F20;
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v3;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

unint64_t sub_251736344()
{
  result = qword_27F458268;
  if (!qword_27F458268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458268);
  }

  return result;
}

unint64_t sub_251736398(uint64_t a1)
{
  *(a1 + 8) = sub_2517363C8();
  result = sub_25173641C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2517363C8()
{
  result = qword_27F458270;
  if (!qword_27F458270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458270);
  }

  return result;
}

unint64_t sub_25173641C()
{
  result = qword_27F458278;
  if (!qword_27F458278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458278);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25173649C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2517364E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_251736554()
{
  result = qword_27F458280;
  if (!qword_27F458280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458280);
  }

  return result;
}

unint64_t sub_2517365AC()
{
  result = qword_27F458288;
  if (!qword_27F458288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458288);
  }

  return result;
}

unint64_t sub_251736604()
{
  result = qword_27F458290;
  if (!qword_27F458290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458290);
  }

  return result;
}

uint64_t dispatch thunk of HealthExpression.orchestrationInputSignals()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_251736774;

  return v9(a1, a2);
}

uint64_t sub_251736774(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of HealthExpression.resolve()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25173699C;

  return v11(a1, a2, a3);
}

uint64_t sub_25173699C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_251736A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_251751FC8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_251726704(v4);
}

uint64_t sub_251736B24(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_251736C10;

  return v6();
}

uint64_t sub_251736C10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_251736D20(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_251751FB8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  sub_251726704(v3);
  return sub_251726714(v8);
}

uint64_t sub_251736DDC(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_251736ECC;

  return v5(v1 + 16);
}

uint64_t sub_251736ECC()
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
    v8 = *(v4 + 8);

    return v8(v7);
  }
}

uint64_t MockHealthExpression.inputSignalBlock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_251726704(v1);
  return v1;
}

uint64_t MockHealthExpression.inputSignalBlock.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_251726714(v5);
}

uint64_t MockHealthExpression.resolveBlock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_251726704(v1);
  return v1;
}

uint64_t MockHealthExpression.resolveBlock.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return sub_251726714(v5);
}

uint64_t MockHealthExpression.__allocating_init(inputSignalBlock:resolveBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  MockHealthExpression.init(inputSignalBlock:resolveBlock:)(a1, a2, a3, a4);
  return v8;
}

uint64_t MockHealthExpression.init(inputSignalBlock:resolveBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  *(v4 + 128) = 0u;
  *(v4 + 112) = 0u;
  swift_beginAccess();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  swift_beginAccess();
  *(v4 + 128) = a3;
  *(v4 + 136) = a4;
  return v4;
}

uint64_t sub_251737324()
{
  v1 = v0[5];
  result = swift_beginAccess();
  v3 = *(v1 + 112);
  v0[6] = v3;
  v0[7] = *(v1 + 120);
  if (v3)
  {

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_251737444;

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251737444(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_2517375E8;
  }

  else
  {
    v4[10] = a1;
    v8 = sub_251737580;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_251737580()
{
  v1 = v0[7];
  sub_251726714(v0[6]);
  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_2517375E8()
{
  v1 = v0[7];
  sub_251726714(v0[6]);
  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t MockHealthExpression.resolve()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_25173766C, v1, 0);
}

uint64_t sub_25173766C()
{
  v1 = v0[6];
  result = swift_beginAccess();
  v3 = *(v1 + 128);
  v0[7] = v3;
  v0[8] = *(v1 + 136);
  if (v3)
  {

    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_251737794;
    v6 = v0[5];

    return v7(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251737794()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_251737924;
  }

  else
  {
    v6 = sub_2517378C0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2517378C0()
{
  v1 = v0[8];
  sub_251726714(v0[7]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_251737924()
{
  v1 = v0[8];
  sub_251726714(v0[7]);
  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t MockHealthExpression.setBlocks(inputSignalBlock:resolveBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = v4[14];
  v10 = v4[15];
  v4[14] = a1;
  v4[15] = a2;
  sub_251726704(a1);
  sub_251726714(v9);
  swift_beginAccess();
  v11 = v4[16];
  v12 = v4[17];
  v4[16] = a3;
  v4[17] = a4;
  sub_251726704(a3);
  return sub_251726714(v11);
}

uint64_t MockHealthExpression.MockInputSignalConfiguration.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25175002C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MockHealthExpression.MockInputSignalConfiguration.keys.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*MockHealthExpression.MockInputSignalConfiguration.keys.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t MockHealthExpression.MockInputSignalConfiguration.init(identifier:keys:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25175002C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for MockHealthExpression.MockInputSignalConfiguration();
  *(a3 + *(result + 28)) = a2;
  return result;
}

uint64_t static MockHealthExpression.MockInputSignalConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_25175001C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MockHealthExpression.MockInputSignalConfiguration() + 28);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_251737C1C(v5, v6);
}

uint64_t sub_251737C1C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_2517505BC();

    sub_25175033C();
    v17 = sub_2517505DC();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_2517504FC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t MockHealthExpression.MockInputSignalConfiguration.hash(into:)(__int128 *a1, uint64_t a2)
{
  sub_25175002C();
  sub_251737E3C();
  sub_2517502CC();
  v5 = *(v2 + *(a2 + 28));

  return sub_2517380E4(a1, v5);
}

unint64_t sub_251737E3C()
{
  result = qword_27F458298[0];
  if (!qword_27F458298[0])
  {
    sub_25175002C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F458298);
  }

  return result;
}

uint64_t MockHealthExpression.MockInputSignalConfiguration.hashValue.getter(uint64_t a1)
{
  sub_2517505BC();
  MockHealthExpression.MockInputSignalConfiguration.hash(into:)(v3, a1);
  return sub_2517505DC();
}

uint64_t sub_251737EE8(uint64_t a1, uint64_t a2)
{
  sub_2517505BC();
  MockHealthExpression.MockInputSignalConfiguration.hash(into:)(v4, a2);
  return sub_2517505DC();
}

uint64_t *MockHealthExpression.deinit()
{
  v1 = v0[15];
  sub_251726714(v0[14]);
  v2 = v0[17];
  sub_251726714(v0[16]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockHealthExpression.__deallocating_deinit()
{
  MockHealthExpression.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_251737FB8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2517350D0;

  return MockHealthExpression.orchestrationInputSignals()();
}

uint64_t sub_251738048(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25173699C;

  return MockHealthExpression.resolve()(a1);
}

uint64_t sub_2517380E4(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_2517505DC();
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
    sub_2517505BC();

    sub_25175033C();
    v15 = sub_2517505DC();
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

      return MEMORY[0x253080AA0](v8);
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

void sub_251738318()
{
  sub_25175002C();
  if (v0 <= 0x3F)
  {
    sub_2517383C4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2517383C4()
{
  if (!qword_27F4583A0)
  {
    v0 = sub_2517503AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4583A0);
    }
  }
}

uint64_t sub_25173841C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_251736774;

  return sub_251736DDC(v2);
}

uint64_t sub_2517384C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25173699C;

  return sub_251736B24(a1, v5);
}

uint64_t LiteralExpression.resolve()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25173869C, 0, 0);
}

uint64_t sub_25173869C()
{
  (*(*(*(v0[3] + 16) - 8) + 16))(v0[2], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_251738748()
{
  sub_2517387FC();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251751FD0;
  sub_25174FFFC();
  *(v1 + 56) = sub_25175000C();
  *(v1 + 64) = sub_2517388B8();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_25174FFEC();
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_2517387FC()
{
  if (!qword_28151F168)
  {
    sub_251738854();
    v0 = sub_2517504EC();
    if (!v1)
    {
      atomic_store(v0, &qword_28151F168);
    }
  }
}

unint64_t sub_251738854()
{
  result = qword_28151F170;
  if (!qword_28151F170)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28151F170);
  }

  return result;
}

unint64_t sub_2517388B8()
{
  result = qword_27F4583A8[0];
  if (!qword_27F4583A8[0])
  {
    sub_25175000C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F4583A8);
  }

  return result;
}

uint64_t sub_25173892C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25173699C;

  return LiteralExpression.resolve()(a1, a2);
}

uint64_t sub_2517389D4(uint64_t a1)
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

uint64_t sub_251738A44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_251738B84(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_251738DDC()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v0[9] = 0;
  v0[10] = 0;
  v0[8] = v2;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_25172FBB4(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
      v5 = *(v4 + 24);
      v9 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      v0[11] = v7;
      *v7 = v0;
      v7[1] = sub_251738F70;

      (v9)(v0 + 13, v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[1];

    v8(0);
  }
}

uint64_t sub_251738F70()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(v2 + 96) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if (v0)
  {
    v4 = sub_251739258;
  }

  else
  {
    v4 = sub_25173908C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_25173908C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 72);
    v2 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    v3 = *(v0 + 80);
    *(v0 + 72) = v2;
  }

  else
  {
    v3 = *(v0 + 80);
  }

  v4 = v3 + 1;
  *(v0 + 80) = v4;
  if (v4 == *(v0 + 64))
  {
    v5 = *(v0 + 8);
    v6 = *(v0 + 72);

    v5(v6);
    return;
  }

  v7 = *(v0 + 56);
  if (v4 >= *(v7 + 16))
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_25172FBB4(v7 + 40 * v4 + 32, v0 + 16);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v10 = *(v9 + 24);
  v13 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_251738F70;

  v13(v0 + 104, v8, v9);
}

void sub_251739294()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v0[8] = v2;
  if (v2)
  {
    v0[9] = MEMORY[0x277D84F90];
    v0[10] = 0;
    if (*(v1 + 16))
    {
      sub_25172FBB4(v1 + 32, (v0 + 2));
      v3 = v0[5];
      v4 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
      v5 = *(v4 + 16);
      v10 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      v0[11] = v7;
      *v7 = v0;
      v7[1] = sub_25173942C;

      v10(v3, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    v8(v9);
  }
}

uint64_t sub_25173942C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[11];
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[9];
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);

    v6 = sub_251734EAC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v6 = sub_25173955C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void *sub_25173955C()
{
  v1 = v0[12];
  result = v0[9];
  v3 = *(v1 + 16);
  v4 = result[2];
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[9];
  if (result && v5 <= v6[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v3;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251735374(result, v11, 1, v0[9]);
  v6 = result;
  if (!*(v1 + 16))
  {
LABEL_13:
    v12 = v0[12];

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_5:
  if ((v6[3] >> 1) - v6[2] < v3)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v0[12];
  sub_251738854();
  swift_arrayInitWithCopy();

  if (v3)
  {
    v8 = v6[2];
    v9 = __OFADD__(v8, v3);
    v10 = v8 + v3;
    if (v9)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v6[2] = v10;
  }

LABEL_14:
  v13 = v0[10] + 1;
  if (v13 == v0[8])
  {
    v14 = v0[1];

    return v14(v6);
  }

  v0[9] = v6;
  v0[10] = v13;
  v15 = v0[7];
  if (v13 >= *(v15 + 16))
  {
    goto LABEL_25;
  }

  sub_25172FBB4(v15 + 40 * v13 + 32, (v0 + 2));
  v16 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
  v18 = *(v17 + 16);
  v21 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_25173942C;

  return v21(v16, v17);
}

uint64_t sub_2517397D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517350D0;

  return CountTrueExpression.orchestrationInputSignals()();
}

uint64_t sub_251739864(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_251736C10;

  return CountTrueExpression.resolve()();
}

uint64_t AndExpressionConstructor.constructExpression(from:factory:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a2;
  v6 = sub_25175007C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v25 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v20 = a3;
    v21 = v12;
    v28 = MEMORY[0x277D84F90];
    result = sub_2517329BC(0, v12, 0);
    v14 = 0;
    v13 = v28;
    v23 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = v7 + 16;
    v24 = (v7 + 8);
    while (v14 < *(v11 + 16))
    {
      v15 = v25;
      (*(v7 + 16))(v25, v23 + *(v7 + 72) * v14, v6);
      sub_251730CCC(v15, v27);
      if (v3)
      {
        (*v24)(v15, v6);
      }

      v16 = v7;
      v17 = v6;
      (*v24)(v15, v6);
      v28 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2517329BC((v18 > 1), v19 + 1, 1);
        v13 = v28;
      }

      ++v14;
      *(v13 + 16) = v19 + 1;
      result = sub_25172F5E8(v27, v13 + 40 * v19 + 32);
      v6 = v17;
      v7 = v16;
      if (v21 == v14)
      {
        a3 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    a3[3] = &type metadata for AndExpression;
    a3[4] = &protocol witness table for AndExpression;
    *a3 = v13;
  }

  return result;
}

unint64_t sub_251739B74()
{
  result = qword_27F458430[0];
  if (!qword_27F458430[0])
  {
    type metadata accessor for ProtoAndExpressionConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F458430);
  }

  return result;
}

uint64_t ComparatorExpression.init(_:_:_:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  sub_251726638(a1, a4);
  result = sub_251726638(a3, a4 + 48);
  *(a4 + 40) = v6;
  return result;
}

uint64_t sub_251739C24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(&off_2796C53F8 + v3);
  v5 = *(&off_2863A2040 + v3);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v6 + 16) = v7;
  *(v6 + 32) = v7;
  return v5;
}

uint64_t ComparatorExpression.Operation.hashValue.getter()
{
  v1 = *v0;
  sub_2517505BC();
  MEMORY[0x253080AA0](v1);
  return sub_2517505DC();
}

uint64_t sub_251739D10()
{
  sub_2517505BC();
  ComparatorExpression.Operation.hash(into:)();
  return sub_2517505DC();
}

uint64_t ComparatorExpression.lhs.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_251726638(a1, v1);
}

uint64_t ComparatorExpression.rhs.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 48));

  return sub_251726638(a1, v1 + 48);
}

uint64_t ComparatorExpression.resolve()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(a1 + 16);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251739F28, 0, 0);
}

uint64_t sub_251739F28()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_25173A054;
  v7 = v0[7];

  return v9(v7, v2, v3);
}

uint64_t sub_25173A054()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_25173A4B0;
  }

  else
  {
    v3 = sub_25173A168;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25173A168()
{
  v1 = v0[3];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_25173A298;
  v7 = v0[6];

  return v9(v7, v2, v3);
}

uint64_t sub_25173A298()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_25173A520;
  }

  else
  {
    v3 = sub_25173A3AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25173A3AC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v12 = *(v0[3] + 40);
  v5 = *(v0[2] + 24);
  v6 = type metadata accessor for ComparatorExpression.Operation();
  v7 = sub_251739C24(v6);
  v8 = v7(v1, v2);

  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);

  v10 = v0[1];

  return v10(v8 & 1);
}

uint64_t sub_25173A4B0()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_25173A520()
{
  (*(v0[5] + 8))(v0[7], v0[4]);
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_25173A5E0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_25173A704;

  return v8(v2, v3);
}

uint64_t sub_25173A704(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25173A838, 0, 0);
  }
}

uint64_t sub_25173A838()
{
  v1 = *(v0 + 16);
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_25173A960;

  return v8(v2, v3);
}

uint64_t sub_25173A960(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_25173AAFC;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_25173AA88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25173AA88()
{
  v3 = *(v0 + 32);
  sub_251734EC4(*(v0 + 56));
  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_25173AAFC()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_25173AB7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2517350D0;

  return ComparatorExpression.orchestrationInputSignals()();
}

uint64_t sub_25173AC08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_251735260;

  return ComparatorExpression.resolve()(a2);
}

uint64_t sub_25173ACA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25173AD0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25173AD54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25173ADC0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2517502DC() & 1;
}

uint64_t sub_25173ADEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2517502FC() & 1;
}

BOOL sub_25173AE18()
{
  v1 = *(*(v0 + 24) + 8);
  v2 = *(v0 + 16);
  return (sub_25175031C() & 1) == 0;
}

uint64_t sub_25173AE4C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 8);
  return sub_25175031C() & 1;
}

uint64_t sub_25173AE7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25175030C() & 1;
}

uint64_t sub_25173AEA8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2517502EC() & 1;
}

uint64_t CodableExpressionConfigurationCodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25175049C();

  *a1 = v2 != 0;
  return result;
}

uint64_t CodableExpressionConfigurationCodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25175049C();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_25173AFC4()
{
  result = qword_27F458538;
  if (!qword_27F458538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458538);
  }

  return result;
}

uint64_t sub_25173B018()
{
  sub_2517505BC();
  sub_25175033C();
  return sub_2517505DC();
}

uint64_t sub_25173B08C()
{
  sub_2517505BC();
  sub_25175033C();
  return sub_2517505DC();
}

uint64_t sub_25173B0E0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25175049C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_25173B158()
{
  result = qword_27F458540;
  if (!qword_27F458540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458540);
  }

  return result;
}

unint64_t sub_25173B1B0()
{
  result = qword_27F458548;
  if (!qword_27F458548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458548);
  }

  return result;
}

uint64_t sub_25173B220@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25175049C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25173B284(uint64_t a1)
{
  v2 = sub_25172FB60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25173B2C0(uint64_t a1)
{
  v2 = sub_25172FB60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableExpressionFactory.expression<A>(from:valueType:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  return CodableExpressionFactory.expression<A>(from:valueType:)(a1, a2, a3);
}

{
  v8 = *(v3 + 16);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 24))(&v38, v9, v10);
  if (!*(v8 + 16))
  {

    goto LABEL_7;
  }

  v11 = sub_2517303DC(v38, v39);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_7:
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 24))(v42, v17, v18);
    v19 = v42[0];
    v20 = v42[1];
    sub_251732E54();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0;
    return swift_willThrow();
  }

  sub_25172FBB4(*(v8 + 56) + 40 * v11, &v40);
  sub_251726638(&v40, v42);
  v14 = v43;
  v15 = v44;
  v16 = __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_25173B9E8(a1, v16, v14, v15, &v40);
  if (!v4)
  {
    sub_25172FBB4(&v40, &v38);
    sub_25173001C(0, &qword_27F458168);
    v45 = a2;
    swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      sub_251726638(v37, a3);
    }

    else
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_2517503EC();
      MEMORY[0x253080820](0x63757274736E6F43, 0xEC00000020726F74);
      v23 = a1[3];
      v24 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v23);
      (*(v24 + 24))(v37, v23, v24);
      MEMORY[0x253080820](*&v37[0], *(&v37[0] + 1));

      MEMORY[0x253080820](0xD000000000000030, 0x8000000251753E90);
      __swift_project_boxed_opaque_existential_1(&v40, v41);
      swift_getAssociatedTypeWitness();
      *&v37[0] = swift_getMetatypeMetadata();
      swift_getMetatypeMetadata();
      v25 = sub_25175032C();
      MEMORY[0x253080820](v25);

      MEMORY[0x253080820](540877088, 0xE400000000000000);
      *&v37[0] = a2;
      swift_getMetatypeMetadata();
      v26 = sub_25175032C();
      MEMORY[0x253080820](v26);

      MEMORY[0x253080820](0x736572707845202ELL, 0xED00003D6E6F6973);
      v27 = v41;
      v28 = __swift_project_boxed_opaque_existential_1(&v40, v41);
      v29 = *(*(v27 - 8) + 64);
      MEMORY[0x28223BE20](v28);
      (*(v31 + 16))(&v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = sub_25175032C();
      MEMORY[0x253080820](v32);

      v33 = v38;
      v34 = v39;
      sub_251732E54();
      swift_allocError();
      *v35 = v33;
      *(v35 + 8) = v34;
      *(v35 + 16) = 1;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_25173B7A8()
{
  sub_25173C930();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251752410;
  *(v0 + 56) = &type metadata for CodableLiteralExpressionConstructor;
  *(v0 + 64) = sub_25173C998();
  *(v0 + 96) = &type metadata for CodableAndExpressionConstructor;
  *(v0 + 104) = sub_25173C9EC();
  *(v0 + 136) = &type metadata for CodableOrExpressionConstructor;
  *(v0 + 144) = sub_25173CA40();
  *(v0 + 176) = &type metadata for CodableNotExpressionConstructor;
  *(v0 + 184) = sub_25173CA94();
  *(v0 + 216) = &type metadata for CodableComparatorExpressionConstructor;
  result = sub_25173CAE8();
  *(v0 + 224) = result;
  qword_27F458550 = v0;
  return result;
}

uint64_t static CodableExpressionFactory.defaultConstructors.getter()
{
  if (qword_27F457F10 != -1)
  {
    swift_once();
  }
}

uint64_t CodableExpressionFactory.__allocating_init(allConstructors:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_25173C39C(a1);

  return v2;
}

uint64_t CodableExpressionFactory.init(allConstructors:)(uint64_t a1)
{
  v1 = sub_25173C39C(a1);

  return v1;
}

uint64_t CodableExpressionFactory.__allocating_init(additionalConstructors:)(uint64_t a1)
{
  if (qword_27F457F10 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v5 = a1;

  sub_251734EE0(v1);
  swift_allocObject();
  v2 = sub_25173C39C(v5);

  return v2;
}

uint64_t sub_25173B9E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[1] = a2;
  v27[0] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_2517503CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v27 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v27 - v17;
  sub_25172FBB4(a1, v28);
  sub_25173001C(0, &qword_27F458568);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v14, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
    (*(a4 + 32))(v18, v27[2], a3, a4);
    return (*(v15 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {
    v20(v14, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v14, v9);
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    (*(v23 + 24))(v28, v22, v23);
    v24 = v28[0];
    v25 = v28[1];
    sub_251732E54();
    swift_allocError();
    *v26 = v24;
    *(v26 + 8) = v25;
    *(v26 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t CodableExpressionFactory.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CodableExpressionFactory.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t CodableExpressionFactory.configurationType(for:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_2517303DC(*a1, a1[1]);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(v2 + 56) + 40 * v3);
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  return sub_25173C224();
}

uint64_t static CodableExpressionFactory.defaultConfigurationTypeProvider.getter()
{
  if (qword_27F457F10 != -1)
  {
    swift_once();
  }

  v4 = MEMORY[0x277D84F90];

  sub_251734EE0(v0);
  swift_initStackObject();
  v1 = sub_25173C39C(v4);

  v2 = sub_25173BE64(*(v1 + 16));

  return v2;
}

uint64_t sub_25173BE64(uint64_t a1)
{
  sub_25173C6C0();
  result = sub_25175045C();
  v3 = 0;
  v27 = result;
  v28 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v26 = result + 64;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v28 + 56);
      v16 = (*(v28 + 48) + 16 * v14);
      v17 = v16[1];
      v30 = *v16;
      sub_25172FBB4(v15 + 40 * v14, v29);
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v18 = sub_25173C224();
      v20 = v19;

      __swift_destroy_boxed_opaque_existential_1(v29);
      result = v27;
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = (v27[6] + 16 * v14);
      *v21 = v30;
      v21[1] = v17;
      v22 = (v27[7] + 16 * v14);
      *v22 = v18;
      v22[1] = v20;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17HealthExpressions33CodableExpressionConstructorErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_25173C6B0();
    sub_25173C6B0();
    sub_25173C6B8();
    sub_25173C6B8();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_2517504FC();
    sub_25173C6B0();
    sub_25173C6B0();
    sub_25173C6B8();
    sub_25173C6B8();
    return v14 & 1;
  }

LABEL_15:
  sub_25173C6B0();
  sub_25173C6B0();
  sub_25173C6B8();
  sub_25173C6B8();
  return 1;
}

uint64_t sub_25173C1E4()
{
  swift_getAssociatedTypeWitness();

  return swift_getMetatypeMetadata();
}

uint64_t sub_25173C224()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return AssociatedTypeWitness;
}

unint64_t sub_25173C298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_25173C7D8();
    v3 = sub_25175047C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25173C854(v4, &v12);
      result = sub_2517303DC(v12, v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 16 * result);
      v8 = v13;
      *v7 = v12;
      v7[1] = v8;
      result = sub_251726638(&v14, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25173C39C(uint64_t a1)
{
  v2 = sub_25173C298(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_15:
    result = v25;
    *(v25 + 16) = v2;
    return result;
  }

  v4 = a1 + 32;
  while (1)
  {
    sub_25172FBB4(v4, v30);
    v7 = v31;
    v8 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    sub_251749970(v7, v8);
    v10 = v28;
    v9 = v29;
    sub_25172FBB4(v30, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v2;
    v12 = sub_2517303DC(v10, v9);
    v14 = *(v2 + 16);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (*(v2 + 24) < v17)
    {
      sub_25174E524(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_2517303DC(v10, v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_25174EA94();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v5 = v12;

      v2 = v26;
      v6 = (v26[7] + 40 * v5);
      __swift_destroy_boxed_opaque_existential_1(v6);
      sub_251726638(v27, v6);
      goto LABEL_4;
    }

LABEL_11:
    v2 = v26;
    v26[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v26[6] + 16 * v12);
    *v20 = v10;
    v20[1] = v9;
    sub_251726638(v27, v26[7] + 40 * v12);
    v21 = v26[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_17;
    }

    v26[2] = v22;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v30);
    v4 += 40;
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_25175056C();
  __break(1u);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25173C608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25173C650(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_25173C6C0()
{
  if (!qword_27F458558)
  {
    sub_25173C72C();
    sub_25173C784();
    v0 = sub_25175048C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F458558);
    }
  }
}

unint64_t sub_25173C72C()
{
  result = qword_27F458560;
  if (!qword_27F458560)
  {
    sub_25173001C(255, &qword_27F458568);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F458560);
  }

  return result;
}

unint64_t sub_25173C784()
{
  result = qword_27F458570;
  if (!qword_27F458570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458570);
  }

  return result;
}

void sub_25173C7D8()
{
  if (!qword_27F458578)
  {
    sub_25173001C(255, &qword_27F458220);
    sub_25173C784();
    v0 = sub_25175048C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F458578);
    }
  }
}

uint64_t sub_25173C854(uint64_t a1, uint64_t a2)
{
  sub_25173C8B8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25173C8B8()
{
  if (!qword_27F458580)
  {
    sub_25173001C(255, &qword_27F458220);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F458580);
    }
  }
}

void sub_25173C930()
{
  if (!qword_27F458228)
  {
    sub_25173001C(255, &qword_27F458220);
    v0 = sub_2517504EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F458228);
    }
  }
}

unint64_t sub_25173C998()
{
  result = qword_27F458588;
  if (!qword_27F458588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458588);
  }

  return result;
}

unint64_t sub_25173C9EC()
{
  result = qword_27F458590;
  if (!qword_27F458590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458590);
  }

  return result;
}

unint64_t sub_25173CA40()
{
  result = qword_27F458598;
  if (!qword_27F458598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F458598);
  }

  return result;
}

unint64_t sub_25173CA94()
{
  result = qword_27F4585A0;
  if (!qword_27F4585A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4585A0);
  }

  return result;
}