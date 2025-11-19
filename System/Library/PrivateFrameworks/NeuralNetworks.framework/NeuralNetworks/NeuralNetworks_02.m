uint64_t sub_25BAB5680()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25BAB56B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 56), *(v0 + 64));
  return v1;
}

void OUTLINED_FUNCTION_45_3()
{
  v2 = *(v0 + 16) + 1;

  sub_25BAA1B64();
}

uint64_t OUTLINED_FUNCTION_45_4()
{
  v1 = *(v0 + 24);
  result = *(v0 + 16);
  v3 = *(v0 + 25) == 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_5()
{
  result = *(v0 + 144);
  v2 = *(*(v0 + 136) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_7()
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_45_9@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_45_15()
{
  *(v4 - 128) = v0;
  *(v4 - 120) = v1;
  *(v4 - 112) = v3;
  *(v4 - 104) = v2;

  return sub_25BCB715C();
}

uint64_t OUTLINED_FUNCTION_45_16()
{

  return sub_25BCB677C();
}

__n128 OUTLINED_FUNCTION_45_17()
{
  v1 = *(v0 - 224);
  v3 = *(v0 - 208);
  v4 = *(v0 - 192);
  return *(v0 - 240);
}

uint64_t OUTLINED_FUNCTION_45_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a24, v25, &a18, &a9, &a25);
}

void OUTLINED_FUNCTION_47_3(unsigned __int8 a1@<W8>)
{
  v3 = v1 & 0xFFFFFF00FFFFFFFFLL | (a1 << 32);
  *(v2 - 216) = v3;
  *(v2 - 212) = BYTE4(v3) & 1;
}

void *OUTLINED_FUNCTION_47_4()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  *(v2 - 120) = v0[2];
  v6 = *(v0 + 24);
  *(v2 - 128) = *(v0 + 25);
  *(v2 - 124) = v6;
  *(v2 - 72) = *(v0 + 26);
  v7 = *(v0 + 7);
  *(v2 - 176) = *(v0 + 9);
  *(v2 - 160) = v7;
  *(v2 - 192) = *(v0 + 11);
  *(v2 - 136) = v0[13];
  v8 = v1[4];
  return __swift_project_boxed_opaque_existential_1(v1, v1[3]);
}

uint64_t OUTLINED_FUNCTION_47_5()
{

  return sub_25BB0EA20(v0);
}

uint64_t OUTLINED_FUNCTION_47_9()
{
}

uint64_t OUTLINED_FUNCTION_47_11(uint64_t a1, uint64_t a2, char a3)
{
  sub_25BBFA138(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_47_12()
{
  v3 = *(*(*v0 + 16) + 152);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_47_13()
{
}

uint64_t OUTLINED_FUNCTION_47_15()
{
}

void OUTLINED_FUNCTION_47_16()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_47_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 208);

  sub_25BAB1090(v4, v3, a3, v5);
}

uint64_t OUTLINED_FUNCTION_47_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_25BAA6F5C(va, v16, v17);
}

uint64_t sub_25BAB5B48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  result = sub_25BCB617C();
  if (v5)
  {
    while (1)
    {
      v8 = *v6;
      v9 = *(v4 + 16);
      v10 = *v6 >= ~v9 && v8 <= v9;
      if (!v10 || (v11 = ((v9 + 1) & (v8 >> 63)) + v8, v9 < v11))
      {

        v4 = 0;
        goto LABEL_15;
      }

      if (v11 < 0)
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 >= *(v4 + 24) >> 1)
      {
        sub_25BA96630();
        v4 = v12;
      }

      v13 = v4 + 8 * v11;
      result = memmove((v13 + 40), (v13 + 32), 8 * (*(v4 + 16) - v11));
      ++*(v4 + 16);
      *(v13 + 32) = 1;
      ++v6;
      if (!--v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    *a3 = v4;
  }

  return result;
}

uint64_t sub_25BAB5C50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_6_8();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAB5CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 48), *(*(v0 + 40) + 160));
  return v1;
}

void Tensor.cast(to:roundingRule:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  (*(a2 + 32))(&v3);
  Tensor.cast(to:roundingRule:)();
}

uint64_t valueWithGradient<A>(at:of:)()
{
  OUTLINED_FUNCTION_73_9();
  valueWithPullback<A>(at:of:)();
  v0 = OUTLINED_FUNCTION_12_44();
  OUTLINED_FUNCTION_41_23(v0);
  sub_25BAC2A84(&v2);

  return OUTLINED_FUNCTION_71_8();
}

{
  OUTLINED_FUNCTION_73_9();
  valueWithPullback<A>(at:of:)();
  v0 = OUTLINED_FUNCTION_12_44();
  OUTLINED_FUNCTION_41_23(v0);
  sub_25BC6F41C(&v2);

  return OUTLINED_FUNCTION_71_8();
}

uint64_t sub_25BAB5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_28154D3C0 != -1)
  {
    a1 = OUTLINED_FUNCTION_15_36();
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for LayerVariablePaths();
  sub_25BCB6E8C();

  sub_25BAB0ED8(sub_25BAB0F40);

  return a4;
}

uint64_t sub_25BAB5F04@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_25BAB0F68(*(v1 + 56), *(v1 + 64), *(v1 + 72), a1);
}

uint64_t sub_25BAB5F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_25BAB15AC(a3, a2, a3);
  sub_25BCB7BDC();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v17 = a1;
    if (dynamic_cast_existential_0_class_conditional(a7))
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_25BCB5ADC() ^ 1;
    }

    v13 = sub_25BCB5AEC();
    v15 = v14;
    if (v11)
    {
      v16 = sub_25BCB5B1C();
    }

    else
    {
      v16 = 0;
    }

    type metadata accessor for StoredPropertyInfo();
    sub_25BAB1608(v13, v15, v10, v17, v16, (v11 & 1) == 0, 0);
    swift_beginAccess();
    sub_25BCB68CC();

    sub_25BCB687C();
    swift_endAccess();
  }

  else
  {
  }
}

uint64_t sub_25BAB60DC(uint64_t a1, _DWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25BAB8870(a1, a2, *(v2 + 32), *(v2 + 36));
}

uint64_t sub_25BAB60FC(uint64_t a1, _DWORD *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25BAB8870(a1, a2, *(v2 + 32), *(v2 + 36));
}

uint64_t sub_25BAB611C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  return sub_25BAB9034(a1, *(v2 + 24), a2);
}

uint64_t OUTLINED_FUNCTION_104_3()
{

  return swift_setDeallocating();
}

void OUTLINED_FUNCTION_104_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{

  Tensor.init(coercing:scalarType:on:)(v22 - 192, a3, a5, v22 - 144, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_25BAB61CC(uint64_t a1)
{
  if (*(*(a1 + 64) + 16) || *(*(a1 + 56) + 16))
  {
    return 0;
  }

  if (qword_28154D3C0 != -1)
  {
    OUTLINED_FUNCTION_15_36();
  }

  sub_25BAA3234();
  sub_25BC42198(&v3);
  v1 = v3;
  sub_25BAA3258();

  return v1;
}

uint64_t sub_25BAB62B8(int a1)
{
  v4 = v1;
  v31 = a1;
  v5 = *v1;
  v30 = *(*v1 + 80);
  v6 = sub_25BCB736C();
  v7 = sub_25BCB604C();
  v38 = v7;
  v37 = MEMORY[0x277D84F90];
  v36 = 0;
  v8 = *(v4 + *(*v4 + 120));
  v9 = sub_25BAAF54C(*(v8 + 16));
  if (v9 < 0)
  {
    __break(1u);

    v3(v35, 1);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v10 = 0;
      v11 = *(*v4 + 96);
      v32 = v9;
      v33 = v11;
      v29[0] = v8;
      v29[1] = v6;
      while (v36 != 1 || (v31 & 1) != 0)
      {
        sub_25BAB9528();
        sub_25BCB690C();

        v34 = v29;
        v13 = v35[0];
        MEMORY[0x28223BE20](v12);
        v14 = *(v5 + 88);
        v28[2] = v14;
        v28[3] = &v36;
        v28[4] = &v38;
        v28[5] = v13;
        v28[6] = &v37;
        swift_beginAccess();
        v15 = sub_25BCB6FCC();
        if (v16)
        {
          v17 = swift_modifyAtWritableKeyPath();
          sub_25BAB663C(v18, &v36, &v38, v13, &v37);
          v17(v35, 0);
        }

        else
        {
          v19 = MEMORY[0x28223BE20](v15);
          v20 = v30;
          v27[2] = v30;
          v27[3] = v14;
          v27[4] = v19;
          v27[5] = sub_25BAB3034;
          v27[6] = v28;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
          sub_25BAB2F30(v4 + v33, sub_25BAB2FD0, v27, v20, v21);
        }

        ++v10;
        swift_endAccess();

        if (v32 == v10)
        {
          v7 = v38;
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v22 = *(*v4 + 104);
      v23 = *(v4 + v22);
      *(v4 + v22) = v7;
      sub_25BCB617C();

      v24 = *(*v4 + 112);
      v25 = *(v4 + v24);
      *(v4 + v24) = v37;
      sub_25BCB617C();
    }
  }

  return result;
}

_BYTE *sub_25BAB663C(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(*result + 32);
  if ((~v6 & 0xF000000000000007) != 0 && result[9] == 1)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      *a2 = 1;
      return result;
    }

    v9 = *a4;
    v34 = v6 & 0x7FFFFFFFFFFFFFFFLL;
    v10 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    sub_25BAB3020(v6);

    v11 = sub_25BAB6A04();

    if (v11 || (v12 = *(v34 + 16), , v13 = sub_25BAB3058(), v15 = v14, v16 = v13, , !v16))
    {
      v25 = v34;
    }

    else
    {
      type metadata accessor for TrackedOperation();
      v31 = swift_allocObject();
      *(v31 + 16) = v16;
      *(v31 + 24) = v15;
      sub_25BAA51C8(*(v34 + 16) + 168, v33);

      swift_unknownObjectRetain();
      v17 = sub_25BAD259C();

      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v32);

      v18 = v32[10];

      sub_25BAA4AF4(v32);
      type metadata accessor for TensorRepresentation();
      v19 = swift_allocObject();
      LOBYTE(v32[0]) = 1;
      v30 = sub_25BC102F4(v31, 0, v33, 0x100000000, v18, v17, v19);
      v20 = *(v34 + 16);

      v21 = sub_25BA9BEA8();
      v34 = v22;

      if (v21)
      {
        v23 = v30;

        swift_unknownObjectRetain();
        v29 = v21;
        v24 = sub_25BA928B4();
        [v24 lock];

        sub_25BC5F7F0(v30, v29, v34);
        if (v5)
        {
          result = [*(v30 + 224) unlock];
          __break(1u);
          return result;
        }

        [*(v30 + 224) unlock];
        swift_unknownObjectRelease_n();
      }

      else
      {
        v23 = v30;
      }

      type metadata accessor for TensorHandle();
      v25 = swift_allocObject();
      *(v25 + 16) = v23;

      sub_25BAA6EB0();

      sub_25BAB310C(v6);
      swift_unknownObjectRelease();
    }

    v32[0] = v25;

    Parameter.wrappedValue.setter(v32);
    v32[0] = a4;
    v26 = *(v9 + *MEMORY[0x277D84308]);
    sub_25BCB736C();
    sub_25BCB68CC();

    sub_25BCB687C();
    sub_25BAB3120();
    v27 = *(*a5 + 16);
    result = sub_25BAB6E4C(v27);
    v28 = *a5;
    *(v28 + 16) = v27 + 1;
    *(v28 + 8 * v27 + 32) = v25;
  }

  return result;
}

uint64_t sub_25BAB69C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  result = a3(a1 + a2);
  if (v10)
  {
    *a10 = v10;
  }

  return result;
}

BOOL sub_25BAB6A04()
{
  v0 = sub_25BAB3058();
  v1 = v0;
  if (v0 && object_getClass(v0) != _TtC14NeuralNetworks16TrackedOperation)
  {
    swift_unknownObjectRelease();
    v1 = 0;
  }

  return v1 != 0;
}

uint64_t sub_25BAB6A68(uint64_t *a1)
{
  v2 = *a1;
  if (v1[8] == 1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = v1;
    v6 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18[0] = v2;
      v9 = *(*v1 + 16);
      type metadata accessor for LayerVariableReference();
      OUTLINED_FUNCTION_5();
      v19 = 0;
      v10 = sub_25BAB6D38(v18, v9);

      *v5 = v10;
      return result;
    }

    v7 = *v1;
    v8 = *(*v5 + 32);
    if ((~v8 & 0xF000000000000007) != 0)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v18[0] = v2 | 0x8000000000000000;

        sub_25BACED40(v18);
      }

      if (sub_25BAB5C48(*(*(v2 + 16) + 152), *(*((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)))
      {
        v18[0] = v2 | 0x8000000000000000;

        sub_25BAB3020(v8);
        sub_25BACED40(v18);

        return sub_25BAB310C(v8);
      }

      v18[0] = 0;
      v18[1] = 0xE000000000000000;

      sub_25BAB3020(v8);
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000003DLL, 0x800000025BCE7AA0);
      v11 = *(*((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
      v12 = sub_25BCB617C();
      v13 = MEMORY[0x277D83B88];
      v14 = MEMORY[0x25F876F80](v12, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v14);

      MEMORY[0x25F876C90](0x6920747562202C29, 0xEE00207361682074);
      v15 = *(*(v2 + 16) + 152);
      v16 = sub_25BCB617C();
      v17 = MEMORY[0x25F876F80](v16, v13);
      MEMORY[0x25F876C90](v17);

      MEMORY[0x25F876C90](46, 0xE100000000000000);
    }

    result = OUTLINED_FUNCTION_67();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAB6D38(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 24) = xmmword_25BCBCAC0;
  if ((a2 & 0x100000000) != 0)
  {
    type metadata accessor for VariableIdentityGenerator();
    LODWORD(a2) = sub_25BC9B024();
    v4 = *(v2 + 32);
  }

  else
  {
    v4 = 0xF000000000000007;
  }

  *(v2 + 16) = a2;
  *(v2 + 32) = v3 | 0x8000000000000000;
  sub_25BAB310C(v4);
  return v2;
}

uint64_t sub_25BAB6DA8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_25BAB6E04(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_169(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{

  sub_25BBE0B84(a1, a2, v60, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t OUTLINED_FUNCTION_169_1()
{
}

uint64_t sub_25BAB6EC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  v4 = *(a2 + 16);
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v5 = 32;
    do
    {
      v6 = *(*(a2 + v5) + 16);

      sub_25BCB723C();
      v7 = *(v10 + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      v5 += 8;
      --v4;
    }

    while (v4);

    v8 = v10;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v8;
  return v2;
}

uint64_t sub_25BAB6FD4()
{
  OUTLINED_FUNCTION_144();
  sub_25BAA49B8();
  sub_25BAB7060(v1);

  v0(v2);
  sub_25BAA49B8();
  sub_25BAB814C();
}

uint64_t sub_25BAB7060(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_64();
  sub_25BAB70E0();
  v4 = *(*(v1 + 16) + 16);
  sub_25BAB32F0(v4);
  v5 = *(v1 + 16);
  *(v5 + 16) = v4 + 1;
  sub_25BAA4ABC(a1, v5 + 144 * v4 + 32);
  *(v2 + 16) = v5;
  return swift_endAccess();
}

uint64_t Layer.callAsFunction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 48))(a2, a3);
  if ((v4 & 1) == 0)
  {
    v5 = *(a3 + 56);
    OUTLINED_FUNCTION_16_20();
    v4 = v6();
  }

  MEMORY[0x28223BE20](v4);
  return sub_25BAB71CC();
}

uint64_t sub_25BAB71CC()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v4);

  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v0 = sub_25BCB63AC();
  v2 = v1;

  v5 = v0;
  v6 = v2;
  swift_getAssociatedTypeWitness();
  sub_25BAB35A8();
  return sub_25BAA4AF4(v4);
}

uint64_t sub_25BAB72C4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAB7060(a1);

  a2(v9);
  sub_25BAA49B8();
  sub_25BAB814C();

  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

void Sequential.forward(_:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35_11();
  v13 = *(v2 + 52);
  Layer.callAsFunction(_:)(v4, v6, v5);
  Layer.callAsFunction(_:)(v0, *(v2 + 24), *(v2 + 40));
  (*(v9 + 8))(v0, AssociatedTypeWitness);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAB74D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      if (a1 < a2)
      {
        v24 = OUTLINED_FUNCTION_102_1();
        sub_25BAB7654(v24, v25, 1);
        return 0;
      }

      v5 = a3 >= a1;
      v6 = OUTLINED_FUNCTION_102_1();
      v8 = 1;
      goto LABEL_15;
    case 2:
      v5 = a1 >= a2;
      v6 = OUTLINED_FUNCTION_102_1();
      v8 = 2;
      goto LABEL_15;
    case 3:
      v5 = a2 >= a1;
      v6 = OUTLINED_FUNCTION_102_1();
      v8 = 3;
      goto LABEL_15;
    case 4:
      v9 = *(a2 + 16);
      v10 = OUTLINED_FUNCTION_102_1();
      sub_25BAB7654(v10, v11, 4);
      v12 = 0;
      v13 = (a2 + 48);
      break;
    default:
      v5 = a1 == a2;
      v6 = OUTLINED_FUNCTION_102_1();
      v8 = 0;
LABEL_15:
      sub_25BAB7654(v6, v7, v8);
      return v5;
  }

  while (v9 != v12)
  {
    if (v12 >= *(a2 + 16))
    {
      __break(1u);
      JUMPOUT(0x25BAB7640);
    }

    v14 = *(v13 - 2);
    v15 = *(v13 - 1);
    v16 = *v13;
    v17 = OUTLINED_FUNCTION_13_49();
    sub_25BAB7654(v17, v18, v19);
    v20 = OUTLINED_FUNCTION_110();
    if (sub_25BAB74D0(v20))
    {
      v29 = OUTLINED_FUNCTION_102_1();
      sub_25BABAF8C(v29, v30, 4);
      v31 = OUTLINED_FUNCTION_13_49();
      sub_25BABAF8C(v31, v32, v33);
      return 1;
    }

    ++v12;
    v21 = OUTLINED_FUNCTION_13_49();
    sub_25BABAF8C(v21, v22, v23);
    v13 += 24;
  }

  v26 = OUTLINED_FUNCTION_102_1();
  sub_25BABAF8C(v26, v27, 4);
  return 0;
}

uint64_t sub_25BAB7654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_25BCB617C();
  }

  return result;
}

void conv2D(_:weight:bias:stride:padding:dilation:groupCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_9_18();
  v70 = v23;
  v71 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = *v32;
  v35 = *v34;
  v37 = *v36;
  v38 = *(*v32 + 16);
  v39 = *(v38 + 160);
  if (!sub_25BAA80BC(*(v38 + 160), &unk_286D42270))
  {
LABEL_17:
    OUTLINED_FUNCTION_39_27();
    OUTLINED_FUNCTION_30();
    v72 = v39;
    *v73 = v38;
    *&v73[8] = xmmword_25BCBCE20;
    LOBYTE(v74) = 0;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v76) = 2;
    v78 = 3;
    OUTLINED_FUNCTION_1_81();
    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_8_61(*(v38 + 19)) & 1) == 0)
  {
    v72 = v39;
    *v73 = xmmword_25BCBCE20;
    v73[16] = 0;
    OUTLINED_FUNCTION_11_55();
    OUTLINED_FUNCTION_1_81();
    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_8_61(*(*(v35 + 16) + 152)) & 1) == 0)
  {
    v72 = v39;
    *v73 = xmmword_25BCBEAD0;
    v73[16] = 0;
    OUTLINED_FUNCTION_11_55();
    OUTLINED_FUNCTION_1_81();
    goto LABEL_23;
  }

  if (v37)
  {
    v40 = *(*(*(v37 + 16) + 152) + 16);

    if (OUTLINED_FUNCTION_35_24())
    {
      v41 = OUTLINED_FUNCTION_43(*(v37 + 16));
      if (v42)
      {
        v43 = *(*(v35 + 16) + 152);
        if (*(v43 + 16))
        {
          if (*(v41 + 32) == *(v43 + 32))
          {

            goto LABEL_10;
          }

          v72 = 0;
          *v73 = 0xE000000000000000;
          sub_25BCB70FC();
          *&v82 = 0;
          *(&v82 + 1) = 0xE000000000000000;
          v38 = &v82;
          MEMORY[0x25F876C90](0xD00000000000003BLL, 0x800000025BCDB540);
          v39 = *(*(v37 + 16) + 152);
          v60 = sub_25BCB617C();
          v61 = MEMORY[0x25F876F80](v60, MEMORY[0x277D83B88]);
          MEMORY[0x25F876C90](v61);

          OUTLINED_FUNCTION_36_23();
          v62 = OUTLINED_FUNCTION_43(*(v35 + 16));
          if (v63)
          {
            if ((*(v62 + 32) * a22) >> 64 == (*(v62 + 32) * a22) >> 63)
            {
              sub_25BCB77FC();
              OUTLINED_FUNCTION_37_28();

              MEMORY[0x25F876C90](93, 0xE100000000000000);
              OUTLINED_FUNCTION_10_5();
              OUTLINED_FUNCTION_12_51();
              sub_25BCB74CC();
              __break(1u);
              return;
            }

            __break(1u);
            goto LABEL_17;
          }
        }
      }

      v72 = 0;
      *v73 = 0uLL;
      v73[16] = -1;
      v75 = 0;
      v76 = 0;
      v74 = 0;
      v77 = -1;
      v78 = 4;
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_4();
    }

    else
    {
      v72 = v40;
      *v73 = xmmword_25BCC7810;
      v73[16] = 0;
      OUTLINED_FUNCTION_11_55();
      OUTLINED_FUNCTION_1_81();
    }

LABEL_23:
    sub_25BADDD28();
  }

LABEL_10:
  *&v82 = *(*(v33 + 16) + 152);
  v80[0] = *(*(v35 + 16) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  v66 = v29;
  v67 = v27;
  v65 = v25;
  sub_25BAB38CC(&v82, v80, v29, v27, v25, v71, v70, a21, &v72, a22);

  v44 = v72;
  v45 = *(v33 + 16);
  v46 = *(v35 + 16);
  v68 = v35;
  v69 = v31;
  if (v37)
  {
    v64 = *(v37 + 16);
  }

  else
  {
    v64 = 0;
  }

  *&v82 = v33;
  Tensor.scalarType.getter();
  OUTLINED_FUNCTION_34();
  v48 = *(v47 + 32);

  v48(v73, &v82, v31);
  v72 = v44;
  v49 = swift_allocObject();
  *(v49 + 16) = v37 != 0;
  *(v49 + 24) = v66;
  *(v49 + 32) = v67;
  *(v49 + 40) = v65;
  *(v49 + 48) = v71;
  *(v49 + 56) = v70;
  *(v49 + 64) = a21;
  *(v49 + 72) = a22;
  v50 = OUTLINED_FUNCTION_78_8();
  v52 = v51;

  v81 = 0;
  *&v82 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  *(&v82 + 1) = 107;
  v83 = 2;
  v84 = xmmword_25BCD6F20;
  v85 = "init(id:input:weight:bias:stride:padding:dilation:groupCount:resultDescriptor:creationSite:backward:)";
  v86 = 101;
  v87 = 2;
  type metadata accessor for Convolution2DOperation();
  swift_allocObject();
  v53 = OUTLINED_FUNCTION_3();
  v56 = sub_25BAB3ED4(v53, v54, v55, v45, v46, v64, v66, v67, v65, v71, v70, a21, a22, &v72, &v82, v50, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_25BCBAE70;
  *(v57 + 32) = v68;
  *(v57 + 40) = v33;

  sub_25BAB7DE8(v57, v80);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v80, v79);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(&v72);

  sub_25BAA4AF4(&v72);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v72);

  sub_25BAA4AF4(&v72);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v72) = v58;
  OUTLINED_FUNCTION_19();
  sub_25BAB400C(v56, 0, v79);
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v59 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v59);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v80);
  *v69 = v59;
  OUTLINED_FUNCTION_10_16();
}

uint64_t OUTLINED_FUNCTION_113_1()
{
  *(v0 + 320) = *(v1 + 64);

  return type metadata accessor for OptimizerStateDictionary();
}

double sub_25BAB7DE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  if (!v3)
  {
    return OUTLINED_FUNCTION_6_45();
  }

  while (1)
  {
    sub_25BAA51C8(*(*v4 + 16) + 168, &v7);
    if (*(&v8 + 1))
    {
      break;
    }

    sub_25BA9C2C8(&v7);
    v4 += 8;
    if (!--v3)
    {
      return OUTLINED_FUNCTION_6_45();
    }
  }

  v6 = v8;
  *a2 = v7;
  *(a2 + 16) = v6;
  result = *&v9;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_25BAB7EC0()
{
  if (v0[15])
  {
    v1 = v0[15];
  }

  else
  {
    v1 = (*(*v0 + 272))();
    v2 = v0[15];
    v0[15] = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

uint64_t Tensor.squeezingShape(at:)()
{
  OUTLINED_FUNCTION_47_12();
  sub_25BAB95C8(&v19, v0, &v17);

  if (v17)
  {
    OUTLINED_FUNCTION_55_5(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_25BCB70FC();

    OUTLINED_FUNCTION_86();
    v10 = OUTLINED_FUNCTION_54_8();
    v11 = MEMORY[0x277D83B88];
    v12 = MEMORY[0x25F876F80](v10, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v12);

    OUTLINED_FUNCTION_13_31();
    OUTLINED_FUNCTION_86_3();
    v13 = MEMORY[0x25F876F80](v0, v11);
    MEMORY[0x25F876C90](v13);

    OUTLINED_FUNCTION_10_5();
    result = OUTLINED_FUNCTION_43_10();
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_45_1();
  return Tensor.squeezingShape(at:)();
}

uint64_t sub_25BAB806C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAB80D8(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25BAB9974(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25BAB80F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
        if (*v9 >= v7)
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

uint64_t sub_25BAB814C()
{
  OUTLINED_FUNCTION_2_64();
  sub_25BAB8190(v1);
  swift_endAccess();
  return sub_25BAA4AF4(v1);
}

void sub_25BAB8190(void *a1@<X8>)
{
  OUTLINED_FUNCTION_10_9();
  if (v2)
  {
    sub_25BAB8214(v4);
    if (v4[3] == 1)
    {
      sub_25BAA6F5C(v4, &qword_27FBB4858, &unk_25BCBF530);
      OUTLINED_FUNCTION_10_9();
      sub_25BB30898(v3 - 1, a1);
    }

    else
    {
      memcpy(a1, v4, 0x88uLL);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25BAB8214(void *a1@<X8>)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF1454(v1);
    v1 = v4;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    memcpy(a1, (v1 + 144 * v3 - 112), 0x88uLL);
    OUTLINED_FUNCTION_1_16();
  }

  else
  {
    __break(1u);
  }
}

uint64_t relu(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_36(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    LOBYTE(v35[0]) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v32[0] = v1;
    v32[1] = v35;
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v3 = sub_25BAAF074(sub_25BAC9B04);
  v5 = v4;
  v34[55] = 0;
  v35[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift";
  v35[1] = 115;
  v36 = 2;
  v37 = xmmword_25BCCB750;
  v38 = "init(id:operand:creationSite:backward:)";
  v39 = 39;
  v40 = 2;
  type metadata accessor for ReLUOperation();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_54_17();
  sub_25BAB8494(v6, v7, v8, v9, v10, v3, v5);
  v11 = OUTLINED_FUNCTION_7_26();
  sub_25BAA51C8(v11, v34);
  sub_25BAA51C8(v34, v33);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v12 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v12, v13, v14, v15, v16, v17, v18, v19, v32[0]);

  v20 = v32[10];

  sub_25BAA4AF4(v32);
  v21 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v21, v22, v23, v24, v25, v26, v27, v28, v32[0]);

  sub_25BAA4AF4(v32);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  v29 = OUTLINED_FUNCTION_19_35();
  sub_25BAB9AB8(v29);
  OUTLINED_FUNCTION_17_7();
  v30 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v30);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v34);
  *v1 = v20;
  return result;
}

uint64_t sub_25BAB8494(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    a1 = sub_25BAA5EA0(1970038130, 0xE400000000000000);
  }

  *(v7 + 112) = a6;
  *(v7 + 120) = a7;

  return sub_25BAB9A8C(a1, a2, a3, a4, a5);
}

uint64_t sub_25BAB8500@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 32;
    v14 = *(result + 32);
    Tensor.scalarType.getter();
    (*(v4 + 32))(&v13);
    v5 = v13;
    v6 = MEMORY[0x277D84900];
    while (1)
    {
      v7 = &protocol witness table for Int8;
      v8 = v6;
      switch(*(*(*v3 + 16) + 160))
      {
        case 1:
          v8 = MEMORY[0x277D84958];
          v7 = &protocol witness table for Int16;
          break;
        case 2:
          v8 = MEMORY[0x277D849A8];
          v7 = &protocol witness table for Int32;
          break;
        case 3:
          v8 = MEMORY[0x277D83B88];
          v7 = &protocol witness table for Int;
          break;
        case 4:
          v8 = MEMORY[0x277D84B78];
          v7 = &protocol witness table for UInt8;
          break;
        case 5:
          v8 = MEMORY[0x277D84C58];
          v7 = &protocol witness table for UInt16;
          break;
        case 6:
          v8 = MEMORY[0x277D84CC0];
          v7 = &protocol witness table for UInt32;
          break;
        case 7:
          v8 = MEMORY[0x277D84D38];
          v7 = &protocol witness table for UInt64;
          break;
        case 8:
          v8 = MEMORY[0x277D84DC8];
          v7 = &protocol witness table for Float16;
          break;
        case 9:
          v7 = sub_25BB18AFC();
          v8 = &type metadata for BFloat16;
          break;
        case 0xA:
          v8 = MEMORY[0x277D83A90];
          v7 = &protocol witness table for Float;
          break;
        case 0xB:
          v8 = MEMORY[0x277D839F8];
          v7 = &protocol witness table for Double;
          break;
        case 0xC:
          v8 = MEMORY[0x277D839B0];
          v7 = &protocol witness table for Bool;
          break;
        default:
          break;
      }

      v9 = v7[4];

      v9(&v12, v8, v7);
      if (v5 == v12)
      {
      }

      else
      {
        v10 = v12 + 13 * v5;
        if (v10 > 0xA8)
        {
          __break(1u);
          JUMPOUT(0x25BAB8744);
        }

        v5 = byte_286D42018[v10 + 32];

        if (v5 == 13)
        {
          goto LABEL_23;
        }
      }

      v3 += 8;
      if (!--v2)
      {
        goto LABEL_23;
      }
    }
  }

  LOBYTE(v5) = 13;
LABEL_23:
  *a2 = v5;
  return result;
}

uint64_t sub_25BAB8778(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_25BCB5B0C())
  {
    v4 = *a3;
    if (*a3 - 2048) < 0xFFFFFFFFFFFFF801 || ((v6 = sub_25BCB5ACC(), v6 < 0x800) ? (v7 = v6 == v4) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), (v4 - 515) < 2 || (v8))
    {
      sub_25BCB781C();
    }

    else
    {
      sub_25BCB736C();
    }
  }

  else
  {
    sub_25BCB7BDC();
  }

  return sub_25BCB7BCC();
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAB8870(uint64_t a1, _DWORD *a2, char a3, int a4)
{
  if (swift_dynamicCastMetatype() && swift_dynamicCastMetatype() || swift_dynamicCastMetatype() && swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (OUTLINED_FUNCTION_53_1())
  {
    return OUTLINED_FUNCTION_53_1() == 0;
  }

  if (OUTLINED_FUNCTION_53_1() || (result = OUTLINED_FUNCTION_53_1()) != 0)
  {
LABEL_5:
    *a2 |= a4;
    return 1;
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25BAB89AC(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v60 = a4;
  v68 = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v12 = *(*(a6 - 1) + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = *(v16 + 152);
  OUTLINED_FUNCTION_9();
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  v27 = v54 - v26;
  LOBYTE(v26) = *(v28 + 48);
  v58 = v29;
  v59 = v23;
  if ((v26 & 1) == 0)
  {
    v39 = a2[5];
    v40 = (*(v19 + 16))(v27, v23, v17);
    v56 = v54;
    MEMORY[0x28223BE20](v40);
    v54[-4] = a5;
    v54[-3] = a6;
    v57 = a7;
    v54[-2] = a7;
    v54[-1] = v39;
    type metadata accessor for StoredPropertyInfo();
    sub_25BCB68CC();
    OUTLINED_FUNCTION_4_26();
    sub_25BCB6E8C();
    sub_25BAB1BE8(v27, sub_25BAB611C, &v54[-6], v17, MEMORY[0x277D84A98]);
    v41 = OUTLINED_FUNCTION_5_25();
    v42(v41);
    if (v65[0])
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_7:
    v43 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_10_16();

    return;
  }

  v55 = v25;
  v56 = v24;
  v54[1] = 0;
  v30 = sub_25BAB1D20();
  sub_25BCB7BDC();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  v54[0] = v30;
  (*(v19 + 16))(v27, v59, v17);
  v31 = v15;
  v33 = v55;
  v32 = v56;
  swift_getAtKeyPath();
  v34 = OUTLINED_FUNCTION_5_25();
  v35(v34);
  (*(v33 + 16))(v31, v32, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51A0, &qword_25BCC3690);
  v36 = swift_dynamicCast();
  v57 = a7;
  if (v36)
  {
    sub_25BA97060(v63, v65);
    v37 = v66;
    v38 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    *&v63[0] = (*(v38 + 8))(v37, v38);
    MEMORY[0x28223BE20](*&v63[0]);
    v54[-2] = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51B0, &unk_25BCC36A0);
    OUTLINED_FUNCTION_7_20();
    type metadata accessor for StoredPropertyInfo();
    sub_25BB77648();
    sub_25BCB65BC();

    (*(v33 + 8))(v56, a6);

    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    sub_25BAB1544(v63);
    OUTLINED_FUNCTION_7_20();
    type metadata accessor for StoredPropertyInfo();
    *&v63[0] = sub_25BCB604C();
    if (sub_25BCB5B2C())
    {
      v45 = 0;
      do
      {
        if (v45 >= sub_25BCB5B2C())
        {
          goto LABEL_28;
        }

        v46 = sub_25BCB5AFC();
        sub_25BAB5F30(v46, v45++, a6, a6, v63, a6, v46);
      }

      while (v45 != sub_25BCB5B2C());
    }

    (*(v33 + 8))(v56, a6);
    OUTLINED_FUNCTION_35();
  }

LABEL_15:
  sub_25BCB617C();
  OUTLINED_FUNCTION_7_20();
  type metadata accessor for StoredPropertyInfo();
  v47 = sub_25BCB681C();

  if (v47 < 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_35();
  for (i = 0; v47 != i; ++i)
  {
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    sub_25BCB617C();
    v49 = sub_25BCB681C();
    if (__OFSUB__(v49, 1))
    {
      goto LABEL_26;
    }

    if (__OFSUB__(v49 - 1, i))
    {
      goto LABEL_27;
    }

    sub_25BCB690C();

    v50 = sub_25BAB1C88(v61);
    if (v50)
    {
      v51 = *v60;
      v61 = v50;
      v62 = v51;
      v52 = *(type metadata accessor for RecursiveStoredPropertiesIterator() + 36);
      type metadata accessor for StoredPropertyInfo();
      swift_getTupleTypeMetadata2();
      OUTLINED_FUNCTION_4_26();
      sub_25BCB732C();
      sub_25BCB72FC();
    }
  }

  v53 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAB9034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v22 - v11;
  v13 = *(v5 + 16);
  v13(v22 - v11, v10 + v14, v15);
  v13(v9, v12, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51A0, &qword_25BCC3690);
  if (swift_dynamicCast())
  {
    sub_25BA97060(v23, v25);
    v16 = v26;
    v17 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v28 = (*(v17 + 8))(v16, v17);
    v22[1] = v22;
    *&v23[0] = v28;
    MEMORY[0x28223BE20](v28);
    v22[-2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51B0, &unk_25BCC36A0);
    type metadata accessor for StoredPropertyInfo();
    sub_25BB77648();
    v18 = sub_25BCB65BC();
    (*(v5 + 8))(v12, a2);

    result = __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_8:
    *a3 = v18;
    return result;
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_25BAB1544(v23);
  type metadata accessor for StoredPropertyInfo();
  *&v23[0] = sub_25BCB604C();
  if (!sub_25BCB5B2C())
  {
LABEL_7:
    (*(v5 + 8))(v12, a2);
    result = swift_beginAccess();
    v18 = *&v23[0];
    goto LABEL_8;
  }

  v20 = 0;
  while (1)
  {
    result = sub_25BCB5B2C();
    if (v20 >= result)
    {
      break;
    }

    v21 = sub_25BCB5AFC();
    sub_25BAB5F30(v21, v20++, a2, a2, v23, a2, v21);
    if (v20 == sub_25BCB5B2C())
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_25BAB934C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  v17 = a2[2];
  v9 = *a2;
  sub_25BCB617C();
  v10 = sub_25BCB617C();
  sub_25BAB1D84(v10);
  if (a2[6] & 1) != 0 || (*(a3 + 48))
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v13 = a2[5];
    v14 = *(a3 + 40);
    v11 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      __break(1u);
      return;
    }

    v12 = 0;
  }

  if (*(a2 + 49) == 1)
  {
    v15 = *(a3 + 49);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v9 + 152);
  type metadata accessor for StoredPropertyInfo();
  sub_25BAB21D4(v17, a4, a1, v11, v12, v15);
}

uint64_t sub_25BAB9480(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_25BAB94DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  result = v4(*a1);
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_25BAB9528()
{
  v1 = *v0;
  v2 = v0[2];
  sub_25BCB6FFC();
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  sub_25BCB736C();

  return sub_25BCB73BC();
}

void sub_25BAB95C8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(*a1 + 16);
  if (v7 >= v6)
  {
    v32 = *a1;
    if (v6)
    {
      i = a2;
      v23 = a2;
      sub_25BCB617C();
      sub_25BCB617C();
      sub_25BAB806C(&v23);
      v9 = 0;
      v10 = v23;
      v11 = *(v23 + 16);
      while (v11 != v9)
      {
        if (v9 >= *(v10 + 16))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v24 = 0;
          v25 = 0;
          v23 = v3;
          v26 = -1;
          v29 = 0;
          v27 = i;
LABEL_66:
          v28 = 0;
          v30 = -1;
LABEL_67:
          v31 = 4;
          OUTLINED_FUNCTION_17_4();
          sub_25BADDD28();
        }

        v12 = *(v10 + 8 * v9 + 32);
        i = *(v5 + 16);
        if (v12 < -i || v12 >= i)
        {

          goto LABEL_2;
        }

        v3 = (i & (v12 >> 63)) + v12;
        if (v3 < -i)
        {
          goto LABEL_63;
        }

        if (v3 >= 0)
        {
          v14 = (i & (v12 >> 63)) + v12;
        }

        else
        {
          v14 = v3 + i;
        }

        if (v14 < 0)
        {
          goto LABEL_55;
        }

        if (*(v5 + 8 * v14 + 32) != 1)
        {

          goto LABEL_2;
        }

        if (!i)
        {
          goto LABEL_56;
        }

        if (v3 < 0 && v3 + i < 0)
        {
          goto LABEL_57;
        }

        if (v3 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_58;
        }

        if (v3 < 0)
        {
          goto LABEL_59;
        }

        if (i < (v3 + 1))
        {
          goto LABEL_60;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (i - 1) > *(v5 + 24) >> 1)
        {
          sub_25BA96630();
          v5 = v15;
        }

        memmove((v5 + 32 + 8 * v3), (v5 + 32 + 8 * (v3 + 1)), 8 * (*(v5 + 16) - (v3 + 1)));
        --*(v5 + 16);
        v32 = v5;
        ++v9;
      }

      *a3 = v5;
    }

    else
    {
      for (i = 0; ; ++i)
      {
        if (v7 == i)
        {
          sub_25BCB617C();
          i = v7;
          goto LABEL_53;
        }

        if (*(v5 + 8 * i + 32) == 1)
        {
          break;
        }
      }

      sub_25BCB617C();
      v16 = i;
LABEL_36:
      v17 = v16;
      while (v7 - 1 != v17)
      {
        v16 = v17 + 1;
        if (v17 + 1 >= v7)
        {
          v25 = 0;
          v23 = v17 + 1;
          goto LABEL_65;
        }

        v18 = *(v5 + 40 + 8 * v17++);
        if (v18 != 1)
        {
          if (i != v16)
          {
            if (i < -v7 || i >= v7)
            {
              v25 = 0;
              v23 = i;
LABEL_65:
              v24 = 0;
              v26 = -1;
              v29 = 0;
              v27 = v7;
              goto LABEL_66;
            }

            v20 = *(v5 + 32 + 8 * i);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_25BAA2110(v5);
              v5 = v22;
            }

            v21 = *(v5 + 16);
            if (i >= v21)
            {
              goto LABEL_62;
            }

            *(v5 + 8 * i + 32) = v18;
            if (v16 >= v21)
            {
              v24 = 0;
              v25 = 0;
              v23 = v16;
              OUTLINED_FUNCTION_23_39();
              goto LABEL_67;
            }

            *(v5 + 8 * v16 + 32) = v20;
            v32 = v5;
            v7 = *(v5 + 16);
          }

          ++i;
          goto LABEL_36;
        }
      }

      if (v7 < i)
      {
        goto LABEL_61;
      }

LABEL_53:
      sub_25BC02820(i, v7);
      *a3 = v32;
    }
  }

  else
  {
LABEL_2:
    *a3 = 0;
  }
}

uint64_t sub_25BAB9974(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BCA55A0(v7, v8, a1, v4);
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
    return sub_25BAB80F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BAB9A8C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v6 = a5[1];
  *(v5 + 48) = *a5;
  *(v5 + 64) = v6;
  *(v5 + 80) = a5[2];
  *(v5 + 90) = *(a5 + 42);
  return v5;
}

uint64_t OUTLINED_FUNCTION_124_2()
{

  return sub_25BA97060((v0 - 344), v0 - 280);
}

uint64_t OUTLINED_FUNCTION_168(uint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFLL | 0x6F70000000000000;

  return sub_25BB2BAEC(v2, 0xEB00000000745F77);
}

uint64_t OUTLINED_FUNCTION_168_1()
{

  return swift_initStackObject();
}

uint64_t sub_25BAB9E04@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 152);
  LOBYTE(v2) = *(v2 + 160);
  *a1 = v3;
  *(a1 + 8) = v2;
  return sub_25BCB617C();
}

uint64_t sub_25BAB9E1C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

uint64_t OUTLINED_FUNCTION_110_0()
{

  return sub_25BCB77CC();
}

uint64_t OUTLINED_FUNCTION_110_2()
{
  v2 = *(v0 - 448);
}

uint64_t OUTLINED_FUNCTION_110_5()
{

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_111(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_111_0(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t OUTLINED_FUNCTION_111_2()
{

  return sub_25BB0EA20(v0);
}

uint64_t OUTLINED_FUNCTION_111_4()
{
  result = v0;
  v3 = *(v1 - 456);
  v4 = *(v1 - 440);
  return result;
}

uint64_t OUTLINED_FUNCTION_111_5()
{

  return swift_weakInit();
}

uint64_t sub_25BAB9FA8(uint64_t a1, void (*a2)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  a2();
  swift_setDeallocating();
  sub_25BAB9E1C();
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  sub_25BCB617C();
  return OUTLINED_FUNCTION_24_1();
}

uint64_t OUTLINED_FUNCTION_166(uint64_t a1)
{

  return sub_25BB3EFD4(v2, v1 | 0x8000000000000000, v3, a1);
}

void OUTLINED_FUNCTION_166_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_166_1()
{
  v2 = *(v0 + 32);

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_109_2()
{
  *(v2 - 352) = v1;
  v4 = *(v0 + 48);

  return sub_25BAC4018();
}

__n128 OUTLINED_FUNCTION_109_3()
{
  v2 = *(v0 + 72);
  *(v1 - 160) = *(v0 + 56);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 88);
  result = *(v0 + 98);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_5()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_108_0()
{
  result = 0;
  v2 = *(v0 - 352);
  return result;
}

void OUTLINED_FUNCTION_108_2(uint64_t *a1, unsigned __int8 *a2, void (*a3)(uint64_t, uint64_t))
{
  *(v4 - 472) = v3;

  sub_25BBC0130(a1, a2, a3);
}

__n128 OUTLINED_FUNCTION_108_3()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 120);
  return *(v0 + 130);
}

uint64_t OUTLINED_FUNCTION_108_5(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, __n128 *a8, uint64_t a9, uint64_t a10)
{

  return sub_25BABED3C(a1, a2, a3, a4, v10, v11, a7, a8, a9, a10);
}

uint64_t OUTLINED_FUNCTION_92_2()
{
}

void OUTLINED_FUNCTION_92_4()
{

  JUMPOUT(0x25F876C80);
}

uint64_t OUTLINED_FUNCTION_92_6()
{

  return swift_weakAssign();
}

uint64_t OUTLINED_FUNCTION_88()
{
}

uint64_t OUTLINED_FUNCTION_146_0()
{
  result = __swift_destroy_boxed_opaque_existential_1((v2 - 240));
  *(v2 - 240) = v1;
  *(v2 - 232) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_121()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_121_0()
{
  *(v3 - 96) = v2;
  *(v3 - 88) = v1;
  *(v3 - 87) = v0;
  *(v3 - 65) = 0;

  return sub_25BB39990();
}

__n128 *OUTLINED_FUNCTION_121_1(__n128 *result, __n128 a2, __n128 a3)
{
  result[1] = a3;
  result[2] = a2;
  *(v4 + 168) = result;
  *(v4 + 176) = 0;
  *(v4 + 184) = v3;
  return result;
}

uint64_t TensorShape.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_25BABA598(a1, a2, *v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((v10 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);

  if (__OFSUB__(v11 >> 1, v9))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 != (v11 >> 1) - v9)
  {
LABEL_12:
    swift_unknownObjectRelease_n();
LABEL_2:
    v12 = sub_25BABA62C(v5, v7, v9, v11);
LABEL_9:
    result = swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v12 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (!v12)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  *a3 = v12;
  return result;
}

uint64_t Flatten.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 152);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *(v4 + 32);
  v15 = v4;
  v7 = 1;
  TensorShape.subscript.getter(1uLL, v5, &v14);
  v8 = *(v14 + 16);
  if (v8)
  {
    v9 = (v14 + 32);
    v10 = 1;
    while (1)
    {
      v11 = *v9++;
      v7 = v10 * v11;
      if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
      {
        break;
      }

      v10 = v7;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_10:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v22 = -1;
    v23 = 4;
    sub_25BCB617C();
    sub_25BADDD28();
  }

LABEL_6:

  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE70;
  *(v12 + 32) = v6;
  *(v12 + 40) = v7;
  v14 = v12;
  Tensor.reshaped(to:)(&v14, a2);
}

unint64_t sub_25BABA598(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_25BCB617C();
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_25BABA634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_10_0(v9);
      OUTLINED_FUNCTION_39_2();
      v4[2] = v6;
      v4[3] = v10;
    }

    if (v5 != a3)
    {
      memcpy(v4 + 4, (a2 + 8 * a3), 8 * v6);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t Dense.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 24);
  v65 = *(v2 + 8);
  v66 = v6;
  v67 = *(v2 + 40);
  v7 = *(*(v4 + 16) + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5108, &qword_25BCC2C18);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE90;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 56) = -2;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 64) = 0;
  *(v8 + 88) = -3;
  OUTLINED_FUNCTION_6_28();
  if (v11)
  {
    goto LABEL_28;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  v12 = *(*((v10 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  v13 = *(v12 + 16);
  if (v13 <= 1)
  {
LABEL_23:
    *&v44[16] = 0;
    *v44 = 1uLL;
    v44[24] = -1;
    *&v44[40] = 0;
    v45 = 0;
    *&v44[32] = v13;
    LOBYTE(v46) = -1;
    v49 = 4;
    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    goto LABEL_25;
  }

  v14 = v9;
  *(v9 + 96) = *(v12 + 40);
  *(v9 + 104) = xmmword_25BCC2BE0;
  *(v9 + 120) = 0;
  *v44 = xmmword_25BCBAE70;
  v44[16] = 1;
  *&v44[24] = v9;
  *&v59 = v7;
  sub_25BCB617C();
  sub_25BCB617C();
  if ((sub_25BABADF0(&v59) & 1) == 0)
  {
    *v44 = v7;
    *&v44[8] = xmmword_25BCBCE20;
    v44[24] = 0;
    *&v44[32] = xmmword_25BCBAE70;
    LOBYTE(v45) = 1;
    *&v46 = v14;
    v49 = 11;
    sub_25BCB617C();
    sub_25BAB7654(2, 4, 1);
    sub_25BCB617C();
    OUTLINED_FUNCTION_5_24();
    goto LABEL_25;
  }

  sub_25BABAF8C(2, 4, 1);

  *v44 = v4;
  Tensor.scalarType.getter();
  (*(v15 + 32))(v51);
  OUTLINED_FUNCTION_6_28();
  if (v11)
  {
    goto LABEL_28;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
LABEL_30:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_31;
  }

  v17 = v51[0];
  *&v59 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  Tensor.scalarType.getter();
  (*(v18 + 32))(v50);
  if (v17 == LOBYTE(v50[0]))
  {
    goto LABEL_10;
  }

  v13 = LOBYTE(v50[0]) + 13 * v17;
  if (v13 > 0xA8)
  {
    __break(1u);
    goto LABEL_23;
  }

  v17 = byte_286D42018[v13 + 32];
  if (v17 == 13)
  {
    *&v59 = v4;
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_6_28();
    if (!v11)
    {
      if (v39 < 0)
      {
LABEL_32:
        v40 = v37;
        v41 = v38;
        *v51 = v39 & 0x7FFFFFFFFFFFFFFFLL;
        v42 = Tensor.scalarType.getter();
        *v44 = v40;
        *&v44[8] = v41;
        *&v44[16] = xmmword_25BCBCE20;
        v44[32] = 0;
        *&v44[40] = v42;
        v45 = v43;
        v46 = xmmword_25BCBEAD0;
        LOBYTE(v47) = 0;
        v49 = 1;
        OUTLINED_FUNCTION_5_24();
LABEL_25:
        sub_25BADDD28();
      }

      goto LABEL_30;
    }

LABEL_28:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_31:
    v37 = OUTLINED_FUNCTION_67();
    __break(1u);
    goto LABEL_32;
  }

LABEL_10:
  *&v59 = *(*(v4 + 16) + 152);
  OUTLINED_FUNCTION_6_28();
  if (v11)
  {
    goto LABEL_28;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  *v51 = *(*((v19 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BABAFE4(&v59, v51, v44);

  OUTLINED_FUNCTION_6_28();
  if (v11)
  {
    goto LABEL_28;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  v21 = *v44;
  v22 = *(v4 + 16);
  v23 = *((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  *v44 = v5;
  *&v44[8] = v65;
  *&v44[24] = v66;
  *&v44[40] = v67;
  Dense.bias.getter(&v59);
  if (v59)
  {
    v24 = *(v59 + 16);
  }

  else
  {

    v24 = 0;
  }

  v57 = v21;
  v58 = v17;
  v54 = v65;
  v55 = v66;
  v53[1] = v5;
  v56 = v67;
  Dense.bias.getter(v53);
  v25 = v53[0];
  if (v53[0])
  {
  }

  *(OUTLINED_FUNCTION_68() + 16) = v25 != 0;
  v26 = sub_25BAAF074(sub_25BAC8C08);
  v28 = v27;

  v52 = 0;
  *&v59 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  *(&v59 + 1) = 107;
  v60 = 2;
  v61 = xmmword_25BCC2BF0;
  v62 = "init(id:input:weight:bias:resultDescriptor:creationSite:backward:)";
  v63 = 66;
  v64 = 2;
  type metadata accessor for LinearOperation();
  swift_allocObject();
  v29 = sub_25BABB32C(0, 0, 0, v22, v23, v24, &v57, &v59, v26, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_25BCBAE70;
  v31 = *(v5 + 32);
  if ((~v31 & 0xF000000000000007) == 0)
  {
    goto LABEL_28;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  *(v30 + 32) = v31 & 0x7FFFFFFFFFFFFFFFLL;
  *(v30 + 40) = v4;
  sub_25BAB3020(v31);

  sub_25BAB7DE8(v30, v51);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v51, v50);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v44);

  v32 = v48;

  sub_25BAA4AF4(v44);
  sub_25BAA49B8();
  sub_25BAA4A5C(v44);

  v33 = v47;

  sub_25BAA4AF4(v44);
  type metadata accessor for TensorRepresentation();
  v34 = swift_allocObject();
  v44[0] = 1;
  sub_25BABB3EC(v29, 0, v50, 0x100000000, v32, v33, v34);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;

  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v51);
  *a2 = v35;
  return result;
}

uint64_t sub_25BABADF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  if ((sub_25BAB74D0(*(*a1 + 16), *v1, *(v1 + 8), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  sub_25BABAF60(0, *(v2 + 16), v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = sub_25BABAF60(0, *(v3 + 16), v3);
  if (v12 == v13 >> 1)
  {
LABEL_22:
    v20 = 1;
LABEL_23:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v20;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13 >> 1;
  v17 = v9 >> 1;
  while (v15 < v16)
  {
    v18 = v14 + 32 * v15;
    result = *v18;
    ++v15;
    if (*(v18 + 24) == 253)
    {
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_31;
      }

      while (!__OFSUB__(v17, v7))
      {
        if (v16 - v15 >= v17 - v7)
        {
          result = sub_25BABAF68(result, *(v18 + 8), *(v18 + 16), 253);
          goto LABEL_21;
        }

        if (v17 == v7)
        {
          goto LABEL_27;
        }

        if (v7 >= v17)
        {
          goto LABEL_28;
        }

        ++v7;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      break;
    }

    if (v7 == v17)
    {
      goto LABEL_30;
    }

    if (v7 >= v17)
    {
      goto LABEL_32;
    }

    if (*(v18 + 24) - 253 >= 2 && result != *(v5 + 8 * v7))
    {
      v20 = 0;
      goto LABEL_23;
    }

    ++v7;
LABEL_21:
    if (v15 == v16)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25BABAF68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 + 3) >= 2u)
  {
    return sub_25BC02C38(a2, a3, a4);
  }

  return result;
}

uint64_t sub_25BABAF8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks20DimensionExpectationO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 6)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks17DebugValueLocatorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_14NeuralNetworks17DebugValueLocatorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

void sub_25BABAFE4(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(*a2 + 16))
  {
    OUTLINED_FUNCTION_9_60();
    OUTLINED_FUNCTION_8_62();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v3 = *a1;
  v4 = *(v3 + 16) - 1;
  v5 = *(*a2 + 32);
  *a3 = v3;
  sub_25BCB617C();
  TensorShape.subscript.setter(v5, v4);
}

void TensorShape.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (-v4 > a2 || v4 <= a2)
  {
LABEL_12:
    OUTLINED_FUNCTION_1_74();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v7 = (v4 & (a2 >> 63)) + a2;
  v8 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BAA2110(v3);
  v3 = v10;
  *v2 = v10;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v7 >= *(v3 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v3 + 8 * v7 + 32) = a1;
  *v2 = v3;
}

void Dense.bias.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + 26) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(*(v1 + 16) + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  *a1 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC();
}

void OUTLINED_FUNCTION_64_6(uint64_t a1@<X8>)
{
  *(v1 - 200) = a1;
  *(v1 - 192) = 125;
  *(v1 - 184) = 2;
}

uint64_t OUTLINED_FUNCTION_64_7(char a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 192) = a4;
  *(v4 + 200) = a1 & 1;
  *(v4 + 208) = a2;

  return sub_25BB6B668((v4 + 216));
}

uint64_t OUTLINED_FUNCTION_64_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_25BABF20C(v7, 0, v4 + 184, a4, v6, v5);
}

void OUTLINED_FUNCTION_64_10()
{

  sub_25BAB173C(v0, v1 - 128);
}

void *OUTLINED_FUNCTION_64_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __dst)
{

  return memcpy(&__dst, v25, 0x9CuLL);
}

uint64_t OUTLINED_FUNCTION_64_12()
{

  return sub_25BCB5E9C();
}

uint64_t sub_25BABB32C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, _OWORD *a8, uint64_t a9, uint64_t a10)
{
  v15 = *a7;
  v16 = *(a7 + 8);
  *(v10 + 56) = 0;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7261656E696CLL, 0xE600000000000000);
    v17 = *(v10 + 56);
  }

  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;

  *(v10 + 64) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10;
  v18 = a8[1];
  *(v10 + 96) = *a8;
  *(v10 + 112) = v18;
  *(v10 + 128) = a8[2];
  *(v10 + 138) = *(a8 + 42);
  return v10;
}

uint64_t sub_25BABB688()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 64);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t Reshape.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6[0] = *v2;
  v6[1] = v4;
  sub_25BCB617C();
  Tensor.reshaped(to:)(v6, a2);
}

_BYTE *storeEnumTagSinglePayload for LossReduction(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x25BABB838);
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

uint64_t softmaxCrossEntropy(logits:labels:labelSmoothing:axis:reduction:)(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, float a5)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a4;
  v10 = *(*(*(*a1 + 16) + 152) + 16);
  if ((sub_25BAB74D0(v10, 2, 0, 2) & 1) == 0)
  {
    v265 = v10;
    v266 = xmmword_25BCCD6C0;
    LOBYTE(v267) = 0;
    *v268 = xmmword_25BCBC6A0;
    v268[16] = 2;
    v274 = 7;
    OUTLINED_FUNCTION_0_79();
    goto LABEL_21;
  }

  if ((OUTLINED_FUNCTION_17_36(*(v7 + 16)) & 1) == 0)
  {
    v265 = 2;
    v266 = xmmword_25BCCD6C0;
    LOBYTE(v267) = 0;
    *v268 = v10;
    *&v268[8] = xmmword_25BCCD6D0;
    LOBYTE(v269) = 0;
    v274 = 10;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_18_35();
    OUTLINED_FUNCTION_0_79();
    goto LABEL_21;
  }

  if (a5 < 0.0 || a5 > 1.0)
  {
    v267 = MEMORY[0x277D83A90];
    *&v265 = a5;
    *v268 = xmmword_25BCCD6E0;
    v268[16] = 0;
    v269 = 0x3F80000000000000;
    v271 = 0;
    v272 = 0;
    v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68F8, &qword_25BCCD6F8);
    v273 = -1;
    v274 = 12;
    OUTLINED_FUNCTION_0_79();
    goto LABEL_21;
  }

  v12 = *(*(*(v7 + 16) + 152) + 16);
  if (-v12 > a3 || v12 <= a3)
  {
    v266 = 0uLL;
    v265 = a3;
    LOBYTE(v267) = -1;
    *&v268[16] = 0;
    *v268 = v12;
    LOBYTE(v269) = -1;
    v274 = 4;

LABEL_21:
    sub_25BADDD28();
  }

  v14 = v12 & (a3 >> 63);
  v165 = v14;
  if (a5 <= 0.0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_12_37();
    v16 = *(v15 + 160);
    v25 = OUTLINED_FUNCTION_21_29(v17, v18, v19, v20, v21, v22, v23, v24, v138, v147, v155, v14, v175, v184, v194, v204, v214, v224, v234, v244, v251, v258, v259, v260, v261, v262, v263, v264, v265);
    v27 = sub_25BAA51C8(v25, v26);
    v28 = MEMORY[0x277D84F90];
    HIBYTE(v235) = v16;
    v36 = OUTLINED_FUNCTION_20_28(v27, v29, v30, v31, v32, v33, v34, v35, v139, v148, v156, v166, v176, v185, v195, v205, v215, v225, v235, MEMORY[0x277D84F90], v252, v258);
    sub_25BAA51C8(v36, v37);

    v45 = OUTLINED_FUNCTION_10_39(v38, &unk_286D45AA0, v39, v40, v41, v42, v43, v44, v140, v149, v157, v167, v177, v186, v196, v206, v216, v226, v236, v245);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v45, v46, v47, v48, v49);
    sub_25BA9C2C8(&v258);
    sub_25BA9C2C8(&v265);
    v50 = v253;
    v265 = *(*(v7 + 16) + 152);
    v51 = TensorShape.subscript.getter(v14 + a3);
    OUTLINED_FUNCTION_12_37();
    v52 = *(*(v7 + 16) + 160);
    v61 = OUTLINED_FUNCTION_21_29(v53, v54, v55, v56, v57, v58, v59, v60, v141, v150, v158, v168, v178, v187, v197, v207, v217, v227, v237, v246, v253, v258, v259, v260, v261, v262, v263, v264, v265);
    sub_25BAA51C8(v61, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_25BCBAE50;
    *(v63 + 32) = v51;
    HIBYTE(v238) = v52;
    v71 = OUTLINED_FUNCTION_20_28(v63, v64, v65, v66, v67, v68, v69, v70, 1, 2, v159, v169, v179, v188, v198, v208, v218, v228, v238, v28, v254, v258);
    v73 = sub_25BAA51C8(v71, v72);
    v81 = OUTLINED_FUNCTION_10_39(v73, v74, v75, v76, v77, v78, v79, v80, v142, v151, v160, v170, v180, v189, v199, v209, v219, v229, v239, v247);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v81, v63, v82, v83, v84);
    sub_25BA9C2C8(&v258);
    sub_25BA9C2C8(&v265);
    v85 = v255;
    OUTLINED_FUNCTION_12_37();
    v86 = *(*(v7 + 16) + 160);
    v95 = OUTLINED_FUNCTION_21_29(v87, v88, v89, v90, v91, v92, v93, v94, v143, v152, v161, v171, v181, v190, v200, v210, v220, v230, v240, v248, v255, v258, v259, v260, v261, v262, v263, v264, v265);
    sub_25BAA51C8(v95, v96);
    v97 = swift_allocObject();
    *(v97 + 16) = v144;
    *(v97 + 32) = a5;
    HIBYTE(v241) = v86;
    v105 = OUTLINED_FUNCTION_20_28(v97, v98, v99, v100, v101, v102, v103, v104, v144, *(&v144 + 1), v162, v172, v182, v191, v201, v211, v221, v231, v241, v28, v256, v258);
    v107 = sub_25BAA51C8(v105, v106);
    v115 = OUTLINED_FUNCTION_10_39(v107, v108, v109, v110, v111, v112, v113, v114, v145, v153, v163, v173, v183, v192, v202, v212, v222, v232, v242, v249);
    Tensor.init(shape:coercingScalars:scalarType:on:)(v115, v97, v116, v117, v118);
    sub_25BA9C2C8(&v258);
    v119 = sub_25BA9C2C8(&v265);
    v120 = v257;
    v265 = v8;
    OUTLINED_FUNCTION_20_28(v119, v121, v122, v123, v124, v125, v126, v127, v146, v154, v164, v174, v257, v193, v203, v213, v223, v233, v243, v250, v257, v50);
    static Tensor.- infix(_:_:)();
    static Tensor.* infix(_:_:)();

    v265 = v120;
    v175 = v85;
    static Tensor./ infix(_:_:)();
    static Tensor.+ infix(_:_:)();

    v8 = v265;
  }

  if (v9 == 2)
  {
    v258 = *(*(v7 + 16) + 152);
    sub_25BCB617C();
    TensorShape.removing(at:)(v165 + a3);
  }

  LOBYTE(v175) = v9;
  v136 = OUTLINED_FUNCTION_21_29(v128, v129, v130, v131, v132, v133, v134, v135, v138, v147, v155, v165, v175, v184, v194, v204, v214, v224, v234, v244, v251, v8, v259, v260, v261, v262, v263, v264, v7);
  basicSoftmaxCrossEntropy(logits:labels:axis:reduction:)(v136);
}

void sub_25BABC3B0()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v5 = *isUniquelyReferenced_nonNull_native;
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  v9 = MEMORY[0x277D84F90];
  if (v7)
  {
    while (1)
    {
      v10 = *v8;
      v11 = *(v5 + 16);
      if (*v8 < -v11 || v10 >= v11)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = *(v9 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BA96630();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_4_74(v12);
        sub_25BA96630();
        v9 = isUniquelyReferenced_nonNull_native;
      }

      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = (v11 & (v10 >> 63)) + v10;
      ++v8;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    v15 = 0;
  }

  else
  {
LABEL_11:
    if (v2)
    {
      sub_25BABC528(v9, 1, v5, &v17);

      v15 = v17;
    }

    else
    {
      v17 = v9;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v16[2] = &v17;
      v15 = sub_25BAC17E4(sub_25BAC17C8, v16, v5);
    }
  }

  *v4 = v15;
  OUTLINED_FUNCTION_10_16();
}

void sub_25BABC528(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a1 + 16);
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = (a1 + 32);
    v10 = v8 & ~(v8 >> 63);
    if (!v8)
    {
      break;
    }

    while (v10)
    {
      v11 = *v9;
      v12 = *(a3 + 16);
      if (*v9 < -v12 || v11 >= v12)
      {
        v16 = *v9;
        v17 = *(a3 + 16);
        sub_25BADDD28();
      }

      v14 = (v12 & (v11 >> 63)) + v11;
      if (v14 < 0)
      {
        goto LABEL_13;
      }

      *(a3 + 32 + 8 * v14) = a2;
      --v10;
      ++v9;
      if (!--v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    sub_25BAA2110(a3);
    a3 = v15;
  }

LABEL_11:
  *a4 = a3;
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v33 = *(a32 + 16);
}

void OUTLINED_FUNCTION_40_4()
{
  v1 = *(v0 - 128);
  *(v0 - 152) = *(v0 - 136);
  *(v0 - 144) = v1;
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_25BCB6D8C();
}

void OUTLINED_FUNCTION_40_6()
{
  v4 = *(*(v3 - 200) + 16);
  *(v3 - 336) = v0;
  *(v3 - 312) = v1;
  *(v3 - 456) = v2;
}

double OUTLINED_FUNCTION_40_7(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  result = a10;
  *(v11 + 8 * v10) = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_8(uint64_t a1)
{
  *(a1 + 64) = v4;
  *(a1 + 72) = v2;
  *(a1 + 80) = v3;
  *(a1 + 88) = v1;

  return sub_25BAF9FC0(a1);
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t a1)
{

  return sub_25BB00C00(a1, v1, 1);
}

void OUTLINED_FUNCTION_40_10(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[1] = v6;
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = a2;
}

uint64_t OUTLINED_FUNCTION_40_11()
{
}

uint64_t OUTLINED_FUNCTION_40_14()
{
}

void OUTLINED_FUNCTION_40_18()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_40_19(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_40_22()
{

  return sub_25BCB5EEC();
}

uint64_t OUTLINED_FUNCTION_40_23(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = *a1;
  v6 = *a2;

  return sub_25BAA51C8(a3, va);
}

__n128 OUTLINED_FUNCTION_40_25(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[2].n128_u64[0] = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_1()
{
  *(v0 + 16) = v1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_41_3(uint64_t result)
{
  *(result + 8) = v1;
  v2 = *(v1 + 26);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_4()
{
  *(v1 - 72) = *(v0 + 112);

  return sub_25BBF4F40();
}

uint64_t OUTLINED_FUNCTION_41_5(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 24576;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

id OUTLINED_FUNCTION_41_9(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_41_10()
{
}

void OUTLINED_FUNCTION_41_13()
{

  JUMPOUT(0x25F876C90);
}

void OUTLINED_FUNCTION_41_14(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + 40) = a2;
  *(v2 + 56) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = a1;
  *(v2 + 88) = 6;
}

uint64_t OUTLINED_FUNCTION_41_15(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_25BAA48D4(v1, va, v2, v3);
}

uint64_t OUTLINED_FUNCTION_41_16(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void OUTLINED_FUNCTION_41_17(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = a1 + *(v3 + 72) * v2;
  v5 = *(v3 + 16);
}

void *OUTLINED_FUNCTION_41_19(NSUInteger a1)
{

  return sub_25BBC9A4C(a1, 0);
}

uint64_t OUTLINED_FUNCTION_41_23(uint64_t a1, ...)
{
  va_start(va, a1);

  return Tensor.init(onesLike:)(va);
}

uint64_t OUTLINED_FUNCTION_41_24(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = *a1;
  v6 = *a2;

  return sub_25BAA51C8(a3, va);
}

uint64_t OUTLINED_FUNCTION_41_25@<X0>(char a1@<W8>)
{
  *(v3 - 88) = v1;
  *(v3 - 80) = v2;
  *(v3 - 72) = a1;
  return 0;
}

uint64_t sub_25BABCB24(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for ContextManager();
  v4 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v4, v5);

  v7 = v14;
  v6 = v15;
  sub_25BCB617C();
  sub_25BAA4AF4(&v12);
  v8 = a2(a1);
  v10 = v9;
  type metadata accessor for TensorOperationIdentityGenerator();
  sub_25BAA6090();
  if (v6)
  {
    v12 = v7;
    v13 = v6;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](v8, v10);

    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_17_46();
  }

  else
  {
    v12 = v8;
    v13 = v10;
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_15_47();
  }

  return OUTLINED_FUNCTION_14_45();
}

uint64_t sub_25BABCC4C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a8;
  v13 = *(a8 + 8);
  *(v11 + 130) = a4;
  *(v11 + 136) = a6;
  *(v11 + 144) = a10;
  *(v11 + 152) = a11;
  if (!a3)
  {
    a1 = sub_25BABCCAC(a4);
  }

  return OUTLINED_FUNCTION_0_86(a1, a2, a3);
}

uint64_t sub_25BABCCC4(char a1)
{
  result = 0x6D756D6978616DLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_2_70();
      break;
    case 2:
      result = OUTLINED_FUNCTION_3_57();
      break;
    case 3:
      result = OUTLINED_FUNCTION_1_72();
      break;
    case 4:
      result = 7173491;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BABCFCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 64);
  *(v1 + 32) = *(v0 + 56);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

void static Tensor.- infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = OUTLINED_FUNCTION_119_4();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_30();
  do
  {
    if (v8 == 4)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v9);
  v10 = 0;
  do
  {
    if (v10 == 4)
    {
      v54 = OUTLINED_FUNCTION_171_0();
      v55 = v49;
      v48 = xmmword_25BCC6530;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v9);
  OUTLINED_FUNCTION_98_6(v11);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  if (!v57)
  {
    OUTLINED_FUNCTION_54_10(*(v2 + 16));
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v50, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_14_30();
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_207_1();
  OUTLINED_FUNCTION_35_16(v12, v13);
  v14();
  v15 = OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_53_11(v15, v16);
  v17();
  OUTLINED_FUNCTION_195_1();
  if (!v9)
  {
    OUTLINED_FUNCTION_128();
    if (!(!v9 & v19))
    {
      OUTLINED_FUNCTION_127_0(v18);
      if (!v9)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_203_0();
      v51 = OUTLINED_FUNCTION_101_5();
      v54 = v57;
      v55 = v0;
      OUTLINED_FUNCTION_52_10(v51, v52, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v53, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_14_30();
LABEL_18:
      sub_25BADDD28();
    }

    __break(1u);
LABEL_15:
    v54 = OUTLINED_FUNCTION_172_1();
    v55 = v47;
    v48 = xmmword_25BCC6520;
LABEL_17:
    OUTLINED_FUNCTION_12_32(v48);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_18;
  }

LABEL_13:
  v54 = v2;
  v20 = OUTLINED_FUNCTION_103_5();
  LOBYTE(v57) = v3;
  v21 = OUTLINED_FUNCTION_46_14(v20, *MEMORY[0x277D84660]);
  v22(v21);
  OUTLINED_FUNCTION_62_6();
  v23 = OUTLINED_FUNCTION_126_1();
  v1(v23);

  OUTLINED_FUNCTION_57_6();
  v24 = OUTLINED_FUNCTION_66_7();
  v25(v24);
  OUTLINED_FUNCTION_62_6();
  v26 = OUTLINED_FUNCTION_25_12();
  v1(v26);

  OUTLINED_FUNCTION_90_4();

  v27 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v27);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v58 = xmmword_25BCCB470;
  OUTLINED_FUNCTION_77_5(v28);
  OUTLINED_FUNCTION_161_1();
  v29 = OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_108_5(v29, v30, v31, 1, v32, v33, v34, v35, v2, v3);
  OUTLINED_FUNCTION_137_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v36 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_5(v36, xmmword_25BCBAE70);

  v37 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v37, v38, v39, v40, 178, v41);
  swift_setDeallocating();
  sub_25BAB3FD0();
  OUTLINED_FUNCTION_175_1();
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_176_1();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_174_1();
  sub_25BAA4AF4(&v54);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_173_1();
  sub_25BAA4AF4(&v54);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  LOBYTE(v54) = 1;
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_64_8(v42, v43, v44, v45);
  OUTLINED_FUNCTION_107_6();
  v46 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v46);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(&v56);
  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_10_16();
}

uint64_t OUTLINED_FUNCTION_118_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *(a1 + 48) = a11;
}

__n128 OUTLINED_FUNCTION_118_2()
{
  v2 = *(v0 + 64);
  *(v1 - 160) = *(v0 + 48);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 80);
  result = *(v0 + 90);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_118_3()
{

  return sub_25BCB783C();
}

__n128 OUTLINED_FUNCTION_98_3()
{
  v2 = *(v0 + 104);
  *(v1 - 160) = *(v0 + 88);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 120);
  result = *(v0 + 130);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_5()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_98_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 48) = *(a1 + 152);
  *(v3 - 208) = *(v1 + 152);

  return sub_25BCB617C();
}

void static ShapeInference.broadcasting(_:_:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (sub_25BAB5C48(*a1, *a2))
  {
    *a3 = v4;
    OUTLINED_FUNCTION_27_34();

    sub_25BCB617C();
    return;
  }

  v32 = a3;
  v33 = v5;
  v7 = *(v4 + 16);
  v8 = v7 - 1;
  v9 = *(v5 + 16);
  v10 = v9 - 1;
  v11 = (v5 + 8 * v9 + 24);
  v12 = v4 + 8 * v7;
  v13 = (v12 + 24);
  v14 = MEMORY[0x277D84F90];
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = *(v4 + 16);
  if (v8 >= v12)
  {
    goto LABEL_44;
  }

  for (i = *v13; ; i = 0)
  {
    v16 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      v17 = 0;
    }

    else
    {
      v12 = *(v33 + 16);
      if (v10 >= v12)
      {
        v35 = 0;
        v34[0] = v10;
        goto LABEL_46;
      }

      v17 = *v11;
    }

    v18 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      goto LABEL_42;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if ((v10 & 0x8000000000000000) != 0 || v17 == 1)
    {
      v17 = i;
      goto LABEL_28;
    }

    if (i == 1)
    {
      goto LABEL_28;
    }

    if (i != v17)
    {

      *v32 = 0;
      goto LABEL_40;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = *(v14 + 16);
      OUTLINED_FUNCTION_45();
      sub_25BAAE04C();
      v14 = v27;
    }

    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      OUTLINED_FUNCTION_4_74(v19);
      sub_25BAAE04C();
      v14 = v28;
    }

    v17 = i;
LABEL_32:
    *(v14 + 16) = v21;
    *(v14 + 8 * v20 + 32) = v17;
    --v11;
    --v13;
    v8 = v16;
    v10 = v18;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    ;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_28:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = *(v14 + 16);
      OUTLINED_FUNCTION_45();
      sub_25BAAE04C();
      v14 = v24;
    }

    v20 = *(v14 + 16);
    v22 = *(v14 + 24);
    v21 = v20 + 1;
    if (v20 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_4_74(v22);
      sub_25BAAE04C();
      v14 = v25;
    }

    goto LABEL_32;
  }

  v29 = *(v14 + 16);
  if (v29)
  {
    v30 = sub_25BABD89C(*(v14 + 16), 0);
    swift_bridgeObjectRetain_n();
    v31 = sub_25BABD918(v34, v30 + 4, v29);

    if (v31 == v29)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_39;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v35 = 0;
    v34[0] = v8;
LABEL_46:
    v34[1] = 0;
    v36 = -1;
    v38 = 0;
    v39 = 0;
    v37 = v12;
    v40 = -1;
    v41 = 4;
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v30 = MEMORY[0x277D84F90];
LABEL_39:
  *v32 = v30;
LABEL_40:
  OUTLINED_FUNCTION_27_34();
}

uint64_t OUTLINED_FUNCTION_129()
{
  *(v1 - 160) = v0;

  return sub_25BAFC990();
}

void OUTLINED_FUNCTION_129_1()
{

  static ShapeInference.broadcasting(_:_:)((v0 + 48), (v1 - 208), (v1 - 152));
}

void *sub_25BABD89C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_25BABD918(void *result, void *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  if (!a2)
  {
    a3 = 0;
LABEL_10:
    v7 = *(*v3 + 16);
LABEL_11:
    *result = v4;
    result[1] = v7;
    return OUTLINED_FUNCTION_12_52(result, a2, a3);
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      if (!(v5 + v6))
      {
        v7 = 0;
        a3 = v5;
        goto LABEL_11;
      }

      if (v5 + v6 > *(v4 + 16))
      {
        break;
      }

      *a2++ = *(v4 + 8 * v5 + 24 + 8 * v6--);
      if (!(a3 + v6))
      {
        v7 = v5 + v6;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_207()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 272);
  return result;
}

ValueMetadata *OUTLINED_FUNCTION_207_1()
{
  *(v0 + 48) = v1;

  return Tensor.scalarType.getter();
}

ValueMetadata *OUTLINED_FUNCTION_151_1()
{
  v3 = *(v1 - 208);
  *(v1 - 152) = v0;

  return Tensor.scalarType.getter();
}

uint64_t sub_25BABDA0C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_42_13(a1);
  if (sub_25BAB5C48(v5, v6))
  {
    *v1 = v3;
  }

  else
  {
    v8 = *(v4 + 16);
    v9 = *(v2 + 152);
    if (*(v9 + 16) == v8)
    {
      OUTLINED_FUNCTION_22();
      *(swift_allocObject() + 16) = v9;

      sub_25BCB617C();
      sub_25BAAF074(sub_25BAC7AE0);

      OUTLINED_FUNCTION_46_12("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryArithmeticOps.swift");
      v46 = xmmword_25BCC6DB0;
      v47 = "init(id:operator:operand:creationSite:backward:)";
      v48 = 48;
      v49 = v10;
      type metadata accessor for UnaryArithmeticOperation();
      swift_allocObject();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_79_4();
      sub_25BABE090(v11, v12, v13, v14, v15, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_25();
      sub_25BAA51C8(v19, v42);
      sub_25BAA51C8(v42, v41);
      type metadata accessor for ContextManager();
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();
      sub_25BAA49B8();
      OUTLINED_FUNCTION_29_19();
      sub_25BAA4A5C(v20);

      v21 = v39;

      sub_25BAA4AF4(&v37);
      sub_25BAA49B8();
      OUTLINED_FUNCTION_29_19();
      sub_25BAA4A5C(v22);

      OUTLINED_FUNCTION_21_18();
      sub_25BAA4AF4(&v37);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_93();
      swift_allocObject();
      OUTLINED_FUNCTION_7_36();
      v23 = OUTLINED_FUNCTION_6_42();
      sub_25BABE62C(v23);
    }

    else
    {
      v37 = *(v2 + 152);
      sub_25BCB617C();
      static ShapeInference.broadcasting(_:toRank:)(&v37, v8, &v43);

      if (!v43)
      {
        v37 = 0;
        v38 = 0xE000000000000000;
        sub_25BCB70FC();

        OUTLINED_FUNCTION_86();
        v44 = 0xD00000000000001BLL;
        v45 = v32;
        v33 = *(*(v3 + 16) + 152);
        v34 = sub_25BCB617C();
        v35 = MEMORY[0x25F876F80](v34, MEMORY[0x277D83B88]);
        MEMORY[0x25F876C90](v35);

        MEMORY[0x25F876C90](0x6E6172206F742060, 0xEB0000000060206BLL);
        v37 = v8;
        v36 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v36);

        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        v37 = v44;
        v38 = v45;
        v40 = 17;
        sub_25BCB617C();
        OUTLINED_FUNCTION_3_40();
        sub_25BADDD28();
      }

      v24 = *(v3 + 16);
      v37 = v43;
      v25 = *(v24 + 152);
      OUTLINED_FUNCTION_22();
      *(swift_allocObject() + 16) = v25;

      sub_25BCB617C();
      OUTLINED_FUNCTION_62_5();

      v42[55] = 0;
      OUTLINED_FUNCTION_46_12("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
      v46 = xmmword_25BCCB420;
      OUTLINED_FUNCTION_81_5(v26);
      type metadata accessor for ReshapeOperation();
      swift_allocObject();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_79_4();
      sub_25BAAFF64();
      v27 = OUTLINED_FUNCTION_25();
      sub_25BAA51C8(v27, v42);
      sub_25BAA51C8(v42, v41);
      type metadata accessor for ContextManager();
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();
      sub_25BAA49B8();
      OUTLINED_FUNCTION_29_19();
      sub_25BAA4A5C(v28);

      v21 = v39;

      sub_25BAA4AF4(&v37);
      sub_25BAA49B8();
      OUTLINED_FUNCTION_29_19();
      sub_25BAA4A5C(v29);

      OUTLINED_FUNCTION_21_18();
      sub_25BAA4AF4(&v37);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_93();
      swift_allocObject();
      OUTLINED_FUNCTION_7_36();
      v30 = OUTLINED_FUNCTION_6_42();
      sub_25BAAFFBC(v30);
    }

    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_21_25(v31);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_15_8();

    result = sub_25BA9C2C8(v42);
    *v1 = v21;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_195()
{
  result = *(v0 + 176);
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  *(v1 + 144) = 7;
  return result;
}

uint64_t OUTLINED_FUNCTION_195_0()
{

  return sub_25BCB6FAC();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_86_0(uint64_t a1)
{
  *v1 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC();
}

uint64_t OUTLINED_FUNCTION_57_4()
{

  return sub_25BCB73CC();
}

uint64_t OUTLINED_FUNCTION_57_6()
{
  v4 = v0[5];
  v0[3] = v0[6];
  v0[6] = v4;
  *(v2 - 152) = v1;

  return sub_25BABDA0C(v2 - 152);
}

void OUTLINED_FUNCTION_57_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  *(v13 - 216) = v12;

  Tensor.reshaped(to:)((v13 - 216), a12);
}

void OUTLINED_FUNCTION_57_9()
{

  JUMPOUT(0x25F876C90);
}

uint64_t sub_25BABE090(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a4;
  if (!a3)
  {
    a1 = sub_25BABE114(a4);
  }

  v13 = a6[1];
  v15[0] = *a6;
  v15[1] = v13;
  *v16 = a6[2];
  *&v16[9] = *(a6 + 41);
  v17 = 0;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  return sub_25BAB9A8C(a1, a2, a3, a5, v15);
}

unint64_t sub_25BABE12C(char a1)
{
  result = 7561825;
  switch(a1)
  {
    case 1:
      return 1936679777;
    case 2:
      v3 = 1936679777;
      goto LABEL_20;
    case 3:
      return 1852404577;
    case 4:
      v3 = 1852404577;
      goto LABEL_20;
    case 5:
      return 1851880545;
    case 6:
      v3 = 1851880545;
LABEL_20:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 7:
      result = 1818846563;
      break;
    case 8:
      result = 7565155;
      break;
    case 9:
      result = 1752395619;
      break;
    case 10:
      result = 7370853;
      break;
    case 11:
      result = 846231653;
      break;
    case 12:
      result = 0x726F6F6C66;
      break;
    case 13:
      result = 0x797469746E656469;
      break;
    case 14:
      result = 6778732;
      break;
    case 15:
      result = 0x636F727069636572;
      break;
    case 16:
      result = 0x646E756F72;
      break;
    case 17:
      result = 0x7472717372;
      break;
    case 18:
      result = 1852270963;
      break;
    case 19:
      result = 7235955;
      break;
    case 20:
      result = 1752066419;
      break;
    case 21:
      result = 1953657203;
      break;
    case 22:
      result = 0x657261757173;
      break;
    case 23:
      result = 7233908;
      break;
    case 24:
      result = 1752064372;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_29_8()
{
  result = *(v0 - 288);
  v2 = *(v0 - 248);
  v3 = *(v0 - 368);
  v4 = *(v0 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_13(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(a2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_15()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_29_16(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{

  return sub_25BAC8690(a1, a2, a3, a4, v7, v8, a7);
}

uint64_t OUTLINED_FUNCTION_29_21@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(*(a1 + 16) + 152) + 16);

  return sub_25BC54B00(0, v2);
}

uint64_t OUTLINED_FUNCTION_29_24()
{

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_29_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_25BAA51C8(&a27, &a20);
}

uint64_t OUTLINED_FUNCTION_29_26()
{
  v2 = *(*v0 + 40);

  return sub_25BCB79CC();
}

void OUTLINED_FUNCTION_29_28()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_29_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);

  return _s9IOMappingVMa();
}

uint64_t OUTLINED_FUNCTION_66_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 - 264);
  v8 = *(v5 - 208);
  v9 = *(v5 - 360);

  return sub_25BC675C0(a2, a3, a5, v5 - 104);
}

void OUTLINED_FUNCTION_66_3(char a1@<W8>)
{
  *(v1 + 72) = 6581861;
  *(v1 + 80) = 0xE300000000000000;
  *(v1 + 88) = *(v2 + 56);
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
  *(v1 + 112) = 0x656469727473;
  *(v1 + 120) = 0xE600000000000000;
}

uint64_t OUTLINED_FUNCTION_66_7()
{
  *(v3 - 152) = v2;
  result = v1;
  v5 = *(v0 + 3);
  v6 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_9()
{
}

uint64_t OUTLINED_FUNCTION_91_0()
{

  return type metadata accessor for OptimizerStateDictionary();
}

uint64_t OUTLINED_FUNCTION_91_1@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 152);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_91_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_91_6()
{

  return sub_25BCB768C();
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return swift_weakAssign();
}

uint64_t OUTLINED_FUNCTION_65_0()
{
  result = v0;
  *(v2 - 320) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = 0xE400000000000000;
  return result;
}

__n128 OUTLINED_FUNCTION_65_2()
{
  v2 = *(v0 + 128);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 64) = v2;
  result = *(v0 + 144);
  *(v1 + 80) = result;
  *(v0 + 288) = *(v0 + 160);
  return result;
}

void OUTLINED_FUNCTION_65_6()
{

  JUMPOUT(0x25F876DC0);
}

ValueMetadata *OUTLINED_FUNCTION_65_7()
{

  return sub_25BC8FACC();
}

uint64_t OUTLINED_FUNCTION_77_3()
{
  result = v0 - 96;
  v5 = *(v0 - 192);
  v4 = *(v0 - 176);
  v2 = *(v0 - 184);
  v3 = *(v0 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1)
{

  return sub_25BAA6FBC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_77_5@<X0>(__int16 a1@<W8>)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = 82;
  *(v2 - 96) = a1;

  return type metadata accessor for BinaryArithmeticOperation();
}

uint64_t OUTLINED_FUNCTION_77_6()
{

  return sub_25BAAF074(v0);
}

uint64_t OUTLINED_FUNCTION_77_8()
{
  v2 = *(v0 - 120);

  return sub_25BCB777C();
}

uint64_t sub_25BABED3C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, __n128 *a8, uint64_t a9, uint64_t a10)
{
  v12 = *a7;
  v13 = *(a7 + 8);
  *(v10 + 152) = a4;
  if (!a3)
  {
    a1 = sub_25BABCB24(a4, sub_25BABEE4C);
  }

  v14 = *a8;
  v15 = a8[1];
  *(v10 + 72) = *a8;
  *(v10 + 136) = a9;
  *(v10 + 144) = a10;
  return OUTLINED_FUNCTION_0_90(a1, a2, a3, v14.n128_f64[0], v15);
}

uint64_t OUTLINED_FUNCTION_107_3()
{
  v2 = *(v0 - 240);

  return sub_25BCB54FC();
}

uint64_t OUTLINED_FUNCTION_107_5()
{

  return sub_25BCB77FC();
}

uint64_t OUTLINED_FUNCTION_107_6()
{

  return type metadata accessor for TensorHandle();
}

uint64_t sub_25BABEE4C(char a1)
{
  result = 6579297;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_5_61();
      break;
    case 2:
      result = OUTLINED_FUNCTION_7_60();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_61();
      break;
    case 4:
      result = OUTLINED_FUNCTION_9_57();
      break;
    case 5:
      result = OUTLINED_FUNCTION_13_48(0x6978616Du);
      break;
    case 6:
      result = OUTLINED_FUNCTION_13_48(0x696E696Du);
      break;
    case 7:
      result = 0x6F6C75646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_178(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_178_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_25BAB524C(a1, a2, a3, a4, a5, a6, 7, 2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25BABEFE0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if ((*(v2 + 16))(v1, v2) == 0x6F73736572707345 && v3 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_25BCB789C();

    return v5 & 1;
  }
}

uint64_t OUTLINED_FUNCTION_175_0()
{

  return sub_25BAA4A5C(v0 + 240);
}

uint64_t OUTLINED_FUNCTION_175_1()
{

  return sub_25BAA51C8(v1 - 208, v0 + 184);
}

uint64_t OUTLINED_FUNCTION_152_1()
{

  return sub_25BAA4A5C(v0 + 48);
}

uint64_t OUTLINED_FUNCTION_176_1()
{
}

uint64_t OUTLINED_FUNCTION_174_1()
{
  v2 = *(v0 + 128);
}

uint64_t OUTLINED_FUNCTION_173_1()
{
  v2 = *(v0 + 120);
}

uint64_t sub_25BABF4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

void OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 144) = *a3;
  v4 = *(a3 + 12);
  v5 = *(a3 + 8);
}

__n128 OUTLINED_FUNCTION_106_3()
{
  v2 = *(v0 + 88);
  *(v1 - 160) = *(v0 + 72);
  *(v1 - 144) = v2;
  *(v1 - 128) = *(v0 + 104);
  result = *(v0 + 114);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_201()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_162_0()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_162_1()
{
}

uint64_t OUTLINED_FUNCTION_123()
{
  v2 = *(v0 + 8);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  a13 = v13;

  return OptionalParameter.init(wrappedValue:)(&a13);
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_30_3(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  sub_25BC170C8(v1, va, va1);
}

void OUTLINED_FUNCTION_30_5()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_30_7()
{
  *(v1 - 360) = v0;
  v2 = *(v1 - 232);
  v3 = *(*(v1 - 240) + 16);
  result = *(v1 - 408);
  v5 = *(v1 - 448);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_9()
{

  return sub_25BB00C00(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_30_10()
{

  return sub_25BCB672C();
}

uint64_t OUTLINED_FUNCTION_30_12()
{
  v1 = *(v0 - 152);
  v2 = *(v0 - 144);
  v4 = *(v0 - 136);
  return *(v0 - 128);
}

void OUTLINED_FUNCTION_30_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{

  static ShapeInference.broadcasting(_:_:)(&a9, &a34, (v34 - 144));
}

__n128 OUTLINED_FUNCTION_30_14(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_17()
{

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_30_20()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_30_21(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_30_23()
{
}

uint64_t OUTLINED_FUNCTION_30_24()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 88);
  v5 = *(v0 - 152);

  return sub_25BCB681C();
}

uint64_t OUTLINED_FUNCTION_30_27()
{

  return sub_25BC60CE8();
}

uint64_t OUTLINED_FUNCTION_30_30()
{

  return sub_25BAC783C(0, 0, v1, v0);
}

uint64_t OUTLINED_FUNCTION_30_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_25BB0EE34(v13, v11, v12, a4, a5, a6, a7, va, a8, a9, a10, a11);
}

uint64_t sub_25BABFD18()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_25BCB74CC();
}

__n128 OUTLINED_FUNCTION_49_13()
{
  v2 = *(v0 + 272);
  *(v0 + 192) = *(v0 + 256);
  *(v0 + 208) = v2;
  result = *(v0 + 288);
  *(v0 + 224) = result;
  *(v1 - 176) = *(v1 - 112);
  return result;
}

void OUTLINED_FUNCTION_49_14(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v2 + 104) = a2;
  *(v2 + 120) = a1;
  *(v2 + 156) = 1;
}

uint64_t OUTLINED_FUNCTION_49_15(uint64_t result)
{
  v2 = *v1;
  v3 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_49_18()
{

  return swift_bridgeObjectRelease_n();
}

void *OUTLINED_FUNCTION_49_19()
{

  return memcpy((v1 - 248), v0, 0x9CuLL);
}

uint64_t OUTLINED_FUNCTION_49_20()
{

  return type metadata accessor for MPSGraphTensorStorage();
}

uint64_t static Tensor.- prefix(_:)(uint64_t *a1)
{
  v1 = *a1;
  *&v11[0] = *a1;
  v2 = Tensor.scalarType.getter();
  if (dynamic_cast_existential_1_conditional(v2) || (*&v11[0] = v1, v3 = Tensor.scalarType.getter(), dynamic_cast_existential_1_conditional(v3)))
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v4 = *(*(v1 + 16) + 160);
    sub_25BAA51C8(v11, v10);
    v8 = MEMORY[0x277D84F90];
    v7 = v4;
    sub_25BAA51C8(v10, v6);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v8, &unk_286D42338, &v7, v6, &v9);
    sub_25BA9C2C8(v10);
    sub_25BA9C2C8(v11);
    *&v11[0] = v9;
    v10[0] = v1;
    static Tensor.* infix(_:_:)();
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAC01BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *, __int128 *, _OWORD *, uint64_t, uint64_t, void *)@<X5>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v11 = *a3;
  if (*(*a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_14:
    v15 = qword_281557400;
    v39 = v10;
    LOBYTE(v56) = v11;
    sub_25BCB617C();
    a5(&v39, &v56, v59, v15, a2, v11);
    v17 = v16;

    sub_25BAA48D4(v59, &v39, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v18 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_19_22();
    sub_25BAA5BB4(v20, v21, v22, v18, ObjectType, v17);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v23);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_78_6(a4);
    OUTLINED_FUNCTION_78_6(v59);
    OUTLINED_FUNCTION_78_6(v61);

    *a6 = v23;
    return result;
  }

  v13 = 1;
LABEL_8:
  if (v13 == *(a2 + 16))
  {
    OUTLINED_FUNCTION_102_4(a4, v61);
    OUTLINED_FUNCTION_102_4(v61, &v56);
    if (*(&v57 + 1))
    {
      OUTLINED_FUNCTION_12_31(v59, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
      v60 = v14;
      sub_25BCB617C();
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BCB617C();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v39);

      sub_25BAA48D4(&v39, v59, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(&v39);
      if (*(&v57 + 1))
      {
        sub_25BAA6FBC(&v56, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v10 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v12)
      {
        goto LABEL_21;
      }
    }

    __break(1u);

    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v25, v26, v27);
    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v28, v29, v30);

    __break(1u);
  }

LABEL_21:
  v31 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v31);

  v32 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v32);
  v33 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v33);

  v34 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v34);
  OUTLINED_FUNCTION_10_5();
  result = OUTLINED_FUNCTION_25_0();
  __break(1u);
  return result;
}

uint64_t Tensor.init(shape:coercingScalars:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_25BAC01BC(a1, a2, a3, a4, sub_25BAC05A0, a5);
}

{
  return sub_25BAC01BC(a1, a2, a3, a4, sub_25BAC5C60, a5);
}

{
  return sub_25BAC01BC(a1, a2, a3, a4, sub_25BC738DC, a5);
}

void sub_25BAC05A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v31 = OUTLINED_FUNCTION_16_48(a1, a2, a3, a4, a5, a6);
  v10 = OUTLINED_FUNCTION_2(v31);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_60();
  if (v33)
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_53_13() & 1) != 0 && v35 >= 3)
    {
      type metadata accessor for SharedMetalDevice();
      v13 = swift_unknownObjectRetain();
      sub_25BBC97E0(v13);
      if (!v9)
      {
        OUTLINED_FUNCTION_32_26();
        if (v25)
        {
          OUTLINED_FUNCTION_22_34();
          while (1)
          {
            OUTLINED_FUNCTION_3_59();
            if (!v15)
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_44_18();
            if (v15)
            {
              OUTLINED_FUNCTION_33_27();
              if (v6 > 0)
              {
                goto LABEL_29;
              }

              goto LABEL_8;
            }
          }
        }

        OUTLINED_FUNCTION_33_27();
LABEL_29:
        OUTLINED_FUNCTION_50_18();
        OUTLINED_FUNCTION_39_24();
        OUTLINED_FUNCTION_34_21();
        sub_25BCB617C();
        sub_25BCB617C();
        OUTLINED_FUNCTION_6_58();
        sub_25BC299C8(v26, v27, v28, v29, v30, v36);
LABEL_19:
        OUTLINED_FUNCTION_30_28();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_27_31();
        return;
      }

      OUTLINED_FUNCTION_33_27();
    }

    else
    {
      sub_25BABF0A8(v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    sub_25BA9C2C8(v32);
  }

LABEL_8:
  if ((v8 - 1) <= 0xA)
  {
    v14 = qword_25BCD3398[(v8 - 1)];
  }

  if (!*(v7 + 16))
  {
LABEL_16:
    type metadata accessor for NativeTensorStorage();
    OUTLINED_FUNCTION_47_19();
    if (!v15)
    {
      goto LABEL_31;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_15_29();
    sub_25BCB6F1C();
    OUTLINED_FUNCTION_21_35();
    v16 = *MEMORY[0x277D84660];
    v17 = OUTLINED_FUNCTION_7_58();
    v18(v17);
    v19 = OUTLINED_FUNCTION_20_35();
    sub_25BAC0838(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_46_22();
    v24(v23);
    OUTLINED_FUNCTION_10_48();
    OUTLINED_FUNCTION_17_26();

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_34();
  while (1)
  {
    OUTLINED_FUNCTION_3_59();
    if (!v15)
    {
      break;
    }

    OUTLINED_FUNCTION_44_18();
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BAC0838(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  OUTLINED_FUNCTION_31_7(a1, a2, a3, a4);
  if (v8 == 10)
  {
    if (v7)
    {
      v9 = (v6 - v7) / 4;
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v5 + 16) >> 61)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42_5();
    sub_25BAC5FB4(v10, v11, v12, v13, v14, v15, 10);
    if (!v4)
    {
      return;
    }

    __break(1u);
  }

  v9 = 0;
LABEL_8:
  v16 = *(v5 + 16);
  if (!v16)
  {
    return;
  }

  if (v9 < v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  memcpy(v7, (v5 + 32), 4 * v16);
}

void static Tensor.* infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = OUTLINED_FUNCTION_119_4();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_30();
  do
  {
    if (v8 == 4)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v9);
  v10 = 0;
  do
  {
    if (v10 == 4)
    {
      v57 = OUTLINED_FUNCTION_171_0();
      v58 = v50;
      v49 = xmmword_25BCC6530;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v9);
  OUTLINED_FUNCTION_98_6(v11);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  if (!v60)
  {
    OUTLINED_FUNCTION_54_10(v2[1].Kind);
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v51, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_14_30();
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_207_1();
  OUTLINED_FUNCTION_35_16(v12, v13);
  v14();
  v15 = OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_53_11(v15, v16);
  v17();
  OUTLINED_FUNCTION_195_1();
  if (!v9)
  {
    OUTLINED_FUNCTION_128();
    if (!(!v9 & v19))
    {
      OUTLINED_FUNCTION_127_0(v18);
      if (!v9)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_203_0();
      v52 = OUTLINED_FUNCTION_101_5();
      v57 = v60;
      v58 = v0;
      OUTLINED_FUNCTION_52_10(v52, v53, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v54, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_14_30();
LABEL_18:
      sub_25BADDD28();
    }

    __break(1u);
LABEL_15:
    v57 = OUTLINED_FUNCTION_172_1();
    v58 = v48;
    v49 = xmmword_25BCC6520;
LABEL_17:
    OUTLINED_FUNCTION_12_32(v49);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_18;
  }

LABEL_13:
  v57 = v2;
  v20 = OUTLINED_FUNCTION_103_5();
  LOBYTE(v60) = v3;
  v21 = OUTLINED_FUNCTION_46_14(v20, *MEMORY[0x277D84660]);
  v22(v21);
  OUTLINED_FUNCTION_62_6();
  v23 = OUTLINED_FUNCTION_126_1();
  v1(v23);

  OUTLINED_FUNCTION_57_6();
  v24 = OUTLINED_FUNCTION_66_7();
  v25(v24);
  OUTLINED_FUNCTION_62_6();
  v26 = OUTLINED_FUNCTION_25_12();
  v1(v26);

  OUTLINED_FUNCTION_90_4();

  v27 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v27);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v61 = xmmword_25BCCB470;
  OUTLINED_FUNCTION_77_5(v28);
  OUTLINED_FUNCTION_161_1();
  v29 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_108_5(v29, v30, v31, 2, v32, v33, v34, v35, v55, v56);
  OUTLINED_FUNCTION_137_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v36 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_5(v36, xmmword_25BCBAE70);

  v37 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v37, v38, v39, v40, 281, v41);
  swift_setDeallocating();
  sub_25BAB3FD0();
  OUTLINED_FUNCTION_175_1();
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_176_1();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_174_1();
  sub_25BAA4AF4(&v57);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_173_1();
  sub_25BAA4AF4(&v57);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v57) = v42;
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_64_8(v43, v44, v45, v46);
  OUTLINED_FUNCTION_107_6();
  v47 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v47);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(&v59);
  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_10_16();
}

uint64_t static ShapeInference.broadcasting(_:toRank:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (a2 != v5)
  {
    if (a2 > v5)
    {
      sub_25BAC0E14(1, a2 - v5);
      v14 = MEMORY[0x277D84F90];
      v6 = sub_25BCB617C();
      sub_25BAC0EB8(v6);
      v7 = sub_25BCB617C();
      sub_25BAC0F84(v7);
LABEL_13:

      *a3 = v14;
      return result;
    }

    v8 = __OFSUB__(v5, a2);
    v9 = v5 - a2;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      v13 = *result;
      if ((v9 & 0x8000000000000000) == 0)
      {
        result = sub_25BBFD334(0, v9, v5);
        v10 = *(v4 + 16);
        v11 = v10;
        if (v12)
        {
LABEL_12:
          sub_25BCB617C();
          TensorShape.subscript.getter(v11, v10, &v14);
          goto LABEL_13;
        }

        if (v10 >= result)
        {
          v11 = result;
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  *a3 = v4;

  return sub_25BCB617C();
}

uint64_t sub_25BAC0E14(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = result;
    result = sub_25BCB67DC();
    v4 = 0;
    *(result + 16) = a2;
    v5 = vdupq_n_s64(a2 - 1);
    do
    {
      v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_25BCCB570)));
      v7 = result + 8 * v4;
      if (v6.i8[0])
      {
        *(v7 + 32) = v3;
      }

      if (v6.i8[4])
      {
        *(v7 + 40) = v3;
      }

      v4 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_25BAC0ED0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(v5 + v4, 1);
  v6 = *v2;
  if (!*(a1 + 16))
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_80_6();
  if (v8 != v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v4);

  if (!v4)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v9 = __OFADD__(v10, v4);
  v11 = v10 + v4;
  if (!v9)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_25BAC0F84(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(*v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_10;
  }

  v1 = v2;
  sub_25BA979FC(v6 + v5, 1);
  v3 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  v9 = sub_25BAC111C(&v19, v3 + 8 * v7 + 32, v8, v4);
  if (v9 < v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9)
  {
    v10 = *(v3 + 16);
    v11 = __OFADD__(v10, v9);
    v12 = v10 + v9;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v12;
  }

  if (v9 != v8)
  {
LABEL_7:

LABEL_8:
    *v1 = v3;
    return result;
  }

LABEL_11:
  v4 = v19;
  v5 = v20;
  if (v20 == *(v19 + 16))
  {
    goto LABEL_7;
  }

LABEL_14:
  v14 = *(v3 + 16);
  result = TensorShape.subscript.getter(v5);
  v11 = __OFADD__(v5, 1);
  v15 = v5 + 1;
  if (!v11)
  {
LABEL_15:
    v16 = *(v3 + 24) >> 1;
    if (v16 < v14 + 1)
    {
      v17 = result;
      sub_25BA96630();
      v3 = v18;
      result = v17;
      v16 = *(v3 + 24) >> 1;
    }

    while (1)
    {
      if (v14 >= v16)
      {
        *(v3 + 16) = v14;
        goto LABEL_15;
      }

      *(v3 + 8 * v14 + 32) = result;
      if (v15 == *(v4 + 16))
      {
        break;
      }

      result = TensorShape.subscript.getter(v15);
      ++v14;
      v11 = __OFADD__(v15++, 1);
      if (v11)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    *(v3 + 16) = v14 + 1;
    goto LABEL_8;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BAC111C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
LABEL_13:
        OUTLINED_FUNCTION_9_60();
        OUTLINED_FUNCTION_8_62();
        OUTLINED_FUNCTION_17_4();
        sub_25BADDD28();
      }

      v4 = 0;
      v5 = *(a4 + 16);
      while (v5 != v4)
      {
        if (v4 >= *(a4 + 16))
        {
          goto LABEL_13;
        }

        *(a2 + 8 * v4) = *(a4 + 32 + 8 * v4);
        if (a3 == ++v4)
        {
          goto LABEL_11;
        }
      }

      a3 = v5;
    }
  }

  else
  {
    a3 = 0;
  }

LABEL_11:
  *a1 = a4;
  a1[1] = a3;
  return a3;
}

uint64_t OUTLINED_FUNCTION_125()
{

  return type metadata accessor for LayerVariableReference();
}

uint64_t OUTLINED_FUNCTION_125_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BBA18D8(a1, a2, a3, a4, a5, a6, v9, v10, a9);
}

uint64_t sub_25BAC1714()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25BAC174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_25BAC1900(a1, a3))
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_25BAC1784@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_25BAC174C(*a1, a1[1], *a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_25BAC17E4(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  v8 = MEMORY[0x277D84F90];
  v19 = a1;
  while (v6 != v5)
  {
    v9 = *(v7 + 8 * v5);
    v18[0] = v5;
    v18[1] = v9;
    v4(&v16, v18);
    if (v3)
    {

      return v8;
    }

    if ((v17 & 1) == 0)
    {
      v10 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v8 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BA96630();
        v8 = v13;
      }

      v11 = *(v8 + 16);
      if (v11 >= *(v8 + 24) >> 1)
      {
        sub_25BA96630();
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + 8 * v11 + 32) = v10;
      v4 = v19;
    }

    ++v5;
  }

  return v8;
}

BOOL sub_25BAC1900(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_25BAC192C()
{
  OUTLINED_FUNCTION_31_28();
  v2 = *(v1 + 112);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    sub_25BAB62B8(1);
    v3 = *(v0 + v2);
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v3;
}

uint64_t (*sub_25BAC1988(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x277D84900];
  v7 = *(a1 + 16);
  v8 = 32;
  v9 = MEMORY[0x277D839B0];
  while (v7)
  {
    v10 = &protocol witness table for Int8;
    v11 = v6;
    switch(*(*(*(a1 + v8) + 16) + 160))
    {
      case 1:
        v11 = MEMORY[0x277D84958];
        v10 = &protocol witness table for Int16;
        break;
      case 2:
        v11 = MEMORY[0x277D849A8];
        v10 = &protocol witness table for Int32;
        break;
      case 3:
        v11 = MEMORY[0x277D83B88];
        v10 = &protocol witness table for Int;
        break;
      case 4:
        v11 = MEMORY[0x277D84B78];
        v10 = &protocol witness table for UInt8;
        break;
      case 5:
        v11 = MEMORY[0x277D84C58];
        v10 = &protocol witness table for UInt16;
        break;
      case 6:
        v11 = MEMORY[0x277D84CC0];
        v10 = &protocol witness table for UInt32;
        break;
      case 7:
        v11 = MEMORY[0x277D84D38];
        v10 = &protocol witness table for UInt64;
        break;
      case 8:
        v11 = MEMORY[0x277D84DC8];
        v10 = &protocol witness table for Float16;
        break;
      case 9:
        v10 = sub_25BB18AFC();
        v11 = &type metadata for BFloat16;
        break;
      case 0xA:
        v11 = MEMORY[0x277D83A90];
        v10 = &protocol witness table for Float;
        break;
      case 0xB:
        v11 = MEMORY[0x277D839F8];
        v10 = &protocol witness table for Double;
        break;
      case 0xC:
        v11 = v9;
        v10 = &protocol witness table for Bool;
        break;
      default:
        break;
    }

    v8 += 8;
    --v7;
    if (!sub_25BAC1C50(v11, v10))
    {
      sub_25BCB74CC();
      __break(1u);
      break;
    }
  }

  sub_25BAC1CA0(a1);
  OUTLINED_FUNCTION_1_2();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  sub_25BCB617C();
  sub_25BCB617C();

  return sub_25BAC2A98;
}

uint64_t sub_25BAC1C0C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_1_2();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

BOOL sub_25BAC1C50(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&var1);
  v2 = var1;

  return sub_25BAA80BC(v2, &unk_286D42270);
}

uint64_t sub_25BAC1CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = *(v5 + 16);

      sub_25BCB723C();
      v7 = *(v9 + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v1;
    }

    while (v1);
    v2 = v9;
  }

  swift_beginAccess();
  sub_25BAC1D78(v2);
  return swift_endAccess();
}

uint64_t sub_25BAC1D78(unint64_t a1)
{
  v3 = sub_25BAAF54C(a1);
  v4 = sub_25BAAF54C(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_25BAC1E24(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25BAC1ED4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25BAC1E34(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_25BCB749C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_25BCB719C();
  *v1 = result;
  return result;
}

uint64_t sub_25BAC1ED4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_25BCB749C();
    v7 = result;
    if (!result)
    {
      return OUTLINED_FUNCTION_24_1();
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return OUTLINED_FUNCTION_24_1();
    }
  }

  if (v5)
  {
    result = sub_25BAAF54C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for TensorRepresentation();
        swift_arrayInitWithCopy();
        return OUTLINED_FUNCTION_24_1();
      }

      if (v7 >= 1)
      {
        sub_25BC0908C();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6608, &qword_25BCCB660);
          v9 = sub_25BC547F8(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return OUTLINED_FUNCTION_24_1();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_180()
{
  v2 = *(*(v0 + 16) + 16);

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_180_0(unint64_t result, unint64_t a2, __n128 a3)
{
  v3[5] = a3;
  v3[6].n128_u8[0] = 6;
  v3[6].n128_u64[1] = result;
  v3[7].n128_u64[0] = a2;
  return result;
}

uint64_t (*sub_25BAC2070())(uint64_t a1)
{
  v1 = *v0;
  v2 = sub_25BAC2130();
  OUTLINED_FUNCTION_1_2();
  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;
  return sub_25BACBC58;
}

uint64_t sub_25BAC20F8()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_1_2();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25BAC2130()
{
  OUTLINED_FUNCTION_31_28();
  v2 = *(v1 + 104);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    sub_25BAB62B8(1);
    v3 = *(v0 + v2);
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v3;
}

uint64_t sub_25BAC218C()
{
  v1 = *(*v0 + 96);
  OUTLINED_FUNCTION_11_1(*(*v0 + 80));
  (*(v2 + 8))(v0 + v3);
  OUTLINED_FUNCTION_31_28();
  v5 = *(v0 + *(v4 + 104));

  OUTLINED_FUNCTION_31_28();
  v7 = *(v0 + *(v6 + 112));

  OUTLINED_FUNCTION_31_28();
  v9 = *(v0 + *(v8 + 120));

  return v0;
}

uint64_t sub_25BAC2240()
{
  sub_25BAC218C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BAC2298()
{
  sub_25BAC22CC();

  return swift_deallocClassInstance();
}

void *sub_25BAC22CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  return v0;
}

uint64_t sub_25BAC231C()
{
  sub_25BAB310C(*(v0 + 32));
  OUTLINED_FUNCTION_1_2();

  return swift_deallocClassInstance();
}

uint64_t Tensor.init(onesLike:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_93_5(a1);
  if (!sub_25BAA80BC(v4, &unk_286D427E8) && !sub_25BAA80BC(*(v2 + 160), &unk_286D42270))
  {
    v11 = v3;
    v6 = Tensor.scalarType.getter();
    v8 = v7;
    sub_25BC03500(&unk_286D42270);
    v12[0] = v6;
    v12[1] = v8;
    v12[2] = 0;
    v12[3] = 0;
    v13 = -1;
    v14 = &unk_286D427E8;
    v15 = 1;
    v16 = 3;
    OUTLINED_FUNCTION_60_6();
    sub_25BADDD28();
  }

  v10 = *(v2 + 152);
  v9 = *(v2 + 160);
  sub_25BCB617C();

  sub_25BAA48D4(v2 + 168, v12, &qword_27FBB6730, &qword_25BCBC4B0);

  result = Tensor.init(ones:scalarType:on:)(&v10, &v9, v12, &v11);
  *v1 = v11;
  return result;
}

uint64_t OUTLINED_FUNCTION_84()
{

  return sub_25BA95FB0(v0);
}

uint64_t OUTLINED_FUNCTION_84_1()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 200);
  v4 = *(v0 - 288);

  return sub_25BB556A0(v3);
}

__n128 OUTLINED_FUNCTION_84_2()
{
  v2 = *(v1 - 160);
  v3 = *(v1 - 152);
  v4 = *(v0 + 88);
  *(v1 - 160) = *(v0 + 72);
  *(v1 - 144) = v4;
  *(v1 - 128) = *(v0 + 104);
  result = *(v0 + 114);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_84_3@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;
  *(v2 - 104) = 73;
  *(v2 - 96) = v1;

  return type metadata accessor for GatherOperation();
}

uint64_t OUTLINED_FUNCTION_84_6(_WORD *a1)
{
  *a1 = 0;

  return sub_25BCB5EDC();
}

uint64_t Tensor.init(ones:scalarType:on:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v22 = *a1;
  v7 = *(v22 + 16);
  if (v7)
  {
    v8 = (v22 + 32);
    v9 = 1;
    while (1)
    {
      v10 = *v8++;
      result = v9 * v10;
      if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
      {
        break;
      }

      v9 = result;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    result = 1;
LABEL_7:
    sub_25BAC26E8(result, 1.0);
    v13 = v12;
    v21 = v6;
    sub_25BAA48D4(a3, &v15, &qword_27FBB6730, &qword_25BCBC4B0);
    if (*(&v16 + 1))
    {
      v19[0] = v15;
      v19[1] = v16;
      v19[2] = v17;
      v20 = v18;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v14);

      sub_25BAA48D4(v14, v19, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(v14);
      if (*(&v16 + 1))
      {
        sub_25BAA6FBC(&v15, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    Tensor.init(shape:coercingScalars:scalarType:on:)(&v22, v13, &v21, v19, v14);
    result = sub_25BAA6FBC(a3, &qword_27FBB6730, &qword_25BCBC4B0);
    *a4 = v14[0];
  }

  return result;
}

void sub_25BAC26E8(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    *(sub_25BCB67DC() + 16) = a1;
    do
    {
      OUTLINED_FUNCTION_11_44();
      if (v6)
      {
        *(v3 - 12) = a2;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a2;
      }

      OUTLINED_FUNCTION_14_37();
      if (v12)
      {
        *(v8 - 1) = a2;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a2;
      }
    }

    while (v9 != v7 + 4);
  }
}

uint64_t sub_25BAC27B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_52(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_52_0(unint64_t a1, char a2)
{
  v3 = a2 & 1;

  return sub_25BB17760(a1, v3);
}

uint64_t OUTLINED_FUNCTION_52_2(uint64_t result)
{
  *(v2 - 96) = result;
  *(v2 - 88) = v1;
  *(v2 - 65) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t result)
{
  *(v3 - 264) = result;
  *(v3 - 360) = v1;
  *(v3 - 368) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_4()
{

  return sub_25BCB73CC();
}

__n128 OUTLINED_FUNCTION_52_6(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11)
{
  result = a11;
  a1[1] = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_9()
{

  return sub_25BCB74CC();
}

unint64_t OUTLINED_FUNCTION_52_10(unint64_t result, unint64_t a2, __n128 a3)
{
  v3[4] = a3;
  v3[5].n128_u8[0] = 6;
  v3[5].n128_u64[1] = result;
  v3[6].n128_u64[0] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_12@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v4 - 144) = v2;
  *(v4 - 136) = v3;
  *(v4 - 128) = a1;
  *(v4 - 120) = a2;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_52_16()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_25BAC29A4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  OUTLINED_FUNCTION_1_2();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = v6;

  v8 = a2(v7);

  v9 = a4(v8);

  return v9;
}

uint64_t sub_25BAC2A5C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  return sub_25BAC29A4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_25BAC2AA8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    MEMORY[0x28223BE20](a1);
    return sub_25BAC2C4C(sub_25BAC2E18);
  }

  else
  {
    v3 = *(a1 + 16);
    sub_25BCB70FC();

    v4 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v4);

    MEMORY[0x25F876C90](0xD00000000000001ALL, 0x800000025BCE5910);
    v5 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v5);

    MEMORY[0x25F876C90](96, 0xE100000000000000);
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BAC2C4C(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v6);

  type metadata accessor for ResolutionDependencies();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = 0;
  *(v3 + 24) = v4;

  v6[9] = v3;
  sub_25BAA49B8();
  sub_25BAB7060(v6);

  a1(&v7, v3);

  sub_25BAA49B8();
  sub_25BAB814C();

  if (v1)
  {
    return sub_25BAA4AF4(v6);
  }

  sub_25BAA4AF4(v6);
  return v7;
}

uint64_t sub_25BAC2DE4@<X0>(_UNKNOWN **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_25BAC2DA4(a1, *a2, *a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_25BAC2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _UNKNOWN **a5)
{
  v102 = sub_25BCB5EBC();
  v9 = *(v102 - 8);
  v10 = *&v9[2].NumRequirements;
  v11 = MEMORY[0x28223BE20](v102);
  v13 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v89 - v14;
  if (qword_28154BE88 != -1)
  {
LABEL_80:
    swift_once();
  }

  v16 = sub_25BCB5EEC();
  __swift_project_value_buffer(v16, qword_28154BE90);
  sub_25BCB5EAC();
  v17 = sub_25BCB5EDC();
  v18 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v19 = swift_slowAlloc();
    v101 = a2;
    v20 = v19;
    *v19 = 0;
    v21 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v17, v18, v21, "Backpropagation (Gradient Pass)", "", v20, 2u);
    v22 = v20;
    a2 = v101;
    MEMORY[0x25F8797F0](v22, -1, -1);
  }

  v23 = v102;
  (*&v9->NumRequirements)(v13, v15, v102);
  v24 = sub_25BCB5F2C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v89[1] = sub_25BCB5F1C();
  v27 = *&v9->Name;
  v9 = (v9 + 8);
  v27(v15, v23);
  type metadata accessor for GradientAccumulator();
  swift_allocObject();

  v28 = sub_25BCB617C();
  v95 = sub_25BAC3C14(v28, a5);
  type metadata accessor for BackpropQueue();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v101 = v29;
  v30 = *(a3 + 16);
  sub_25BCB617C();
  sub_25BCB617C();
  v13 = -v30;
  for (i = 4; i - v30 != 4; ++i)
  {
    v32 = *(a1 + 16);
    if (i - 4 == v32)
    {
      break;
    }

    if (i - 4 >= v32)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    a2 = *(a3 + 8 * i);
    v9 = *(a1 + 8 * i);
    v105 = a2;
    v33 = *&v9->NumRequirements;

    sub_25BAC43A4(&v105);

    v15 = *&v9->NumRequirements;

    sub_25BAC46D8(v34);

    if (a5)
    {
      v105 = v9;
      sub_25BAC481C(&v105);
    }
  }

  v9 = &protocol descriptor for DifferentiableTensorOperation;
  v104 = MEMORY[0x277D84FA0];
  while (2)
  {
    a1 = -1;
    while (1)
    {
      while (1)
      {
        v35 = sub_25BAC4928();
        if (!v35)
        {
          goto LABEL_75;
        }

        v13 = v35;
        v36 = sub_25BAB3058();
        if (v36)
        {
          break;
        }
      }

      v15 = v36;
      swift_getObjectType();
      v37 = dynamic_cast_existential_1_conditional(v15);
      if (!v37)
      {
        goto LABEL_24;
      }

      a5 = v37;
      v102 = v38;
      v39 = v95[3];
      v40 = sub_25BAC4018();
      if (*(v39 + 16))
      {
        v41 = v40;
        v42 = *(v39 + 40);
        v43 = sub_25BCB79BC();
        v44 = ~(-1 << *(v39 + 32));
        do
        {
          v45 = v43 & v44;
          if (((*(v39 + 56 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v43 & v44)) & 1) == 0)
          {
            goto LABEL_21;
          }

          v43 = v45 + 1;
        }

        while (*(*(v39 + 48) + 8 * v45) != v41);
        if (sub_25BAB6A04())
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      ObjectType = swift_getObjectType();
      v47 = v102;
      v48 = *(v102 + 8);
      (*(v48 + 16))(ObjectType, v48);
      sub_25BAC4A64();
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_24;
      }

      v51 = (*(v47 + 16))(ObjectType, v47);
      v93 = v52;
      v94 = v51;
      if (v51)
      {
        break;
      }

      if (sub_25BACB000())
      {
        (*(v48 + 24))(ObjectType, v48);
        (*(v48 + 48))(&v105, ObjectType, v48);
        if (v113)
        {
          v81 = xmmword_25BCD2BC0;
          v82 = "computeGradients(targets:sources:outputGradients:persistentGraphScope:resolutionDependencies:)";
          v83 = 2;
          v84 = 94;
          v85 = 105;
          v86 = 2;
          v87 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift";
LABEL_93:
          v114 = v87;
          v115 = v85;
          v116 = v83;
          *v117 = v103[0];
          *&v117[3] = *(v103 + 3);
          v118 = v81;
          v119 = v82;
          v120 = v84;
          v121 = v86;
          goto LABEL_94;
        }

LABEL_92:
        v83 = v107;
        v87 = v105;
        v85 = v106;
        v86 = v112;
        v82 = v110;
        v84 = v111;
        v81 = v109;
        v103[0] = *v108;
        *(v103 + 3) = *&v108[3];
        goto LABEL_93;
      }

LABEL_24:

      swift_unknownObjectRelease();
    }

    v92 = sub_25BAC4FEC(a5, v47);
    if (!v92)
    {
      (*(v48 + 24))(ObjectType, v48);
      (*(v48 + 48))(&v105, ObjectType, v48);
      if ((v113 & 1) == 0)
      {
        goto LABEL_92;
      }

      v81 = xmmword_25BCD2BB0;
      goto LABEL_91;
    }

    v53 = *(v48 + 32);
    v90 = v48;
    v54 = v53(ObjectType, v48);
    a2 = v54;
    if (v54 >> 62)
    {
      a3 = sub_25BCB749C();
    }

    else
    {
      a3 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = a5;
    v91 = v15;
    v96 = ObjectType;
    if (!a3)
    {

      a1 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    v105 = MEMORY[0x277D84F90];
    sub_25BAC5590();
    if (a3 < 0)
    {
      goto LABEL_79;
    }

    v55 = 0;
    a1 = v105;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x25F8779B0](v55, a2);
      }

      else
      {
        v56 = *(a2 + 8 * v55 + 32);
      }

      type metadata accessor for TensorHandle();
      v15 = swift_allocObject();
      *(v15 + 2) = v56;

      sub_25BAA6EB0();

      v105 = a1;
      v57 = *(a1 + 16);
      if (v57 >= *(a1 + 24) >> 1)
      {
        sub_25BAC5590();
        a1 = v105;
      }

      ++v55;
      *(a1 + 16) = v57 + 1;
      *(a1 + 8 * v57 + 32) = v15;
    }

    while (a3 != v55);

    a5 = v97;
    ObjectType = v96;
LABEL_40:
    v100 = v94(v92, a1);
    v58 = *(v100 + 16);
    v59 = *(v102 + 24);
    v99 = v102 + 24;
    v98 = v59;
    v60 = (v59)(ObjectType);
    if (v60 >> 62)
    {
      v61 = sub_25BCB749C();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v58 != v61)
    {
      v88 = v90;
      (*(v90 + 24))(ObjectType, v90);
      (*(v88 + 48))(&v105, ObjectType, v88);
      if ((v113 & 1) == 0)
      {
        goto LABEL_92;
      }

      v81 = xmmword_25BCD2B90;
LABEL_91:
      v82 = "computeGradients(targets:sources:outputGradients:persistentGraphScope:resolutionDependencies:)";
      v83 = 2;
      v84 = 94;
      v85 = 105;
      v86 = 2;
      v87 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift";
      goto LABEL_93;
    }

    v62 = v98(ObjectType, v102);
    if (!(v62 >> 62))
    {
      a2 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_45:
      v63 = v102;
      if (!a2)
      {
LABEL_70:

        sub_25BA9D148(v94);
        swift_unknownObjectRelease();
        v9 = &protocol descriptor for DifferentiableTensorOperation;
        continue;
      }

      v9 = 0;
      v64 = (v100 + 48);
      while (1)
      {
        v65 = v98(v96, v63);
        a3 = v65;
        if ((v65 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x25F8779B0](v9, v65);
        }

        else
        {
          if (v9 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v66 = *(v65 + 8 * v9 + 32);
        }

        if (v9 >= *(v100 + 16))
        {
          break;
        }

        v9 = (v9 + 1);
        v15 = *(v64 - 2);
        v67 = *v64;
        a5 = &protocol witness table for Int8;
        v68 = MEMORY[0x277D84900];
        switch(*(*(v15 + 2) + 160))
        {
          case 1:
            v68 = MEMORY[0x277D84958];
            a5 = &protocol witness table for Int16;
            break;
          case 2:
            v68 = MEMORY[0x277D849A8];
            a5 = &protocol witness table for Int32;
            break;
          case 3:
            v68 = MEMORY[0x277D83B88];
            a5 = &protocol witness table for Int;
            break;
          case 4:
            v68 = MEMORY[0x277D84B78];
            a5 = &protocol witness table for UInt8;
            break;
          case 5:
            v68 = MEMORY[0x277D84C58];
            a5 = &protocol witness table for UInt16;
            break;
          case 6:
            v68 = MEMORY[0x277D84CC0];
            a5 = &protocol witness table for UInt32;
            break;
          case 7:
            v68 = MEMORY[0x277D84D38];
            a5 = &protocol witness table for UInt64;
            break;
          case 8:
            v68 = MEMORY[0x277D84DC8];
            a5 = &protocol witness table for Float16;
            break;
          case 9:
            a5 = sub_25BB18AFC();
            v68 = &type metadata for BFloat16;
            break;
          case 0xA:
            v68 = MEMORY[0x277D83A90];
            a5 = &protocol witness table for Float;
            break;
          case 0xB:
            v68 = MEMORY[0x277D839F8];
            a5 = &protocol witness table for Double;
            break;
          case 0xC:
            v68 = MEMORY[0x277D839B0];
            a5 = &protocol witness table for Bool;
            break;
          default:
            break;
        }

        sub_25BCB617C();
        if (sub_25BAC1C50(v68, a5))
        {
          v105 = v15;

          sub_25BAC43A4(&v105);

          sub_25BAC46D8(v66);
        }

        else if (sub_25BACB000())
        {
          v72 = v90;
          v73 = v96;
          (*(v90 + 24))(v96, v90);
          (*(v72 + 48))(&v105, v73, v72);
          if (v113)
          {
            v74 = xmmword_25BCD2BA0;
            v75 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Runtime/Backpropagation.swift";
            v76 = 2;
            v77 = 105;
            v78 = 94;
            v79 = 2;
            v80 = "computeGradients(targets:sources:outputGradients:persistentGraphScope:resolutionDependencies:)";
          }

          else
          {
            v79 = v107;
            v75 = v105;
            v77 = v106;
            v76 = v112;
            v80 = v110;
            v78 = v111;
            v74 = v109;
            v103[0] = *v108;
            *(v103 + 3) = *&v108[3];
          }

          v114 = v75;
          v115 = v77;
          v116 = v79;
          *v117 = v103[0];
          *&v117[3] = *(v103 + 3);
          v118 = v74;
          v119 = v80;
          v120 = v78;
          v121 = v76;
LABEL_94:
          sub_25BB28E60(&v114);
        }

        v64 += 3;
        v63 = v102;
        if (a2 == v9)
        {
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    break;
  }

  a2 = sub_25BCB749C();

  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_45;
  }

  __break(1u);
LABEL_75:

  sub_25BACB138();
  v70 = v69;

  sub_25BACB9CC();

  return v70;
}

void *sub_25BAC3C14(uint64_t a1, uint64_t a2)
{
  sub_25BAC3F80();
  v4 = MEMORY[0x277D84F90];
  v2[4] = sub_25BCB614C();
  v2[5] = 0;
  v19 = v2;
  v5 = *(a1 + 16);
  sub_25BCB727C();
  sub_25BAC3FD4();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(a1 + 16))
    {
      v8 = *(a1 + 32 + 8 * v7++);
      v9 = &protocol witness table for Int8;
      v10 = MEMORY[0x277D84900];
      switch(*(*(v8 + 16) + 160))
      {
        case 1:
          v10 = MEMORY[0x277D84958];
          v9 = &protocol witness table for Int16;
          break;
        case 2:
          v10 = MEMORY[0x277D849A8];
          v9 = &protocol witness table for Int32;
          break;
        case 3:
          v10 = MEMORY[0x277D83B88];
          v9 = &protocol witness table for Int;
          break;
        case 4:
          v10 = MEMORY[0x277D84B78];
          v9 = &protocol witness table for UInt8;
          break;
        case 5:
          v10 = MEMORY[0x277D84C58];
          v9 = &protocol witness table for UInt16;
          break;
        case 6:
          v10 = MEMORY[0x277D84CC0];
          v9 = &protocol witness table for UInt32;
          break;
        case 7:
          v10 = MEMORY[0x277D84D38];
          v9 = &protocol witness table for UInt64;
          break;
        case 8:
          v10 = MEMORY[0x277D84DC8];
          v9 = &protocol witness table for Float16;
          break;
        case 9:
          v9 = sub_25BB18AFC();
          v10 = &type metadata for BFloat16;
          break;
        case 0xA:
          v10 = MEMORY[0x277D83A90];
          v9 = &protocol witness table for Float;
          break;
        case 0xB:
          v10 = MEMORY[0x277D839F8];
          v9 = &protocol witness table for Double;
          break;
        case 0xC:
          v10 = MEMORY[0x277D839B0];
          v9 = &protocol witness table for Bool;
          break;
        default:
          break;
      }

      if (!sub_25BAC1C50(v10, v9))
      {
        goto LABEL_23;
      }

      v11 = *(v8 + 16);

      sub_25BCB723C();
      v12 = *(v4 + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      v13 = *(v8 + 16);
      v14 = sub_25BAC4018();
      v15 = *(v4 + 16);
      if (v15 >= *(v4 + 24) >> 1)
      {
        sub_25BAC3FD4();
      }

      *(v4 + 16) = v15 + 1;
      *(v4 + 8 * v15 + 32) = v14;
      if (v6 == v7)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    sub_25BCB74CC();
    __break(1u);
    JUMPOUT(0x25BAC3F4CLL);
  }

LABEL_21:

  v19[2] = v4;
  v19[3] = sub_25BAC4034(v4);
  v16 = v19[5];
  v19[5] = a2;

  return v19;
}

unint64_t sub_25BAC3F80()
{
  result = qword_28154F210;
  if (!qword_28154F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F210);
  }

  return result;
}

void sub_25BAC3FD4()
{
  v1 = *v0;
  sub_25BAA2138();
  *v0 = v2;
}

uint64_t sub_25BAC4018()
{
  if (*(v0 + 16))
  {
    return *(v0 + 16);
  }

  result = v0;
  *(v0 + 16) = v0;
  return result;
}

uint64_t sub_25BAC4034(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_48_1(a1);
  result = MEMORY[0x25F877220](v2, MEMORY[0x277D83690], MEMORY[0x277D83698]);
  v9 = result;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v1 + 16))
    {
      v6 = *(v1 + 8 * v5++ + 32);
      result = sub_25BAC40D8(&v8, v6);
      if (v4 == v5)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = result;

    return v7;
  }

  return result;
}

BOOL sub_25BAC40D8(uint64_t *a1, uint64_t a2)
{
  v5 = v2;
  v8 = *v2;
  v9 = *(v8 + 40);
  sub_25BCB79BC();
  v10 = *(v8 + 32);
  OUTLINED_FUNCTION_10_40();
  while (1)
  {
    OUTLINED_FUNCTION_26_28(v11, v12);
    if (v13)
    {
      v14 = *v5;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_49_17();
      sub_25BAC4188(a2, v3, v15);
      OUTLINED_FUNCTION_48_16(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
      goto LABEL_7;
    }

    if (*(*(v8 + 48) + 8 * v3) == a2)
    {
      break;
    }

    v11 = v3 + 1;
  }

  a2 = *(*(v8 + 48) + 8 * v3);
LABEL_7:
  result = v4 == 0;
  *a1 = a2;
  return result;
}

void sub_25BAC4188(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BAD4418(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_25BAD2634(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      v14 = sub_25BCB79BC();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_25BC4AD1C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_25BAC42B0()
{
  v0 = sub_25BAB3058();
  if (v0 && (Class = object_getClass(v0), swift_unknownObjectRelease(), Class == _TtC14NeuralNetworks16TrackedOperation))
  {
    v3 = sub_25BAC44E4();
    MEMORY[0x25F876C90](v3);

    MEMORY[0x25F876C90](95, 0xE100000000000000);
    sub_25BAC4018();
    sub_25BCB73CC();

    return 0;
  }

  else
  {
    v2 = sub_25BAC44E4();
  }

  return v2;
}

uint64_t sub_25BAC43A4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;

  v4 = sub_25BAC42B0();
  v6 = v5;
  swift_beginAccess();
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  if (v8 && (v9 = sub_25BA9266C(v4, v6), (v10 & 1) != 0))
  {
    v11 = *(*(v7 + 56) + 8 * v9);
    swift_endAccess();

    static Tensor.+ infix(_:_:)();
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();

  v12 = *(v2 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + 32);
  sub_25BAC4594();
  *(v2 + 32) = v14;

  swift_endAccess();
}

uint64_t sub_25BAC44E4()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  sub_25BA9323C(v0 + 40, v6);
  if (v8)
  {
    if (v8 != 1)
    {
      v2 = v6[2];
      swift_unknownObjectRelease();
      return v2;
    }

    swift_unknownObjectRelease();
    v1 = &v7;
  }

  else
  {
    v1 = v6;
  }

  sub_25BA9BE3C(v1, v4);
  v2 = v5;
  sub_25BCB617C();
  sub_25BA977E0(v4);
  return v2;
}

uint64_t sub_25BAC4594()
{
  OUTLINED_FUNCTION_40_17();
  v4 = OUTLINED_FUNCTION_0_66(v2, v3);
  v6 = sub_25BA9266C(v4, v5);
  OUTLINED_FUNCTION_1_56(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6700, &qword_25BCCBEF0);
  v9 = OUTLINED_FUNCTION_10_33();
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v13, v14);
    OUTLINED_FUNCTION_4_50();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_13_35(v9, v10, v11, v12, *v0);
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_37_17();

    return sub_25BCB617C();
  }
}

uint64_t OUTLINED_FUNCTION_184@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

void sub_25BAC4690(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_11_36(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38_17(v6, v10);
  }
}

uint64_t sub_25BAC46D8(uint64_t a1)
{
  type metadata accessor for BackpropQueue.Node();
  OUTLINED_FUNCTION_1_2();
  result = swift_allocObject();
  v4 = result;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a1;
  v5 = *(v1 + 16);
  if (!v5 || (v6 = *(v1 + 24)) == 0)
  {
    *(v1 + 16) = result;

    v14 = *(v1 + 24);
    *(v1 + 24) = v4;
LABEL_20:

    return 1;
  }

  v7 = *(*(v6 + 16) + 24);
  v8 = *(a1 + 24);
  if (v7 >= v8)
  {
    v9 = *(a1 + 24);
  }

  else
  {
    v9 = *(*(v6 + 16) + 24);
  }

  if (v7 <= v8)
  {
    v7 = *(a1 + 24);
  }

  v10 = v7 - v9;
  if (v7 < v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *(*(v5 + 16) + 24);
    if (v11 >= v8)
    {
      v12 = *(a1 + 24);
    }

    else
    {
      v12 = *(*(v5 + 16) + 24);
    }

    if (v11 > v8)
    {
      v8 = *(*(v5 + 16) + 24);
    }

    v13 = v8 - v12;
    if (v8 >= v12)
    {

      if (v10 >= v13)
      {
        sub_25BAC70CC(v4, v5, v6);
      }

      else
      {
        sub_25BAC9950(v4, v5, v6);
      }

      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAC481C(uint64_t a1)
{
  v2 = v1;
  v3 = *(*a1 + 16);
  OUTLINED_FUNCTION_3_48();
  swift_weakAssign();
  OUTLINED_FUNCTION_0_69();
  sub_25BAC4888();
  v4 = OUTLINED_FUNCTION_2_60();
  OUTLINED_FUNCTION_1_58(v4, v5, v6);
  *(v2 + 24) = v2 + 24;
  return swift_endAccess();
}

uint64_t sub_25BAC48B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BAC4928()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (v0 + 16);
  if (v1)
  {
    if (v1 == v2)
    {
      *v3 = 0;
      v3[1] = 0;
      goto LABEL_9;
    }

    if (!v2)
    {
      return 0;
    }

LABEL_7:
    *v3 = *(v2 + 32);

    if (!v5)
    {
LABEL_10:
      v4 = *(v2 + 16);

      return v4;
    }

    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  v4 = 0;
  *v3 = 0;
  v3[1] = 0;
  return v4;
}

uint64_t sub_25BAC49BC()
{
  sub_25BAC49EC();
  OUTLINED_FUNCTION_1_2();

  return swift_deallocClassInstance();
}

void *sub_25BAC49EC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_25BAC4A24()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25BCB617C();
  return v1;
}

void sub_25BAC4A64()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v22 = v7;
  v8 = *v0;
  v9 = *(*v0 + 40);
  sub_25BCB79CC();
  sub_25BCB625C();
  v10 = sub_25BCB7A3C();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = v14 + 24 * v12;
      if (*v15 == v6)
      {
        v16 = *(v15 + 8) == v4 && *(v15 + 16) == v2;
        if (v16 || (sub_25BCB789C() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v19 = *(v8 + 48) + 24 * v12;
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
    *v22 = *v19;
    *(v22 + 8) = v21;
    *(v22 + 16) = v20;
    sub_25BCB617C();
  }

  else
  {
LABEL_10:
    v17 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v0;
    sub_25BCB617C();
    sub_25BAC4E18(v6, v4, v2, v12, isUniquelyReferenced_nonNull_native);
    *v0 = v23;
    *v22 = v6;
    *(v22 + 8) = v4;
    *(v22 + 16) = v2;
  }

  OUTLINED_FUNCTION_79();
}

uint64_t sub_25BAC4BD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6978, &qword_25BCCE4A8);
  result = sub_25BCB70CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v6 + 40);
        sub_25BCB79CC();
        sub_25BCB617C();
        sub_25BCB625C();
        result = sub_25BCB7A3C();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 24 * v25;
        *v30 = v18;
        *(v30 + 8) = v19;
        *(v30 + 16) = v20;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_25BAC4E18(int a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_25BAC5704(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_25BC4ADD4();
      goto LABEL_17;
    }

    sub_25BAC4BD0(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_25BCB79CC();
  sub_25BCB625C();
  v15 = sub_25BCB7A3C();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a4 = v15 & ~v17;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v18 = ~v17;
    v19 = *(v13 + 48);
    do
    {
      v20 = v19 + 24 * a4;
      if (*v20 == a1)
      {
        v21 = *(v20 + 8) == a2 && *(v20 + 16) == a3;
        if (v21 || (sub_25BCB789C() & 1) != 0)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v18;
    }

    while (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = a1;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_20:
  sub_25BCB794C();
  __break(1u);
}

uint64_t sub_25BAC4FC0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = OUTLINED_FUNCTION_24_1();
  sub_25BA9D8C4(v3);
  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BAC4FEC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *(a2 + 8);
  v34 = *(v4 + 40);
  v5 = *(v34(ObjectType, v4) + 16);

  v41 = v5;
  if (!v5)
  {
    v37 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_24:
    v32 = *(v34(ObjectType, v4) + 16);

    if (v37 >= v32)
    {

      return 0;
    }

    return v8;
  }

  v6 = 0;
  v7 = 0;
  v37 = 0;
  v40 = *(a2 + 32);
  v8 = MEMORY[0x277D84F90];
  v33 = v4;
  v35 = a2;
  while ((v40(v7, ObjectType, a2) & 1) == 0)
  {
LABEL_21:
    ++v7;
    v6 += 16;
    if (v41 == v7)
    {
      goto LABEL_24;
    }
  }

  v9 = (*(v4 + 72))(v7, ObjectType, v4);
  v11 = v10;
  swift_beginAccess();
  v12 = *(v36 + 32);
  v38 = v9;
  v39 = v11;
  if (*(v12 + 16))
  {
    v13 = sub_25BA9266C(v9, v11);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      swift_endAccess();

LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = *(v8 + 16);
        sub_25BAC5544();
        v8 = v30;
      }

      v26 = *(v8 + 16);
      v27 = v39;
      if (v26 >= *(v8 + 24) >> 1)
      {
        sub_25BAC5544();
        v27 = v39;
        v8 = v31;
      }

      *(v8 + 16) = v26 + 1;
      v28 = (v8 + 24 * v26);
      v28[4] = v15;
      v28[5] = v38;
      v28[6] = v27;
      a2 = v35;
      goto LABEL_21;
    }
  }

  result = swift_endAccess();
  if (!__OFADD__(v37, 1))
  {
    result = v34(ObjectType, v4);
    if (v7 >= *(result + 16))
    {
      goto LABEL_28;
    }

    ++v37;
    v17 = *(result + v6 + 32);
    v18 = *(result + v6 + 40);
    sub_25BCB617C();

    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_25BAA51C8(v50, v49);
    sub_25BAA51C8(v49, &v43);
    if (*(&v44 + 1))
    {
      v47[0] = v43;
      v47[1] = v44;
      v47[2] = v45;
      v48 = v46;
      sub_25BCB617C();
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BCB617C();
      sub_25BAA49B8();
      sub_25BAA4A5C(v42);

      sub_25BAA51C8(v42, v47);
      sub_25BAA4AF4(v42);
      if (*(&v44 + 1))
      {
        sub_25BA9C2C8(&v43);
      }
    }

    v19 = ObjectType;
    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    v42[0] = v17;
    LOBYTE(v43) = v18;
    sub_25BC72C64(v42, &v43, v47, qword_281557400);
    v21 = v20;

    v22 = type metadata accessor for TensorRepresentation();
    sub_25BAA51C8(v47, v42);
    v23 = swift_getObjectType();
    v24 = swift_unknownObjectRetain();
    LOBYTE(v43) = 1;
    v25 = sub_25BC5FAD0(v24, v42, 0x100000000uLL, v22, v23, v21);
    type metadata accessor for TensorHandle();
    v15 = swift_allocObject();
    *(v15 + 16) = v25;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(v47);
    sub_25BA9C2C8(v49);
    sub_25BA9C2C8(v50);
    ObjectType = v19;
    v4 = v33;
    goto LABEL_16;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_25BAC5498()
{
  OUTLINED_FUNCTION_107_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_52(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_87(v9, v10, v11, v12, v13, v14);
      v15 = OUTLINED_FUNCTION_121();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_111(v16);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_54_0();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAC5590()
{
  v1 = *v0;
  sub_25BAA2064();
  *v0 = v2;
}

uint64_t sub_25BAC55DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v4 = *(result + 32);
      v5 = *(a2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      v9[0] = a3;
      v9[1] = v4;

      Tensor.reshaped(to:)(&v10, v9);
      *(v6 + 32) = v10;
      v7 = *(v5 + 16);

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v8;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAC56BC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BAC5704(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6978, &qword_25BCCE4A8);
  result = sub_25BCB70CC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_25BC42288(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v6 + 40);
    sub_25BCB79CC();
    sub_25BCB625C();
    result = sub_25BCB7A3C();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 24 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25BAC5974()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BAC59B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *((*(a3 + 40))(a2, a3) + 16);

  (*(a3 + 16))(a2, a3);
  if (v5 == 1)
  {
    return v6;
  }

  v8 = v6;
  OUTLINED_FUNCTION_11_4();
  sub_25BCB77FC();
  OUTLINED_FUNCTION_28_0();

  return v8;
}

uint64_t sub_25BAC5A94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v6 = *(result + 32);
      v7 = *(a2 + 32);
      v8 = *(*(v6 + 16) + 160);
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      v17 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE50;
      *(inited + 32) = a3;
      v16 = v8;
      sub_25BAA51C8(v19, v15);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v17, inited, &v16, v15, &v18);
      sub_25BA9C2C8(v19);
      v10 = v18;
      *&v19[0] = v6;
      v15[0] = a4;
      Tensor.broadcasted(to:)(v15);
      v15[0] = v10;
      static Tensor./ infix(_:_:)();

      v11 = *&v19[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_25BCBAE50;
      *(v12 + 32) = v11;
      v13 = *(v7 + 16);

      *(v12 + 40) = sub_25BAC42B0();
      *(v12 + 48) = v14;

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BAC5C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v31 = OUTLINED_FUNCTION_16_48(a1, a2, a3, a4, a5, a6);
  v10 = OUTLINED_FUNCTION_2(v31);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_60();
  if (v33)
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if ((OUTLINED_FUNCTION_53_13() & 1) != 0 && v35 >= 3)
    {
      type metadata accessor for SharedMetalDevice();
      v13 = swift_unknownObjectRetain();
      sub_25BBC97E0(v13);
      if (!v9)
      {
        OUTLINED_FUNCTION_32_26();
        if (v25)
        {
          OUTLINED_FUNCTION_22_34();
          while (1)
          {
            OUTLINED_FUNCTION_3_59();
            if (!v15)
            {
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_44_18();
            if (v15)
            {
              OUTLINED_FUNCTION_33_27();
              if (v6 > 0)
              {
                goto LABEL_29;
              }

              goto LABEL_8;
            }
          }
        }

        OUTLINED_FUNCTION_33_27();
LABEL_29:
        OUTLINED_FUNCTION_50_18();
        OUTLINED_FUNCTION_39_24();
        OUTLINED_FUNCTION_34_21();
        sub_25BCB617C();
        sub_25BCB617C();
        OUTLINED_FUNCTION_6_58();
        sub_25BC29D2C(v26, v27, v28, v29, v30, v36);
LABEL_19:
        OUTLINED_FUNCTION_30_28();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_27_31();
        return;
      }

      OUTLINED_FUNCTION_33_27();
    }

    else
    {
      sub_25BABF0A8(v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_8();
    swift_bridgeObjectRetain_n();
    sub_25BA9C2C8(v32);
  }

LABEL_8:
  if ((v8 - 1) <= 0xA)
  {
    v14 = qword_25BCD3398[(v8 - 1)];
  }

  if (!*(v7 + 16))
  {
LABEL_16:
    type metadata accessor for NativeTensorStorage();
    OUTLINED_FUNCTION_47_19();
    if (!v15)
    {
      goto LABEL_31;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_15_29();
    sub_25BCB6F1C();
    OUTLINED_FUNCTION_21_35();
    v16 = *MEMORY[0x277D84660];
    v17 = OUTLINED_FUNCTION_7_58();
    v18(v17);
    v19 = OUTLINED_FUNCTION_20_35();
    sub_25BAC5EF8(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_46_22();
    v24(v23);
    OUTLINED_FUNCTION_10_48();
    OUTLINED_FUNCTION_17_26();

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_34();
  while (1)
  {
    OUTLINED_FUNCTION_3_59();
    if (!v15)
    {
      break;
    }

    OUTLINED_FUNCTION_44_18();
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BAC5EF8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  OUTLINED_FUNCTION_31_7(a1, a2, a3, a4);
  if (v8 == 3)
  {
    if (v7)
    {
      v9 = (v6 - v7) / 8;
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v5 + 16) >> 60)
    {
      __break(1u);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42_5();
    sub_25BAC5FB4(v10, v11, v12, v13, v14, v15, 3);
    if (!v4)
    {
      return;
    }

    __break(1u);
  }

  v9 = 0;
LABEL_8:
  v16 = *(v5 + 16);
  if (!v16)
  {
    return;
  }

  if (v9 < v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  memcpy(v7, (v5 + 32), 8 * v16);
}

uint64_t sub_25BAC5FB4(const float *a1, uint64_t a2, float *a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7)
{
  v20 = a4;
  v13 = sub_25BCB783C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a7;
  v21 = a5;
  v18 = *(a6 + 16);
  (*(v14 + 104))(v17, *MEMORY[0x277D84660], v13);
  sub_25BAA83F4(a1, a2, &v22, a3, v20, &v21);
  return (*(v14 + 8))(v17, v13);
}

float sub_25BAC6100(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_17(a1);
  v9 = OUTLINED_FUNCTION_21_11(v1, v2, v3, v4, v5, v6, v7, v8, v20);
  v11 = v10(v9);
  return OUTLINED_FUNCTION_39_7(v11, v12, v13, v14, v15, v16, v17, v18, v21, *&v22, *(&v22 + 1));
}

float sub_25BAC6148@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

uint64_t Tensor.broadcasted(to:)(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_42_13(a1);
  if (sub_25BAB5C48(v5, v6))
  {
  }

  else
  {
    v23[0] = v4;
    v8 = *(v2 + 152);
    OUTLINED_FUNCTION_22();
    *(swift_allocObject() + 16) = v8;

    sub_25BCB617C();
    sub_25BCB617C();
    v9 = sub_25BAAF074(sub_25BAC7AE0);
    v11 = v10;

    v25[55] = 0;
    OUTLINED_FUNCTION_46_12("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
    v26 = xmmword_25BCCB470;
    OUTLINED_FUNCTION_81_5(v12);
    type metadata accessor for BroadcastOperation();
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_3();
    sub_25BAC6364(v13, v14, v15, v2, v16, v17, v9, v11);
    v18 = OUTLINED_FUNCTION_25();
    sub_25BAA51C8(v18, v25);
    sub_25BAA51C8(v25, v24);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_15_8();
    swift_retain_n();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_29_19();
    sub_25BAA4A5C(v19);

    v3 = v23[10];

    sub_25BAA4AF4(v23);
    sub_25BAA49B8();
    OUTLINED_FUNCTION_29_19();
    sub_25BAA4A5C(v20);

    OUTLINED_FUNCTION_21_18();
    sub_25BAA4AF4(v23);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    swift_allocObject();
    OUTLINED_FUNCTION_7_36();
    v21 = OUTLINED_FUNCTION_6_42();
    sub_25BAC6414(v21);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_21_25(v22);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_15_8();

    result = sub_25BA9C2C8(v25);
  }

  *v1 = v3;
  return result;
}

uint64_t sub_25BAC6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v13 = *a5;
  if (!a3)
  {
    v14 = OUTLINED_FUNCTION_6_5();
    a1 = sub_25BAA5EA0(v14, v15);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v8 + 40) = a4;
  *(v8 + 48) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v16 = OUTLINED_FUNCTION_31();
  *(v16 + 16) = xmmword_25BCBAE50;
  v17 = *(a4 + 160);
  *(v16 + 32) = v13;
  *(v16 + 40) = v17;
  *(v8 + 56) = v16;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 106) = *(a6 + 42);
  v18 = a6[2];
  *(v8 + 80) = a6[1];
  *(v8 + 96) = v18;
  *(v8 + 64) = *a6;
  sub_25BCB617C();
  return v8;
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = *a1;

  return Parameter.wrappedValue.setter(&a10);
}

__n128 OUTLINED_FUNCTION_94_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21)
{
  result = a21;
  a1[1] = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_4(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

void OUTLINED_FUNCTION_94_5()
{

  Tensor.cast(to:roundingRule:)();
}

uint64_t OUTLINED_FUNCTION_94_6@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + 16 * v1;
  result = *(v2 + 32);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_135(uint64_t result)
{
  v2[6] = result;
  v2[7] = 121;
  v2[8] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_135_0()
{
  *(v0 + 288) = *(v0 + 160);

  return sub_25BABEF40(v0 + 240, v0 + 56);
}

void OUTLINED_FUNCTION_135_1()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_193@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_193_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_25BA9BD18(v16, a2, va);
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_86_3()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_86_6(uint64_t result)
{
  *(v1 + 8) = result;
  v2 = *(result + 32);
  return result;
}

uint64_t sub_25BAC6844()
{
  if (*(v0[7] + 16) == 1)
  {
    v1 = v0[3];
    v2 = v0[4];
    sub_25BCB617C();
  }

  else
  {
    v4 = v0[3];
    v5 = v0[4];
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();
  }

  return OUTLINED_FUNCTION_24_1();
}

uint64_t OUTLINED_FUNCTION_100()
{
  v2 = *(v0 + 40);

  return sub_25BCB79CC();
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_25BAA48D4(v12 - 224, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_100_5@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v1;
  v6 = *(v3 + 32);
  v4 = *(v3 + 40);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_114_0(uint64_t a1)
{
  *(v1 + 320) = 1;
  *(v1 + 328) = a1;

  return Array<A>.resolve(descriptor:)((v1 + 320), v2);
}

uint64_t OUTLINED_FUNCTION_114_2()
{

  return sub_25BCB614C();
}

double OUTLINED_FUNCTION_114_3()
{
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_114_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a27 = v29;
  a25 = v27;

  return sub_25BAA0E58(&a22, v28 + 40);
}

uint64_t OUTLINED_FUNCTION_196_0()
{

  return sub_25BCB6FAC();
}

void static Tensor./ infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = OUTLINED_FUNCTION_119_4();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_30();
  do
  {
    if (v8 == 4)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v9);
  v10 = 0;
  do
  {
    if (v10 == 4)
    {
      v57 = OUTLINED_FUNCTION_171_0();
      v58 = v50;
      v49 = xmmword_25BCC6530;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v9);
  OUTLINED_FUNCTION_98_6(v11);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  if (!v60)
  {
    OUTLINED_FUNCTION_54_10(v2[1].Kind);
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v51, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_14_30();
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_207_1();
  OUTLINED_FUNCTION_35_16(v12, v13);
  v14();
  v15 = OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_53_11(v15, v16);
  v17();
  OUTLINED_FUNCTION_195_1();
  if (!v9)
  {
    OUTLINED_FUNCTION_128();
    if (!(!v9 & v19))
    {
      OUTLINED_FUNCTION_127_0(v18);
      if (!v9)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_203_0();
      v52 = OUTLINED_FUNCTION_101_5();
      v57 = v60;
      v58 = v0;
      OUTLINED_FUNCTION_52_10(v52, v53, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v54, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_14_30();
LABEL_18:
      sub_25BADDD28();
    }

    __break(1u);
LABEL_15:
    v57 = OUTLINED_FUNCTION_172_1();
    v58 = v48;
    v49 = xmmword_25BCC6520;
LABEL_17:
    OUTLINED_FUNCTION_12_32(v49);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_18;
  }

LABEL_13:
  v57 = v2;
  v20 = OUTLINED_FUNCTION_103_5();
  LOBYTE(v60) = v3;
  v21 = OUTLINED_FUNCTION_46_14(v20, *MEMORY[0x277D84660]);
  v22(v21);
  OUTLINED_FUNCTION_62_6();
  v23 = OUTLINED_FUNCTION_126_1();
  v1(v23);

  OUTLINED_FUNCTION_57_6();
  v24 = OUTLINED_FUNCTION_66_7();
  v25(v24);
  OUTLINED_FUNCTION_62_6();
  v26 = OUTLINED_FUNCTION_25_12();
  v1(v26);

  OUTLINED_FUNCTION_90_4();

  v27 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v27);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v61 = xmmword_25BCCB470;
  OUTLINED_FUNCTION_77_5(v28);
  OUTLINED_FUNCTION_161_1();
  v29 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_108_5(v29, v30, v31, 3, v32, v33, v34, v35, v55, v56);
  OUTLINED_FUNCTION_137_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v36 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_5(v36, xmmword_25BCBAE70);

  v37 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v37, v38, v39, v40, 356, v41);
  swift_setDeallocating();
  sub_25BAB3FD0();
  OUTLINED_FUNCTION_175_1();
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_176_1();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_174_1();
  sub_25BAA4AF4(&v57);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_173_1();
  sub_25BAA4AF4(&v57);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v57) = v42;
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_64_8(v43, v44, v45, v46);
  OUTLINED_FUNCTION_107_6();
  v47 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v47);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(&v59);
  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAC6E28(uint64_t result, uint64_t a2, char a3)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v4 = *(result + 32);
      v5 = *(a2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;

      v15 = OUTLINED_FUNCTION_30_19(v7, v8, v9, v10, v11, v12, v13, v14, v18, a3);
      Tensor.broadcasted(to:)(v15);
      *(v6 + 32) = v19;
      v16 = *(v5 + 16);

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v17;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAC6F10()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BAC6F48(uint64_t result, void *a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2[2];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v21[11] = v2;
    v21[12] = v3;
    v5 = *(result + 32);
    v7 = a2[4];
    v19 = a2[5];
    v6 = v19;
    v20 = v5;

    static Tensor.* infix(_:_:)(v21, &v20, &v19);
    v8 = v21[0];
    v9 = *(v7 + 16);

    v10 = sub_25BAC42B0();
    v12 = v11;
    v19 = v7;
    v20 = v5;
    static Tensor.* infix(_:_:)(v21, &v20, &v19);
    v13 = v21[0];
    v14 = *(v6 + 16);

    v15 = sub_25BAC42B0();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25BCBAE70;
    *(v18 + 32) = v8;
    *(v18 + 40) = v10;
    *(v18 + 48) = v12;
    *(v18 + 56) = v13;
    *(v18 + 64) = v15;
    *(v18 + 72) = v17;

    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BAC70B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  else
  {
    return sub_25BCB789C();
  }
}

uint64_t sub_25BAC70CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  swift_retain_n();
  while (1)
  {
    v7 = *(*(a2 + 16) + 24);

    v8 = *(v6 + 24);
    if (v8 >= v7)
    {
      break;
    }

    v9 = *(a2 + 32);
    if (!v9)
    {
      break;
    }

    v10 = *(a2 + 32);
    swift_retain_n();

    a2 = v9;
  }

  if (a2 == a3 && v8 < *(*(a3 + 16) + 24))
  {
    sub_25BAC9A20(a1, a3);
  }

  else
  {
    sub_25BAC719C(a1, a2);
  }
}