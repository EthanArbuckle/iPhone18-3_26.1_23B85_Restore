uint64_t sub_22C46B464(uint64_t a1)
{
  v2 = sub_22C46BBB4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C46B4BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22C46BC08;

  return sub_22C46A63C(a1, a2);
}

unint64_t sub_22C46B568()
{
  result = qword_27D9BC790;
  if (!qword_27D9BC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC790);
  }

  return result;
}

uint64_t sub_22C46B5BC()
{
  sub_22C36FB38();
  v2 = *(v0 + 16);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = sub_22C372190(v3);

  return sub_22C4692E8(v5, v6, v7);
}

uint64_t sub_22C46B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 == a3 && a2 == a4;
  if (v4 || (sub_22C36A724(), (sub_22C90B4FC() & 1) != 0))
  {

    v5 = sub_22C36A724();
    MEMORY[0x2318B7850](v5);
  }

  else
  {
  }

  return sub_22C36A724();
}

uint64_t sub_22C46B6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C46B748()
{
  sub_22C36FB38();
  v2 = *(v0 + 16);
  swift_task_alloc();
  sub_22C36CC90();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = sub_22C372190(v3);

  return sub_22C46ABE0(v5, v6, v7);
}

unint64_t sub_22C46B7E0()
{
  result = qword_27D9BC7A0;
  if (!qword_27D9BC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7A0);
  }

  return result;
}

uint64_t sub_22C46B854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C46B89C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C46B904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22C46B96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnumeration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C46B9D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22C46BA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnumeration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_22C46BAB0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C46BB60()
{
  result = qword_27D9BC7B0;
  if (!qword_27D9BC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7B0);
  }

  return result;
}

unint64_t sub_22C46BBB4()
{
  result = qword_27D9BC7B8;
  if (!qword_27D9BC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7B8);
  }

  return result;
}

uint64_t sub_22C46BC10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_22C3D32C8(a1, a2, a3);
}

void sub_22C46BC48(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 2u);
}

uint64_t sub_22C46BC60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFSUB__(v7, result);
  v9 = v7 - result;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_22C4726CC(a4, v9 & ~(v9 >> 63), a5 >> 1);
  if (v10)
  {
    v11 = v6;
  }

  else
  {
    v11 = result;
  }

  if (v11 >= a4)
  {
    sub_22C37F754();
    sub_22C3E1F20(v12);
    sub_22C3716F4();
    swift_unknownObjectRelease();
    return sub_22C38B418();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22C46BD44(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  sub_22C375E34();
  result = sub_22C90ACBC();
  if (__OFSUB__(result, v5))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_22C90AC9C();
  if (v6)
  {
    v7 = a3;
  }

  else
  {
    v7 = result;
  }

  if (v7 >> 14 >= a2 >> 14)
  {
    sub_22C375E34();
    sub_22C90ACCC();
    sub_22C3716F4();

    return sub_22C38B418();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22C46BDFC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = sub_22C90A30C();
    if (!__OFSUB__(result, v1))
    {
      sub_22C90A33C();
      sub_22C90A4AC();
      sub_22C3716F4();

      return sub_22C38B418();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C46BF00(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, (v5 - result) & ~((v5 - result) >> 63), v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      sub_22C3716F4();

      return sub_22C38B418();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C46BF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v51 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v6 = v51;
    v7 = (v4 + 40);
    v8 = v5;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v12 = v51[2];
      v11 = v51[3];

      if (v12 >= v11 >> 1)
      {
        sub_22C3B5E2C();
      }

      v51[2] = v12 + 1;
      v13 = &v51[2 * v12];
      v13[4] = v10;
      v13[5] = v9;
      v7 += 4;
      --v8;
    }

    while (v8);
  }

  sub_22C7F48EC(v6);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  v49 = v14;
  if (v15)
  {
    v17 = v14;
    v50 = v4;
    v52 = MEMORY[0x277D84F90];
    sub_22C4727BC();
    sub_22C3B63F4();
    v18 = 0;
    v16 = v52;
    v19 = (v17 + 40);
    do
    {
      if (v18 >= *(v49 + 16))
      {
        goto LABEL_37;
      }

      v21 = *(v19 - 1);
      v20 = *v19;
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v20;
      v24 = *(v52 + 16);
      v23 = *(v52 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_22C36ECC0();
        sub_22C3B63F4();
      }

      ++v18;
      *(v52 + 16) = v24 + 1;
      *(v52 + 8 * v24 + 32) = v22 | 0x4000000000000000;
      v19 += 2;
    }

    while (v15 != v18);
    v4 = v50;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v16;

  v25 = (v4 + 56);
  for (i = MEMORY[0x277D84F90]; v5; --v5)
  {
    v28 = *(v25 - 1);
    v27 = *v25;
    v29 = *(v25 - 3);
    v30 = *(v25 - 2);
    sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    v32 = (inited + 16);
    *(inited + 32) = v29;
    *(inited + 40) = v30;
    *(inited + 48) = v28;
    v33 = *(v27 + 16);

    if (v33 && (sub_22C5902A0(), v41 = v40, v32 = (v40 + 16), *(v27 + 16)))
    {
      if ((*(v40 + 24) >> 1) - *(v40 + 16) < v33)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();

      v42 = *(v41 + 16);
      v34 = v42 + v33;
      if (__OFADD__(v42, v33))
      {
        goto LABEL_41;
      }

      *v32 = v34;
    }

    else
    {

      if (v33)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
      }

      v34 = *v32;
    }

    v35 = *(i + 16);
    if (__OFADD__(v35, v34))
    {
      goto LABEL_35;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v35 + v34 > *(i + 24) >> 1)
    {
      sub_22C5902A0();
      i = v36;
    }

    if (*v32)
    {
      if ((*(i + 24) >> 1) - *(i + 16) < v34)
      {
        goto LABEL_38;
      }

      swift_arrayInitWithCopy();

      if (v34)
      {
        v37 = *(i + 16);
        v38 = __OFADD__(v37, v34);
        v39 = v37 + v34;
        if (v38)
        {
          goto LABEL_39;
        }

        *(i + 16) = v39;
      }
    }

    else
    {

      if (v34)
      {
        goto LABEL_36;
      }
    }

    v25 += 4;
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v45 | 0x8000000000000000;
  a4[3] = i;
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BNFGrammarRule.init(identifier:component:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

uint64_t RootedBNFGrammar.rules.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C90F800;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  v7 = v5;

  sub_22C3CC3D8(v3);
  return v7;
}

__n128 RootedBNFGrammar.init(rootRule:subRules:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  v4 = a1[1].n128_u64[0];
  *a3 = *a1;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = a2;
  return result;
}

void RootedBNFGrammar.description.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *v0;
  v4 = v1;
  v5 = v2;
  BNFGrammarRenderer.renderGrammar(grammar:)(&v3);
}

void BNFGrammarRenderer.renderComponent(component:)(uint64_t *a1)
{
  v1 = *a1;
  switch(*a1 >> 62)
  {
    case 1uLL:
      v25 = v1 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);

      v28 = sub_22C36BAFC();
      MEMORY[0x2318B7850](v28);

      MEMORY[0x2318B7850](62, 0xE100000000000000);
      return;
    case 2uLL:
      v5 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *(v5 + 16);
      v7 = MEMORY[0x277D84F90];
      if (!v6)
      {
        goto LABEL_18;
      }

      v32 = MEMORY[0x277D84F90];

      sub_22C4727BC();
      sub_22C3B5E2C();
      v8 = 0;
      v7 = v32;
      while (v8 < *(v5 + 16))
      {
        v31 = *(v5 + 8 * v8 + 32);
        v9 = BNFGrammarRenderer.renderComponent(component:)(&v31);
        v11 = v10;
        v32 = v7;
        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22C4727AC(v12);
          sub_22C3B5E2C();
          v7 = v32;
        }

        ++v8;
        *(v7 + 16) = v13 + 1;
        v14 = v7 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        if (v6 == v8)
        {

LABEL_18:
          v32 = v7;
          v29 = sub_22C37170C();
          sub_22C3A5908(v29, v30);
          sub_22C382638(&qword_28142F9F0);
          sub_22C90A04C();
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_23;
    case 3uLL:
      v15 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *(v15 + 16);
      v17 = MEMORY[0x277D84F90];
      if (!v16)
      {
        goto LABEL_19;
      }

      v32 = MEMORY[0x277D84F90];

      sub_22C3B5E2C();
      v18 = 0;
      v17 = v32;
      break;
    default:
      v2 = *(v1 + 16);
      v3 = *(v1 + 24);

      v4._countAndFlagsBits = sub_22C36BA00();
      BNFGrammarRenderer.renderTerminal(content:)(v4);
      goto LABEL_20;
  }

  do
  {
    if (v18 >= *(v15 + 16))
    {
LABEL_23:
      __break(1u);
      return;
    }

    v31 = *(v15 + 8 * v18 + 32);
    v19 = BNFGrammarRenderer.renderComponent(component:)(&v31);
    v21 = v20;
    v32 = v17;
    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_22C4727AC(v22);
      sub_22C36ECC0();
      sub_22C3B5E2C();
      v17 = v32;
    }

    ++v18;
    *(v17 + 16) = v23 + 1;
    v24 = v17 + 16 * v23;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
  }

  while (v16 != v18);

LABEL_19:
  sub_22C46FBF8(v17);
LABEL_20:
}

uint64_t static BNFGrammarRuleExpression.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(*a1 >> 62)
  {
    case 1uLL:
      if (v5 >> 62 != 1)
      {
        goto LABEL_17;
      }

      v10 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);
      v5 &= 0x3FFFFFFFFFFFFFFFuLL;
      goto LABEL_10;
    case 2uLL:
      if (v5 >> 62 != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    case 3uLL:
      if (v5 >> 62 != 3)
      {
        goto LABEL_17;
      }

LABEL_7:
      sub_22C4727CC(v5);

      v8 = sub_22C46E724(v2, v3);

      result = v8 & 1;
      break;
    default:
      if (v5 >> 62)
      {
LABEL_17:
        result = 0;
      }

      else
      {
        v6 = *(v4 + 16);
        v7 = *(v4 + 24);
LABEL_10:
        if (v6 == *(v5 + 16) && v7 == *(v5 + 24))
        {
          result = 1;
        }

        else
        {

          result = sub_22C90B4FC();
        }
      }

      break;
  }

  return result;
}

void sub_22C46C884()
{
  sub_22C36BA7C();
  sub_22C371718();
  v2 = type metadata accessor for ContextRule();
  v3 = sub_22C3885DC(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C379868();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v12 = (&v84 - v11);
  v13 = *(v1 + 16);
  if (v13 == *(v0 + 16) && v13 && v1 != v0)
  {
    sub_22C47278C(v10);
    v15 = v1 + v14;
    v16 = v0 + v14;
    v85 = *(v17 + 72);
    v86 = v2;
    v87 = v12;
    v88 = v8;
    do
    {
      sub_22C472588();
      sub_22C472588();
      v18 = *v12 == *v8 && v12[1] == v8[1];
      if (!v18 && (sub_22C90B4FC() & 1) == 0)
      {
LABEL_41:
        sub_22C472630();
        sub_22C472630();
        break;
      }

      v19 = *(v2 + 20);
      sub_22C90355C();
      sub_22C37FD24();
      sub_22C472684(&qword_281435778, v20);
      sub_22C36BAFC();
      sub_22C90A56C();
      sub_22C36BAFC();
      sub_22C90A56C();
      if (v92 == v90 && v93 == v91)
      {
      }

      else
      {
        v22 = sub_22C90B4FC();

        if ((v22 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v89 = v15;
      v23 = *(v2 + 24);
      v24 = (v12 + v23);
      v25 = *(v12 + v23);
      v26 = v24[1];
      v27 = v8;
      v29 = v24[2];
      v28 = v24[3];
      v30 = (v27 + v23);
      v31 = v30[1];
      v32 = v30[2];
      v33 = v30[3];
      if (v26)
      {
        if (!v31)
        {
          v64 = sub_22C36A878();
          sub_22C4722FC(v64, v65);
          sub_22C37F754();
          sub_22C4722FC(v66, v67);
          v68 = sub_22C36A878();
          sub_22C4722FC(v68, v69);

LABEL_38:
          v72 = sub_22C36A878();
          sub_22C472340(v72, v73);
          v74 = sub_22C472718();
LABEL_40:
          sub_22C472340(v74, v75);
          goto LABEL_41;
        }

        if (v25 != *v30 || v26 != v31)
        {
          v35 = v24[1];
          v36 = *v30;
          v37 = v30[1];
          if ((sub_22C90B4FC() & 1) == 0)
          {
            v76 = sub_22C36A878();
            sub_22C4722FC(v76, v77);
            v78 = sub_22C472718();
            sub_22C4722FC(v78, v79);
            v80 = sub_22C36A878();
            sub_22C4722FC(v80, v81);
            v82 = sub_22C472718();
            sub_22C472340(v82, v83);

            v74 = sub_22C36A878();
            goto LABEL_40;
          }
        }

        if (v29 != v32 || v28 != v33)
        {
          sub_22C37F754();
          HIDWORD(v84) = sub_22C90B4FC();
          v39 = sub_22C36A878();
          sub_22C4722FC(v39, v40);
          v41 = sub_22C472718();
          sub_22C4722FC(v41, v42);
          v43 = sub_22C36A878();
          sub_22C4722FC(v43, v44);
          v45 = sub_22C472718();
          sub_22C472340(v45, v46);

          v47 = sub_22C36A878();
          sub_22C472340(v47, v48);
          sub_22C37664C();
          v8 = v88;
          sub_22C472630();
          v12 = v87;
          sub_22C472630();
          v49 = v89;
          if ((v84 & 0x100000000) == 0)
          {
            break;
          }

          goto LABEL_34;
        }

        v54 = sub_22C36A878();
        sub_22C4722FC(v54, v55);
        v56 = sub_22C472828();
        sub_22C4722FC(v56, v57);
        v58 = sub_22C36A878();
        sub_22C4722FC(v58, v59);
        v60 = sub_22C472828();
        sub_22C472340(v60, v61);
      }

      else
      {
        v50 = v24[2];
        v51 = v24[3];
        sub_22C4722FC(v25, 0);
        if (v31)
        {
          v70 = sub_22C472718();
          sub_22C4722FC(v70, v71);
          goto LABEL_38;
        }

        sub_22C37F754();
        sub_22C4722FC(v52, v53);
      }

      v62 = sub_22C36A878();
      sub_22C472340(v62, v63);
      sub_22C37664C();
      v8 = v88;
      sub_22C472630();
      v12 = v87;
      sub_22C472630();
      v49 = v89;
LABEL_34:
      v2 = v86;
      v16 += v85;
      v15 = v49 + v85;
      --v13;
    }

    while (v13);
  }

  sub_22C36CC48();
}

uint64_t sub_22C46CCC8(uint64_t a1, uint64_t a2)
{
  sub_22C47279C(a1, a2);
  if (v12)
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 48)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v13 = v4 == v8 && v5 == v9;
      if (!v13 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      if (v6 != v10 || v7 != v11)
      {
        sub_22C47274C();
        if ((sub_22C90B4FC() & 1) == 0)
        {
          break;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_22C46CDD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C47279C(a1, a2);
  if (v7)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 40);
    for (i = (v4 + 40); ; i += 2)
    {
      v7 = *(v5 - 1) == *(i - 1) && *v5 == *i;
      if (!v7 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v5 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_22C46CEA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C374AAC(a1, a2);
  if (v19 && v2 && v3 != v4)
  {
    v5 = (v3 + 32);
    v6 = (v4 + 32);
    sub_22C38C358();
    v8 = v7 - 14;
    v21 = v7 - 2;
    do
    {
      v9 = *v6;
      v10 = v8;
      v11 = "REGULAR_EXPRESSION";
      switch(*v5)
      {
        case 1:
          v10 = v21;
          v11 = "OUTPUT_ENUM_SUCCESS";
          break;
        case 2:
          v10 = 0xD000000000000021;
          v11 = "OUTPUT_ENUM_ACTION_CONFIRMATION";
          break;
        case 3:
          sub_22C38C358();
          v10 = v13 + 1;
          v11 = "METER_NEEDS_VALUE";
          break;
        case 4:
          sub_22C38C358();
          v10 = v12 + 3;
          v11 = "METER_CONFIRMATION";
          break;
        case 5:
          v10 = 0xD000000000000021;
          v11 = "METER_DISAMBIGUATION";
          break;
        default:
          break;
      }

      v14 = v11 | 0x8000000000000000;
      v15 = v8;
      v16 = "REGULAR_EXPRESSION";
      switch(v9)
      {
        case 1:
          v15 = v21;
          v16 = "OUTPUT_ENUM_SUCCESS";
          break;
        case 2:
          v15 = 0xD000000000000021;
          v16 = "OUTPUT_ENUM_ACTION_CONFIRMATION";
          break;
        case 3:
          sub_22C47281C();
          v15 = v18 + 1;
          v16 = "METER_NEEDS_VALUE";
          break;
        case 4:
          sub_22C47281C();
          v15 = v17 + 3;
          v16 = "METER_CONFIRMATION";
          break;
        case 5:
          v15 = 0xD000000000000021;
          v16 = "METER_DISAMBIGUATION";
          break;
        default:
          break;
      }

      v19 = v10 == v15 && v14 == (v16 | 0x8000000000000000);
      if (v19)
      {
      }

      else
      {
        v20 = sub_22C90B4FC();

        if ((v20 & 1) == 0)
        {
          return;
        }
      }

      ++v5;
      ++v6;
      --v2;
    }

    while (v2);
  }
}

void sub_22C46D100()
{
  sub_22C36BA7C();
  v38 = v0;
  v39 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  v9 = sub_22C369824(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = *(v6 + 16);
  if (v20 == *(v4 + 16) && v20 && v6 != v4)
  {
    v21 = *(v11 + 80);
    sub_22C36BA94();
    v23 = v6 + v22;
    v24 = v4 + v22;
    v26 = *(v11 + 16);
    v25 = v11 + 16;
    v27 = (v25 - 8);
    v35 = *(v25 + 56);
    v36 = v26;
    while (1)
    {
      v28 = sub_22C37B9D0();
      v29 = v36;
      (v36)(v28);
      if (!v20)
      {
        break;
      }

      v30 = v25;
      v29(v16, v24, v8);
      sub_22C472684(v37, v38);
      v31 = sub_22C90A0BC();
      v32 = *v27;
      (*v27)(v16, v8);
      v32(v19, v8);
      if (v31)
      {
        v24 += v35;
        v23 += v35;
        v33 = v20-- == 1;
        v25 = v30;
        if (!v33)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_22C36CC48();
  }
}

uint64_t sub_22C46D2C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C374AAC(a1, a2);
  if (v9)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 48);
    for (i = (v4 + 48); ; i += 3)
    {
      v7 = *v5;
      v8 = *i;
      v9 = *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1);
      if (!v9)
      {
        v10 = *(v5 - 1);
        v11 = *(i - 1);
        if ((sub_22C90B4FC() & 1) == 0)
        {
          break;
        }
      }

      v14 = v8;
      v15 = v7;
      swift_retain_n();
      swift_retain_n();

      v12 = static BNFGrammarRuleExpression.== infix(_:_:)(&v15, &v14);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v5 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_22C46D424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v27 = sub_22C3885DC(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C379868();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  v37 = *(v25 + 16);
  if (v37 == *(v23 + 16) && v37 && v25 != v23)
  {
    sub_22C47278C(v34);
    v39 = v25 + v38;
    v40 = v23 + v38;
    v42 = *(v41 + 72);
    while (1)
    {
      sub_22C472588();
      sub_22C370018();
      sub_22C472588();
      sub_22C37170C();
      if ((sub_22C901F6C() & 1) == 0 || v36[*(v26 + 20)] != *(v32 + *(v26 + 20)))
      {
        break;
      }

      v43 = v36[*(v26 + 24)];
      sub_22C472630();
      v44 = *(v32 + *(v26 + 24));
      sub_22C472630();
      if (((v43 ^ v44) & 1) == 0)
      {
        v40 += v42;
        v39 += v42;
        if (--v37)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_22C472630();
    sub_22C472630();
  }

LABEL_12:
  sub_22C36CC48();
}

uint64_t sub_22C46D658(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3 ^ *v4;
        if (v5)
        {
          break;
        }

        ++v3;
        ++v4;
        --v2;
      }

      while (v2);
      v6 = v5 ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_22C46D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for SegmentedPrompt.Segment(0);
  v27 = sub_22C3885DC(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22C379868();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  v37 = *(v25 + 16);
  if (v37 == *(v23 + 16) && v37 && v25 != v23)
  {
    v38 = 0;
    sub_22C47278C(v34);
    v40 = *(v39 + 72);
    while (1)
    {
      sub_22C3705E8();
      sub_22C472588();
      if (v38 == v37)
      {
        break;
      }

      sub_22C472588();
      if ((sub_22C57ADA4(v36, v32) & 1) == 0 || (v41 = *(v26 + 20), v42 = *&v36[v41], v43 = *(v32 + v41), v44 = *(v42 + 16), v44 != *(v43 + 16)))
      {
LABEL_19:
        sub_22C472630();
        sub_22C472630();
        goto LABEL_20;
      }

      if (v44)
      {
        v45 = v42 == v43;
      }

      else
      {
        v45 = 1;
      }

      if (!v45)
      {
        v46 = (v42 + 32);
        v47 = (v43 + 32);
        while (v44)
        {
          if (*v46 != *v47)
          {
            goto LABEL_19;
          }

          ++v46;
          ++v47;
          if (!--v44)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:
      ++v38;
      sub_22C472630();
      sub_22C472630();
      if (v38 == v37)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_22C36CC48();
  }
}

uint64_t sub_22C46D91C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C374AAC(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v6 = (v3 + 32);
    for (i = (v4 + 32); ; i += 88)
    {
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v13, v6, sizeof(v13));
      memcpy(v15, i, sizeof(v15));
      memcpy(__src, i, sizeof(__src));
      sub_22C748778(v13, __src);
      v9 = v8;
      memcpy(v16, __src, sizeof(v16));
      sub_22C4724D8(__dst, v11);
      sub_22C4724D8(v15, v11);
      sub_22C472534(v16);
      memcpy(v17, v13, sizeof(v17));
      sub_22C472534(v17);
      if ((v9 & 1) == 0)
      {
        break;
      }

      v6 += 88;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_22C46DA24()
{
  sub_22C36BA7C();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v0 + 64);
    v4 = (v1 + 64);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      v11 = *(v3 - 4) == *(v4 - 4) && *(v3 - 3) == *(v4 - 3);
      if (!v11 && (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      if (v5 != v8 || v6 != v9)
      {
        sub_22C47274C();
        if ((sub_22C90B4FC() & 1) == 0)
        {
          break;
        }
      }

      v13 = sub_22C36BA00();
      sub_22C749DA0(v13, v14);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  sub_22C36CC48();
}

uint64_t sub_22C46DAF8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v22 = a2 + 32;
  v23 = result + 32;
  v21 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_34;
    }

    v4 = (v23 + 40 * v3);
    v5 = *v4;
    v6 = v4[1];
    v8 = v4[2];
    v7 = v4[3];
    v9 = v4[4];
    v10 = (v22 + 40 * v3);
    v11 = v10[2];
    v24 = v10[3];
    v25 = v7;
    v12 = v10[4];
    v13 = v5 == *v10 && v6 == v10[1];
    if (!v13 && (sub_22C90B4FC() & 1) == 0)
    {

      swift_bridgeObjectRetain_n();
      sub_22C3819E0();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      sub_22C37B22C();
      swift_bridgeObjectRetain_n();

      goto LABEL_31;
    }

    v26 = v11;
    v27 = v8;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_22C37B22C();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v14 = static BNFGrammarRuleExpression.== infix(_:_:)(&v27, &v26);

    sub_22C3819E0();

    if ((v14 & 1) == 0)
    {

      sub_22C3732F8();
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
LABEL_31:

      goto LABEL_25;
    }

    v15 = sub_22C46D2C8(v25, v24);

    if ((v15 & 1) == 0 || (v16 = *(v9 + 16), v16 != *(v12 + 16)))
    {
LABEL_24:
      sub_22C37B22C();
      swift_bridgeObjectRelease_n();
      sub_22C37ABEC();
      sub_22C3819E0();

      swift_bridgeObjectRelease_n();
LABEL_25:
      sub_22C37B22C();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_22C3819E0();

      swift_bridgeObjectRelease_n();
      return 0;
    }

    if (v16 && v9 != v12)
    {
      break;
    }

LABEL_21:
    ++v3;
    sub_22C37B22C();
    swift_bridgeObjectRelease_n();
    sub_22C37ABEC();
    sub_22C3819E0();

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
    result = 1;
    v2 = v21;
    if (v3 == v21)
    {
      return result;
    }
  }

  v17 = 4;
  while ((v17 - 4) < *(v9 + 16))
  {
    if ((v17 - 4) >= *(v12 + 16))
    {
      goto LABEL_33;
    }

    v18 = *(v9 + 8 * v17);
    v19 = *(v12 + 8 * v17);

    v20 = sub_22C48819C(v18, v19);

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }

    ++v17;
    if (!--v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_22C46DF1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C374AAC(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      v12 = 1;
    }

    else
    {
      v6 = (v3 + 32);
      v7 = (v4 + 32);
      do
      {
        v8 = *v6++;
        v9 = *v7++;

        v10 = sub_22C37170C();
        v12 = sub_22C48819C(v10, v11);

        if ((v12 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_22C46DFC8()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C90952C();
  v5 = sub_22C369824(v4);
  v44 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = *(v3 + 16);
  if (v15 == *(v1 + 16) && v15 && v3 != v1)
  {
    v16 = 0;
    v39 = v1 + 32;
    v40 = v3 + 32;
    v17 = (v44 + 8);
    v36 = v15;
    while (v16 != v15)
    {
      v18 = (v40 + 24 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = (v39 + 24 * v16);
      v23 = *v22;
      v24 = v22[1];
      v45 = v22[2];
      v25 = v19 == v23 && v20 == v24;
      if (!v25 && (sub_22C90B4FC() & 1) == 0)
      {
        goto LABEL_24;
      }

      v41 = v24;
      v26 = *(v21 + 16);
      if (v26 != *(v45 + 16))
      {
        goto LABEL_24;
      }

      if (v26 && v21 != v45)
      {
        v37 = v16;
        v38 = v20;
        v27 = v45;
        v28 = *(v44 + 80);
        sub_22C36BA94();
        v42 = v27 + v29;
        v43 = v21 + v29;

        v30 = 0;
        while (v30 < *(v21 + 16))
        {
          v31 = *(v44 + 72) * v30;
          v32 = *(v44 + 16);
          v32(v14, v43 + v31, v4);
          if (v30 >= *(v45 + 16))
          {
            goto LABEL_26;
          }

          v32(v11, v42 + v31, v4);
          sub_22C3773C8();
          sub_22C472684(&qword_28142FA78, v33);
          v34 = sub_22C90A0BC();
          v35 = *v17;
          (*v17)(v11, v4);
          v35(v14, v4);
          if ((v34 & 1) == 0)
          {

            goto LABEL_24;
          }

          if (v26 == ++v30)
          {

            v15 = v36;
            v16 = v37;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }

LABEL_20:
      if (++v16 == v15)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22C36CC48();
  }
}

uint64_t sub_22C46E310(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (!v3 || a1 == a2)
  {
    return 1;
  }

  v4 = (a2 + 64);
  for (i = (a1 + 64); ; i += 40)
  {
    v7 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v4 - 4);
    v12 = *(v4 - 3);
    v14 = *(v4 - 2);
    v13 = *(v4 - 1);
    v102 = *v4;
    if ((v8 & 0x2000000000000000) == 0)
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (v7 == v11 && v6 == v12)
      {
        v52 = sub_22C36D384();
        v2 = v53;
        sub_22C472434(v52, v54, v14);
        v55 = sub_22C369C60();
        sub_22C472434(v55, v56, v57);
        v58 = sub_22C369C60();
        sub_22C472480(v58, v59, v60);
        v61 = sub_22C36D384();
        sub_22C472480(v61, v62, v14);
        if (v10 != v102)
        {
          return 0;
        }
      }

      else
      {
        sub_22C36D384();
        v97 = sub_22C37B578();
        sub_22C472434(v10, v7, v2);
        v16 = sub_22C36EBF0();
        sub_22C472434(v16, v17, v9);
        v18 = sub_22C36EBF0();
        sub_22C472480(v18, v19, v9);
        sub_22C472480(v10, v7, v2);
        result = 0;
        if (v97 & 1) == 0 || ((v10 ^ v102))
        {
          return result;
        }
      }

      goto LABEL_25;
    }

    if ((v14 & 0x2000000000000000) == 0)
    {
LABEL_27:
      v63 = sub_22C472808();
      v65 = v64;
      sub_22C472434(v63, v66, v67);
      v68 = sub_22C36EBF0();
      sub_22C472434(v68, v69, v8);
      v70 = sub_22C36EBF0();
      sub_22C472480(v70, v71, v8);
      v72 = v4;
      v73 = v65;
      v74 = v14;
      goto LABEL_30;
    }

    v101 = *i;
    v21 = v7 == v11 && v6 == v12;
    v99 = *(v4 - 4);
    if (!v21)
    {
      sub_22C36D384();
      v22 = sub_22C37B578();
      v12 = v7;
      v8 = v9;
      v13 = v14;
      v14 = v2;
      v9 = v100;
      v11 = v10;
      if ((v22 & 1) == 0)
      {
        break;
      }
    }

    v100 = v3;
    v103 = v14 & 0xDFFFFFFFFFFFFFFFLL;
    v104 = v8 & 0xDFFFFFFFFFFFFFFFLL;
    v2 = v14;
    v23 = v13;
    sub_22C472434(v11, v12, v14);
    v24 = sub_22C369C60();
    sub_22C472434(v24, v25, v26);
    sub_22C47283C();
    v27 = sub_22C369C60();
    sub_22C472434(v27, v28, v29);
    sub_22C47283C();
    v30 = sub_22C369C60();
    sub_22C472434(v30, v31, v32);
    swift_retain_n();
    swift_retain_n();

    v33 = static BNFGrammarRuleExpression.== infix(_:_:)(&v104, &v103);

    if ((v33 & 1) == 0)
    {
      goto LABEL_29;
    }

    v98 = sub_22C46D2C8(v9, v23);
    v34 = sub_22C369C60();
    sub_22C472480(v34, v35, v36);
    v37 = sub_22C37B9D0();
    sub_22C472480(v37, v38, v39);
    v40 = sub_22C37B9D0();
    sub_22C472480(v40, v41, v42);
    sub_22C47274C();
    sub_22C472480(v43, v44, v45);
    v46 = sub_22C37B9D0();
    sub_22C472480(v46, v47, v48);
    sub_22C47274C();
    sub_22C472480(v49, v50, v51);
    result = 0;
    if ((v98 & 1) == 0)
    {
      return result;
    }

    v3 = v100;
    if ((v101 ^ v102))
    {
      return result;
    }

LABEL_25:
    v4 += 40;
    if (!--v3)
    {
      return 1;
    }
  }

  v75 = sub_22C472808();
  sub_22C472434(v75, v76, v77);
  v78 = sub_22C369C60();
  sub_22C472434(v78, v79, v80);
  v81 = sub_22C36BAFC();
  sub_22C472434(v81, v82, v2);
  v83 = sub_22C369C60();
  sub_22C472434(v83, v84, v85);
  v86 = sub_22C36BAFC();
  sub_22C472434(v86, v87, v2);
  v88 = sub_22C369C60();
  sub_22C472434(v88, v89, v90);
LABEL_29:
  v91 = sub_22C369C60();
  sub_22C472480(v91, v92, v93);
  sub_22C370148(v99);
  sub_22C370148(v99);
  v94 = sub_22C369C60();
  sub_22C472480(v94, v95, v96);
  sub_22C370148(v99);
  v72 = sub_22C369C60();
LABEL_30:
  sub_22C472480(v72, v73, v74);
  return 0;
}

uint64_t sub_22C46E724(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (v4 && a1 != a2)
  {
    v5 = (a1 + 32);
    v6 = (a2 + 32);
    while (2)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6;
      v10 = *v6 >> 62;
      switch(v8 >> 62)
      {
        case 1uLL:
          if (v10 != 1)
          {
            return 0;
          }

          v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
          v11 = *(v13 + 16);
          v12 = *(v13 + 24);
          v9 &= 0x3FFFFFFFFFFFFFFFuLL;
          goto LABEL_15;
        case 2uLL:
          if (v10 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3uLL:
          if (*v6 >> 62 != 3)
          {
            return 0;
          }

LABEL_11:
          sub_22C4727CC(v9);
          swift_retain_n();
          sub_22C3732F8();
          swift_retain_n();

          v2 = sub_22C46E724(v2, v3);

          sub_22C3732F8();

          if ((v2 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_20;
        default:
          if (v10)
          {
            return 0;
          }

          v11 = *(v7 + 16);
          v12 = *(v7 + 24);
LABEL_15:
          v14 = v11 == *(v9 + 16) && v12 == *(v9 + 24);
          if (!v14 && (sub_22C90B4FC() & 1) == 0)
          {
            return 0;
          }

LABEL_20:
          ++v6;
          if (!--v4)
          {
            return 1;
          }

          continue;
      }
    }
  }

  return 1;
}

uint64_t sub_22C46E86C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C374AAC(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v6 = (v3 + 32);
    for (i = (v4 + 32); ; i += 208)
    {
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v12, v6, sizeof(v12));
      memcpy(v14, i, sizeof(v14));
      memcpy(__src, i, sizeof(__src));
      sub_22C472384(__dst, v10);
      sub_22C472384(v14, v10);
      v8 = static Statement.== infix(_:_:)(v12);
      memcpy(v15, __src, sizeof(v15));
      sub_22C4723E0(v15);
      memcpy(v16, v12, sizeof(v16));
      sub_22C4723E0(v16);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v6 += 208;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_22C46E974()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v5 = sub_22C3885DC(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C379868();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v15 = *(v3 + 16);
  if (v15 == *(v1 + 16) && v15 && v3 != v1)
  {
    sub_22C47278C(v12);
    v17 = v3 + v16;
    v18 = v1 + v16;
    v23 = *(v19 + 72);
    while (1)
    {
      sub_22C36EBF0();
      sub_22C472588();
      if (!v15)
      {
        break;
      }

      sub_22C472588();
      if ((sub_22C9036DC() & 1) == 0 || v14[*(v4 + 20)] != *(v10 + *(v4 + 20)))
      {
        sub_22C472630();
        sub_22C472630();
        goto LABEL_16;
      }

      v20 = *(v4 + 24);
      sub_22C9037DC();
      sub_22C472758();
      sub_22C472684(&qword_27D9BC7F8, v21);
      sub_22C90A56C();
      sub_22C90A56C();
      sub_22C472630();
      sub_22C472630();
      v22 = v25 != v24 || v15-- == 1;
      v18 += v23;
      v17 += v23;
      if (v22)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    sub_22C36CC48();
  }
}

uint64_t sub_22C46EBB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C47279C(a1, a2);
  if (!v13)
  {
    return 0;
  }

  if (v2 && v3 != v4)
  {
    v5 = (v3 + 56);
    v6 = (v4 + 56);
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);
      v12 = *v6;
      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        v13 = *(v5 - 3) == *(v6 - 3) && v7 == v10;
        if (!v13 && (sub_22C90B4FC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v9)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v11)
        {
          v14 = v12;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          return 0;
        }
      }

      v5 += 32;
      v6 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t BNFGrammarRuleExpression.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*v1 >> 62)
  {
    case 1uLL:
      v9 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v6 = 1;
      goto LABEL_7;
    case 2uLL:
      v7 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = 2;
      goto LABEL_5;
    case 3uLL:
      v7 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = 3;
LABEL_5:
      MEMORY[0x2318B8B10](v8);

      sub_22C471854(a1, v7);
      break;
    default:
      v5 = *(v2 + 16);
      v4 = *(v2 + 24);
      v6 = 0;
LABEL_7:
      MEMORY[0x2318B8B10](v6);

      sub_22C909FFC();
      break;
  }
}

uint64_t BNFGrammarRuleExpression.hashValue.getter()
{
  v2[9] = *v0;
  sub_22C90B62C();
  BNFGrammarRuleExpression.hash(into:)(v2);
  return sub_22C90B66C();
}

uint64_t sub_22C46EDFC()
{
  v2[9] = *v0;
  sub_22C90B62C();
  BNFGrammarRuleExpression.hash(into:)(v2);
  return sub_22C90B66C();
}

uint64_t BNFGrammarRule.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22C36BA00();
}

uint64_t BNFGrammarRule.component.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t BNFGrammarRule.description.getter()
{
  v1 = *(v0 + 2);
  v3 = *v0;
  v4 = v1;
  return BNFGrammarRenderer.renderRule(rule:)(&v3);
}

uint64_t BNFGrammarRenderer.renderRule(rule:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v8 = 0xE100000000000000;

  v4 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v4);
  MEMORY[0x2318B7850](62, 0xE100000000000000);
  v7 = v3;
  BNFGrammarRenderer.renderComponent(component:)(&v7);

  v7 = 60;
  v8 = 0xE100000000000000;
  MEMORY[0x2318B7850](0x203D3A3A20, 0xE500000000000000);
  v5 = sub_22C36BAFC();
  MEMORY[0x2318B7850](v5);

  return v7;
}

uint64_t static BNFGrammarRule.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_22C90B4FC() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;

    v5 = static BNFGrammarRuleExpression.== infix(_:_:)(&v8, &v7);
  }

  return v5 & 1;
}

uint64_t BNFGrammarRule.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_22C909FFC();
  return BNFGrammarRuleExpression.hash(into:)(a1);
}

uint64_t BNFGrammarRule.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22C90B62C();
  sub_22C909FFC();
  BNFGrammarRuleExpression.hash(into:)(v5);
  return sub_22C90B66C();
}

uint64_t sub_22C46F118()
{
  v1 = *(v0 + 16);
  *&v3[72] = *v0;
  v4 = v1;
  sub_22C90B62C();
  BNFGrammarRule.hash(into:)(v3);
  return sub_22C90B66C();
}

uint64_t RootedBNFGrammar.rootRule.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

void BNFGrammarRenderer.renderGrammar(grammar:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v4;
  v27 = inited;

  sub_22C3CC3D8(v3);
  v6 = v27;
  v7 = *(v27 + 16);
  if (v7)
  {
    v29 = MEMORY[0x277D84F90];
    sub_22C4727BC();
    sub_22C3B5E2C();
    v8 = 0;
    v9 = v29;
    v10 = (v27 + 48);
    while (v8 < *(v6 + 16))
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      v27 = 60;
      v28 = 0xE100000000000000;

      MEMORY[0x2318B7850](v11, v12);
      MEMORY[0x2318B7850](62, 0xE100000000000000);
      v14 = v27;
      v15 = v28;
      v27 = v13;
      BNFGrammarRenderer.renderComponent(component:)(&v27);
      v17 = v16;
      v19 = v18;

      v27 = v14;
      v28 = v15;
      MEMORY[0x2318B7850](0x203D3A3A20, 0xE500000000000000);
      MEMORY[0x2318B7850](v17, v19);

      v20 = v27;
      v21 = v28;
      v29 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22C4727AC(v22);
        sub_22C36ECC0();
        sub_22C3B5E2C();
        v9 = v29;
      }

      ++v8;
      *(v9 + 16) = v23 + 1;
      v24 = v9 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v10 += 3;
      if (v7 == v8)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_9:
    v27 = v9;
    v25 = sub_22C37170C();
    sub_22C3A5908(v25, v26);
    sub_22C382638(&qword_28142F9F0);
    sub_22C90A04C();

    sub_22C37170C();
  }
}

uint64_t static RootedBNFGrammar.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = v4;
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v8;

  v9 = static BNFGrammarRule.== infix(_:_:)(v14, v13);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = sub_22C36BA00();

  return sub_22C46D2C8(v10, v11);
}

uint64_t RootedBNFGrammar.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_22C909FFC();
  BNFGrammarRuleExpression.hash(into:)(a1);
  v7 = sub_22C36BAFC();

  return sub_22C471C48(v7, v8);
}

uint64_t RootedBNFGrammar.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22C90B62C();
  sub_22C909FFC();
  BNFGrammarRuleExpression.hash(into:)(v6);
  sub_22C471C48(v6, v3);
  return sub_22C90B66C();
}

uint64_t sub_22C46F5C0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_22C90B62C();
  RootedBNFGrammar.hash(into:)(v4);
  return sub_22C90B66C();
}

uint64_t sub_22C46F618()
{
  result = swift_allocObject();
  *(result + 16) = 0x53454E494C57454ELL;
  *(result + 24) = 0xE800000000000000;
  qword_27D9BC7C0 = result | 0x4000000000000000;
  return result;
}

Swift::String __swiftcall BNFGrammarRenderer.renderTerminal(content:)(Swift::String content)
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v49 - v11;
  v52 = v4;
  v53 = v2;
  v50 = 10;
  v51 = 0xE100000000000000;
  sub_22C3858B4();
  if ((sub_22C90AD8C() & 1) == 0)
  {
    v50 = v4;
    v51 = v2;
    sub_22C90306C();
    sub_22C471D70();
    sub_22C471DC4();
    sub_22C3D32C8(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
    sub_22C90A9FC();
    (*(v8 + 8))(v12, v5);
    v35 = v52;
    v36 = v53;
    v52 = 34;
    v53 = 0xE100000000000000;
    MEMORY[0x2318B7850](v35, v36);

    MEMORY[0x2318B7850](34, 0xE100000000000000);
    goto LABEL_29;
  }

  v52 = v4;
  v53 = v2;
  v13 = sub_22C90AD9C();
  v14 = 0;
  v15 = *(v13 + 16);
  v16 = v13 + 56;
  v17 = MEMORY[0x277D84F90];
  v18 = 0x27D9BA000uLL;
  v49 = v13;
  while (v15 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v19 = *(v16 - 24);
    v20 = *(v16 - 16);
    v21 = *v16;
    if ((v20 ^ v19) >= 0x4000)
    {
      v23 = v15;
      v24 = v18;
      v25 = *(v16 - 8);
      v26 = swift_allocObject();

      *(v26 + 16) = MEMORY[0x2318B76D0](v19, v20, v25, v21);
      *(v26 + 24) = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C4727E4();
        v17 = v33;
      }

      v28 = *(v17 + 16);
      v18 = v24;
      if (v28 >= *(v17 + 24) >> 1)
      {
        sub_22C590240();
        v17 = v34;
      }

      v15 = v23;
      *(v17 + 16) = v28 + 1;
      *(v17 + 8 * v28 + 32) = v26;
      v13 = v49;
    }

    else
    {
      v22 = *v16;
    }

    if (*(v18 + 1600) != -1)
    {
      swift_once();
    }

    v29 = qword_27D9BC7C0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C4727E4();
      v17 = v31;
    }

    v30 = *(v17 + 16);
    if (v30 >= *(v17 + 24) >> 1)
    {
      sub_22C36ECC0();
      sub_22C590240();
      v17 = v32;
    }

    *(v17 + 16) = v30 + 1;
    *(v17 + 8 * v30 + 32) = v29;
    v16 += 32;
    ++v14;
  }

  sub_22C46BF00(1, v17, sub_22C88842C, sub_22C633A28);
  v15 = v37;
  v16 = v38;
  if ((v38 & 1) == 0)
  {
LABEL_21:
    v39 = sub_22C36BA00();
    sub_22C46FE2C(v39, v40, v15, v16);
    v42 = v41;
    goto LABEL_28;
  }

  sub_22C90B50C();
  sub_22C3732F8();
  swift_unknownObjectRetain_n();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
    v43 = MEMORY[0x277D84F90];
  }

  v44 = *(v43 + 16);

  if (__OFSUB__(v16 >> 1, v15))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v44 != (v16 >> 1) - v15)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    swift_unknownObjectRelease();
    v42 = MEMORY[0x277D84F90];
  }

LABEL_28:
  v45 = swift_allocObject();
  *(v45 + 16) = v42;
  v52 = v45 | 0xC000000000000000;
  BNFGrammarRenderer.renderComponent(component:)(&v52);
  swift_unknownObjectRelease();

LABEL_29:
  sub_22C37170C();
  sub_22C36CC48();
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t sub_22C46FB4C@<X0>(void *a1@<X8>)
{
  sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
  sub_22C9030CC();
  v2 = MEMORY[0x2318B76D0]();
  v4 = v3;

  MEMORY[0x2318B7850](v2, v4);

  *a1 = 92;
  a1[1] = v6;
  return result;
}

uint64_t sub_22C46FBF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 40); v1; --v1)
  {
    v4 = *(i - 1);
    v3 = *i;
    if ((*i & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(*i) & 0xF;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v6 = *i;

    if (v5)
    {
      if (sub_22C90A46C() != 34 || v7 != 0xE100000000000000)
      {
        sub_22C90B4FC();
      }
    }

    MEMORY[0x2318B7850](v4, v3);

    i += 2;
  }

  return 0;
}

void sub_22C46FE2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 8);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22C46FF28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 24);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22C46FFFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_22C4701A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB0A0, &qword_22C90D940);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 8);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
      return;
    }

    goto LABEL_10;
  }
}

uint64_t sub_22C4702AC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C597A98(*(a1 + 16), 0);
  sub_22C3704C4();
  v2 = *(*(sub_22C908C5C() - 8) + 80);
  sub_22C36BA94();
  sub_22C3743F0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  sub_22C3D1C44();
  sub_22C38B868();
  sub_22C374ABC();
  if (!v11)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_22C470414(uint64_t a1, uint64_t (*a2)(void, void), uint64_t *a3, uint64_t *a4, void (*a5)(char *))
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(*(sub_22C3A5908(a3, a4) - 8) + 80);
  sub_22C36BA94();
  v18 = sub_22C3743F0(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22);
  a5(v18);
  sub_22C38B868();
  sub_22C374ABC();
  if (!v19)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_22C4704E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22C597B9C(*(a3 + 16), 0);
  sub_22C3704C4();
  v5 = *(*(type metadata accessor for RetrievedToolWithAttribution() - 8) + 80);
  sub_22C36BA94();
  sub_22C3D2B00();
  v7 = v6;

  if (v7 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_22C470610(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      v9 = a6(0);
      sub_22C372570(v9);
      v11 = v10;
      v13 = v12;
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v13 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_22C4706F0()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C3704C4();
  v109 = type metadata accessor for SegmentedPrompt.DeferredReference.TypeIdentifierReference(v3);
  v4 = sub_22C36985C(v109);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v108 = (v8 - v7);
  v107 = sub_22C90069C();
  v9 = sub_22C369824(v107);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v106 = v15 - v14;
  v16 = type metadata accessor for SegmentedPrompt.DeferredReference(0);
  v17 = sub_22C36985C(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v116 = (v20 - v21);
  v23 = MEMORY[0x28223BE20](v22);
  v114 = &v100 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v115 = (&v100 - v26);
  MEMORY[0x28223BE20](v25);
  v113 = &v100 - v27;
  v120 = type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  v28 = sub_22C36985C(v120);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v33 = (v32 - v31);
  v34 = type metadata accessor for SegmentedPrompt.Segment(0);
  v35 = sub_22C369824(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369838();
  v42 = v41 - v40;
  v43 = *(v2 + 16);
  MEMORY[0x2318B8B10](v43);
  v119 = v43;
  if (v43)
  {
    v44 = 0;
    v45 = *(v34 + 20);
    v46 = *(v37 + 80);
    sub_22C36BA94();
    v118 = v2 + v47;
    v102 = (v11 + 8);
    v103 = (v11 + 32);
    v117 = *(v37 + 72);
    v104 = v45;
    v105 = v16;
    while (1)
    {
      sub_22C3705E8();
      sub_22C472588();
      sub_22C472588();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v49 = (v33 + *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48));
        v50 = v49[1];
        v111 = *v49;
        v51 = v49[2];
        sub_22C388F00();
        sub_22C4725DC();
        MEMORY[0x2318B8B10](1);
        sub_22C382F78();
        sub_22C472588();
        v52 = swift_getEnumCaseMultiPayload();
        v112 = v51;
        if (v52)
        {
          if (v52 == 1)
          {
            sub_22C379FD4();
            v53 = v108;
            sub_22C4725DC();
            MEMORY[0x2318B8B10](1);
            sub_22C4706F0(v0, *v53);
            sub_22C7EDAF8(v0, v53[1], v54, v55, v56, v57, v58, v59, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
            v60 = *(v109 + 24);
            sub_22C90963C();
            sub_22C38A8C0();
            sub_22C472684(&qword_27D9BC850, v61);
            sub_22C909F8C();
            sub_22C37F104();
            sub_22C472630();
          }

          else
          {
            v82 = *v116;
            v101 = v116[1];
            MEMORY[0x2318B8B10](2);
            v110 = v82;
            v83 = *(v82 + 16);
            MEMORY[0x2318B8B10](v83);
            if (v83)
            {
              v84 = sub_22C901FAC();
              sub_22C372570(v84);
              v86 = v110 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
              v88 = *(v87 + 72);
              sub_22C472684(&qword_2814357B0, MEMORY[0x277D1C338]);
              do
              {
                sub_22C909F8C();
                v86 += v88;
                --v83;
              }

              while (v83);
            }

            sub_22C4706F0(v0, v101);

            v45 = v104;
          }
        }

        else
        {
          (*v103)(v106, v116, v107);
          MEMORY[0x2318B8B10](0);
          sub_22C36D724();
          sub_22C472684(&qword_27D9BC858, v75);
          sub_22C37EBB4();
          sub_22C909F8C();
          v76 = *v102;
          v77 = sub_22C36EBF0();
          v78(v77);
        }

        sub_22C909FFC();

        sub_22C472774();
LABEL_24:
        sub_22C472630();
        goto LABEL_25;
      }

      v72 = *v33;
      v73 = v33[1];
      v74 = v33[2];
      MEMORY[0x2318B8B10](2);
      sub_22C36BAFC();
      sub_22C909FFC();

LABEL_25:
      v96 = *(v42 + v45);
      MEMORY[0x2318B8B10](*(v96 + 16));
      v97 = *(v96 + 16);
      if (v97)
      {
        v98 = (v96 + 32);
        do
        {
          v99 = *v98++;
          MEMORY[0x2318B8B10](v99);
          --v97;
        }

        while (v97);
      }

      ++v44;
      sub_22C472630();
      if (v44 == v119)
      {
        goto LABEL_29;
      }
    }

    sub_22C388F00();
    sub_22C4725DC();
    MEMORY[0x2318B8B10](0);
    sub_22C382F78();
    sub_22C472588();
    v62 = swift_getEnumCaseMultiPayload();
    if (v62)
    {
      if (v62 == 1)
      {
        sub_22C379FD4();
        v63 = v108;
        sub_22C4725DC();
        MEMORY[0x2318B8B10](1);
        sub_22C4706F0(v0, *v63);
        sub_22C7EDAF8(v0, v63[1], v64, v65, v66, v67, v68, v69, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
        v70 = *(v109 + 24);
        sub_22C90963C();
        sub_22C38A8C0();
        sub_22C472684(&qword_27D9BC850, v71);
        sub_22C36BAFC();
        sub_22C909F8C();
        sub_22C37F104();
        sub_22C472630();
      }

      else
      {
        v89 = *v115;
        v112 = v115[1];
        MEMORY[0x2318B8B10](2);
        v90 = *(v89 + 16);
        MEMORY[0x2318B8B10](v90);
        if (v90)
        {
          v91 = sub_22C901FAC();
          sub_22C372570(v91);
          v93 = v89 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
          v95 = *(v94 + 72);
          sub_22C472684(&qword_2814357B0, MEMORY[0x277D1C338]);
          do
          {
            sub_22C909F8C();
            v93 += v95;
            --v90;
          }

          while (v90);
        }

        sub_22C4706F0(v0, v112);

        v45 = v104;
      }
    }

    else
    {
      v80 = v106;
      v79 = v107;
      (*v103)(v106, v115, v107);
      MEMORY[0x2318B8B10](0);
      sub_22C36D724();
      sub_22C472684(&qword_27D9BC858, v81);
      sub_22C37EBB4();
      sub_22C909F8C();
      (*v102)(v80, v79);
    }

    sub_22C472774();
    goto LABEL_24;
  }

LABEL_29:
  sub_22C36CC48();
}

void sub_22C470F4C(uint64_t a1, uint64_t a2)
{
  sub_22C47272C(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x2318B8B10](v5);
      --v2;
    }

    while (v2);
  }
}

void sub_22C470F8C(uint64_t a1, uint64_t a2)
{
  sub_22C382C88(a1, a2);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(v6, v5, sizeof(v6));
      memcpy(__dst, v5, sizeof(__dst));
      sub_22C472384(v6, v7);
      Statement.hash(into:)(v2);
      memcpy(v7, __dst, sizeof(v7));
      sub_22C4723E0(v7);
      v5 += 208;
      --v3;
    }

    while (v3);
  }
}

void sub_22C47102C(uint64_t a1, uint64_t a2)
{
  sub_22C47272C(a1, a2);
  if (v2)
  {
    v4 = (v3 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      if (*(v4 - 2))
      {
        v7 = *(v4 - 3);
        sub_22C90B64C();

        sub_22C909FFC();
        if (!v6)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_22C90B64C();
        if (!v6)
        {
LABEL_7:
          sub_22C90B64C();
          MEMORY[0x2318B8B10](v5);
          goto LABEL_8;
        }
      }

      sub_22C90B64C();
LABEL_8:

      v4 += 32;
      --v2;
    }

    while (v2);
  }
}

void sub_22C4710DC(uint64_t a1, uint64_t a2)
{
  sub_22C47272C(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_22C38B418();
      sub_22C909FFC();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_22C47113C()
{
  sub_22C36BA7C();
  sub_22C47272C(v2, v3);
  if (v0)
  {
    v4 = (v1 + 72);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;

      sub_22C38B418();
      sub_22C909FFC();
      sub_22C909FFC();
      sub_22C909FFC();

      v4 += 6;
      --v0;
    }

    while (v0);
  }

  sub_22C36CC48();
}

void sub_22C4711E4()
{
  sub_22C36BA7C();
  v3 = v2;
  sub_22C3704C4();
  v4 = type metadata accessor for ContextRule();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C36FC38();
  if (v1)
  {
    v21 = *(v4 + 20);
    v10 = (v0 + *(v4 + 24));
    v11 = *(v7 + 80);
    sub_22C36BA94();
    v13 = v3 + v12;
    v20 = *(v7 + 72);
    do
    {
      sub_22C370018();
      sub_22C472588();
      v14 = *v0;
      v15 = v0[1];
      sub_22C909FFC();
      sub_22C90355C();
      sub_22C37FD24();
      sub_22C472684(&qword_27D9BC838, v16);
      sub_22C909F8C();
      if (v10[1])
      {
        v18 = v10[2];
        v17 = v10[3];
        v19 = *v10;
        sub_22C90B64C();
        sub_22C909FFC();
        sub_22C909FFC();
      }

      else
      {
        sub_22C90B64C();
      }

      sub_22C472630();
      v13 += v20;
      --v1;
    }

    while (v1);
  }

  sub_22C36CC48();
}

void sub_22C471388(uint64_t a1, uint64_t a2)
{
  sub_22C47272C(a1, a2);
  if (v2)
  {
    sub_22C38C358();
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      switch(v5)
      {
        case 3:
        case 4:
          sub_22C47281C();
          break;
        default:
          break;
      }

      sub_22C909FFC();

      --v2;
    }

    while (v2);
  }
}

void sub_22C4714BC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C90952C();
  v5 = sub_22C369824(v4);
  v31 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = *(v1 + 16);
  MEMORY[0x2318B8B10](v12);
  v33 = v12;
  if (v12)
  {
    v13 = 0;
    v32 = v1 + 32;
    do
    {
      v14 = (v32 + 24 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];

      sub_22C909FFC();
      MEMORY[0x2318B8B10](*(v17 + 16));
      v18 = *(v17 + 16);
      if (v18)
      {
        v34 = v13;
        v19 = *(v31 + 80);
        sub_22C36BA94();
        v20 = v3;
        v23 = v21 + v22;
        v25 = *(v24 + 72);
        v26 = *(v24 + 16);
        do
        {
          v26(v11, v23, v4);
          sub_22C3773C8();
          sub_22C472684(&qword_28142FA80, v27);
          sub_22C909F8C();
          v28 = *(v31 + 8);
          v29 = sub_22C370018();
          v30(v29);
          v23 += v25;
          --v18;
        }

        while (v18);

        v13 = v34;
        v3 = v20;
      }

      else
      {
      }

      ++v13;
    }

    while (v13 != v33);
  }

  sub_22C36CC48();
}

void sub_22C471738(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  sub_22C382C88(a1, a2);
  if (v5)
  {
    v10 = a3(0);
    sub_22C372570(v10);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    sub_22C472684(a4, a5);
    do
    {
      sub_22C47274C();
      sub_22C909F8C();
      v12 += v14;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_22C471854(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x2318B8B10](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      switch(v8 >> 62)
      {
        case 1uLL:
          v13 = v7 & 0x3FFFFFFFFFFFFFFFLL;
          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          MEMORY[0x2318B8B10](1);
          goto LABEL_9;
        case 2uLL:
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v12 = 2;
          goto LABEL_7;
        case 3uLL:
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v12 = 3;
LABEL_7:
          MEMORY[0x2318B8B10](v12);

          sub_22C471854(a1, v11);
          break;
        default:
          v10 = *(v7 + 16);
          v9 = *(v7 + 24);
          MEMORY[0x2318B8B10](0);
LABEL_9:

          sub_22C909FFC();
          break;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_22C4719E8()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3704C4();
  v5 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(v4);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36FC38();
  if (v1)
  {
    v11 = *(v5 + 20);
    v12 = *(v5 + 24);
    v13 = *(v8 + 80);
    sub_22C36BA94();
    v15 = v3 + v14;
    v16 = *(v8 + 72);
    do
    {
      sub_22C370018();
      sub_22C472588();
      sub_22C901FAC();
      sub_22C472684(&qword_2814357B0, MEMORY[0x277D1C338]);
      sub_22C37EBB4();
      sub_22C909F8C();
      v17 = *(v0 + v11);
      sub_22C90B64C();
      v18 = *(v0 + v12);
      sub_22C90B64C();
      sub_22C472630();
      v15 += v16;
      --v1;
    }

    while (v1);
  }

  sub_22C36CC48();
}

uint64_t sub_22C471B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = a3(a2);
  MEMORY[0x2318B8B10](v9);
  result = a4(a2);
  if (result)
  {
    v11 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v11; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2318B8460](i, a2);
        }

        else
        {
          v13 = *(a2 + 8 * i + 32);
        }

        a5(a1);
      }
    }
  }

  return result;
}

uint64_t sub_22C471C48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x2318B8B10](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v10 = *v6;
      v6 += 3;
      v9 = v10;
      v11 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();

      sub_22C909FFC();
      switch(v10 >> 62)
      {
        case 1uLL:
          v18 = *(v11 + 16);
          v17 = *(v11 + 24);
          v14 = 1;
          goto LABEL_9;
        case 2uLL:
          v15 = *(v11 + 16);
          v16 = 2;
          goto LABEL_7;
        case 3uLL:
          v15 = *(v11 + 16);
          v16 = 3;
LABEL_7:
          MEMORY[0x2318B8B10](v16);

          sub_22C471854(a1, v15);
          break;
        default:
          v13 = *(v9 + 16);
          v12 = *(v9 + 24);
          v14 = 0;
LABEL_9:
          MEMORY[0x2318B8B10](v14);

          sub_22C909FFC();
          break;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_22C471D70()
{
  result = qword_27D9BC7C8;
  if (!qword_27D9BC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7C8);
  }

  return result;
}

unint64_t sub_22C471DC4()
{
  result = qword_27D9BC7D0;
  if (!qword_27D9BC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7D0);
  }

  return result;
}

unint64_t sub_22C471E1C()
{
  result = qword_27D9BC7D8;
  if (!qword_27D9BC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7D8);
  }

  return result;
}

unint64_t sub_22C471E74()
{
  result = qword_27D9BC7E0;
  if (!qword_27D9BC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7E0);
  }

  return result;
}

unint64_t sub_22C471ECC()
{
  result = qword_27D9BC7E8;
  if (!qword_27D9BC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC7E8);
  }

  return result;
}

uint64_t sub_22C471F20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_22C471F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BNFGrammarRenderer(_BYTE *result, int a2, int a3)
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

void sub_22C47216C()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3704C4();
  v5 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(v4);
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C36FC38();
  if (v1)
  {
    v11 = *(v5 + 20);
    v12 = *(v5 + 24);
    v13 = *(v8 + 80);
    sub_22C36BA94();
    v15 = v3 + v14;
    v16 = *(v8 + 72);
    do
    {
      sub_22C370018();
      sub_22C472588();
      sub_22C9036EC();
      sub_22C472684(&qword_281435770, MEMORY[0x277D1ED00]);
      sub_22C37EBB4();
      sub_22C909F8C();
      v17 = *(v0 + v11);
      sub_22C90B64C();
      sub_22C9037DC();
      sub_22C472758();
      sub_22C472684(&qword_27D9BC7F0, v18);
      sub_22C909F8C();
      sub_22C472630();
      v15 += v16;
      --v1;
    }

    while (v1);
  }

  sub_22C36CC48();
}

uint64_t sub_22C4722FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C472340(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22C472434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
  }
}

uint64_t sub_22C472480(uint64_t a1, uint64_t a2, uint64_t a3)
{

  if ((a3 & 0x2000000000000000) != 0)
  {
  }

  return result;
}

uint64_t sub_22C472588()
{
  v1 = sub_22C371718();
  v3 = v2(v1);
  sub_22C36985C(v3);
  v5 = *(v4 + 16);
  v6 = sub_22C36BA00();
  v7(v6);
  return v0;
}

uint64_t sub_22C4725DC()
{
  v1 = sub_22C371718();
  v3 = v2(v1);
  sub_22C36985C(v3);
  v5 = *(v4 + 32);
  v6 = sub_22C36BA00();
  v7(v6);
  return v0;
}

uint64_t sub_22C472630()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C472684(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C4726CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_22C47272C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x2318B8B10);
}

uint64_t sub_22C47279C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_22C4727CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  return a1 & 0x3FFFFFFFFFFFFFFFLL;
}

void sub_22C4727E4()
{
  v2 = *(v0 + 16) + 1;

  sub_22C590240();
}

uint64_t sub_22C47283C()
{

  return sub_22C472434(v1, v2, v0);
}

uint64_t sub_22C47285C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 62;
  if (v6)
  {
    v17 = v5 >> 62;
    if (v5 >> 62 == 1)
    {
      v18 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v6 == 1)
      {
        v21 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v20 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v18 != v21 || v19 != v20)
        {
          v23 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v24 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (sub_22C90B4FC())
          {
            v20 = v19;
          }

          else
          {
            v18 = v21;
          }
        }

        sub_22C36A83C();
        result = swift_allocObject();
        *(result + 16) = v18;
        *(result + 24) = v20;
        goto LABEL_26;
      }

LABEL_25:

      sub_22C36A83C();
      result = swift_allocObject();
      *(result + 16) = v18;
      *(result + 24) = v19;
LABEL_26:
      v4 = result | 0x4000000000000000;
      goto LABEL_27;
    }

    if (!v17)
    {
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      goto LABEL_13;
    }

    if (v6 == 1)
    {
      v18 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      goto LABEL_25;
    }

    if (v17 == 2)
    {
      v25 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (v6 == 2)
      {
        v26 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v27 = sub_22C473658(v25, v26);

        if (v27)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (v6 != 2)
      {
        v28 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        LOBYTE(v28) = sub_22C473658(v28, v29);

        if (v28)
        {
LABEL_36:

          goto LABEL_27;
        }

LABEL_37:

        v4 = v5;
        goto LABEL_27;
      }

      v25 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    }

    result = swift_allocObject();
    *(result + 16) = v25;
    v4 = result | 0x8000000000000000;
    goto LABEL_27;
  }

  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  if (v5 >> 62)
  {
LABEL_13:

    sub_22C36A83C();
    result = swift_allocObject();
    v4 = result;
    *(result + 16) = v7;
    *(result + 24) = v8;
    goto LABEL_27;
  }

  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  v11 = v10 == v7 && v9 == v8;
  if (v11 || (v12 = *(v5 + 16), v13 = *(v5 + 24), v14 = *(v4 + 16), v15 = *(v4 + 24), (sub_22C90B4FC() & 1) == 0))
  {
    v9 = v8;
    v10 = v7;
  }

  sub_22C36A83C();
  result = swift_allocObject();
  v4 = result;
  *(result + 16) = v10;
  *(result + 24) = v9;
LABEL_27:
  *a3 = v4;
  return result;
}

uint64_t sub_22C472AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC860, &qword_22C914920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - v6;
  v7 = type metadata accessor for SegmentedPrompt.Segment(0);
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  v19 = 0;
  v20 = *(a2 + 16);
  while (v20 != v19)
  {
    sub_22C474C08();
    v23 = v22 & ~v21;
    v24 = *(v10 + 72) * v19;
    result = sub_22C474AC0(a2 + v23 + v24, v18);
    v25 = *(a1 + 16);
    if (v19 == v25)
    {
      sub_22C474B24(v18);
      return 0;
    }

    if (v19++ >= v25)
    {
      __break(1u);
      goto LABEL_24;
    }

    sub_22C474AC0(a1 + v23 + v24, v15);
    sub_22C57ADA4();
    if (v26)
    {
      if (sub_22C472D84(*&v15[*(v7 + 20)], *&v18[*(v7 + 20)]))
      {
        goto LABEL_19;
      }
    }

    else if (sub_22C57A6B4(v18, v15))
    {
LABEL_19:
      sub_22C474B24(v15);
      sub_22C474B24(v18);
      return 1;
    }

    sub_22C57ADA4();
    if (v27)
    {
      v28 = sub_22C472D84(*&v18[*(v7 + 20)], *&v15[*(v7 + 20)]);
    }

    else
    {
      v28 = sub_22C57A6B4(v15, v18);
    }

    v29 = v28;
    sub_22C474B24(v15);
    result = sub_22C474B24(v18);
    if (v29)
    {
      return 0;
    }
  }

  v30 = *(a1 + 16);
  v31 = v20 != v30;
  if (v20 == v30)
  {
    v35 = 1;
    v34 = v37;
    goto LABEL_21;
  }

  if (v20 < v30)
  {
    sub_22C474C08();
    v34 = v37;
    sub_22C474AC0(a1 + (v33 & ~v32) + *(v10 + 72) * v20, v37);
    v35 = 0;
LABEL_21:
    sub_22C36C640(v34, v35, 1, v7);
    sub_22C3770B0(v34, &qword_27D9BC860, &qword_22C914920);
    return v31;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22C472D84(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_14;
    }

    v5 = *(a2 + 32 + v2);
    v6 = *(result + 32 + v2);
    if (v6 == 1 && ((v5 ^ 1) & 1) != 0)
    {
      return 1;
    }

    ++v2;
    if ((v5 & (v6 ^ 1)) == 1)
    {
      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22C472E00(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v14 = result;
  v15 = *(a2 + 16);
  v3 = (result + 48);
  v4 = (a2 + 48);
  while (1)
  {
    if (v15 == v2)
    {
      v13 = *(v14 + 16);
      if (v15 == v13)
      {
        return 0;
      }

      if (v15 >= v13)
      {
        goto LABEL_32;
      }

      return 1;
    }

    v5 = *(v14 + 16);
    if (v2 == v5)
    {
      return 0;
    }

    if (v2 >= v5)
    {
      break;
    }

    v17 = v3;
    v18 = v2;
    v16 = v4;
    v6 = *v4;
    v7 = *v3;
    v8 = *(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1);
    v9 = v8;
    if (v8 || (sub_22C36BC58(), (sub_22C90B4FC() & 1) != 0))
    {
      v21 = v7;
      v22 = v6;

      if ((static BNFGrammarRuleExpression.== infix(_:_:)(&v22, &v21) & 1) != 0 || (v21 = v6, v22 = v6, v20 = v7, sub_22C47285C(&v21, &v20, &v19), v10 = static BNFGrammarRuleExpression.== infix(_:_:)(&v22, &v19), , (v10 & 1) == 0))
      {
        if (v9)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_27:

      return 1;
    }

    sub_22C36BC58();
    v11 = sub_22C90B4FC();

    if (v11)
    {
      goto LABEL_27;
    }

LABEL_18:
    sub_22C474BF4();
    if ((sub_22C90B4FC() & 1) == 0)
    {
      sub_22C474BF4();
      v12 = sub_22C90B4FC();

      goto LABEL_23;
    }

LABEL_19:
    v21 = v6;
    v22 = v7;
    if (static BNFGrammarRuleExpression.== infix(_:_:)(&v22, &v21))
    {

      goto LABEL_24;
    }

    v21 = v7;
    v22 = v7;
    v20 = v6;
    sub_22C47285C(&v21, &v20, &v19);
    v12 = static BNFGrammarRuleExpression.== infix(_:_:)(&v22, &v19);

LABEL_23:

    if (v12)
    {
      return 0;
    }

LABEL_24:
    v3 = v17 + 3;
    v4 = v16 + 3;
    v2 = v18 + 1;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22C4730A0(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v37 - v5;
  v6 = sub_22C901FAC();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  v18 = 0;
  v38 = a2;
  v19 = *(a2 + 16);
  v40 = v9 + 16;
  v20 = (v9 + 8);
  while (v19 != v18)
  {
    sub_22C474C08();
    v23 = v22 & ~v21;
    v24 = *(v9 + 72) * v18;
    v25 = *(v9 + 16);
    result = v25(v17, v38 + v23 + v24, v6);
    v26 = *(v39 + 16);
    if (v18 == v26)
    {
      (*v20)(v17, v6);
      return 0;
    }

    if (v18++ >= v26)
    {
      __break(1u);
      goto LABEL_18;
    }

    v25(v14, v39 + v23 + v24, v6);
    sub_22C474B80();
    if (sub_22C90A06C())
    {
      v36 = *v20;
      (*v20)(v14, v6);
      v36(v17, v6);
      return 1;
    }

    v27 = sub_22C90A06C();
    v28 = *v20;
    (*v20)(v14, v6);
    result = (v28)(v17, v6);
    if (v27)
    {
      return 0;
    }
  }

  v29 = *(v39 + 16);
  v30 = v19 != v29;
  if (v19 == v29)
  {
    v35 = 1;
    v34 = v37;
    goto LABEL_15;
  }

  if (v19 < v29)
  {
    sub_22C474C08();
    v34 = v37;
    (*(v9 + 16))(v37, v33 + (v32 & ~v31) + *(v9 + 72) * v19, v6);
    v35 = 0;
LABEL_15:
    sub_22C36C640(v34, v35, 1, v6);
    sub_22C3770B0(v34, &qword_27D9BC030, &unk_22C911CC0);
    return v30;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_22C4733B4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v7 = ~(-1 << v5);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 64);
  v25 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v6 = ~(-1 << -v9);
  }

  v10 = v6 & *(a1 + 64);
  v11 = (v5 + 63) >> 6;
  v23 = -1 << *(a1 + 32);
  v24 = (63 - v9) >> 6;

  v12 = 0;
  v13 = 0;
  v26 = v2;
  while (v8)
  {
LABEL_12:
    v15 = *(*(v2 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
    if (!v10)
    {
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v24)
        {

          sub_22C377BF0();
          sub_22C36A674();

          goto LABEL_28;
        }

        v10 = *(v25 + 8 * v13);
        ++v16;
        if (v10)
        {
          goto LABEL_17;
        }
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_17:
    v17 = v3;
    v18 = *(*(v3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v10)))));

    if (sub_22C472AD8(v19, v15))
    {
      sub_22C36A674();

LABEL_29:
      sub_22C388F1C();
      return;
    }

    v8 &= v8 - 1;
    v10 &= v10 - 1;
    v20 = sub_22C472AD8(v15, v18);

    v3 = v17;
    v2 = v26;
    if (v20)
    {
      sub_22C36A674();
LABEL_28:

      goto LABEL_29;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v11)
    {
      break;
    }

    v8 = *(v4 + 8 * v14);
    ++v12;
    if (v8)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

  if (v10)
  {
LABEL_25:
    sub_22C377BF0();
    sub_22C36A674();
    goto LABEL_29;
  }

  v21 = v13;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v24)
    {
      sub_22C377BF0();
      sub_22C36A674();
      goto LABEL_29;
    }

    ++v21;
    if (*(v25 + 8 * v22))
    {
      goto LABEL_25;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_22C473658(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  v6 = result + 32;
  while (1)
  {
    if (v4 == v3)
    {
      v12 = *(v2 + 16);
      if (v4 == v12)
      {
        return 0;
      }

      if (v4 >= v12)
      {
        __break(1u);
LABEL_15:
      }

      return 1;
    }

    v7 = *(v2 + 16);
    if (v3 == v7)
    {
      return 0;
    }

    if (v3 >= v7)
    {
      break;
    }

    v8 = *(v5 + 8 * v3);
    v9 = *(v6 + 8 * v3);
    v15 = v9;
    v16 = v8;

    if ((static BNFGrammarRuleExpression.== infix(_:_:)(&v16, &v15) & 1) == 0)
    {
      v15 = v8;
      v16 = v8;
      v14 = v9;
      sub_22C47285C(&v13, &v15, &v14);
      v10 = static BNFGrammarRuleExpression.== infix(_:_:)(&v16, &v13);

      if (v10)
      {
        goto LABEL_15;
      }
    }

    v15 = v8;
    v16 = v9;
    if (static BNFGrammarRuleExpression.== infix(_:_:)(&v16, &v15))
    {
    }

    else
    {
      v15 = v9;
      v16 = v9;
      v14 = v8;
      sub_22C47285C(&v13, &v15, &v14);
      v11 = static BNFGrammarRuleExpression.== infix(_:_:)(&v16, &v13);

      if (v11)
      {
        return 0;
      }
    }

    ++v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4737D0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = (result + 48);
  v5 = (a2 + 48);
  while (v3 != v2)
  {
    v6 = *(result + 16);
    if (v2 == v6)
    {
      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    }

    if (v2 >= v6)
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *v5;
    v8 = *v4;
    if (v7 == v8)
    {
      v9 = *(v4 - 2);
      v10 = *(v5 - 2) >> 14;
      if (v10 == v9 >> 14)
      {
        v11 = *(v4 - 1);
        v12 = *(v5 - 1) >> 14;
        if (v12 < v11 >> 14)
        {
          return 1;
        }

        if (v11 >> 14 < v12)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }
      }

      else
      {
        v13 = v9 >> 14;
        if (v10 < v13)
        {
          return 1;
        }

        if (v13 < v10)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }
      }
    }

    else
    {
      if (v7 < v8)
      {
        return 1;
      }

      if (v8 < v7)
      {
        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      }
    }

    v4 += 24;
    v5 += 24;
    ++v2;
  }

  v14 = *(result + 16);
  if (v3 == v14)
  {
    return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  if (v3 < v14)
  {
    return 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t static BNFGrammarRuleExpression.< infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v8 = *a2;
  v9 = v2;
  if (static BNFGrammarRuleExpression.== infix(_:_:)(&v9, &v8))
  {
    v4 = 0;
  }

  else
  {
    v8 = v2;
    v9 = v2;
    v7 = v3;
    sub_22C47285C(&v8, &v7, &v6);
    v4 = static BNFGrammarRuleExpression.== infix(_:_:)(&v9, &v6);
  }

  return v4 & 1;
}

BOOL sub_22C473928(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return (static BNFGrammarRuleExpression.< infix(_:_:)(&v3, &v4) & 1) == 0;
}

uint64_t sub_22C47395C(unint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a4)
  {
    switch(a3)
    {
      case 1:
        v4 = 2;
        if ((a2 & 1) != 0 && a1 == 1)
        {
          return sub_22C474BD8(0);
        }

        goto LABEL_27;
      case 2:
        v4 = 3;
        if ((a2 & 1) == 0 || a1 != 2)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 3:
        v4 = 4;
        if ((a2 & 1) == 0 || a1 != 3)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 4:
        v4 = 5;
        if ((a2 & 1) == 0 || a1 != 4)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 5:
        v4 = 6;
        if ((a2 & 1) == 0 || a1 != 5)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 6:
        v4 = 7;
        if ((a2 & 1) != 0 && a1 > 5)
        {
          return sub_22C474BD8(0);
        }

        goto LABEL_27;
      default:
        v4 = 1;
        if ((a2 & 1) != 0 && !a1)
        {
          return sub_22C474BD8(0);
        }

LABEL_27:
        if (a2)
        {
          goto LABEL_28;
        }

        v6 = 0;
        break;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return sub_22C474BD8(a3 < a1);
    }

    v4 = 0;
LABEL_28:
    v6 = 1;
    switch(a1)
    {
      case 1uLL:
        v6 = 2;
        break;
      case 2uLL:
        v6 = 3;
        break;
      case 3uLL:
        v6 = 4;
        break;
      case 4uLL:
        v6 = 5;
        break;
      case 5uLL:
        v6 = 6;
        break;
      case 6uLL:
        v6 = 7;
        break;
      default:
        return sub_22C474BD8(v4 < v6);
    }
  }

  return sub_22C474BD8(v4 < v6);
}

BOOL sub_22C473A94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    if (a2)
    {
      v4 = 0;
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (a4 == 1)
  {
    if (a2 != 1)
    {
      v4 = 1;
      goto LABEL_12;
    }

LABEL_21:
    v6 = 0;
    return sub_22C373304(v6);
  }

  if (a4 != 2)
  {
    if (a2 < 3)
    {
      v4 = 2;
      goto LABEL_12;
    }

    if (a3 != a1 || a4 != a2)
    {
      sub_22C36A88C();
      if ((sub_22C90B4FC() & 1) == 0)
      {
        sub_22C36A88C();
        v6 = sub_22C90B4FC();
        return sub_22C373304(v6);
      }
    }

    goto LABEL_21;
  }

  if (a2 == 2)
  {
    goto LABEL_21;
  }

  v4 = 3;
LABEL_12:
  if (a2 > 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = qword_22C914928[a2];
  }

  v6 = v4 < v5;
  return sub_22C373304(v6);
}

BOOL sub_22C473B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  static RootedBNFGrammar.< infix(_:_:)(v10, v11);
  return (v8 & 1) == 0;
}

BOOL sub_22C473BCC()
{
  sub_22C370600();
  if (v0)
  {
    v1 = type metadata accessor for SegmentedPrompt.Segment(0);
    v2 = sub_22C371728(v1);
    v4 = sub_22C472D84(v2, v3);
  }

  else
  {
    sub_22C57A6B4();
  }

  return sub_22C373304(v4);
}

BOOL sub_22C473C28(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C3885F0(a1, a2);
  v4 = sub_22C57B324(v2, v3);
  return sub_22C373304(v4);
}

BOOL sub_22C473C48()
{
  sub_22C38B88C();
  if (v4)
  {
    v5 = sub_22C472AD8(v2, v0);
  }

  else
  {
    v5 = sub_22C4730A0(v3, v1);
  }

  return sub_22C373304(v5);
}

BOOL sub_22C473C94(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C3885F0(a1, a2);
  v3 = sub_22C57BF08(v2);
  return sub_22C373304(v3);
}

BOOL sub_22C473CB4(uint64_t a1, uint64_t a2)
{
  sub_22C3885F0(a1, a2);
  sub_22C57A6B4();
  return sub_22C373304(v2);
}

BOOL sub_22C473CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return (static BNFGrammarRule.< infix(_:_:)(v7, v8) & 1) == 0;
}

uint64_t sub_22C473DBC()
{
  sub_22C36D73C();
  v6 = v4 < v5;
  if (v4 == v7 >> 14)
  {
    v8 = v3;
  }

  else
  {
    v8 = v6;
  }

  if (v1 == v0)
  {
    return sub_22C474BD8(v8);
  }

  else
  {
    return sub_22C474BD8(v2);
  }
}

uint64_t sub_22C473DF8(unint64_t a1, unint64_t a2, unsigned __int8 a3, unint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (a1 >> 14 == a4 >> 14)
  {
    v6 = a2 >> 14 < a5 >> 14;
  }

  else
  {
    v6 = a1 >> 14 < a4 >> 14;
  }

  if (a3 == a6)
  {
    return sub_22C474BD8(v6);
  }

  else
  {
    return sub_22C474BD8(a3 < a6);
  }
}

BOOL sub_22C473EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return (static BNFGrammarRule.< infix(_:_:)(v8, v7) & 1) == 0;
}

BOOL sub_22C473F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C46D6C8();
  if (v8)
  {
    v9 = sub_22C472AD8(a4, a2);
  }

  else
  {
    v9 = sub_22C4730A0(a3, a1);
  }

  return sub_22C373304(v9);
}

BOOL sub_22C473FFC()
{
  sub_22C57ADA4();
  if (v0)
  {
    v1 = type metadata accessor for SegmentedPrompt.Segment(0);
    v2 = sub_22C371728(v1);
    v4 = sub_22C472D84(v2, v3);
  }

  else
  {
    sub_22C57A6B4();
  }

  return sub_22C373304(v4);
}

BOOL sub_22C47404C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C3885F0(a1, a2);
  v4 = sub_22C472AD8(v2, v3);
  return sub_22C373304(v4);
}

BOOL sub_22C47406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  static RootedBNFGrammar.< infix(_:_:)(v11, v10);
  return (v8 & 1) == 0;
}

BOOL sub_22C4740AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    if (a4)
    {
      v4 = 0;
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (a2 == 1)
  {
    if (a4 != 1)
    {
      v4 = 1;
      goto LABEL_12;
    }

LABEL_21:
    v6 = 0;
    return sub_22C373304(v6);
  }

  if (a2 != 2)
  {
    if (a4 < 3)
    {
      v4 = 2;
      goto LABEL_12;
    }

    if (a1 != a3 || a2 != a4)
    {
      sub_22C36BC58();
      if ((sub_22C90B4FC() & 1) == 0)
      {
        sub_22C36BC58();
        v6 = sub_22C90B4FC();
        return sub_22C373304(v6);
      }
    }

    goto LABEL_21;
  }

  if (a4 == 2)
  {
    goto LABEL_21;
  }

  v4 = 3;
LABEL_12:
  if (a4 > 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = qword_22C914928[a4];
  }

  v6 = v4 < v5;
  return sub_22C373304(v6);
}

uint64_t sub_22C474198(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        v4 = 2;
        if ((a4 & 1) != 0 && a3 == 1)
        {
          return sub_22C474BD8(0);
        }

        goto LABEL_27;
      case 2:
        v4 = 3;
        if ((a4 & 1) == 0 || a3 != 2)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 3:
        v4 = 4;
        if ((a4 & 1) == 0 || a3 != 3)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 4:
        v4 = 5;
        if ((a4 & 1) == 0 || a3 != 4)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 5:
        v4 = 6;
        if ((a4 & 1) == 0 || a3 != 5)
        {
          goto LABEL_27;
        }

        return sub_22C474BD8(0);
      case 6:
        v4 = 7;
        if ((a4 & 1) != 0 && a3 > 5)
        {
          return sub_22C474BD8(0);
        }

        goto LABEL_27;
      default:
        v4 = 1;
        if ((a4 & 1) != 0 && !a3)
        {
          return sub_22C474BD8(0);
        }

LABEL_27:
        if (a4)
        {
          goto LABEL_28;
        }

        v6 = 0;
        break;
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      return sub_22C474BD8(a1 < a3);
    }

    v4 = 0;
LABEL_28:
    v6 = 1;
    switch(a3)
    {
      case 1uLL:
        v6 = 2;
        break;
      case 2uLL:
        v6 = 3;
        break;
      case 3uLL:
        v6 = 4;
        break;
      case 4uLL:
        v6 = 5;
        break;
      case 5uLL:
        v6 = 6;
        break;
      case 6uLL:
        v6 = 7;
        break;
      default:
        return sub_22C474BD8(v4 < v6);
    }
  }

  return sub_22C474BD8(v4 < v6);
}

BOOL sub_22C4742D0(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return (static BNFGrammarRuleExpression.< infix(_:_:)(&v4, &v3) & 1) == 0;
}

uint64_t sub_22C474310(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return static BNFGrammarRuleExpression.< infix(_:_:)(&v3, &v4) & 1;
}

unint64_t sub_22C474340(unint64_t result, char a2, uint64_t a3, char a4)
{
  if (a4)
  {
    switch(a3)
    {
      case 1:
        v4 = 2;
        if ((a2 & 1) != 0 && result == 1)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        goto LABEL_27;
      case 2:
        v4 = 3;
        if ((a2 & 1) == 0 || result != 2)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 3:
        v4 = 4;
        if ((a2 & 1) == 0 || result != 3)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 4:
        v4 = 5;
        if ((a2 & 1) == 0 || result != 4)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 5:
        v4 = 6;
        if ((a2 & 1) == 0 || result != 5)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 6:
        v4 = 7;
        if ((a2 & 1) == 0 || result <= 5)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      default:
        v4 = 1;
        if ((a2 & 1) != 0 && !result)
        {
          return result;
        }

LABEL_27:
        if (a2)
        {
          goto LABEL_28;
        }

        v5 = 0;
        break;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      return a3 < result;
    }

    v4 = 0;
LABEL_28:
    v5 = 1;
    switch(result)
    {
      case 1uLL:
        v5 = 2;
        break;
      case 2uLL:
        v5 = 3;
        break;
      case 3uLL:
        v5 = 4;
        break;
      case 4uLL:
        v5 = 5;
        break;
      case 5uLL:
        v5 = 6;
        break;
      case 6uLL:
        v5 = 7;
        break;
      default:
        return v4 < v5;
    }
  }

  return v4 < v5;
}

uint64_t sub_22C474474(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a4)
  {
    case 0:
      if (a2)
      {
        v4 = 0;
        goto LABEL_12;
      }

      return 0;
    case 1:
      if (a2 != 1)
      {
        v4 = 1;
        goto LABEL_12;
      }

      return 0;
    case 2:
      if (a2 != 2)
      {
        v4 = 3;
LABEL_12:
        if (a2 > 2)
        {
          v5 = 2;
        }

        else
        {
          v5 = qword_22C914928[a2];
        }

        return v4 < v5;
      }

      return 0;
  }

  if (a2 < 3)
  {
    v4 = 2;
    goto LABEL_12;
  }

  if (a3 == a1 && a4 == a2)
  {
    return 0;
  }

  sub_22C36A88C();
  if (sub_22C90B4FC())
  {
    return 0;
  }

  sub_22C36A88C();

  return sub_22C90B4FC();
}

uint64_t sub_22C474564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  static RootedBNFGrammar.< infix(_:_:)(v10, v11);
  return v8 & 1;
}

void sub_22C4745A4()
{
  sub_22C370600();
  if (v0)
  {
    v1 = type metadata accessor for SegmentedPrompt.Segment(0);
    v2 = sub_22C371728(v1);

    sub_22C472D84(v2, v3);
  }

  else
  {

    sub_22C57A6B4();
  }
}

uint64_t sub_22C474634()
{
  sub_22C38B88C();
  if (v4)
  {

    return sub_22C472AD8(v2, v0);
  }

  else
  {

    return sub_22C4730A0(v3, v1);
  }
}

uint64_t sub_22C4746D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v7[0] = a4;
  v7[1] = a5;
  v7[2] = a6;
  return static BNFGrammarRule.< infix(_:_:)(v7, v8) & 1;
}

uint64_t sub_22C4747C8()
{
  sub_22C36D73C();
  v6 = v4 < v5;
  if (v4 == v7 >> 14)
  {
    v8 = v3;
  }

  else
  {
    v8 = v6;
  }

  if (v1 == v0)
  {
    return v8;
  }

  else
  {
    return v2;
  }
}

uint64_t static BNFGrammarRule.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22C371738(), (sub_22C90B4FC() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;

    v5 = static BNFGrammarRuleExpression.< infix(_:_:)(&v8, &v7);

    return v5 & 1;
  }

  else
  {
    sub_22C371738();

    return sub_22C90B4FC();
  }
}

void static RootedBNFGrammar.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  sub_22C474BE0();

  v10 = static BNFGrammarRule.== infix(_:_:)(&v15, &v14);

  if (v10)
  {
    sub_22C36BC58();
    sub_22C388F1C();

    sub_22C472E00(v11, v12);
  }

  else
  {
    sub_22C474BE0();

    static BNFGrammarRule.< infix(_:_:)(&v15, &v14);

    sub_22C388F1C();
  }
}

uint64_t sub_22C474AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentedPrompt.Segment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C474B24(uint64_t a1)
{
  v2 = type metadata accessor for SegmentedPrompt.Segment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C474B80()
{
  result = qword_27D9BC868;
  if (!qword_27D9BC868)
  {
    sub_22C901FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC868);
  }

  return result;
}

uint64_t sub_22C474C14@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  v37 = v5;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v45 = inited;
  v39 = v8;

  v40 = v6;

  sub_22C3CC3D8(v7);
  sub_22C4771F4(v45);
  v11 = v10;
  v13 = v12;
  v14 = v12 + 32;
  KeyPath = swift_getKeyPath();
  v16 = 0;
  v17 = *(v13 + 16);
  v18 = v11 + 40;
  v41 = MEMORY[0x277D84F90];
LABEL_2:
  v19 = (v18 + 16 * v16);
  while (v16 < v17)
  {
    if (v16 >= *(v11 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v16 >= *(v13 + 16))
    {
      goto LABEL_23;
    }

    v42 = *(v19 - 1);
    v43 = *v19;
    v44 = *(v14 + 8 * v16);

    swift_getAtKeyPath();

    v4 = v45;
    v2 = v46;
    v3 = v47;
    if (v46)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v41 + 16);
        sub_22C5902A0();
        v41 = v25;
      }

      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_22C369AB0(v20);
        v36 = v26;
        sub_22C5902A0();
        v22 = v36;
        v41 = v27;
      }

      ++v16;
      *(v41 + 16) = v22;
      v23 = (v41 + 24 * v21);
      v23[4] = v45;
      v23[5] = v46;
      v23[6] = v47;
      v18 = v11 + 40;
      goto LABEL_2;
    }

    sub_22C477CA8(v45, 0);
    v19 += 2;
    ++v16;
  }

  v14 = v40;

  v17 = v39;

  v2 = sub_22C862EFC(1, v41);
  KeyPath = v28;
  v3 = v29;
  v4 = v30;
  if ((v30 & 1) == 0)
  {
LABEL_14:
    sub_22C46FF28(v2, KeyPath, v3, v4);
    v32 = v31;
    goto LABEL_21;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v33 + 16);

  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_24;
  }

  if (v34 != (v4 >> 1) - v3)
  {
LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

LABEL_21:
  swift_unknownObjectRelease();

  *a1 = v37;
  a1[1] = v14;
  a1[2] = v17;
  a1[3] = v32;
  return result;
}

void sub_22C474F34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  LODWORD(v175) = a4;
  v173 = a3;
  v181 = a2;
  v179 = a1;
  v161 = a5;
  v6 = sub_22C90634C();
  v7 = sub_22C369824(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v182 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v160 - v14;
  v16 = sub_22C90636C();
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v160 - v25;
  v172 = *v5;
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v27 = *(v19 + 8);
  v27(v24, v16);
  v28 = sub_22C90635C();
  v29 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v30 = swift_slowAlloc();
    v180 = v6;
    v31 = v30;
    *v30 = 0;
    v32 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v28, v29, v32, "PromptGrammar.minified", "", v31, 2u);
    v33 = v31;
    v6 = v180;
    MEMORY[0x2318B9880](v33, -1, -1);
  }

  (*(v9 + 16))(v182, v15, v6);
  v34 = sub_22C9063AC();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v160 = sub_22C90639C();
  (*(v9 + 8))(v15, v6);
  v27(v26, v16);
  v37 = 0;
  v186 = 0;
  v187 = MEMORY[0x277D84F90];
  v38 = v172;
  v39 = *(v172 + 16);
  v40 = v172 + 32;
  v176 = xmmword_22C90F800;
  v171 = v172 + 32;
  v174 = v39;
LABEL_4:
  while (2)
  {
    if (v37 == v39)
    {
      v72 = v40;
      v74 = sub_22C47755C(v173, v186, v187);
      v75 = *(v38 + 16);
      if (!v75)
      {

        v80 = MEMORY[0x277D84F90];
LABEL_73:
        *v161 = v80;
        sub_22C476D58();

        return;
      }

      v185 = MEMORY[0x277D84F90];
      v180 = v73;
      v76 = v75;
      sub_22C3B6E10();
      v77 = v180;
      v78 = v181;
      v79 = 0;
      v80 = v185;
      v175 = (v180 + 40);
      v182 = v74;
      v81 = v72;
      v162 = v76;
      while (1)
      {
        if (v79 >= *(v38 + 16))
        {
          goto LABEL_75;
        }

        v82 = v81 + 40 * v79;
        v83 = *v82;
        v84 = *(v82 + 8);
        v86 = *(v82 + 16);
        v85 = *(v82 + 24);
        LODWORD(v82) = *(v82 + 32);
        v174 = v86;
        LODWORD(v173) = v82;
        if ((v86 & 0x2000000000000000) != 0)
        {
          break;
        }

        v87 = v83;
        v88 = sub_22C36A8A0();
        v90 = v89;
        v92 = v91;
        sub_22C472434(v88, v93, v94);
        v81 = v92;
        v95 = v90;
        v96 = v87;
LABEL_68:
        v185 = v80;
        v156 = *(v80 + 16);
        v155 = *(v80 + 24);
        if (v156 >= v155 >> 1)
        {
          sub_22C369AB0(v155);
          v159 = v158;
          sub_22C3B6E10();
          v81 = v159;
          v95 = v162;
          v77 = v180;
          v80 = v185;
        }

        ++v79;
        *(v80 + 16) = v156 + 1;
        v157 = v80 + 40 * v156;
        *(v157 + 32) = v96;
        *(v157 + 40) = v84;
        *(v157 + 48) = v174;
        *(v157 + 56) = v85;
        *(v157 + 64) = v173;
        v74 = v182;
        if (v79 == v95)
        {

          goto LABEL_73;
        }
      }

      v169 = v79;
      v170 = v85;
      v97 = v77;
      v98 = *(v77 + 16);
      v168 = v83;
      if (v74)
      {

        v99 = sub_22C36A8A0();
        sub_22C472434(v99, v100, v101);

        v102 = sub_22C36A8A0();
        sub_22C472434(v102, v103, v104);

        sub_22C7DA844(v83, v84, v97 + 32, v98, (v74 + 16));
        if ((v106 & 1) == 0)
        {
          v107 = v105;
LABEL_44:
          v117 = v179;
          v186 = v179;
          v187 = v78;
          v116 = v78;

          MEMORY[0x2318B7850](22565, 0xE200000000000000);
          sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
          v118 = swift_allocObject();
          *(v118 + 16) = v176;
          *(v118 + 56) = MEMORY[0x277D83B88];
          *(v118 + 64) = MEMORY[0x277D83C10];
          *(v118 + 32) = v107;
          v83 = sub_22C90A14C();
          v166 = v119;

          goto LABEL_45;
        }
      }

      else
      {
        v108 = sub_22C7D9010(v83, v84, v97 + 32, v98);
        LODWORD(v178) = v109;

        v110 = sub_22C36A8A0();
        sub_22C472434(v110, v111, v112);

        v113 = sub_22C36A8A0();
        sub_22C472434(v113, v114, v115);
        v107 = v108;

        if ((v178 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v166 = v84;
      v116 = v78;
      v117 = v179;
LABEL_45:
      v167 = v83;
      v184 = v174 & 0xDFFFFFFFFFFFFFFFLL;
      v77 = v180;
      sub_22C47683C(&v184, v74, v180, v117, v116, &v186);

      v120 = v186;
      v121 = v170;
      v122 = *(v170 + 16);
      if (!v122)
      {
        v149 = sub_22C36A8A0();
        sub_22C472480(v149, v150, v151);
        v152 = sub_22C36A8A0();
        sub_22C472480(v152, v153, v154);

        v85 = MEMORY[0x277D84F90];
        v95 = v162;
        v81 = v171;
        v38 = v172;
LABEL_67:
        v174 = v120 | 0x2000000000000000;
        v78 = v181;
        v79 = v169;
        v96 = v167;
        v84 = v166;
        goto LABEL_68;
      }

      v163 = v186;
      v164 = v84;
      v165 = v80;
      v184 = MEMORY[0x277D84F90];
      sub_22C3B64F4();
      v77 = v180;
      v123 = 0;
      v124 = v121;
      v85 = v184;
      v177 = v124 + 32;
      v178 = v122;
      while (1)
      {
        v125 = (v177 + 24 * v123);
        v126 = *v125;
        v127 = v125[1];
        v128 = v125[2];
        v129 = v77;
        v130 = *(v77 + 16);
        if (!v74)
        {
          break;
        }

        swift_retain_n();

        sub_22C7DA844(v126, v127, v129 + 32, v130, (v74 + 16));
        v132 = v131;
        v134 = v133;

        if (v134)
        {
          goto LABEL_61;
        }

LABEL_59:
        v137 = v179;
        v138 = v181;
        v186 = v179;
        v187 = v181;

        MEMORY[0x2318B7850](22565, 0xE200000000000000);
        sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
        v139 = swift_allocObject();
        *(v139 + 16) = v176;
        *(v139 + 56) = MEMORY[0x277D83B88];
        *(v139 + 64) = MEMORY[0x277D83C10];
        *(v139 + 32) = v132;
        v126 = sub_22C90A14C();
        v141 = v140;

        v74 = v182;
LABEL_62:
        v183 = v128;
        v77 = v180;

        sub_22C47683C(&v183, v74, v77, v137, v138, &v186);

        v142 = v186;
        v184 = v85;
        v144 = *(v85 + 16);
        v143 = *(v85 + 24);
        if (v144 >= v143 >> 1)
        {
          sub_22C369AB0(v143);
          sub_22C3B64F4();
          v77 = v180;
          v85 = v184;
        }

        ++v123;
        *(v85 + 16) = v144 + 1;
        v145 = (v85 + 24 * v144);
        v145[4] = v126;
        v145[5] = v141;
        v145[6] = v142;
        v74 = v182;
        if (v123 == v178)
        {
          v146 = v168;
          v147 = v164;
          v148 = v174;
          sub_22C472480(v168, v164, v174);
          sub_22C472480(v146, v147, v148);

          v81 = v171;
          v38 = v172;
          v95 = v162;
          v80 = v165;
          v120 = v163;
          goto LABEL_67;
        }
      }

      v132 = 0;
      v135 = v175;
      while (v130 != v132)
      {
        v136 = *(v135 - 1) == v126 && *v135 == v127;
        if (v136 || (sub_22C90B4FC() & 1) != 0)
        {
          swift_retain_n();

          goto LABEL_59;
        }

        ++v132;
        v135 += 2;
      }

      swift_retain_n();

      v74 = v182;
LABEL_61:

      v141 = v127;
      v138 = v181;
      v137 = v179;
      goto LABEL_62;
    }

    if (v37 < *(v38 + 16))
    {
      v41 = (v40 + 40 * v37);
      v42 = v41[2];
      ++v37;
      if ((v42 & 0x2000000000000000) == 0)
      {
        continue;
      }

      v43 = *v41;
      v44 = v41[1];
      v45 = v41[3];
      if (v175)
      {
        sub_22C37272C();

        v46 = v45;
      }

      else
      {
        sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
        v47 = swift_allocObject();
        *(v47 + 16) = v176;
        *(v47 + 32) = v43;
        *(v47 + 40) = v44;
        *(v47 + 48) = v42 & 0xDFFFFFFFFFFFFFFFLL;
        v185 = v47;
        sub_22C37272C();

        sub_22C3CC3D8(v45);
        v46 = v185;
      }

      v177 = v44;
      v178 = v43;
      v180 = v45;
      v182 = v42;
      v48 = *(v46 + 16);
      if (v48)
      {
        v185 = MEMORY[0x277D84F90];
        sub_22C3B5E2C();
        v49 = v185;
        v50 = (v46 + 40);
        do
        {
          v51 = *(v50 - 1);
          v52 = *v50;
          v185 = v49;
          v54 = *(v49 + 16);
          v53 = *(v49 + 24);

          if (v54 >= v53 >> 1)
          {
            sub_22C3B5E2C();
            v49 = v185;
          }

          *(v49 + 16) = v54 + 1;
          v55 = v49 + 16 * v54;
          *(v55 + 32) = v51;
          *(v55 + 40) = v52;
          v50 += 3;
          --v48;
        }

        while (v48);
      }

      else
      {

        v49 = MEMORY[0x277D84F90];
      }

      v56 = 0;
      v57 = *(v49 + 16);
      while (1)
      {
LABEL_18:
        if (v56 == v57)
        {

          sub_22C472480(v178, v177, v182);
          v40 = v171;
          v38 = v172;
          v39 = v174;
          goto LABEL_4;
        }

        v58 = (v49 + 32 + 16 * v56);
        v59 = *v58;
        v60 = v58[1];
        ++v56;
        v61 = v186;
        v62 = v187;
        v63 = *(v187 + 16);
        if (!v186)
        {
          break;
        }

        v64 = v58[1];

        sub_22C7DA844(v59, v60, v62 + 32, v63, (v61 + 16));
        v66 = v65;

        if (v66)
        {
          goto LABEL_31;
        }

LABEL_32:
      }

      v67 = (v187 + 40);
      v68 = v63 + 1;
      while (--v68)
      {
        v69 = v67 + 2;
        if (*(v67 - 1) != v59 || *v67 != v60)
        {
          v71 = sub_22C90B4FC();
          v67 = v69;
          if ((v71 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

LABEL_31:
      sub_22C7D4160();
      goto LABEL_32;
    }

    break;
  }

  __break(1u);
LABEL_75:
  __break(1u);
}

void sub_22C475B54(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = a1;
    v13 = MEMORY[0x277D84F90];
    sub_22C3B6E10();
    v4 = v13;
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      sub_22C472434(v6, v7, v8);
      v10 = *(v13 + 16);
      if (v10 >= *(v13 + 24) >> 1)
      {
        sub_22C3B6E10();
      }

      v5 += 5;
      *(v13 + 16) = v10 + 1;
      v11 = v13 + 40 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      *(v11 + 56) = v9;
      *(v11 + 64) = 1;
      --v3;
    }

    while (v3);
    a1 = v12;
  }

  *a1 = v4;
}

uint64_t sub_22C475C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  v11 = v4[3];
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  v60 = inited;

  sub_22C3CC3D8(v11);
  v13 = v60;
  v14 = *(v60 + 16);
  v54 = a1;
  v55 = a2;
  if (v14)
  {
    v56 = a3;
    v58 = v11;
    v49 = v9;
    v51 = v8;
    v60 = MEMORY[0x277D84F90];
    sub_22C3B5E2C();
    v15 = v60;
    v16 = (v13 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v60 = v15;
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_22C3B5E2C();
        v15 = v60;
      }

      *(v15 + 16) = v19 + 1;
      v21 = v15 + 16 * v19;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v16 += 3;
      --v14;
    }

    while (v14);

    a2 = v55;
    v9 = v49;
    v8 = v51;
    a3 = v56;
    v11 = v58;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v22 = sub_22C3AD928(v15);
  v23 = sub_22C491A74(a3, v22);
  swift_bridgeObjectRetain_n();
  sub_22C3732F8();
  swift_bridgeObjectRetain_n();

  if (sub_22C5E935C(v8, v9, v23))
  {
    v60 = a1;
    v61 = a2;

    MEMORY[0x2318B7850](v8, v9);
    v8 = a1;
    v9 = a2;
  }

  else
  {
  }

  v62 = v10;

  sub_22C476484(&v62, v23, a1, a2, &v60);

  v24 = v60;
  v25 = *(v11 + 16);
  if (v25)
  {
    v47 = v60;
    v50 = v9;
    v62 = MEMORY[0x277D84F90];
    sub_22C3B64F4();
    v26 = 0;
    v27 = v62;
    v52 = v11 + 32;
    v53 = v25;
    do
    {
      v28 = (v52 + 24 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      if (*(v23 + 16))
      {
        v32 = *(v23 + 40);
        sub_22C90B62C();
        v57 = v31;
        swift_retain_n();

        sub_22C909FFC();
        v33 = sub_22C90B66C();
        v34 = ~(-1 << *(v23 + 32));
        while (1)
        {
          v35 = v33 & v34;
          if (((*(v23 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
          {
            break;
          }

          v36 = (*(v23 + 48) + 16 * v35);
          if (*v36 != v29 || v36[1] != v30)
          {
            v38 = sub_22C90B4FC();
            v33 = v35 + 1;
            if ((v38 & 1) == 0)
            {
              continue;
            }
          }

          v40 = v54;
          v39 = v55;
          v60 = v54;
          v61 = v55;

          MEMORY[0x2318B7850](v29, v30);
          v29 = v60;
          v41 = v61;
          v31 = v57;
          goto LABEL_25;
        }

        v31 = v57;
      }

      else
      {
        swift_retain_n();
      }

      v41 = v30;
      v40 = v54;
      v39 = v55;
LABEL_25:
      v59 = v31;

      sub_22C476484(&v59, v23, v40, v39, &v60);

      v42 = v60;
      v62 = v27;
      v44 = *(v27 + 16);
      v43 = *(v27 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22C369AB0(v43);
        sub_22C3B64F4();
        v27 = v62;
      }

      ++v26;
      *(v27 + 16) = v44 + 1;
      v45 = (v27 + 24 * v44);
      v45[4] = v29;
      v45[5] = v41;
      v45[6] = v42;
    }

    while (v26 != v53);

    swift_bridgeObjectRelease_n();
    v9 = v50;
    v24 = v47;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v27 = MEMORY[0x277D84F90];
  }

  *a4 = v8;
  a4[1] = v9;
  a4[2] = v24;
  a4[3] = v27;
}

uint64_t sub_22C4760BC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = *a1;
  switch(*a1 >> 62)
  {
    case 1uLL:
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v22 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *(v21 + 24);
      v24 = swift_allocObject();

      sub_22C3732F8();
      swift_bridgeObjectRetain_n();

      v25 = sub_22C46B654(v22, v23, a2, a3);
      v27 = v26;

      *(v24 + 16) = v25;
      *(v24 + 24) = v27;

      v4 = v24 | 0x4000000000000000;
      break;
    case 2uLL:
      if (*(*((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 16))
      {
        sub_22C37174C();
        v32 = MEMORY[0x277D84F90];
        sub_22C38701C();
        sub_22C374AE8();
        sub_22C477D40();
        sub_22C3732F8();
        swift_bridgeObjectRetain_n();

        sub_22C477D20();
        v7 = v32;
        do
        {
          sub_22C388600();

          sub_22C369CA0(v8, v9, v10, v11, v12);
          sub_22C377C00();
          if (v13)
          {
            sub_22C3B63F4();
            v7 = v32;
          }

          sub_22C477D04();
        }

        while (!v14);
      }

      else
      {
        sub_22C37174C();
        sub_22C374AE8();
        sub_22C477D40();
        sub_22C3732F8();
        swift_bridgeObjectRetain_n();
        sub_22C38701C();
        v7 = MEMORY[0x277D84F90];
      }

      v28 = swift_allocObject();
      *(v28 + 16) = v7;

      v4 = v28 | 0x8000000000000000;
      break;
    case 3uLL:
      if (*(*((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 16))
      {
        sub_22C37174C();
        v33 = MEMORY[0x277D84F90];
        sub_22C38701C();
        sub_22C374AE8();
        sub_22C477D40();
        sub_22C3732F8();
        swift_bridgeObjectRetain_n();

        sub_22C477D20();
        v15 = v33;
        do
        {
          sub_22C388600();

          sub_22C369CA0(v16, v17, v18, v19, v20);
          sub_22C377C00();
          if (v13)
          {
            sub_22C3B63F4();
            v15 = v33;
          }

          sub_22C477D04();
        }

        while (!v14);
      }

      else
      {
        sub_22C37174C();
        sub_22C374AE8();
        sub_22C477D40();
        sub_22C3732F8();
        swift_bridgeObjectRetain_n();
        sub_22C38701C();
        v15 = MEMORY[0x277D84F90];
      }

      v29 = swift_allocObject();
      *(v29 + 16) = v15;

      v4 = v29 | 0xC000000000000000;
      break;
    default:
      sub_22C37174C();

      break;
  }

  *a4 = v4;

  sub_22C3732F8();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C476484@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = *a1;
  v6 = *a1 >> 62;
  v7 = *a1 & 0x3FFFFFFFFFFFFFFFLL;
  v10 = a5;
  switch(v6)
  {
    case 1uLL:
      v25 = *(v7 + 16);
      v26 = *(v7 + 24);
      v27 = swift_allocObject();

      swift_bridgeObjectRetain_n();

      v28 = sub_22C476C9C(v25, v26, a2, a3);
      v30 = v29;

      *(v27 + 16) = v28;
      *(v27 + 24) = v30;

      v5 = v27 | 0x4000000000000000;
      break;
    case 2uLL:
      v11 = *(v7 + 16);
      v12 = *(v11 + 16);
      if (v12)
      {
        v39 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        sub_22C3B63F4();
        v13 = 32;
        v14 = v39;
        v15 = a3;
        do
        {
          v37 = *(v11 + v13);

          sub_22C476484(&v38, &v37, a2, v15, a4);
          v16 = v38;
          v39 = v14;
          v17 = *(v14 + 16);
          if (v17 >= *(v14 + 24) >> 1)
          {
            sub_22C3B63F4();
            v15 = a3;
            v14 = v39;
          }

          *(v14 + 16) = v17 + 1;
          *(v14 + 8 * v17 + 32) = v16;
          v13 += 8;
          --v12;
        }

        while (v12);

        v10 = a5;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v14 = MEMORY[0x277D84F90];
      }

      v31 = swift_allocObject();
      *(v31 + 16) = v14;

      v5 = v31 | 0x8000000000000000;
      break;
    case 3uLL:
      v18 = *(v7 + 16);
      v19 = *(v18 + 16);
      if (v19)
      {
        v39 = MEMORY[0x277D84F90];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        sub_22C3B63F4();
        v20 = 32;
        v21 = v39;
        v22 = a3;
        do
        {
          v37 = *(v18 + v20);

          sub_22C476484(&v38, &v37, a2, v22, a4);
          v23 = v38;
          v39 = v21;
          v24 = *(v21 + 16);
          if (v24 >= *(v21 + 24) >> 1)
          {
            sub_22C3B63F4();
            v22 = a3;
            v21 = v39;
          }

          *(v21 + 16) = v24 + 1;
          *(v21 + 8 * v24 + 32) = v23;
          v20 += 8;
          --v19;
        }

        while (v19);

        v10 = a5;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v21 = MEMORY[0x277D84F90];
      }

      v32 = swift_allocObject();
      *(v32 + 16) = v21;

      v5 = v32 | 0xC000000000000000;
      break;
    default:

      break;
  }

  *v10 = v5;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22C47683C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v6 = *a1;
  v10 = a6;
  switch(*a1 >> 62)
  {
    case 1uLL:
      v26 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *(v26 + 24);
      v29 = swift_allocObject();

      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v30 = sub_22C477044(v27, v28, a2, a3, a4, a5);
      v32 = v31;

      *(v29 + 16) = v30;
      *(v29 + 24) = v32;

      v6 = v29 | 0x4000000000000000;
      break;
    case 2uLL:
      v11 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *(v11 + 16);
      if (v12)
      {
        v43 = MEMORY[0x277D84F90];
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        sub_22C3B63F4();
        v13 = 32;
        v14 = v43;
        v15 = a4;
        v39 = v11;
        do
        {
          v41 = *(v11 + v13);

          sub_22C47683C(&v42, &v41, a2, a3, v15, a5);
          v16 = v42;
          v43 = v14;
          v17 = *(v14 + 16);
          if (v17 >= *(v14 + 24) >> 1)
          {
            sub_22C3B63F4();
            v15 = a4;
            v14 = v43;
          }

          *(v14 + 16) = v17 + 1;
          *(v14 + 8 * v17 + 32) = v16;
          v13 += 8;
          --v12;
          v11 = v39;
        }

        while (v12);

        v10 = a6;
      }

      else
      {
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v14 = MEMORY[0x277D84F90];
      }

      v33 = swift_allocObject();
      *(v33 + 16) = v14;

      v6 = v33 | 0x8000000000000000;
      break;
    case 3uLL:
      v18 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *(v18 + 16);
      if (v19)
      {
        v43 = MEMORY[0x277D84F90];
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        sub_22C3B63F4();
        v20 = 32;
        v21 = v43;
        v22 = a4;
        do
        {
          v23 = v18;
          v41 = *(v18 + v20);

          sub_22C47683C(&v42, &v41, a2, a3, v22, a5);
          v24 = v42;
          v43 = v21;
          v25 = *(v21 + 16);
          if (v25 >= *(v21 + 24) >> 1)
          {
            sub_22C3B63F4();
            v22 = a4;
            v21 = v43;
          }

          *(v21 + 16) = v25 + 1;
          *(v21 + 8 * v25 + 32) = v24;
          v20 += 8;
          --v19;
          v18 = v23;
        }

        while (v19);

        v10 = a6;
      }

      else
      {
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        v21 = MEMORY[0x277D84F90];
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v21;

      v6 = v34 | 0xC000000000000000;
      break;
    default:

      swift_bridgeObjectRetain_n();

      break;
  }

  *v10 = v6;
  swift_bridgeObjectRelease_n();
}

uint64_t sub_22C476C9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  if (sub_22C5E935C(a1, a2, a3))
  {

    MEMORY[0x2318B7850](v6, a2);
    return a4;
  }

  else
  {
  }

  return v6;
}

double sub_22C476D14@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C58B038(*a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_22C476D58()
{
  v0 = sub_22C90637C();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22C90634C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v20 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v20, v17, "PromptGrammar.minified", v15, v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22C477044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v17 = a1;
  v18 = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = &v17;
  v9 = sub_22C7D5C1C(sub_22C477C20, v16, a4);
  if (v10)
  {
  }

  else
  {
    v11 = v9;
    v17 = a5;
    v18 = a6;

    MEMORY[0x2318B7850](22565, 0xE200000000000000);
    sub_22C3A5908(&qword_27D9BB5D8, &unk_22C91A680);
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D83B88];
    *(v12 + 16) = xmmword_22C90F800;
    v14 = MEMORY[0x277D83C10];
    *(v12 + 56) = v13;
    *(v12 + 64) = v14;
    *(v12 + 32) = v11;
    v8 = sub_22C90A14C();
  }

  return v8;
}

uint64_t sub_22C47715C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = v4;
  v9[3] = v3;
  v9[4] = v10;
  sub_22C7D5C1C(sub_22C477CEC, v9, v3);
  v6 = v5;
  if (v5)
  {
    sub_22C7D4160();
    v7 = *(v2[1] + 16) - 1;
  }

  return v6 & 1;
}

void sub_22C4771F4(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v30 = *(a1 + 16);
  v29 = a1 + 32;
LABEL_2:
  if (v1 == v30)
  {
  }

  else
  {
    if (v1 >= *(a1 + 16))
    {
      __break(1u);
    }

    else
    {
      v3 = (v29 + 24 * v1);
      v5 = *v3;
      v4 = v3[1];
      v6 = *(v33 + 16);
      v32 = v3[2];
      v7 = 0;
      for (i = (v33 + 40); ; i += 2)
      {
        if (v6 == v7)
        {

          swift_bridgeObjectRetain_n();
          sub_22C7D4160();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v2 + 16);
            sub_22C3B64D4();
          }

          v18 = *(v2 + 16);
          if (v18 >= *(v2 + 24) >> 1)
          {
            sub_22C3B64D4();
          }

          *(v2 + 16) = v18 + 1;
          v19 = v2 + 32;
          v12 = MEMORY[0x277D84F90];
          *(v2 + 32 + 8 * v18) = MEMORY[0x277D84F90];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 32 + 8 * v18) = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = *(MEMORY[0x277D84F90] + 16);

            sub_22C5902A0();
            v26 = *(v19 + 8 * v18);
            *(v19 + 8 * v18) = v27;

            v12 = *(v19 + 8 * v18);
          }

          v14 = *(v12 + 16);
          v15 = v14 + 1;
          if (v14 >= *(v12 + 24) >> 1)
          {
            sub_22C5902A0();
            v12 = v28;
            *(v19 + 8 * v18) = v28;
          }

LABEL_28:
          ++v1;
          *(v12 + 16) = v15;
          v21 = (v12 + 24 * v14);
          v21[4] = v5;
          v21[5] = v4;
          v21[6] = v32;

          goto LABEL_2;
        }

        v9 = *(i - 1) == v5 && *i == v4;
        if (v9 || (sub_22C90B4FC() & 1) != 0)
        {
          break;
        }

        ++v7;
      }

      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C56C14C(v2);
        v2 = v10;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_32;
        }

        v11 = v2 + 32;
        v12 = *(v2 + 32 + 8 * v7);
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 32 + 8 * v7) = v12;
        if ((v13 & 1) == 0)
        {
          v22 = *(v12 + 16);

          sub_22C5902A0();
          v23 = *(v11 + 8 * v7);
          *(v11 + 8 * v7) = v24;

          v12 = *(v11 + 8 * v7);
        }

        v14 = *(v12 + 16);
        v15 = v14 + 1;
        if (v14 >= *(v12 + 24) >> 1)
        {
          sub_22C5902A0();
          v12 = v16;
          *(v11 + 8 * v7) = v16;
        }

        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_22C47755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    MEMORY[0x28223BE20](a1);
    v5 = 0;
    MEMORY[0x28223BE20]((v3 + 63) >> 6);
    sub_22C9031BC();
    __break(1u);

    result = sub_22C477BDC(0, v5);
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

unint64_t sub_22C4776C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a3 + 16);
  sub_22C9031EC();
  v8 = a2;
  v9 = a4 + 56;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 56);
  v13 = (v10 + 63) >> 6;
  v38 = a4;

  v14 = 0;
  v34 = v7;
  v35 = (v5 + 40);
  v39 = v7;
  v36 = a2;
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = (*(v38 + 48) + ((v14 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];
    if (v8)
    {
      v20 = v17[1];

      sub_22C7DA844(v19, v18, v5 + 32, v39, (v8 + 16));
      v22 = v21;
      v24 = v23;

      if ((v24 & 1) == 0 && (v22 & 0x8000000000000000) == 0)
      {
LABEL_22:
        v8 = v36;
        if (sub_22C9031CC())
        {
          if (v34 == 1)
          {
            goto LABEL_29;
          }

          --v34;
        }
      }
    }

    else
    {
      v25 = v5;
      v26 = 0;
      v27 = v35;
      while (v39 != v26)
      {
        v28 = *(v27 - 1) == v19 && *v27 == v18;
        if (v28 || (sub_22C90B4FC() & 1) != 0)
        {

          v5 = v25;
          goto LABEL_22;
        }

        ++v26;
        v27 += 2;
      }

      v5 = v25;
      v8 = v36;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      v29 = v8;
      v30 = *a1;
      v31 = a1[1];
      v32 = sub_22C3B0E80();

      return sub_22C47797C(v30, v31, v34, 0, v32, v29, v5);
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_29:

  return 0;
}

void *sub_22C477920(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_22C477BDC(v6, v7);
  }

  return result;
}

unint64_t sub_22C47797C(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v12 = result;
  if (a4)
  {
    if (result && a2)
    {
      a3 = 0;
      v13 = 8 * a2;
      v14 = result;
      while (1)
      {
        v15 = vcnt_s8(*v14);
        v15.i16[0] = vaddlv_u8(v15);
        v16 = __OFADD__(a3, v15.u32[0]);
        a3 += v15.u32[0];
        if (v16)
        {
          goto LABEL_29;
        }

        ++v14;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_7;
        }
      }
    }

    goto LABEL_11;
  }

LABEL_7:
  if (!a3)
  {
LABEL_11:
    sub_22C40776C(a5, 0);

    return 0;
  }

  if (a3 != *(a7 + 16))
  {
    result = a3 + a5;
    if (__OFADD__(a3, a5))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_22C40776C(result, 0);
    v22 = 0;
    if (a2 > 0)
    {
      v17 = *v12;
    }

    while (1)
    {
      result = sub_22C9031DC();
      if (v18)
      {

        return v22;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      if (result >= *(a7 + 16))
      {
        goto LABEL_28;
      }

      v19 = (a7 + 32 + 16 * result);
      v20 = *v19;
      v21 = v19[1];

      sub_22C405F74(v20, v21);
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a6)
  {
    swift_beginAccess();
    result = MEMORY[0x2318B0640](*(v8 + 16) & 0x3FLL);
  }

  else
  {
    result = 15;
  }

  if (__OFSUB__(result, a3))
  {
    goto LABEL_31;
  }

  if ((result - a3) >= a5)
  {
    return v8;
  }

  v22 = v8;
  result = a3 + a5;
  if (!__OFADD__(a3, a5))
  {
    sub_22C40776C(result, 0);
    return v22;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_22C477B6C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, unint64_t *a5@<X8>)
{
  result = sub_22C4776C4(a1, a2, a3, *a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_22C477BDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22C477C44()
{
  result = qword_27D9BC870;
  if (!qword_27D9BC870)
  {
    sub_22C3AC1A0(&qword_27D9BAE30, &qword_22C914EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC870);
  }

  return result;
}

uint64_t sub_22C477CA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_22C477D20()
{

  sub_22C3B63F4();
}

uint64_t sub_22C477D40()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_22C477D58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_22C477DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_22C477E04(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C477E68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_22C477EA8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_22C477F1C()
{
  sub_22C369980();
  v0[2] = v1;
  v2 = sub_22C9063DC();
  v0[3] = v2;
  sub_22C3699B8(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C477FCC()
{
  sub_22C36D5EC();
  v1 = v0[5];
  sub_22C903F7C();
  v2 = sub_22C9063CC();
  v3 = sub_22C90AACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22C366000, v2, v3, "Grammar generation disabled. Using empty PromptGrammar.", v4, 2u);
    MEMORY[0x2318B9880](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);
  *v8 = MEMORY[0x277D84F90];

  sub_22C369A24();

  return v9();
}

uint64_t sub_22C4780D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C478170;

  return sub_22C477F1C();
}

uint64_t sub_22C478170()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22C369970();
  *v4 = v3;

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C478254()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_22C90634C();
  v1[7] = v4;
  sub_22C3699B8(v4);
  v1[8] = v5;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = sub_22C90636C();
  v1[11] = v8;
  sub_22C3699B8(v8);
  v1[12] = v9;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C478374()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  sub_22C90364C();
  sub_22C90364C();
  sub_22C90635C();
  sub_22C90631C();
  v31 = *(v4 + 8);
  v31(v2, v3);
  v6 = sub_22C90635C();
  v7 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v8 = v0[10];
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v6, v7, v10, "StandalonePromptGrammarGenerator.generateGrammar", "", v9, 2u);
    MEMORY[0x2318B9880](v9, -1, -1);
  }

  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];
  v15 = v0[8];
  v14 = v0[9];
  v17 = v0[6];
  v16 = v0[7];

  (*(v15 + 16))(v14, v13, v16);
  v18 = sub_22C9063AC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[15] = sub_22C90639C();
  (*(v15 + 8))(v13, v16);
  v31(v11, v12);
  v21 = v17[4];
  sub_22C374168(v17, v17[3]);
  v22 = *(v21 + 8);
  sub_22C36CCA8();
  v32 = v23 + *v23;
  v25 = *(v24 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[16] = v26;
  *v26 = v27;
  v26[1] = sub_22C4785F4;
  v28 = v0[5];
  sub_22C46BC34();

  return v29();
}

uint64_t sub_22C4785F4()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = *(v2 + 128);
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C4786F4()
{
  sub_22C36D5EC();
  v1 = v0[6];
  v0[18] = v0[2];
  v2 = v1[9];
  sub_22C374168(v1 + 5, v1[8]);
  v3 = *(v2 + 8);
  sub_22C36CCA8();
  v12 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  sub_22C36CC90();
  v0[19] = v7;
  *v7 = v8;
  v7[1] = sub_22C478814;
  v9 = v0[5];
  sub_22C46BC34();

  return v10();
}

uint64_t sub_22C478814()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  v4 = *(v2 + 152);
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {
    v7 = *(v3 + 144);
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C47891C()
{
  v1 = v0[18];
  sub_22C371758();
  v2 = v0[4];
  v6 = v3;
  sub_22C3CC9E4(v0[3]);
  *v2 = v6;
  sub_22C478B0C();

  sub_22C369A24();

  return v4();
}

uint64_t sub_22C4789DC()
{
  sub_22C36D5EC();
  v1 = *(v0 + 136);
  sub_22C371758();
  sub_22C478B0C();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C478A74()
{
  sub_22C36D5EC();
  v1 = *(v0 + 160);
  sub_22C371758();
  sub_22C478B0C();

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C478B0C()
{
  v0 = sub_22C90637C();
  v21 = *(v0 - 8);
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_22C90634C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C90364C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v20 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {

    sub_22C9063BC();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v20, v17, "StandalonePromptGrammarGenerator.generateGrammar", v15, v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22C478DF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C478254();
}

void sub_22C478ED0()
{
  sub_22C3A5908(&qword_27D9BB118, &qword_22C90D9B8);
  v1 = sub_22C90644C();
  sub_22C369824(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22C90F7F0;
  v8 = v7 + v6;
  v9 = *(v3 + 104);
  v9(v7 + v6, *MEMORY[0x277D1D890], v1);
  v9(v8 + v5, *MEMORY[0x277D1D880], v1);
  v9(v8 + 2 * v5, *MEMORY[0x277D1D888], v1);
  v9(v8 + 3 * v5, *MEMORY[0x277D1D878], v1);
  v9(v8 + 4 * v5, *MEMORY[0x277D1D898], v1);
  sub_22C7F4B3C();
  v11 = v10;
  v12 = 0;
  v18 = MEMORY[0x277D84F90];
  v13 = *(v10 + 16);
  v14 = v10 + v6;
  while (v13 != v12)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v15 = *(v0 + 16);
    v16 = sub_22C47915C(v14);
    ++v12;
    sub_22C3CCDDC(v16);
    v14 += v5;
  }

  v17 = *(v0 + 8);

  v17(v18);
}

uint64_t sub_22C47915C(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v62 - v5;
  v76 = sub_22C908ABC();
  v7 = sub_22C369824(v76);
  v71 = v8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  v16 = sub_22C908AEC();
  v17 = sub_22C369824(v16);
  v69 = v18;
  v70 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v68 = &v62 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v62 - v26;
  v28 = sub_22C9071AC();
  if (v1)
  {
    return a1;
  }

  sub_22C8741B8(v28, v29, v30, v31, v32, v33, v34, v35, v62, v63, 0, a1, v65, v15, v13, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
  v37 = v36;

  sub_22C90718C();
  v39 = v68;
  v38 = v69;
  v40 = v70;
  (*(v69 + 16))(v68, v27, v70);
  result = (*(v38 + 32))(v23, v27, v40);
  v42 = 0;
  v73 = *(v37 + 16);
  v74 = v37;
  v65 = (v71 + 32);
  v43 = v37 + 40;
  v72 = MEMORY[0x277D84F90];
  v44 = v38;
  v63 = v43;
LABEL_3:
  v45 = (v43 + 16 * v42);
  while (1)
  {
    if (v73 == v42)
    {
      v59 = *(v44 + 8);
      v59(v39, v40);

      v60 = (v59)(v23, v40);
      MEMORY[0x28223BE20](v60);
      *(&v62 - 2) = v64;
      sub_22C7930C0();
      a1 = v61;

      return a1;
    }

    if (v42 >= *(v74 + 16))
    {
      break;
    }

    v46 = v23;
    v47 = v40;
    v49 = *(v45 - 1);
    v48 = *v45;

    sub_22C908ACC();

    v50 = v76;
    if (sub_22C370B74(v6, 1, v76) != 1)
    {
      v51 = *v65;
      (*v65)(v66, v6, v50);
      v51(v67, v66, v50);
      v52 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v72 + 16);
        sub_22C592E40();
        v72 = v57;
      }

      v53 = *(v72 + 16);
      if (v53 >= *(v72 + 24) >> 1)
      {
        sub_22C592E40();
        v72 = v58;
      }

      ++v42;
      v54 = v71;
      v55 = v72;
      *(v72 + 16) = v53 + 1;
      result = v52(v55 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v53, v67, v76);
      v40 = v47;
      v23 = v46;
      v43 = v63;
      goto LABEL_3;
    }

    result = sub_22C46B89C(v6);
    v45 += 2;
    ++v42;
    v40 = v47;
    v23 = v46;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4795F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v53 = a2;
  v54 = a1;
  v3 = sub_22C9063DC();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C90644C();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C908EAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C908DAC();
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22C908ABC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v54, v18);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == *MEMORY[0x277D1E8E0])
  {
    (*(v19 + 96))(v22, v18);
    v24 = *(v11 + 32);
    v25 = v51;
    v24(v51, v22, v10);
    v26 = v52;
    (*(v52 + 104))(v9, *MEMORY[0x277D1D898], v6);
    sub_22C479C48();
    sub_22C90A56C();
    sub_22C90A56C();
    (*(v26 + 8))(v9, v6);
    v27 = v57;
    v28 = v56;
    v29 = v55;
    v24(v55, v25, v10);
    v30 = sub_22C9036EC();
    if (v27 == v28)
    {
      v31 = MEMORY[0x277D1ECD8];
    }

    else
    {
      v31 = MEMORY[0x277D1ECE0];
    }

    (*(*(v30 - 8) + 104))(v29, *v31, v30);
    v35 = v29;
    v36 = v30;
    return sub_22C36C640(v35, 0, 1, v36);
  }

  v32 = v10;
  v33 = v55;
  if (v23 == *MEMORY[0x277D1E8C8])
  {
    (*(v19 + 96))(v22, v18);
    (*(v11 + 32))(v33, v22, v32);
    v34 = MEMORY[0x277D1ECD0];
LABEL_10:
    v38 = *v34;
    v39 = sub_22C9036EC();
    (*(*(v39 - 8) + 104))(v33, v38, v39);
    v35 = v33;
    v36 = v39;
    return sub_22C36C640(v35, 0, 1, v36);
  }

  if (v23 == *MEMORY[0x277D1E8D0])
  {
    (*(v19 + 96))(v22, v18);
    v37 = v47;
    (*(v47 + 32))(v17, v22, v14);
    sub_22C908D7C();
    (*(v37 + 8))(v17, v14);
    v34 = MEMORY[0x277D1ECE8];
    goto LABEL_10;
  }

  v41 = v48;
  sub_22C903F7C();
  v42 = sub_22C9063CC();
  v43 = sub_22C90AADC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22C366000, v42, v43, "Unknown tool type retrieved for grammar generation.", v44, 2u);
    MEMORY[0x2318B9880](v44, -1, -1);
  }

  (*(v49 + 8))(v41, v50);
  v45 = sub_22C9036EC();
  sub_22C36C640(v33, 1, 1, v45);
  return (*(v19 + 8))(v22, v18);
}

unint64_t sub_22C479C48()
{
  result = qword_27D9BC878;
  if (!qword_27D9BC878)
  {
    sub_22C90644C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC878);
  }

  return result;
}

uint64_t sub_22C479E44()
{
  sub_22C36A83C();
  result = swift_allocObject();
  strcpy((result + 16), "quoted_string");
  *(result + 30) = -4864;
  qword_27D9BC880 = 0xD000000000000012;
  *algn_27D9BC888 = 0x800000022C92E230;
  qword_27D9BC890 = result | 0x4000000000000000;
  return result;
}

uint64_t static PlannerGrammarConstants.Grammar_v4_0.dynamicQuotedStringLink.getter()
{
  if (qword_27D9BA648 != -1)
  {
    swift_once();
  }

  sub_22C47B16C(&qword_27D9BC880);
}

uint64_t sub_22C479F30()
{
  sub_22C36A83C();
  v0 = swift_allocObject();
  result = sub_22C47B190(v0, 0x800000022C930AE0);
  qword_27D9BC898 = v2;
  unk_27D9BC8A0 = 0x800000022C930AC0;
  qword_27D9BC8A8 = v3;
  return result;
}

uint64_t static PlannerGrammarConstants.Grammar_v4_0.dynamicClientToolsLink.getter()
{
  if (qword_27D9BA650 != -1)
  {
    swift_once();
  }

  sub_22C47B16C(&qword_27D9BC898);
}

uint64_t sub_22C47A004()
{
  sub_22C36A83C();
  v0 = swift_allocObject();
  result = sub_22C47B190(v0, 0x800000022C930A90);
  qword_27D9BC8B0 = v2;
  *algn_27D9BC8B8 = 0x800000022C930A70;
  qword_27D9BC8C0 = v3;
  return result;
}

uint64_t static PlannerGrammarConstants.Grammar_v4_0.dynamicResolvableToolNameLink.getter()
{
  if (qword_27D9BA658 != -1)
  {
    swift_once();
  }

  sub_22C47B16C(&qword_27D9BC8B0);
}

uint64_t static PlannerGrammarConstants.readGrammarFromBundle(grammarName:fileExtension:bundleId:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v62 = a3;
  v63 = a4;
  v10 = sub_22C9063DC();
  v11 = sub_22C369824(v10);
  v60 = v12;
  v61 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v58 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v57 = &v56 - v18;
  v19 = sub_22C90046C();
  v20 = sub_22C369824(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369ABC();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v56 - v29;
  sub_22C47A574();

  v31 = sub_22C47A5B8();
  if (v31)
  {
    v32 = v63;
    v63 = v31;
    v33 = sub_22C47AE68(a1, a2, v62, v32, v31);
    if (v33)
    {
      v34 = v33;
      sub_22C9003DC();

      (*(v22 + 32))(v30, v27, v19);
      v35 = v59;
      v36 = static PlannerGrammarConstants.readGrammar(from:)(v30);
      if (!v35)
      {
        a1 = v36;
        (*(v22 + 8))(v30, v19);

        return a1;
      }

      (*(v22 + 8))(v30, v19);
    }

    else
    {
      v45 = a1;
      v46 = v57;
      sub_22C903F7C();

      v47 = sub_22C9063CC();
      v48 = sub_22C90AADC();

      if (os_log_type_enabled(v47, v48))
      {
        a1 = sub_22C36FB44();
        v49 = sub_22C370060();
        v64 = v49;
        *a1 = 136315138;
        *(a1 + 4) = sub_22C36F9F4(v45, a2, &v64);
        sub_22C387034(&dword_22C366000, v50, v51, "Failed to load plan constraining grammar: unable to locate %s");
        sub_22C36FF94(v49);
        sub_22C3699EC();
        sub_22C3699EC();
      }

      (*(v60 + 8))(v46, v61);
      type metadata accessor for PlannerGrammarConstants.StaticGrammarError();
      sub_22C36A8B4();
      sub_22C47B060(v52, v53);
      sub_22C370620();
      *v54 = v45;
      v54[1] = a2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    v37 = v58;
    sub_22C903F7C();

    v38 = sub_22C9063CC();
    v39 = sub_22C90AADC();

    if (os_log_type_enabled(v38, v39))
    {
      a1 = sub_22C36FB44();
      v40 = sub_22C370060();
      v64 = v40;
      *a1 = 136315138;
      *(a1 + 4) = sub_22C36F9F4(a5, a6, &v64);
      sub_22C387034(&dword_22C366000, v41, v42, "Failed to load plan constraining grammar: unable to locate %s bundle");
      sub_22C36FF94(v40);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v60 + 8))(v37, v61);
    type metadata accessor for PlannerGrammarConstants.StaticGrammarError();
    sub_22C36A8B4();
    sub_22C47B060(v43, v44);
    sub_22C370620();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_22C47A574()
{
  result = qword_28142F980;
  if (!qword_28142F980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F980);
  }

  return result;
}

id sub_22C47A5B8()
{
  v0 = sub_22C90A0EC();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t type metadata accessor for PlannerGrammarConstants.StaticGrammarError()
{
  result = qword_27D9BC8D0;
  if (!qword_27D9BC8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PlannerGrammarConstants.readGrammar(from:)(uint64_t a1)
{
  v77 = sub_22C90046C();
  v3 = sub_22C369824(v77);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v73 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v67[-v11];
  v13 = sub_22C9063DC();
  v14 = sub_22C369824(v13);
  v74 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v76 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v67[-v21];
  v23 = sub_22C90A17C();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_22C9004AC();
  v75 = a1;
  if (v1)
  {
    v72 = v13;
    v27 = v1;
    v28 = v77;
  }

  else
  {
    v47 = v26;
    v48 = v25;
    sub_22C90A15C();
    v49 = sub_22C90A13C();
    if (v50)
    {
      v28 = v49;
      sub_22C38B120(v48, v47);
      return v28;
    }

    v70 = v48;
    v71 = v47;
    sub_22C903F7C();
    v52 = *(v5 + 16);
    v28 = v77;
    v52(v12, v75, v77);
    v53 = sub_22C9063CC();
    v54 = sub_22C90AADC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = sub_22C36FB44();
      v72 = v52;
      v56 = v55;
      v69 = sub_22C370060();
      v78 = v69;
      *v56 = 136315138;
      sub_22C369CCC();
      sub_22C47B060(v57, v58);
      v68 = v54;
      v59 = sub_22C90B47C();
      v61 = v60;
      (*(v5 + 8))(v12, v77);
      v62 = sub_22C36F9F4(v59, v61, &v78);
      v28 = v77;

      *(v56 + 4) = v62;
      _os_log_impl(&dword_22C366000, v53, v68, "Failed to load plan constraining grammar: unable to decode file as utf8 string %s", v56, 0xCu);
      sub_22C36FF94(v69);
      sub_22C3699EC();
      v52 = v72;
      sub_22C3699EC();
    }

    else
    {

      (*(v5 + 8))(v12, v28);
    }

    (*(v74 + 8))(v22, v13);
    v72 = v13;
    type metadata accessor for PlannerGrammarConstants.StaticGrammarError();
    sub_22C36A8B4();
    sub_22C47B060(v63, v64);
    v27 = swift_allocError();
    v65 = v75;
    v52(v66, v75, v28);
    a1 = v65;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C38B120(v70, v71);
  }

  v29 = v76;
  sub_22C903F7C();
  v30 = *(v5 + 16);
  v31 = v73;
  v30(v73, a1, v28);
  v32 = sub_22C9063CC();
  v33 = sub_22C90AADC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_22C36FB44();
    v35 = sub_22C370060();
    v71 = v27;
    v36 = v35;
    v78 = v35;
    *v34 = 136315138;
    sub_22C369CCC();
    sub_22C47B060(v37, v38);
    v39 = sub_22C90B47C();
    v40 = v31;
    v42 = v41;
    (*(v5 + 8))(v40, v77);
    v43 = sub_22C36F9F4(v39, v42, &v78);

    *(v34 + 4) = v43;
    _os_log_impl(&dword_22C366000, v32, v33, "Failed to load plan constraining grammar: unable to locate %s", v34, 0xCu);
    sub_22C36FF94(v36);
    v27 = v71;
    sub_22C3699EC();
    v28 = v77;
    sub_22C3699EC();

    (*(v74 + 8))(v76, v72);
  }

  else
  {

    (*(v5 + 8))(v31, v28);
    (*(v74 + 8))(v29, v72);
  }

  type metadata accessor for PlannerGrammarConstants.StaticGrammarError();
  sub_22C36A8B4();
  sub_22C47B060(v44, v45);
  sub_22C370620();
  v30(v46, v75, v28);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return v28;
}

uint64_t sub_22C47AC7C()
{
  v1 = type metadata accessor for PlannerGrammarConstants.StaticGrammarError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C47B0A8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v6 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = 2;
LABEL_5:
    sub_22C47B10C(v4);
  }

  return v6;
}

uint64_t sub_22C47AD30(uint64_t a1)
{
  v2 = sub_22C47B060(&qword_27D9BC8E0, type metadata accessor for PlannerGrammarConstants.StaticGrammarError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C47AD9C(uint64_t a1)
{
  v2 = sub_22C47B060(&qword_27D9BC8E0, type metadata accessor for PlannerGrammarConstants.StaticGrammarError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t DynamicGrammarLinkage.dynamicIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id sub_22C47AE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_22C90A0EC();
  v7 = sub_22C90A0EC();
  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

_BYTE *sub_22C47AEF8(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C47AFAC()
{
  result = sub_22C90046C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C47B060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C47B0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerGrammarConstants.StaticGrammarError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C47B10C(uint64_t a1)
{
  v2 = type metadata accessor for PlannerGrammarConstants.StaticGrammarError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C47B16C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
}

uint64_t sub_22C47B190@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = (v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000) + 15;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_22C47B1A4(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB6A8, &qword_22C90FAB8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = sub_22C90133C();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v12 = sub_22C90128C();
  sub_22C47CE34(&qword_27D9BB6B0);
  v13 = sub_22C90A4DC();
  v38 = MEMORY[0x277D84F90];
  sub_22C3B5E2C();
  v14 = v38;
  v37 = a1;

  v36 = v12;
  result = sub_22C90A4CC();
  if (v13 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v35 = v8;
  if (v13)
  {
    v32 = (v31 + 8);
    v34 = sub_22C47CE34(&qword_27D9BB6B8);
    do
    {
      sub_22C90ACEC();
      result = sub_22C370B74(v6, 1, v9);
      if (result == 1)
      {
        goto LABEL_15;
      }

      v16 = sub_22C90132C();
      v18 = v17;
      (*v32)(v6, v9);
      v38 = v14;
      v19 = *(v14 + 16);
      if (v19 >= *(v14 + 24) >> 1)
      {
        sub_22C3B5E2C();
        v14 = v38;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
    }

    while (--v13);
  }

  v34 = sub_22C47CE34(&qword_27D9BB6B8);
  v21 = (v31 + 32);
  v22 = (v31 + 8);
  while (1)
  {
    v23 = v35;
    sub_22C90ACEC();
    if (sub_22C370B74(v23, 1, v9) == 1)
    {
      break;
    }

    v24 = v33;
    (*v21)(v33, v23, v9);
    v25 = sub_22C90132C();
    v27 = v26;
    (*v22)(v24, v9);
    v38 = v14;
    v28 = *(v14 + 16);
    if (v28 >= *(v14 + 24) >> 1)
    {
      sub_22C3B5E2C();
      v14 = v38;
    }

    *(v14 + 16) = v28 + 1;
    v29 = v14 + 16 * v28;
    *(v29 + 32) = v25;
    *(v29 + 40) = v27;
  }

  sub_22C47CE78(v23);
  return v14;
}

uint64_t sub_22C47B6D0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v5 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22C3698E4();
  v30 = v8;
  result = MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {

      return v31;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    sub_22C47CEE0(a3 + v15 + v16 * v13, v12);
    v17 = v32(v12);
    if (v3)
    {
      sub_22C47CF44(v12);
      v27 = v31;

      return v27;
    }

    if (v17)
    {
      sub_22C47CFA0(v12, v30);
      v18 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v18 + 16);
        v21 = sub_22C373310();
        sub_22C3B7238(v21, v22, v23);
        v18 = v34;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v31 = v25 + 1;
        v29 = v25;
        sub_22C3B7238(v24 > 1, v25 + 1, 1);
        v26 = v31;
        v25 = v29;
        v18 = v34;
      }

      ++v13;
      *(v18 + 16) = v26;
      v31 = v18;
      result = sub_22C47CFA0(v30, v18 + v15 + v25 * v16);
    }

    else
    {
      result = sub_22C47CF44(v12);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C47B930(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v32 = a5;
  v37 = a1;
  v38 = a2;
  v40 = a4(0);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  v34 = v9;
  result = MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = 0;
  v39 = *(a3 + 16);
  v36 = v7 + 16;
  v15 = (v7 + 8);
  v33 = (v7 + 32);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v39 == v14)
    {

      return v35;
    }

    if (v14 >= *(a3 + 16))
    {
      break;
    }

    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = *(v7 + 72);
    v18 = a3;
    (*(v7 + 16))(v13, a3 + v16 + v17 * v14, v40);
    v19 = v37(v13);
    if (v5)
    {
      (*v15)(v13, v40);
      v28 = v35;

      return v28;
    }

    if (v19)
    {
      v31 = *v33;
      v31(v34, v13, v40);
      v20 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v20;
      if (isUniquelyReferenced_nonNull_native)
      {
        v22 = v20;
      }

      else
      {
        v23 = *(v20 + 16);
        v24 = sub_22C373310();
        v32(v24);
        v22 = v41;
      }

      a3 = v18;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v35 = v26 + 1;
        v30 = v26;
        (v32)(v25 > 1, v26 + 1, 1);
        v27 = v35;
        v26 = v30;
        a3 = v18;
        v22 = v41;
      }

      ++v14;
      *(v22 + 16) = v27;
      v35 = v22;
      result = (v31)(v22 + v16 + v26 * v17, v34, v40);
    }

    else
    {
      result = (*v15)(v13, v40);
      ++v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t Tokenizer.tokenize(string:)()
{
  result = sub_22C90134C();
  if (!v0)
  {
    v2 = sub_22C47B1A4(result);

    return v2;
  }

  return result;
}

uint64_t QuotableStringGrammarConverter.makeGrammar(from:identifier:renderingState:)@<X0>(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v74 = a3;
  v71 = a4;
  v8 = 0;
  v9 = *(isUniquelyReferenced_nonNull_native + 16);
  v10 = (isUniquelyReferenced_nonNull_native + 40);
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = &v10[2 * v8];
  while (v9 != v8)
  {
    if (v8 >= v9)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
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
      v62 = *(v11 + 16);
      sub_22C373310();
      sub_22C590240();
      v11 = v63;
      goto LABEL_34;
    }

    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_52;
    }

    v6 = *(v12 - 1);
    v14 = *v12;
    v15 = HIBYTE(*v12) & 0xF;
    if ((*v12 & 0x2000000000000000) == 0)
    {
      v15 = v6 & 0xFFFFFFFFFFFFLL;
    }

    ++v8;
    v12 += 2;
    if (v15)
    {
      v73 = v4;
      v75 = v5;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v11;
      v72 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = *(v11 + 16);
        sub_22C373310();
        sub_22C3B5E2C();
        v11 = v76;
      }

      v17 = *(v11 + 16);
      if (v17 >= *(v11 + 24) >> 1)
      {
        sub_22C3B5E2C();
        v11 = v76;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v6;
      *(v18 + 40) = v14;
      v8 = v13;
      v5 = v75;
      v10 = v72;
      v4 = v73;
      goto LABEL_2;
    }
  }

  v10 = &v66;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v65[2] = v4;
  v65[3] = a2;
  v65[4] = v74;
  sub_22C3B2880(sub_22C47CBC4, v65, v11);
  v20 = v5;
  if (v5)
  {
  }

  v9 = v19;
  v70 = 0;
  v73 = a2;

  swift_getKeyPath();
  v6 = *(v9 + 16);
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
LABEL_17:
  v24 = v20;
  while (v6 != v24)
  {
    if (v24 >= *(v9 + 16))
    {
      goto LABEL_53;
    }

    v20 = v24 + 1;
    v10 = *(v9 + 8 * v24 + 32);
    v78 = v10;

    swift_getAtKeyPath();

    v25 = v77;
    v24 = v20;
    if (v77)
    {
      v11 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = *(v23 + 16);
        sub_22C373310();
        sub_22C590270();
        v23 = v31;
      }

      v26 = v23;
      v27 = *(v23 + 16);
      v28 = v26;
      v10 = (v27 + 1);
      if (v27 >= *(v26 + 24) >> 1)
      {
        sub_22C590270();
        v28 = v32;
      }

      *(v28 + 16) = v10;
      v29 = v28 + 16 * v27;
      v23 = v28;
      *(v29 + 32) = v11;
      *(v29 + 40) = v25;
      goto LABEL_17;
    }
  }

  v75 = v6;

  v33 = *(v23 + 16);
  if (v33)
  {
    v76 = v22;
    sub_22C3B63F4();
    v11 = v76;
    v72 = v23;
    v34 = (v23 + 40);
    do
    {
      v36 = *(v34 - 1);
      v35 = *v34;
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v35;
      v76 = v11;
      v39 = *(v11 + 16);
      v38 = *(v11 + 24);

      if (v39 >= v38 >> 1)
      {
        sub_22C3B63F4();
        v11 = v76;
      }

      *(v11 + 16) = v39 + 1;
      *(v11 + 8 * v39 + 32) = v37 | 0x4000000000000000;
      v34 += 2;
      --v33;
    }

    while (v33);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v6 = v74;
  if ((v40 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_34:
  v41 = *(v11 + 16);
  if (v41 >= *(v11 + 24) >> 1)
  {
    sub_22C590240();
    v11 = v64;
  }

  *(v11 + 16) = v41 + 1;
  *(v11 + 8 * v41 + 32) = v10;
  v76 = v73;
  v77 = v6;

  MEMORY[0x2318B7850](0x746E65746E6F635FLL, 0xE800000000000000);
  v42 = v76;
  v6 = v77;
  v43 = swift_allocObject();
  *(v43 + 16) = v11;
  v72 = v43 | 0x8000000000000000;
  v44 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_22C90FB40;
  sub_22C36A8CC();
  v45 = swift_allocObject();
  *(v45 + 16) = 34;
  *(v45 + 24) = 0xE100000000000000;
  v10[4] = v45;
  sub_22C36A8CC();
  v46 = swift_allocObject();
  *(v46 + 16) = v42;
  *(v46 + 24) = v6;
  v10[5] = v46 | 0x4000000000000000;
  sub_22C36A8CC();
  v47 = swift_allocObject();
  *(v47 + 16) = 34;
  *(v47 + 24) = 0xE100000000000000;
  v10[6] = v47;
  *(v44 + 16) = v10;
  v67 = v44 | 0xC000000000000000;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_22C90F800;
  *(v48 + 32) = v42;
  *(v48 + 40) = v6;
  v66 = v48;
  *(v48 + 48) = v72;
  v69 = v43;

  swift_bridgeObjectRetain_n();

  v72 = v6;
  swift_bridgeObjectRetain_n();
  v68 = v44;

  v49 = 0;
  v50 = MEMORY[0x277D84F90];
  v51 = v75;
  while (v51 != v49)
  {
    if (v49 >= *(v9 + 16))
    {
      goto LABEL_54;
    }

    v52 = v9 + 8 * v49;
    v53 = *(v52 + 32);
    v10 = *(v53 + 16);
    v6 = *(v50 + 16);
    if (__OFADD__(v6, v10))
    {
      goto LABEL_55;
    }

    v54 = *(v52 + 32);

    if (!swift_isUniquelyReferenced_nonNull_native() || (v10 + v6) > *(v50 + 24) >> 1)
    {
      sub_22C5902A0();
      v50 = v55;
    }

    v51 = v75;
    if (*(v53 + 16))
    {
      if ((*(v50 + 24) >> 1) - *(v50 + 16) < v10)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v56 = *(v50 + 16);
        v57 = __OFADD__(v56, v10);
        v58 = v10 + v56;
        if (v57)
        {
          goto LABEL_58;
        }

        *(v50 + 16) = v58;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_56;
      }
    }

    ++v49;
  }

  v76 = v66;
  sub_22C3CC3D8(v50);

  v59 = v74;

  v60 = v76;
  v61 = v71;
  *v71 = v73;
  v61[1] = v59;
  v61[2] = v67;
  v61[3] = v60;
  return result;
}