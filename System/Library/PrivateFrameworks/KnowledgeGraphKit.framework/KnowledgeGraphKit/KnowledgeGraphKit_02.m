void *sub_255896D58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66D8, &qword_25596F038);
  v2 = *v0;
  v3 = sub_255965B70();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_255896EC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66D0, &qword_25596F028);
  v2 = *v0;
  v3 = sub_255965B70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25588BB90(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25587B098(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_255897064@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_255875B4C(a1);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2558966B4();
      v11 = v12;
    }

    *a2 = *(*(v11 + 56) + 8 * v8);
    result = sub_255879214(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

double sub_2558970F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_255875C80(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_255896EC0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_25587B098((*(v12 + 56) + 32 * v9), a3);
    sub_255879660(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_255897194(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v14 = *(*(a2 + 48) + v13);
      v15 = *(*(a2 + 56) + v13);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = a1[2];
      v20 = a1[3];
      v21 = *(a1 + 8);
      v17 = *a1;
      v18 = a1[1];
      MEMORY[0x259C43B00](v14);
      v16 = *(v15 + 16);
      MEMORY[0x259C43B00]([v16 hash]);

      result = sub_255965D90();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x259C43B00](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2558972F8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = sub_255965530();
      *(v4 + 16) = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = *(a2 + 16);

    v6 = [v5 startIndex];
    v8 = v7;
    v9 = 0;
    while (v6 != [*(a2 + 16) endIndex])
    {
      result = [*(a2 + 16) indexAfterIndex_];
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_14;
      }

      v8 = v10;
      *(v4 + 8 * v9 + 32) = v6;
      v6 = result;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        break;
      }
    }

    if (v9 > v3)
    {
      goto LABEL_15;
    }

    *(v4 + 16) = v9;
    return v4;
  }

  return result;
}

unint64_t sub_255897438()
{
  result = qword_27F7D66B0;
  if (!qword_27F7D66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D66B0);
  }

  return result;
}

unint64_t sub_25589748C()
{
  result = qword_27F7D66B8;
  if (!qword_27F7D66B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D66B8);
  }

  return result;
}

unint64_t sub_2558974E4()
{
  result = qword_27F7D66C0;
  if (!qword_27F7D66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D66C0);
  }

  return result;
}

__C::KGElementIdentifier __swiftcall KGElementIdentifier.advanced(by:)(__C::KGElementIdentifier by)
{
  if ((by.rawValue & 0x8000000000000000) == 0)
  {
    v2 = __CFADD__(v1, by.rawValue);
    by.rawValue += v1;
    if (!v2)
    {
      return by;
    }

    __break(1u);
  }

  v2 = v1 >= -by.rawValue;
  by.rawValue += v1;
  if (!v2)
  {
    __break(1u);
  }

  return by;
}

Swift::Int __swiftcall KGElementIdentifier.distance(to:)(__C::KGElementIdentifier to)
{
  v3 = to.rawValue >= v1;
  result = to.rawValue - v1;
  if (!v3)
  {
    v5 = v1 - to.rawValue;
    if (v5 >= 0)
    {
      return -v5;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (result < 0)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t *sub_2558975C4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (*result >= *v2)
  {
    if (*result - *v2 >= 0)
    {
      *a2 = *result - *v2;
      return result;
    }
  }

  else
  {
    if (v4 - v3 >= 0)
    {
      *a2 = v3 - v4;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_2558975FC@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    v5 = __CFADD__(v4, v3);
    v3 += v4;
    if (!v5)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v6 = -v3;
  v5 = v4 >= v6;
  v3 = v4 - v6;
  if (!v5)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  *a2 = v3;
  return result;
}

unint64_t *sub_25589762C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a4;
  v7 = *a6;
  if ((*a6 & 0x8000000000000000) == 0)
  {
    v8 = __CFADD__(v6, v7);
    v6 += v7;
    if (!v8)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v9 = -v7;
  v8 = v6 >= v9;
  v6 -= v9;
  if (!v8)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  *result = v6;
  return 0;
}

uint64_t *sub_255897664(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *a2 - *result;
  if (*a2 >= *result)
  {
    if (*a2 - *result >= 0)
    {
      return (v4 > 0);
    }
  }

  else
  {
    if (v2 - v3 >= 0)
    {
      v4 = v3 - v2;
      return (v4 > 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_25589769C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    if (*result - *a2 >= 0)
    {
      return (v4 < 1);
    }
  }

  else
  {
    if (v3 - v2 >= 0)
    {
      v4 = v2 - v3;
      return (v4 < 1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_2558976D4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *a2 - *result;
  if (*a2 >= *result)
  {
    if (*a2 - *result >= 0)
    {
      return (v4 < 1);
    }
  }

  else
  {
    if (v2 - v3 >= 0)
    {
      v4 = v3 - v2;
      return (v4 < 1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_25589770C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    if (*result - *a2 >= 0)
    {
      return (v4 > 0);
    }
  }

  else
  {
    if (v3 - v2 >= 0)
    {
      v4 = v2 - v3;
      return (v4 > 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_255897784()
{
  result = qword_2810B71C0;
  if (!qword_2810B71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810B71C0);
  }

  return result;
}

uint64_t sub_25589780C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KGElementIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25589785C()
{
  v2 = *v0;
  sub_255897784();
  return sub_2559658E0();
}

uint64_t sub_2558978A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25587B098(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_255879C58(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_2558988BC(a1, &qword_27F7D60F0, &qword_25596E410);
    sub_2558970F0(a2, a3, v10);

    return sub_2558988BC(v10, &qword_27F7D60F0, &qword_25596E410);
  }

  return result;
}

uint64_t FilterProperties.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (!v3)
  {

    v52 = a2;
    v6 = MEMORY[0x277D84F98];
LABEL_31:
    *v52 = v6;
    return result;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = MEMORY[0x277D84F98];
  while (v4 < *(v2 + 16))
  {
    sub_255898194(v5, v68);
    sub_255872164(v68, v65);
    sub_255872164(v69, v63);
    sub_25588B81C(v63, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66F8, &qword_25596F168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6700, &qword_25596F170);
    if (swift_dynamicCast())
    {
      sub_255872164(v57, v60);
      v9 = v66;
      v10 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v11 = (*(v10 + 8))(v9, v10);
      v13 = v12;
      v14 = v61;
      v15 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      (*(v15 + 8))(v59, v14, v15);
      sub_25587B098(v59, v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v6;
      v17 = sub_255875C80(v11, v13);
      v19 = v6[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_33;
      }

      v23 = v18;
      if (v6[3] >= v22)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_17;
        }

        v50 = v17;
        sub_255896EC0();
        v17 = v50;
        if (v23)
        {
          goto LABEL_3;
        }

LABEL_18:
        v6 = v56;
        v56[(v17 >> 6) + 8] |= 1 << v17;
        v43 = (v56[6] + 16 * v17);
        *v43 = v11;
        v43[1] = v13;
        sub_25587B098(v57, (v56[7] + 32 * v17));
        v44 = v56[2];
        v21 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v21)
        {
          goto LABEL_35;
        }

        v56[2] = v45;
      }

      else
      {
        sub_255896244(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_255875C80(v11, v13);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_37;
        }

LABEL_17:
        if ((v23 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_3:
        v7 = v17;

        v6 = v56;
        v8 = (v56[7] + 32 * v7);
        __swift_destroy_boxed_opaque_existential_0(v8);
        sub_25587B098(v57, v8);
      }

      __swift_destroy_boxed_opaque_existential_0(v60);
      goto LABEL_5;
    }

    v25 = v3;
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    sub_2558988BC(v57, &qword_27F7D6708, &qword_25596F178);
    v26 = v66;
    v27 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v28 = (*(v27 + 8))(v26, v27);
    v30 = v29;
    v31 = v64;
    v32 = __swift_project_boxed_opaque_existential_1(v63, v64);
    v61 = v31;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v60);
    (*(*(v31 - 8) + 16))(boxed_opaque_existential_0Tm, v32, v31);
    sub_25587B098(v60, v59);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v57[0] = v6;
    v36 = sub_255875C80(v28, v30);
    v37 = v6[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_34;
    }

    v40 = v35;
    if (v6[3] >= v39)
    {
      if ((v34 & 1) == 0)
      {
        sub_255896EC0();
      }
    }

    else
    {
      sub_255896244(v39, v34);
      v41 = sub_255875C80(v28, v30);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_37;
      }

      v36 = v41;
    }

    v3 = v25;
    v2 = a1;
    if (v40)
    {

      v6 = *&v57[0];
      v46 = (*(*&v57[0] + 56) + 32 * v36);
      __swift_destroy_boxed_opaque_existential_0(v46);
      sub_25587B098(v59, v46);
    }

    else
    {
      v6 = *&v57[0];
      *(*&v57[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v47 = (v6[6] + 16 * v36);
      *v47 = v28;
      v47[1] = v30;
      sub_25587B098(v59, (v6[7] + 32 * v36));
      v48 = v6[2];
      v21 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v21)
      {
        goto LABEL_36;
      }

      v6[2] = v49;
    }

LABEL_5:
    ++v4;
    __swift_destroy_boxed_opaque_existential_0(v63);
    __swift_destroy_boxed_opaque_existential_0(v65);
    v5 += 80;
    if (v3 == v4)
    {

      v52 = a2;
      goto LABEL_31;
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
  result = sub_255965CA0();
  __break(1u);
  return result;
}

Swift::Void __swiftcall FilterProperties.merge(_:)(KnowledgeGraphKit::FilterProperties a1)
{
  v2 = *a1.dictionary._rawValue;

  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  *v1 = 0x8000000000000000;
  sub_255898538(v2, sub_255898204, 0, isUniquelyReferenced_nonNull_native, &v7);

  v5 = v7;
  v6 = *v1;

  *v1 = v5;
}

KnowledgeGraphKit::FilterProperties __swiftcall FilterProperties.merging(_:)(KnowledgeGraphKit::FilterProperties a1)
{
  v3 = v1;
  v4 = *a1.dictionary._rawValue;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_255898538(v4, sub_255898204, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;

  *v3 = v7;
  return result;
}

uint64_t FilterProperties.set(_:for:)(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v7);

  return sub_255898250(v6, v9, v2, v4, v7, v5, v8);
}

uint64_t sub_255898034@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25588BB90(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_25587B098(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_2558988BC(v22, &qword_27F7D6710, "^Q");
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_255898194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66F0, &qword_25596F160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255898204@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25588BB90((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_255898250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v16;
  v39 = v17;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v37);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0Tm, a1, a4);
  (*(v12 + 16))(v15, a2, a5);
  sub_25588B81C(v37, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D66F8, &qword_25596F168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6700, &qword_25596F170);
  if (swift_dynamicCast())
  {
    sub_255872164(v31, v34);
    v19 = (*(a7 + 8))(a5, a7);
    v21 = v20;
    v22 = v35;
    v23 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v23 + 8))(v33, v22, v23);
    sub_2558978A4(v33, v19, v21);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_2558988BC(v31, &qword_27F7D6708, &qword_25596F178);
    v24 = (*(a7 + 8))(a5, a7);
    v26 = v25;
    v27 = v38;
    v28 = __swift_project_boxed_opaque_existential_1(v37, v38);
    v35 = v27;
    v29 = __swift_allocate_boxed_opaque_existential_0Tm(v34);
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    sub_2558978A4(v34, v24, v26);
  }

  __swift_destroy_boxed_opaque_existential_0(v37);
  return (*(v12 + 8))(v15, a5);
}

unint64_t sub_255898538(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_255898034(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_25587B098(v46, v44);
  v14 = *a5;
  result = sub_255875C80(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_255896244(v20, a4 & 1);
    v22 = *a5;
    result = sub_255875C80(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_255965CA0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_255896EC0();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_25587B098(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_25587B098(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_255898034(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_25587B098(v46, v44);
        v33 = *a5;
        result = sub_255875C80(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_255896244(v37, 1);
          v38 = *a5;
          result = sub_255875C80(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_25587B098(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_25587B098(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_255898034(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_25588DD74();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2558988BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static Vector<A>.*= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[7] = *a1;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a2;
  v6 = sub_2559655E0();

  WitnessTable = swift_getWitnessTable();
  v9 = sub_25588EF3C(sub_255899308, v12, v6, a3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  v10 = *a1;

  *a1 = v9;
  return result;
}

uint64_t Vector.init(pointer:count:)@<X0>(uint64_t *a1@<X8>)
{
  sub_2559653B0();
  sub_2559653C0();
  swift_getWitnessTable();
  result = sub_255965610();
  *a1 = result;
  return result;
}

uint64_t sub_255898A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  sub_255965BF0();
  v11 = sub_255899B74(v8, a1, a2);
  result = (*(v5 + 8))(v8, a2);
  *v14 = v11;
  return result;
}

uint64_t Vector.init(repeating:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_255899B74(a1, a2, a3);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *a4 = v7;
  return result;
}

uint64_t Vector.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return sub_255965640();
}

float static Vector<A>.* infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_dotpr((v2 + 32), 1, (v3 + 32), 1, &__C, v4);
  result = __C;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Vector.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = sub_255965610();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t Vector.count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_255965570();
}

void Vector.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  JUMPOUT(0x259C43270);
}

void Vector.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  JUMPOUT(0x259C432A0);
}

uint64_t Vector.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_2559655E0();
  sub_255965510();
  v7 = *v3;
  sub_255899B20(a2, v7);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v9 = v7;
  }

  v10 = *(v6 - 8);
  v11 = *(v10 + 40);
  v12 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2;

  return v11(v12, a1, v6);
}

uint64_t static Vector<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_255965600();
}

uint64_t Vector<A>.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  sub_255965D50();
  v4 = *(a1 + 16);
  sub_2559655F0();
  return sub_255965D90();
}

uint64_t Vector.elements.getter()
{
  sub_255891CC4();
}

uint64_t Vector.elements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_255899028(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static Vector<A>.== infix(_:_:)(a1, a2);
}

uint64_t Vector<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return sub_2559655F0();
}

uint64_t sub_255899058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_255965D50();
  Vector<A>.hash(into:)(v6, a2);
  return sub_255965D90();
}

uint64_t Vector.init(elements:shape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = *(type metadata accessor for Vector() + 16);
  result = sub_255965570();
  if (result != a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t Vector.withUnsafeMutableBufferPointer<A>(_:)(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_2559655E0();
  sub_255965510();
  v7 = *v3;
  if (_swift_isClassOrObjCExistentialType())
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v8 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v14 = v11;
  v15 = v9;
  result = a1(&v14);
  v13 = v14;
  if (v4)
  {
    if (!v14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v11 != v14)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v13 = v15;
    if (v15 == v9)
    {
      return result;
    }

    __break(1u);
  }

  if (!v13)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (v11 != v13)
  {
    goto LABEL_17;
  }

  if (v15 != v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_255899238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Vector.count.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_255899308()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_2559656C0();
}

double static Vector<A>.* infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    __break(1u);
  }

  v7[0] = NAN;
  vDSP_dotprD((v2 + 32), 1, (v3 + 32), 1, v7, v4);
  result = v7[0];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Vector.endIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_255965570();
}

uint64_t sub_2558993DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - v5;
  v8 = *v7;
  (*(v9 + 16))(&v12 - v5);
  v10 = type metadata accessor for Vector();
  return Vector.subscript.setter(v6, v8, v10);
}

void (*Vector.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  v14 = *v3;
  sub_255965640();
  return sub_2558995DC;
}

void sub_2558995DC(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v9 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    Vector.subscript.setter(v3, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = v2[2];
    Vector.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Int __swiftcall Vector.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Vector.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall Vector.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = sub_255899C90(_, offsetBy, limitedBy);
  v5 = v4 & 1;
  result.value = v3;
  result.is_nil = v5;
  return result;
}

uint64_t sub_2558996E4()
{
  swift_getWitnessTable();

  return sub_2559656D0();
}

uint64_t sub_255899754(uint64_t *a1)
{
  v2 = *a1;
  swift_getWitnessTable();
  return sub_2559656D0();
}

uint64_t sub_2558997C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Vector.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_2558997EC(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2558998BC(v6, *a2, a3);
  return sub_255899874;
}

void sub_255899874(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2558998BC(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  v8 = *v3;
  sub_255965640();
  return sub_255872E1C;
}

uint64_t sub_255899990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

void *sub_255899A00@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_255899A18(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_255899A3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_255899A90()
{
  swift_getWitnessTable();
  v1 = sub_2558B5970();
  v2 = *v0;

  return v1;
}

void *sub_255899AEC(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        return sub_2559655E0();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255899B20(unint64_t a1, uint64_t a2)
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

uint64_t sub_255899B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_255965520();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_2559655E0();
    return v8;
  }

  return result;
}

uint64_t sub_255899C90(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t sub_255899D38(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255899EAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id MAFloatMatrixWrapper.__allocating_init(floatMatrix:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v4 = *a1;
  *(v4 + 8) = *(a1 + 8);
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t _s17KnowledgeGraphKit27MAMutableFloatMatrixWrapperC05floatF0AA0F0VySfGvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  *a1 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  *(a1 + 8) = *(v2 + 8);
}

id MAFloatMatrixWrapper.__allocating_init(rows:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2558B5F3C(a1, &v7);
  v4 = &v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v4 = v7;
  *(v4 + 8) = v8;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id MAFloatMatrixWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAFloatMatrixWrapper.init()()
{
  sub_2558B5F3C(MEMORY[0x277D84F90], &v5);
  v1 = v6;
  v2 = &v0[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v2 = v5;
  *(v2 + 8) = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MAFloatMatrixWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MAFloatMatrixWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAFloatMatrixWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MAMutableFloatMatrixWrapper.floatMatrix.setter(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  *v2 = *a1;
  *(v2 + 8) = *(a1 + 8);
}

void (*MAMutableFloatMatrixWrapper.floatMatrix.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = v1 + v4;
  v6 = *(v5 + 8);
  *v3 = *v5;
  *(v3 + 8) = v6;

  return sub_25589A224;
}

void sub_25589A224(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[3] + (*a1)[4]);
  v4 = **a1;
  v5 = *v3;
  v6 = *(v2 + 1);
  *v3 = v4;
  *(v3 + 1) = v6;
  if (a2)
  {

    v7 = *v2;
  }

  free(v2);
}

id MAMutableFloatMatrixWrapper.__allocating_init(floatMatrix:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v4 = *a1;
  *(v4 + 8) = *(a1 + 8);
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MAFloatMatrixWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

id _s17KnowledgeGraphKit20MAFloatMatrixWrapperC05floatE0AcA0E0VySfG_tcfc_0(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v2 = *a1;
  *(v2 + 8) = *(a1 + 8);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MAFloatMatrixWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MAMutableFloatMatrixWrapper.__allocating_init(rows:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2558B5F3C(a1, &v7);
  v4 = &v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v4 = v7;
  *(v4 + 8) = v8;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MAFloatMatrixWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

id _s17KnowledgeGraphKit20MAFloatMatrixWrapperC4rowsACSaySaySfGG_tcfc_0(uint64_t a1)
{
  sub_2558B5F3C(a1, &v5);
  v2 = &v1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v2 = v5;
  *(v2 + 8) = v6;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MAFloatMatrixWrapper();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_25589A418(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7D6720, &qword_25596F730);
  v2 = sub_2559654C0();
  sub_2558B5F3C(v2, &v6);
  v3 = &a1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v3 = v6;
  *(v3 + 8) = v7;
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MAFloatMatrixWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

id MAMutableFloatMatrixWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MAMutableFloatMatrixWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_25589A550(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a3 * a4 != a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a2)
  {
    v8 = result;
    v9 = sub_2558801D8(a2, 0);
    result = sub_255880430(v9 + 4, a2, v8, a2);
    if (v10 == a2)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_7:
  if (v9[2] == a2)
  {
    v11[0] = v9;
    v11[1] = a3;
    v11[2] = a4;
    return (*(v4 + 120))(v11);
  }

LABEL_11:
  __break(1u);
  return result;
}

id MAFloatMatrixWrapper.__allocating_init(floats:rows:columns:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);

  return [v7 initWithFloats:a1 rows:a2 columns:a3];
}

char *MAFloatMatrixWrapper.init(floats:rows:columns:)(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a2 * a3;
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    v6 = result;
    swift_getObjectType();
    v7 = sub_25589A550(v6, v3, a2, a3);
    swift_deallocPartialClassInstance();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MAFloatMatrixWrapper.zeros(rows:columns:)(uint64_t result, uint64_t a2)
{
  v3 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  if (v3)
  {
    v6 = sub_255965530();
    *(v6 + 16) = v3;
    bzero((v6 + 32), 4 * v3);
LABEL_6:
    v7[0] = v6;
    v7[1] = v5;
    v7[2] = a2;
    return (*(v2 + 120))(v7);
  }

  v6 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static MAFloatMatrixWrapper.ones(rows:columns:)(uint64_t result, uint64_t a2)
{
  v3 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  if (v3)
  {
    v6 = sub_255965530();
    *(v6 + 16) = v3;
    memset_pattern16((v6 + 32), &unk_25596E4C0, 4 * v3);
LABEL_6:
    v7[0] = v6;
    v7[1] = v5;
    v7[2] = a2;
    return (*(v2 + 120))(v7);
  }

  v6 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

id MAFloatMatrixWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for MAFloatMatrixWrapper();
  *a1 = v3;

  return v3;
}

id MAFloatMatrixWrapper.mutableCopy(with:)@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = type metadata accessor for MAMutableFloatMatrixWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v9 = v4;
  *(v9 + 1) = v5;
  *(v9 + 2) = v6;
  v11.receiver = v8;
  v11.super_class = type metadata accessor for MAFloatMatrixWrapper();

  result = objc_msgSendSuper2(&v11, sel_init);
  a1[3] = v7;
  *a1 = result;
  return result;
}

id MAMutableFloatMatrixWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = type metadata accessor for MAFloatMatrixWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v9 = v4;
  *(v9 + 1) = v5;
  *(v9 + 2) = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  result = objc_msgSendSuper2(&v11, sel_init);
  a1[3] = v7;
  *a1 = result;
  return result;
}

Swift::Float __swiftcall MAFloatMatrixWrapper.float(at:column:)(Swift::Int at, Swift::Int column)
{
  (*((*MEMORY[0x277D85000] & *v2) + 0x70))(v10);
  if (v10[1] < at || v11 <= column)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = at * v11;
  if ((at * v11) >> 64 != (at * v11) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7 + column;
  if (__OFADD__(v7, column))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < *(v10[0] + 16))
  {
    v9 = *(v10[0] + 4 * v8 + 32);

    return v9;
  }

LABEL_14:
  __break(1u);
  return result;
}

id MAFloatMatrixWrapper.vector(_:)(uint64_t a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v14);
  v3 = v15;
  v4 = a1 * v15;
  if ((a1 * v15) >> 64 != (a1 * v15) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v4 + v15;
  if (__OFADD__(v4, v15))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v14[1] & 0x8000000000000000) != 0 || v3 < v4)
  {
    goto LABEL_15;
  }

  if (v4 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  a1 = v14[0];
  v5 = *(v14[0] + 16);
  if (v5 < v4 || v5 < v3)
  {
    goto LABEL_17;
  }

  if (v5 != v15)
  {
LABEL_18:
    sub_255880084(a1, a1 + 32, v4, (2 * v3) | 1);
    v7 = v12;
    goto LABEL_12;
  }

  v7 = a1;
LABEL_12:
  v8 = type metadata accessor for MAFloatVectorWrapper();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v7;
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, sel_init);

  return v10;
}

uint64_t MAFloatMatrixWrapper.count.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v3);
  v1 = *(v3[0] + 16);

  return v1;
}

uint64_t MAFloatMatrixWrapper.rows.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v3);
  v1 = v3[1];

  return v1;
}

uint64_t MAFloatMatrixWrapper.columns.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v3);
  v1 = v3[2];

  return v1;
}

Swift::Float __swiftcall MAFloatMatrixWrapper.sum()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CB8788];

  return sub_25589B4D0(v1);
}

Swift::Float __swiftcall MAFloatMatrixWrapper.sumOfSquares()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CB8798];

  return sub_25589B4D0(v1);
}

Swift::Float __swiftcall MAFloatMatrixWrapper.mean()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CB8768];

  return sub_25589B4D0(v1);
}

float sub_25589B4D0(void (*a1)(uint64_t, uint64_t, int *, uint64_t))
{
  v8[3] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v8);
  v3 = *(v8[0] + 16);
  v7 = 2143289344;
  a1(v8[0] + 32, 1, &v7, v3);
  v4 = *&v7;

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

float sub_25589B604(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, int *, uint64_t))
{
  v12[3] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v12);
  v5 = v12[0];
  v6 = *(v12[0] + 16);
  v11 = 2143289344;
  v7 = a1;
  a3(v5 + 32, 1, &v11, v6);
  v8 = *&v11;

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void *MAFloatMatrixWrapper.array()()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v18);
  v2 = v19;
  if (v19 < 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v3 = v18;
  if (v19)
  {
    v4 = v20;
    v5 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F90];
    result = sub_2558A5764(0, v19, 0);
    v6 = 0;
    v7 = v17;
    while (1)
    {
      v8 = v6 * v4;
      if ((v6 * v4) >> 64 != (v6 * v4) >> 63)
      {
        break;
      }

      v9 = v8 + v4;
      if (__OFADD__(v8, v4))
      {
        goto LABEL_26;
      }

      if (v9 < v8)
      {
        goto LABEL_27;
      }

      if (v8 < 0)
      {
        goto LABEL_28;
      }

      v10 = v3[2];
      if (v10 < v8 || v10 < v9)
      {
        goto LABEL_29;
      }

      if (v10 == v4)
      {

        v11 = v3;
      }

      else
      {
        v11 = v5;
        if (v9 != v8)
        {
          if (v4 < 1)
          {
            v15 = 4 * v4;
            v11 = v5;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
            v11 = swift_allocObject();
            v14 = _swift_stdlib_malloc_size(v11);
            v15 = 4 * v4;
            v16 = v14 - 32;
            if (v14 < 32)
            {
              v16 = v14 - 29;
            }

            v11[2] = v4;
            v11[3] = 2 * (v16 >> 2);
          }

          result = memcpy(v11 + 4, v3 + 4 * v8 + 32, v15);
        }
      }

      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_2558A5764((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v17 + 16) = v13 + 1;
      *(v17 + 8 * v13 + 32) = v11;
      if (v2 == v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return MEMORY[0x277D84F90];
}

void *MAFloatMatrixWrapper.data()()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v4);
  v2 = *(v4[0] + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_25587D358(v4[0] + 32, v4[0] + 32 + 4 * v2);

    return v3;
  }

  return result;
}

uint64_t MAFloatMatrixWrapper.description.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v13);
  v1 = v13[0];
  v2 = v13[1];
  v3 = v13[2];
  v4 = sub_25589DB98();
  MEMORY[0x259C431B0](v4);

  result = MEMORY[0x259C431B0](173744172, 0xE400000000000000);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!v2)
    {
LABEL_11:
      MEMORY[0x259C431B0](2653, 0xE200000000000000);

      return 0x2878697274614DLL;
    }

    v6 = *(v1 + 16);

    v7 = 0;
    while (1)
    {
      v8 = v7 * v3;
      if ((v7 * v3) >> 64 != (v7 * v3) >> 63)
      {
        break;
      }

      v9 = v8 + v3;
      if (__OFADD__(v8, v3))
      {
        goto LABEL_13;
      }

      if (v9 < v8)
      {
        goto LABEL_14;
      }

      if (v8 < 0)
      {
        goto LABEL_15;
      }

      if (v6 < v9)
      {
        goto LABEL_16;
      }

      ++v7;

      v11 = sub_255965900();
      v12 = v10;
      MEMORY[0x259C431B0](10, 0xE100000000000000);
      MEMORY[0x259C431B0](v11, v12);

      if (v2 == v7)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25589BCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25589DB98();
  MEMORY[0x259C431B0](v6);

  result = MEMORY[0x259C431B0](173744172, 0xE400000000000000);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
LABEL_11:
      MEMORY[0x259C431B0](2653, 0xE200000000000000);
      return 0x2878697274614DLL;
    }

    v8 = *(a1 + 16);

    v9 = 0;
    while (1)
    {
      v10 = v9 * a3;
      if ((v9 * a3) >> 64 != (v9 * a3) >> 63)
      {
        break;
      }

      v11 = v10 + a3;
      if (__OFADD__(v10, a3))
      {
        goto LABEL_13;
      }

      if (v11 < v10)
      {
        goto LABEL_14;
      }

      if (v10 < 0)
      {
        goto LABEL_15;
      }

      if (v8 < v11)
      {
        goto LABEL_16;
      }

      ++v9;

      v13 = sub_255965900();
      v14 = v12;
      MEMORY[0x259C431B0](10, 0xE100000000000000);
      MEMORY[0x259C431B0](v13, v14);

      if (a2 == v9)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MAMutableFloatMatrixWrapper.setFloat(_:at:column:)(Swift::Float _, Swift::Int at, Swift::Int column)
{
  v7 = v4 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  if (v8 < at || v9 <= column)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = at * v9;
  if ((at * v9) >> 64 != (at * v9) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v11 + column;
  if (__OFADD__(v11, column))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = _;
  v3 = *v7;

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_16:
  v3 = sub_2558803F4(v3);
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v5 >= *(v3 + 2))
  {
LABEL_18:
    __break(1u);
    return;
  }

  *&v3[4 * v5 + 32] = v6;
  v12 = *v7;
  *v7 = v3;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
}

void *MAFloatMatrixWrapper.matrixBySubtractingMatrix(_:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v24);
  v5 = v24[0];
  v6 = v24[1];
  v7 = v24[2];
  result = (*((*v3 & *a1) + 0x70))(v23, v4);
  if (v6 != v23[1] || v7 != v23[2])
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v20 = v5;
  v21 = v6;
  v22 = v7;
  v17 = v23[0];
  v18 = v6;
  v19 = v7;
  v10 = MEMORY[0x28223BE20](*(v5 + 16));
  v11 = sub_2558802E0(v10, sub_25589E080);
  v12 = *(v11 + 16);

  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
    goto LABEL_9;
  }

  if (v12 == v6 * v7)
  {
    v13 = type metadata accessor for MAFloatMatrixWrapper();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
    *v15 = v11;
    v15[1] = v6;
    v15[2] = v7;
    v16.receiver = v14;
    v16.super_class = v13;
    return objc_msgSendSuper2(&v16, sel_init);
  }

LABEL_10:
  __break(1u);
  return result;
}

id MAFloatMatrixWrapper.matrixBySubtractingScalar(_:)()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v12);
  v1 = v13;
  v2 = v14;
  v9 = v12;
  v10 = v13;
  v11 = v14;
  v3 = sub_2558802E0(*(v12 + 16), sub_25589E0D8);

  if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
  {
    if (*(v3 + 16) == v1 * v2)
    {
      v5 = type metadata accessor for MAFloatMatrixWrapper();
      v6 = objc_allocWithZone(v5);
      v7 = &v6[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
      *v7 = v3;
      v7[1] = v1;
      v7[2] = v2;
      v8.receiver = v6;
      v8.super_class = v5;
      return objc_msgSendSuper2(&v8, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id MAFloatMatrixWrapper.matrixByAddingScalar(_:)()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v12);
  v1 = v13;
  v2 = v14;
  v9 = v12;
  v10 = v13;
  v11 = v14;
  v3 = sub_2558802E0(*(v12 + 16), sub_25589E184);

  if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
  {
    if (*(v3 + 16) == v1 * v2)
    {
      v5 = type metadata accessor for MAFloatMatrixWrapper();
      v6 = objc_allocWithZone(v5);
      v7 = &v6[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
      *v7 = v3;
      v7[1] = v1;
      v7[2] = v2;
      v8.receiver = v6;
      v8.super_class = v5;
      return objc_msgSendSuper2(&v8, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *MAMutableFloatMatrixWrapper.subtract(_:)(void *a1)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v14);
  v3 = v14;
  v4 = v15;
  v5 = v16;
  v6 = v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix;
  v8 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  v12 = *v6;
  *&v13 = v7;
  *(&v13 + 1) = v9;
  if (v7 == v15 && v9 == v16)
  {
    swift_bridgeObjectRetain_n();
    sub_25587FBC4(v8, v4, v5, v3, v4, v5, &v12);

    v11 = *v6;
    *v6 = v12;
    *(v6 + 8) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MAMutableFloatMatrixWrapper.subtract(_:)(Swift::Float a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = (v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v5 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8);
  v6 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 16);
  v7 = *(v4 + 16);
  swift_bridgeObjectRetain_n();
  v8 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2558803F4(v4);
  }

  v11 = -a1;
  MEMORY[0x259C450A0](v4 + 32, 1, &v11, v8 + 32, 1, v7);

  v9 = *v3;
  *v3 = v8;
  v3[1] = v5;
  v3[2] = v6;

  v10 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall MAMutableFloatMatrixWrapper.add(_:)(Swift::Float a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = (v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v5 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8);
  v6 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 16);
  v7 = *(v4 + 16);
  swift_bridgeObjectRetain_n();
  v8 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2558803F4(v4);
  }

  v11 = a1;
  MEMORY[0x259C450A0](v4 + 32, 1, &v11, v8 + 32, 1, v7);

  v9 = *v3;
  *v3 = v8;
  v3[1] = v5;
  v3[2] = v6;

  v10 = *MEMORY[0x277D85DE8];
}

id sub_25589C9A8(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  (*((*MEMORY[0x277D85000] & *v2) + 0x70))(&v19);
  v5 = v19;
  v6 = v20;
  if (a1)
  {
    if (a1 != 1)
    {
LABEL_17:
      type metadata accessor for MatrixAxis(0);
      result = sub_255965C30();
      __break(1u);
      return result;
    }

    v9 = 1;
    v8 = v20;
    v7 = v21;
    v6 = v21;
  }

  else
  {
    v7 = 1;
    v8 = v21;
    v9 = v21;
  }

  if (v6 < 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    v10 = sub_255965530();
    *(v10 + 16) = v6;
    if (v8 < 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = v10;
    v12 = 0;
    v13 = v10 + 32;
    while (1)
    {
      v14 = v12 * v9;
      if ((v12 * v9) >> 64 != (v12 * v9) >> 63)
      {
        break;
      }

      ++v12;
      a2(v5 + 32 + 4 * v14, v7, v13, v8);
      v13 += 4;
      if (v6 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_13:
  *(v11 + 16) = v6;

  v15 = type metadata accessor for MAFloatVectorWrapper();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v11;
  v18.receiver = v16;
  v18.super_class = v15;
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_25589CB58(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t))
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v17);
  v7 = v17[0];
  v8 = v17[1];
  v9 = v17[2];
  v10 = a1;
  a4(&v18, a3, v7, v8, v9);

  v11 = v18;
  v12 = type metadata accessor for MAFloatVectorWrapper();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

void *MAFloatMatrixWrapper.appendingColumn(_:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v27);
  v5 = v27[0];
  v6 = v27[1];
  v7 = v27[2];
  result = (*((*v3 & *a1) + 0x70))(&v26, v4);
  v9 = v26;
  if (v6 != *(v26 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v6 * v10;
  if ((v6 * v10) >> 64 != (v6 * v10) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v7 + 1;

  if (v11)
  {
    v12 = sub_255965530();
    *(v12 + 16) = v11;
    v24 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    v24 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v13 = (v12 + 32);
  v14 = (v5 + 32);
  v15 = (v9 + 32);
  v16 = 4 * v7;
  v17 = v24;
  do
  {
    memcpy(v13, v14, v16);
    v18 = *v15++;
    *&v13[v16] = v18;
    v14 += v16;
    v13 += v16 + 4;
    --v17;
  }

  while (v17);
LABEL_11:
  *(v12 + 16) = v11;

  v19 = *(v12 + 16);

  if (v19 == v11)
  {
    v20 = type metadata accessor for MAFloatMatrixWrapper();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
    *v22 = v12;
    v22[1] = v24;
    v22[2] = v23;
    v25.receiver = v21;
    v25.super_class = v20;
    return objc_msgSendSuper2(&v25, sel_init);
  }

LABEL_17:
  __break(1u);
  return result;
}

id MAFloatMatrixWrapper.appendingColumns(of:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v16);
  v5 = v16[0];
  v6 = v16[1];
  v7 = v16[2];
  (*((*v3 & *a1) + 0x70))(v15, v4);
  sub_25589CFC4(v15[0], v15[1], v15[2], v5, v6, v7, &v17);

  v13 = v17;
  v8 = v18;
  v9 = type metadata accessor for MAFloatMatrixWrapper();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
  *v11 = v13;
  *(v11 + 2) = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_25589CFC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (a2 != a5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = a6 + a3;
  if (__OFADD__(a6, a3))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = *(a4 + 16);
  if (v13)
  {
    if (*(result + 16))
    {
      v14 = a2 * v9;
      if ((a2 * v9) >> 64 != (a2 * v9) >> 63)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v14 < 0)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v23 = result;

      if (v14)
      {
        result = sub_255965530();
        v22 = result;
        *(result + 16) = v14;
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
        if ((a2 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v21 = a2 * v9;
          if (a2)
          {
            v15 = (v22 + 32);
            v16 = (a4 + 32);
            v17 = (v23 + 32);
            v18 = 4 * a6;
            v19 = 4 * a3;
            v20 = a2;
            do
            {
              memcpy(v15, v16, v18);
              memcpy(&v15[v18], v17, v19);
              v17 += v19;
              v16 += v18;
              v15 += v18 + v19;
              --v20;
            }

            while (v20);
          }

          *(v22 + 16) = v21;

          *a7 = v22;
          a7[1] = a2;
          a7[2] = v9;
          if (*(v22 + 16) == v21)
          {
            return result;
          }

          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  *a7 = result;
  a7[1] = a2;
  a7[2] = v9;
  v13 = a2 * v9;
  if ((a2 * v9) >> 64 != (a2 * v9) >> 63)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (*(result + 16) != v13)
  {
    __break(1u);
LABEL_17:
    *a7 = a4;
    a7[1] = a2;
    a7[2] = v9;
    if ((a2 * v9) >> 64 != (a2 * v9) >> 63)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    result = a4;
    if (v13 != a2 * v9)
    {
LABEL_31:
      __break(1u);
      return result;
    }
  }
}

uint64_t MAMutableFloatMatrixWrapper.appendRow(_:)(void *a1)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v10);
  v2 = v10;
  v3 = (v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 8);
  v8 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix);
  v9 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 16);
  v5 = *(v10 + 16);
  if (v4)
  {
    if (v5 == *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix + 16))
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = v5;
LABEL_5:

  result = sub_25587DF30(v2);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = *v3;
    *v3 = v8;
    v3[1] = v4 + 1;
    v3[2] = v9;
  }

  return result;
}

uint64_t sub_25589D300(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(a1 + 16);
  if (v2)
  {
    if (v3 == *(v1 + 16))
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  *(v1 + 16) = v3;
LABEL_5:

  result = sub_25587DF30(v4);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v2 + 1;
  }

  return result;
}

uint64_t MAFloatMatrixWrapper.isApproximatelyEqual(to:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v9);
  v5 = v9;
  (*((*v3 & *a1) + 0x70))(v8, v4);
  v6 = sub_25587F4FC(v8[0], 0.00000011921, 0.00000011921, v8[1], v8[2], v5);

  return v6 & 1;
}

uint64_t MAFloatMatrixWrapper.isApproximatelyEqual(to:epsilon:)(void *a1, float a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))(&v11);
  v7 = v11;
  (*((*v5 & *a1) + 0x70))(v10, v6);
  v8 = sub_25587F4FC(v10[0], 0.0, a2, v10[1], v10[2], v7);

  return v8 & 1;
}

BOOL MAFloatMatrixWrapper.isEqual(_:)(uint64_t a1)
{
  sub_255880728(a1, v11);
  if (!v11[3])
  {
    sub_255880798(v11);
    return 0;
  }

  type metadata accessor for MAFloatMatrixWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v10[0];
  if (v10[0] == v1)
  {

    return 1;
  }

  else
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v11);
    v5 = v11[0];
    v6 = v11[1];
    v7 = v11[2];
    (*((*v3 & *v10[0]) + 0x70))(v10, v4);
    v8 = sub_25589D944(v5, v6, v7, v10[0], v10[1], v10[2]);
  }

  return v8;
}

BOOL sub_25589D944(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return a2 == a5 && a3 == a6;
  }

  v8 = (result + 32);
  v9 = (a4 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      return a2 == a5 && a3 == a6;
    }
  }

  __break(1u);
  return result;
}

uint64_t MAFloatMatrixWrapper.hash.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v6);
  v1 = v6[0];
  v2 = v6[1];
  v3 = v6[2];
  sub_255965D50();
  sub_25587FA18(&v5, v1);

  MEMORY[0x259C43B00](v2);
  MEMORY[0x259C43B00](v3);
  return sub_255965D90();
}

uint64_t sub_25589DB98()
{
  v0 = sub_255965BC0();
  MEMORY[0x259C431B0](v0);

  MEMORY[0x259C431B0](41931, 0xA200000000000000);
  v1 = sub_255965BC0();
  MEMORY[0x259C431B0](v1);

  MEMORY[0x259C431B0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_25589DC60(void *a1, void *a2, uint64_t *a3, float a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v8 = a4;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = MEMORY[0x259C450A0](v4 + 32, 1, &v8, *a1, 1);
  *a2 = *(v4 + 16);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

char *_s17KnowledgeGraphKit20MAFloatMatrixWrapperC8fromData4data4rows7columnsAC10Foundation0H0V_S2itFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v34[0] = a1;
      LOWORD(v34[1]) = a2;
      BYTE2(v34[1]) = BYTE2(a2);
      BYTE3(v34[1]) = BYTE3(a2);
      BYTE4(v34[1]) = BYTE4(a2);
      v7 = (a2 >> 50) & 0x3F;
      BYTE5(v34[1]) = BYTE5(a2);
      type metadata accessor for MAFloatMatrixWrapper();
      v8 = v34;
LABEL_16:
      v18 = v7;
LABEL_32:
      v30 = a3;
      v31 = a4;
      goto LABEL_33;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v21 = sub_255965140();
      if (!v21)
      {
        sub_255965150();
        v28 = 0;
        v29 = 0;
LABEL_31:
        type metadata accessor for MAFloatMatrixWrapper();
        v8 = v28;
        v18 = v29;
        goto LABEL_32;
      }

      v22 = v21;
      v23 = sub_255965160();
      if (!__OFSUB__(v19, v23))
      {
        v24 = (v19 - v23 + v22);
        v25 = sub_255965150();
        if (v25 >= v20)
        {
          v26 = v20;
        }

        else
        {
          v26 = v25;
        }

        v27 = v26 / 4;
        if (v24)
        {
          v28 = v24;
        }

        else
        {
          v28 = 0;
        }

        if (v24)
        {
          v29 = v27;
        }

        else
        {
          v29 = 0;
        }

        goto LABEL_31;
      }

LABEL_37:
      __break(1u);
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v6 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = sub_255965140();
    if (v11)
    {
      v12 = sub_255965160();
      if (__OFSUB__(v9, v12))
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      v15 = sub_255965150();
      if (v15 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      v17 = v16 / 4;
      if (v11)
      {
        v7 = v17;
      }

      else
      {
        v7 = 0;
      }

      type metadata accessor for MAFloatMatrixWrapper();
      v8 = v11;
      goto LABEL_16;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  type metadata accessor for MAFloatMatrixWrapper();
  memset(v34, 0, 14);
  v8 = v34;
  v18 = 0;
  v30 = a3;
  v31 = a4;
LABEL_33:
  result = sub_25589A550(v8, v18, v30, v31);
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s17KnowledgeGraphKit20MAFloatMatrixWrapperC9repeating7element4rows7columnsACSf_S2itFZ_0(uint64_t result, uint64_t a2, int32x2_t a3)
{
  v3 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  result = sub_255965530();
  v6 = result;
  *(result + 16) = v3;
  v7 = (result + 32);
  if (v3 <= 7)
  {
    v8 = 0;
    v9 = a3.i32[0];
LABEL_10:
    v13 = v3 - v8;
    do
    {
      *v7++ = v9;
      --v13;
    }

    while (v13);
    goto LABEL_12;
  }

  v8 = v3 & 0x7FFFFFFFFFFFFFF8;
  v7 += v3 & 0x7FFFFFFFFFFFFFF8;
  v9 = a3.i32[0];
  v10 = vdupq_lane_s32(a3, 0);
  v11 = (result + 48);
  v12 = v3 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v11[-1] = v10;
    *v11 = v10;
    v11 += 2;
    v12 -= 8;
  }

  while (v12);
  if (v3 != v8)
  {
    goto LABEL_10;
  }

LABEL_12:
  if (*(v6 + 16) == v3)
  {
    v14 = type metadata accessor for MAFloatMatrixWrapper();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatMatrixWrapper__floatMatrix];
    *v16 = v6;
    *(v16 + 1) = v5;
    *(v16 + 2) = a2;
    v18.receiver = v15;
    v18.super_class = v14;
    return objc_msgSendSuper2(&v18, sel_init);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t AbstractGraph.nodeIdentifiers(matching:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = (*(a3 + 16))(a2, a3);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 32))(v7, v8);
  v10 = [v6 nodeIdentifiersMatchingFilter_];

  [v10 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v12;
  *a4 = result;
  return result;
}

void AbstractGraph.nodeIdentifiers(matching:in:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(*a2 + 16);
  sub_25589F438(v9, a1, a3, a4, a5);
}

id ConcreteGraph.kgGraph.getter()
{
  v0 = sub_25589F598();

  return v0;
}

id ConcreteGraph.entityFactory.getter()
{
  v0 = [sub_25589F598() entityFactory];

  return v0;
}

uint64_t ConcreteGraph.perform<>(_:)(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25589E458, 0, 0);
}

uint64_t sub_25589E458()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[4];
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
    v0[2] = 0;
    v3 = [v2 performChangesAndWait:v0[3] error:v0 + 2];
    v4 = v0[2];
    if (v3)
    {
      v12 = v0[1];
      v5 = v4;
      v6 = *MEMORY[0x277D85DE8];
      v7 = v12;
    }

    else
    {
      v10 = v4;
      sub_255965180();

      swift_willThrow();
      v7 = v0[1];
      v11 = *MEMORY[0x277D85DE8];
    }

    return v7();
  }

  else
  {
    result = sub_255965B00();
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t ConcreteGraph.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

id sub_25589E63C()
{
  v1 = *v0;
  v2 = sub_25589F598();

  return v2;
}

uint64_t ConcreteGraph.description.getter()
{
  if (*(v0 + 24) != 1)
  {
    return 0xD000000000000015;
  }

  sub_255965990();

  v1 = sub_25589F598();
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 any];
  v5 = [v3 nodeIdentifiersMatchingFilter_];

  [v5 count];
  v6 = sub_255965BC0();
  MEMORY[0x259C431B0](v6);

  MEMORY[0x259C431B0](0x202C7365646F6E20, 0xE800000000000000);
  v7 = sub_25589F598();
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 any];
  v11 = [v9 edgeIdentifiersMatchingFilter_];

  [v11 count];
  v12 = sub_255965BC0();
  MEMORY[0x259C431B0](v12);

  MEMORY[0x259C431B0](0x736567646520, 0xE600000000000000);
  return 0x6168206870617247;
}

void sub_25589E8C8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *(*a1 + 16);
  sub_25589E954(v11, a3, a2, a4, a5, a6);
}

uint64_t sub_25589E954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = (*(a5 + 16))(a4, a5);
  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v14 = [v10 neighborNodeIdentifiersWithStartNodeIdentifiers:a1 edgeDirection:a2 edgeFilter:v13];

  [v14 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v16;
  *a6 = result;
  return result;
}

uint64_t sub_25589EAC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(*a1 + 16);
  sub_25589F02C(v11, a2, a3, a4, a5, &selRef_adjacencyWithSourceNodeIdentifiers_edgeFilter_edgeDirection_, aBlock);

  v12 = aBlock[0];
  *a6 = sub_255879DA8(MEMORY[0x277D84F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_25589F714;
  *(v14 + 24) = v13;
  aBlock[4] = sub_25589F784;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25589EE08;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);

  [v12 enumerateTargetsBySourceWith_];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25589EC80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_25589F71C;
  *(v8 + 24) = v7;
  v11[4] = sub_25589F770;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25589EDD8;
  v11[3] = &block_descriptor_33;
  v9 = _Block_copy(v11);

  [a2 enumerateIdentifiersWithBlock_];
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_25589EE08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a3;
  v7(a2, v8, a4);
}

uint64_t sub_25589EE70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(*a1 + 16);
  sub_25589F02C(v11, a2, a3, a4, a5, &selRef_adjacencyWithTargetNodeIdentifiers_edgeFilter_edgeDirection_, aBlock);

  v12 = aBlock[0];
  *a6 = sub_255879DA8(MEMORY[0x277D84F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_25589F6A4;
  *(v14 + 24) = v13;
  aBlock[4] = sub_25589F6AC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25589EE08;
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);

  [v12 enumerateTargetsBySourceWith_];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

void sub_25589F02C(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, SEL *a6@<X6>, void *a7@<X8>)
{
  v12 = (*(a5 + 16))(a4, a5);
  v14 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v15 = (*(v13 + 32))(v14, v13);
  v16 = [v12 *a6];

  *a7 = v16;
}

uint64_t sub_25589F10C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_25589F780;
  *(v8 + 24) = v7;
  v11[4] = sub_25589F6EC;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_25589EDD8;
  v11[3] = &block_descriptor_13;
  v9 = _Block_copy(v11);

  [a2 enumerateIdentifiersWithBlock_];
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

id sub_25589F264(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = (*(a4 + 16))(a3, a4);
  v7 = [v6 implementation];

  v8 = *(v5 + 16);
  [v8 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 8))(v9, v10);
  v11 = sub_2559653D0();

  v18[0] = 0;
  v12 = [v7 propertiesForNodesWithIdentifiers:v17 propertyName:v11 error:v18];
  swift_unknownObjectRelease();

  if (v12)
  {
    v13 = v18[0];
  }

  else
  {
    v14 = v18[0];
    sub_255965180();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_25589F438@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 32))(v9, v10);
  v12 = [v8 nodeIdentifiersMatchingFilter:v11 intersectingIdentifiers:a1];

  [v12 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v14;
  *a5 = result;
  return result;
}

uint64_t sub_25589F598()
{
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  result = sub_255965B00();
  __break(1u);
  return result;
}

uint64_t sub_25589F6AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25589F6EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25589F720(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  v6 = v3;
  return ElementIdentifierTupleSet.insert(_:)(&v8, &v7, &v6, &v5);
}

uint64_t NodeAdjacency.sources.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;

  sub_255879018(v6, &v11);
  sub_25588B81C((v2 + 1), v10);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  return NodeCollection.init(with:in:)(&v11, v10, a2);
}

uint64_t NodeAdjacency.targets.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_10:
    v13 = *(*(v3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(v5 + 16);
      [v14 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      v15 = swift_allocObject();
      *(v15 + 16) = v22;

      v5 = v15;
    }

    v8 &= v8 - 1;
    [*(v5 + 16) unionWithIdentifierSet_];
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v22 = v5;
      sub_25588B81C(v18 + 8, v21);
      v16 = *(a1 + 24);
      v17 = *(a1 + 40);
      return NodeCollection.init(with:in:)(&v22, v21, a2);
    }

    v8 = *(v3 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t NodeAdjacency.intersectingSources(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + 1);
  v8[1] = *v2;
  v8[0] = *a1;

  DirectedBinaryAdjacency.intersectingSources(with:)(v8, v7);

  v5 = *&v7[0];
  sub_25588B81C(v4, v7);
  *a2 = v5;
  return sub_255872164(v7, (a2 + 1));
}

uint64_t sub_25589FB00@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *, __int128 *, uint64_t)@<X2>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *a1;
  *&v10[0] = sub_255879DA8(MEMORY[0x277D84F90]);
  v11 = v6;

  a2(&v11, v10, v7);

  v8 = *&v10[0];
  sub_25588B81C((v3 + 1), v10);
  *a3 = v8;
  return sub_255872164(v10, (a3 + 1));
}

uint64_t NodeAdjacency.subtractingSources(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  *&v8[0] = sub_255879DA8(MEMORY[0x277D84F90]);
  v9 = v4;

  sub_25587AA1C(&v9, v5, v8);

  v6 = *&v8[0];
  sub_25588B81C((v2 + 1), v8);
  *a2 = v6;
  return sub_255872164(v8, (a2 + 1));
}

uint64_t NodeAdjacency.joinOnTargets<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v9 = *v2;
  v8 = v4;

  static ElementIdentifierTupleSet.joinOnTargets(_:_:)(&v9, &v8, v7);

  v5 = *&v7[0];
  sub_25588B81C((v2 + 1), v7);
  *a2 = v5;
  return sub_255872164(v7, (a2 + 1));
}

uint64_t NodeAdjacency.enumerateTargetsBySource(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);

  DirectedBinaryAdjacency.enumerateTargetsBySource(with:)(sub_2558A01BC);
}

uint64_t sub_25589FD20(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, __int128 *, uint64_t), uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  v10 = [objc_allocWithZone(KGMutableElementIdentifierSet) initWithElementIdentifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *&v15[0] = v11;
  sub_25588B81C(a6 + 8, v17);
  NodeCollection.init(with:in:)(v15, v17, v18);
  v16 = v9;
  sub_25588B81C(a6 + 8, v15);
  NodeCollection.init(with:in:)(&v16, v15, v17);

  a4(v18, v17, a3);
  v12 = type metadata accessor for NodeCollection();
  (*(*(v12 - 8) + 8))(v17, v12);
  v13 = type metadata accessor for NodeCollection();
  return (*(*(v13 - 8) + 8))(v18, v13);
}

uint64_t NodeAdjacency.targets(forSources:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v9[0] = *v3;
  v11 = *a1;

  DirectedBinaryAdjacency.targets(forSources:)(&v11, &v10);

  sub_25588B81C((v3 + 1), v9);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  return NodeCollection.init(with:in:)(&v10, v9, a3);
}

uint64_t NodeAdjacency.transposed()@<X0>(void *a1@<X8>)
{
  v3 = (v1 + 1);
  *&v6[0] = *v1;

  DirectedBinaryAdjacency.transposed()();

  v4 = v7;
  sub_25588B81C(v3, v6);
  *a1 = v4;
  return sub_255872164(v6, (a1 + 1));
}

uint64_t NodeAdjacency.subtracting(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + 1);
  v5 = *a1;
  *&v8[0] = *v2;
  v9 = v5;

  ElementIdentifierTupleSet.subtract(_:)(&v9);
  v6 = *&v8[0];
  sub_25588B81C(v4, v8);
  *a2 = v6;
  return sub_255872164(v8, (a2 + 1));
}

uint64_t NodeAdjacency.union(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + 1);
  v5 = *a1;
  *&v8[0] = *v2;
  v9 = v5;

  ElementIdentifierTupleSet.formUnion(_:)(&v9);
  v6 = *&v8[0];
  sub_25588B81C(v4, v8);
  *a2 = v6;
  return sub_255872164(v8, (a2 + 1));
}

uint64_t NodeAdjacency.targets(minCount:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v10[0] = *v3;

  DirectedBinaryAdjacency.targets(minCount:)(a1, &v11);

  sub_25588B81C((v3 + 1), v10);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  return NodeCollection.init(with:in:)(&v11, v10, a3);
}

uint64_t static NodeAdjacency<>.identity(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 1);
  v7 = *a1;

  sub_2558776CC(&v7, v6);

  v4 = *&v6[0];
  sub_25588B81C(v3, v6);
  *a2 = v4;
  return sub_255872164(v6, (a2 + 1));
}

uint64_t sub_2558A01BC(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  return sub_25589FD20(a1, a2, a3, *(v3 + 48), *(v3 + 56), *(v3 + 64));
}

uint64_t sub_2558A01F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2558A0240(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2558A0288(uint64_t result, int a2, int a3)
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

__n128 UniqueSortedBuffer.SymmetricDifference.lhs.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 UniqueSortedBuffer.SymmetricDifference.rhs.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t static UniqueSortedBuffer.SymmetricDifference.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  v3 = *a1 < *a2 || *(a1 + 8) < *(a2 + 8);
  if (!v3 && ((*(a1 + 16) ^ 1 | *(a2 + 16)) & 1) != 0)
  {
    v2 = *(a1 + 17) & (*(a2 + 17) ^ 1);
  }

  return v2 & 1;
}

uint64_t UniqueSortedBuffer.SymmetricDifference.startIndex.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3[0] = -1;
  v3[1] = -1;
  v4 = 257;
  return UniqueSortedBuffer.SymmetricDifference.index(after:)(v3, a1, a2);
}

uint64_t UniqueSortedBuffer.SymmetricDifference.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v44 = a2;
  v4 = *(a2 + 16);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v40 = &v36 - v9;
  v10 = *(result + 8);
  v49 = *result;
  v50 = v10;
  v11 = *(result + 16);
  v12 = *(result + 17);
  v14 = *v3;
  v13 = v3[1];
  v15 = v3[2];
  v16 = v3[3];
  v17 = v3[5];
  v47 = v3[4];
  v48 = v15;
  v18 = v3[7];
  v42 = v3[6];
  v43 = v17;
  v46 = v18;
  v38 = v16;
  v39 = (v19 + 8);
  v56 = v11;
  v37 = v13;
  v20 = v42;
  while ((v11 & 1) != 0)
  {
    v21 = __OFADD__(v49++, 1);
    if (v21)
    {
      goto LABEL_19;
    }

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:
    v52 = v14;
    v53 = v13;
    v54 = v48;
    v55 = v16;
    v45 = *(v44 + 24);
    v22 = type metadata accessor for UniqueSortedBuffer();
    v23 = UniqueSortedBuffer.count.getter(v22);
    v24 = v49;
    v56 = v49 != v23;
    v25 = v43;
    v52 = v47;
    v53 = v43;
    v54 = v20;
    v55 = v46;
    result = UniqueSortedBuffer.count.getter(v22);
    if (v24 == v23 || v50 == result)
    {
      v32 = v50 != result;
      v31 = v56;
LABEL_17:
      v34 = v36;
      v35 = v50;
      *v36 = v49;
      v34[1] = v35;
      *(v34 + 16) = v31 & 1;
      *(v34 + 17) = v32 & 1;
      return result;
    }

    v27 = v14;
    v52 = v14;
    v53 = v13;
    v54 = v48;
    v55 = v16;
    v28 = v50;
    v51 = v49;
    sub_2559653C0();
    swift_getWitnessTable();
    sub_255965D20();
    v29 = v40;
    sub_255965D30();
    v52 = v47;
    v53 = v25;
    v54 = v20;
    v55 = v46;
    v51 = v28;
    v30 = v41;
    sub_255965D30();
    v31 = sub_255965350();
    v56 = v31 & 1;
    v32 = sub_255965350();
    v33 = *v39;
    (*v39)(v30, v4);
    result = v33(v29, v4);
    if (v31)
    {
      v14 = v27;
      v12 = 1;
      v11 = 1;
      v13 = v37;
      v16 = v38;
      if (v32)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  if ((v12 & 1) == 0)
  {
    v32 = 0;
    v31 = 0;
    goto LABEL_17;
  }

LABEL_7:
  v21 = __OFADD__(v50++, 1);
  if (!v21)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t UniqueSortedBuffer.SymmetricDifference.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *v2;
  v12 = v2[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for UniqueSortedBuffer();
  v9 = v2[3];
  v10 = v2[2];
  v7 = UniqueSortedBuffer.count.getter(v6);
  result = UniqueSortedBuffer.count.getter(v6);
  *a2 = v7;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t UniqueSortedBuffer.SymmetricDifference.subscript.getter(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *a1;
    v4 = *v2;
    v5 = v2[1];
  }

  else
  {
    v6 = a1[1];
    v7 = v2[2];
    v8 = v2[3];
  }

  v9 = *(a2 + 16);
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  return sub_255965D30();
}

void (*sub_2558A0884(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2558A090C(v6, a2, a3);
  return sub_255899874;
}

void (*sub_2558A090C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  UniqueSortedBuffer.SymmetricDifference.subscript.getter(a2, a3);
  return sub_255872E1C;
}

uint64_t sub_2558A09F4(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return UniqueSortedBuffer.SymmetricDifference.index(after:)(&v5, a2, a1);
}

uint64_t sub_2558A0A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  *(a2 + 16) = v3;
  v4 = v2[3];
  *(a2 + 32) = v2[2];
  *(a2 + 48) = v4;
  return UniqueSortedBuffer.SymmetricDifference.startIndex.getter(a1, (a2 + 64));
}

uint64_t sub_2558A0A60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2558A0AB4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  swift_getWitnessTable();
  return sub_2558B5970();
}

uint64_t sub_2558A0B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  return MEMORY[0x259C431F0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_2558A0B54()
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

uint64_t sub_2558A0BA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2558A0BC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2558A0C18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2558A0C68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2558A0CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

id Filter<A>.kgFilter.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(KGNodeFilter);
  v5 = sub_2559654B0();
  v6 = sub_2559654B0();
  v7 = sub_255965290();
  v8 = [v4 initWithRequiredLabels:v5 optionalLabels:v6 properties:v7];

  return v8;
}

{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(KGEdgeFilter);
  v5 = sub_2559654B0();
  v6 = sub_2559654B0();
  v7 = sub_255965290();
  v8 = [v4 initWithRequiredLabels:v5 optionalLabels:v6 properties:v7];

  return v8;
}

uint64_t Filter<A>.relation.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  NodeFilterRelation.init(with:)(v7, *(a1 + 16), a2);
}

uint64_t Filter<A>.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  result = FilterProperties.init(dictionaryLiteral:)(MEMORY[0x277D84F90], &v5);
  v4 = v5;
  *a1 = v2;
  a1[1] = v2;
  a1[2] = v4;
  return result;
}

uint64_t Filter.init(with:anyOfLabels:properties:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

uint64_t Filter.allOfLabels.getter()
{
  sub_255891CC4();
}

uint64_t Filter.anyOfLabels.getter()
{
  sub_255891CCC();
}

uint64_t Filter.init(with:properties:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = MEMORY[0x277D84F90];
  *a3 = result;
  a3[1] = v4;
  a3[2] = v3;
  return result;
}

double Filter.init(with:properties:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C0, &unk_25596EE30);
  v8 = swift_allocObject();
  *&result = 1;
  *(v8 + 16) = xmmword_25596E4E0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v10 = MEMORY[0x277D84F90];
  *a4 = v8;
  a4[1] = v10;
  a4[2] = v7;
  return result;
}

uint64_t Filter.setting(properties:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v7;
  sub_255898520(v4, sub_255898204, 0, isUniquelyReferenced_nonNull_native, &v11);

  v9 = v11;

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v9;
  return result;
}

uint64_t Filter.addingPredicates<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v42 = v8;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for ConcreteElementedTypedProperty();
  v11 = type metadata accessor for BinaryPredicate();

  v31 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (sub_255965570())
  {
    v26 = a3;
    v27 = v7;
    v13 = 0;
    v14 = a1 + 32;
    v30 = v11;
    v28 = v6;
    v15 = TupleTypeMetadata2;
    v29 = TupleTypeMetadata2;
    while (1)
    {
      v16 = sub_255965550();
      sub_2559654E0();
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = *(v15 - 8);
      v18 = *(v17 + 16);
      result = v18(v39, v14, v15);
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_13;
      }

      v36[0] = v39[0];
      v36[1] = v39[1];
      v37 = v40;
      v38 = v41;
      v18(&v32, v36, v15);
      v21 = v32;
      v35[0] = v33;
      v35[1] = v34;
      if (*(v8 + 16))
      {

        v22 = sub_255875C80(v21, *(&v21 + 1));
        v24 = v23;

        if (v24)
        {

          sub_25588BB90(*(v8 + 56) + 32 * v22, &v32);
          sub_255880798(&v32);
          sub_255965800();
          sub_2558A156C();
          v25 = sub_255965890();
          sub_255965220();

          (*(*(v30 - 8) + 8))(v35);
          (*(v17 + 8))(v36, v29);
          *v26 = v27;
          v26[1] = v28;
          v26[2] = v8;
        }
      }

      v32 = 0u;
      v33 = 0u;
      sub_255880798(&v32);
      v32 = v21;
      sub_255898250(v35, &v32, &v42, v30, v31, &protocol witness table for BinaryPredicate<A>, &protocol witness table for ConcreteElementedTypedProperty<A, B>);

      (*(*(v30 - 8) + 8))(v35, v30);
      v15 = v29;
      (*(v17 + 8))(v36, v29);
      ++v13;
      v14 += 48;
      if (v20 == sub_255965570())
      {
        v8 = v42;
        v7 = v27;
        v6 = v28;
        a3 = v26;
        goto LABEL_10;
      }
    }

    result = sub_2559659C0();
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:
    *a3 = v7;
    a3[1] = v6;
    a3[2] = v8;
  }

  return result;
}

uint64_t CompoundFilter.CompoundType.hashValue.getter()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

uint64_t sub_2558A1500()
{
  sub_255965D50();
  CompoundFilter.CompoundType.hash(into:)();
  return sub_255965D90();
}

uint64_t static CompoundFilter.and(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
}

uint64_t static CompoundFilter.or(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
}

unint64_t sub_2558A156C()
{
  result = qword_27F7D62E0;
  if (!qword_27F7D62E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7D62E0);
  }

  return result;
}

uint64_t sub_2558A15D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2558A1624(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2558A166C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2558A16C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2558A1700(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_2558A1748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2558A17A8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2558A1838(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t (*Box.value.modify())()
{
  result = nullsub_2;
  v2 = v0 + *(*v0 + 88);
  return result;
}

uint64_t Box.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

uint64_t Box.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2558A1C28(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t static AccelerateBufferWrapper<>.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_2558A3DD0(a1, a2, a3, a4, MEMORY[0x277D83178], a5);
}

{
  return sub_2558A3DD0(a1, a2, a3, a4, MEMORY[0x277D83170], a5);
}

uint64_t static AccelerateBufferWrapper<>.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_2558A3DD0(a1, a2, a3, a4, MEMORY[0x277D83100], a5);
}

{
  return sub_2558A3DD0(a1, a2, a3, a4, MEMORY[0x277D830F0], a5);
}

uint64_t static AccelerateBufferWrapper<>.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v8 = &v12 - v7;
  v9 = *(*(a3 + 8) + 8);
  v10 = sub_255965050();
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v10, v8, a2, a3);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v10 = &v18 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AccelerateBufferWrapper<>.- prefix(_:)(a1, a2, a3);
  v15 = *(*(a3 + 8) + 8);
  v16 = sub_255965050();
  (*(v11 + 8))(v14, a2);
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v16, v10, a2, a3);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v8 = &v12 - v7;
  v9 = *(*(a3 + 8) + 8);
  v10 = sub_255965040();
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v10, v8, a2, a3);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v10 = &v18 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AccelerateBufferWrapper<>.- prefix(_:)(a1, a2, a3);
  v15 = *(*(a3 + 8) + 8);
  v16 = sub_255965040();
  (*(v11 + 8))(v14, a2);
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v16, v10, a2, a3);
}

uint64_t static AccelerateBufferWrapper<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  return sub_2558A1E68(a1, a2, a3, MEMORY[0x277D830F8], a4);
}

{
  return sub_2558A31CC(a1, a2, a3, MEMORY[0x277D830F8], a4);
}

uint64_t static AccelerateBufferWrapper<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  return sub_2558A1E68(a1, a2, a3, MEMORY[0x277D83140], a4);
}

{
  return sub_2558A31CC(a1, a2, a3, MEMORY[0x277D83140], a4);
}

uint64_t sub_2558A1E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, float), float a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v13 = &v16 - v12;
  v14 = a4(a1, a2, *(*(a3 + 8) + 8), a5);
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v14, v13, a2, a3);
}

uint64_t static AccelerateBufferWrapper<>./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v8 = &v12 - v7;
  v9 = *(*(a3 + 8) + 8);
  v10 = sub_2559650D0();
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v10, v8, a2, a3);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v8 = &v12 - v7;
  v9 = *(*(a3 + 8) + 8);
  v10 = sub_2559650C0();
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v10, v8, a2, a3);
}

uint64_t static AccelerateBufferWrapper<>..* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_2558A3DD0(a1, a2, a3, a4, MEMORY[0x277D83148], a5);
}

{
  return sub_2558A3DD0(a1, a2, a3, a4, MEMORY[0x277D83138], a5);
}

uint64_t static AccelerateBufferWrapper<>..** infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  return static AccelerateBufferWrapper<>..**= infix(_:_:)(a4, a2, a3);
}

{
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  return static AccelerateBufferWrapper<>..**= infix(_:_:)(a4, a2, a3);
}

uint64_t AccelerateBufferWrapper<>.sum()(uint64_t a1, uint64_t a2)
{
  return MEMORY[0x2821FB258](v2, a1, *(*(a2 + 8) + 8));
}

{
  return MEMORY[0x2821FB250](v2, a1, *(*(a2 + 8) + 8));
}

uint64_t AccelerateBufferWrapper<>.sumOfSquares()(uint64_t a1, uint64_t a2)
{
  return MEMORY[0x2821FB1B0](v2, a1, *(*(a2 + 8) + 8));
}

{
  return MEMORY[0x2821FB1A8](v2, a1, *(*(a2 + 8) + 8));
}

uint64_t AccelerateBufferWrapper<>.mean()(uint64_t a1, uint64_t a2)
{
  return MEMORY[0x2821FB268](v2, a1, *(*(a2 + 8) + 8));
}

{
  return MEMORY[0x2821FB260](v2, a1, *(*(a2 + 8) + 8));
}

void AccelerateBufferWrapper<>.naturalLogarithm()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v10 = v20 - v9;
  v11 = *(a2 + 40);
  v21 = v3;
  v12 = v11(a1, a2);
  v13 = *(v12 + 16);
  if (v13)
  {
    v20[1] = a3;
    v22 = MEMORY[0x277D84F90];
    sub_2558A54D0(0, v13, 0);
    v14 = 0;
    v15 = v22;
    while (v14 < *(v12 + 16))
    {
      v16 = logf(*(v12 + 4 * v14 + 32));
      v22 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = v16;
        sub_2558A54D0((v17 > 1), v18 + 1, 1);
        v16 = v19;
        v15 = v22;
      }

      ++v14;
      *(v15 + 16) = v18 + 1;
      *(v15 + 4 * v18 + 32) = v16;
      if (v13 == v14)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_9:
    (*(a2 + 32))(a1, a2);
    (*(a2 + 48))(v15, v10, a1, a2);
  }
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v11 = v21 - v10;
  v12 = *(a2 + 40);
  v22 = v3;
  v13 = v12(a1, a2, v9);
  v14 = *(v13 + 16);
  if (v14)
  {
    v21[1] = a3;
    v23 = MEMORY[0x277D84F90];
    sub_2558A5784(0, v14, 0);
    v15 = 0;
    v16 = v23;
    while (v15 < *(v13 + 16))
    {
      v17 = log(*(v13 + 8 * v15 + 32));
      v23 = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = v17;
        sub_2558A5784((v18 > 1), v19 + 1, 1);
        v17 = v20;
        v16 = v23;
      }

      ++v15;
      *(v16 + 16) = v19 + 1;
      *(v16 + 8 * v19 + 32) = v17;
      if (v14 == v15)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_9:
    (*(a2 + 32))(a1, a2);
    (*(a2 + 48))(v16, v11, a1, a2);
  }
}

uint64_t AccelerateBufferWrapper.test(function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = (*(a4 + 40))(a3, a4);
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v14[5] = a2;
  v8 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v9 = sub_2559655E0();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_25588EF3C(sub_2558A54F0, v14, v9, MEMORY[0x277D839B0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  return v12;
}

uint64_t AccelerateBufferWrapper.applyMask(mask:maskValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *(a1 + 16);
  v23 = *(a4 + 8);
  v16 = *(v23 + 8);
  result = sub_255964FF0();
  if (v15 == result)
  {
    v22 = a1;
    v18 = *(a4 + 32);
    v18(a3, a4);
    v18(a3, a4);
    swift_getAssociatedConformanceWitness();
    v19 = sub_255965390();
    v20 = *(v8 + 8);
    v20(v12, AssociatedTypeWitness);
    result = (v20)(v14, AssociatedTypeWitness);
    if (v19)
    {
      MEMORY[0x28223BE20](result);
      *(&v22 - 4) = a3;
      *(&v22 - 3) = a4;
      v21 = v22;
      *(&v22 - 2) = v24;
      *(&v22 - 1) = v21;
      return sub_255964FD0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static AccelerateBufferWrapper<>.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_2558A4674(a1, a2, a3, a4, MEMORY[0x277D83168]);
}

{
  return sub_2558A4674(a1, a2, a3, a4, MEMORY[0x277D83160]);
}

uint64_t static AccelerateBufferWrapper<>.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_2558A4674(a1, a2, a3, a4, MEMORY[0x277D830E0]);
}

{
  return sub_2558A4674(a1, a2, a3, a4, MEMORY[0x277D830D8]);
}

uint64_t static AccelerateBufferWrapper<>.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  v10 = *(*(a3 + 8) + 8);
  sub_255965030();
  return (*(v6 + 8))(v9, a2);
}

{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  v10 = *(*(a3 + 8) + 8);
  sub_255965020();
  return (*(v6 + 8))(v9, a2);
}

uint64_t static AccelerateBufferWrapper<>./= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  v10 = *(*(a3 + 8) + 8);
  sub_2559650B0();
  return (*(v6 + 8))(v9, a2);
}

{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, a2, v8);
  v11 = *(*(a3 + 8) + 8);
  sub_2559650A0();
  return (*(v6 + 8))(v10, a2);
}

uint64_t static AccelerateBufferWrapper<>..*= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_2558A3698(a1, a2, a3, a4, MEMORY[0x277D83128]);
}

{
  return sub_2558A3698(a1, a2, a3, a4, MEMORY[0x277D83120]);
}

uint64_t static AccelerateBufferWrapper<>..**= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*(a3 + 8) + 8);
  v4 = sub_255964FF0();
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v4 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v4);
  result = sub_255964FD0();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*(a3 + 8) + 8);
  v4 = sub_255964FF0();
  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (v4 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v4);
  result = sub_255964FD0();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2558A2A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2558A502C(v13, v16, v17, v18, v19, v20, v21, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a6);
  }

  return result;
}

uint64_t AccelerateBufferWrapper.withUnsafeBufferPointer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 40))(a3, a5);
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  v11 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A0, &unk_25596FCF0);
  sub_2558A2A48(sub_2558A55C8, v15, v10, AssociatedTypeWitness, a4, v13, MEMORY[0x277D84950], &v16);
}

uint64_t sub_2558A2C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v9 = result;
    v10 = 0;
    v11 = a3 + 32;
    do
    {
      if (*(v11 + v10))
      {
        v12 = *a4;
        v13 = *(*(a6 + 8) + 8);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        result = (*(*(AssociatedTypeWitness - 8) + 24))(v12 + *(*(AssociatedTypeWitness - 8) + 72) * v10, v9 + *(*(AssociatedTypeWitness - 8) + 72) * v10, AssociatedTypeWitness);
      }

      ++v10;
    }

    while (v6 != v10);
  }

  return result;
}

uint64_t AccelerateBufferWrapper<>.minimum()(uint64_t a1, uint64_t a2)
{
  return MEMORY[0x2821FB2B0](v2, a1, *(*(a2 + 8) + 8));
}

{
  return MEMORY[0x2821FB2A8](v2, a1, *(*(a2 + 8) + 8));
}

uint64_t AccelerateBufferWrapper<>.maximum()(uint64_t a1, uint64_t a2)
{
  return MEMORY[0x2821FB2A0](v2, a1, *(*(a2 + 8) + 8));
}

{
  return MEMORY[0x2821FB298](v2, a1, *(*(a2 + 8) + 8));
}

float AccelerateBufferWrapper<>.normalize()(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*(a2 + 8) + 8);
  v3 = sub_255964FF0();
  if (v3 < 0)
  {
    __break(1u);
  }

  MEMORY[0x28223BE20](v3);
  sub_255964FD0();
  result = 0.0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

float AccelerateBufferWrapper<>.meanAndStandardDeviation()(uint64_t a1, uint64_t a2)
{
  v5[8] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v5 + 4;
  v5[6] = v5;
  v2 = *(*(a2 + 8) + 8);
  sub_255964FE0();
  result = *(v5 + 1);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2558A2F58(const float *a1, uint64_t a2, float *a3, float *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v10 = *(*(a7 + 8) + 8);
    v11 = sub_255964FF0();
    if ((v11 & 0x8000000000000000) == 0)
    {
      vDSP_normalize(a1, 1, 0, 1, a3, a4, v11);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t static AccelerateBufferWrapper<>.- prefix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_2558A3CA0(a1, a2, a3, MEMORY[0x277D83158]);
}

{
  return sub_2558A3CA0(a1, a2, a3, MEMORY[0x277D83150]);
}

uint64_t sub_2558A31CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, float), float a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v13 = &v16 - v12;
  v14 = a4(a1, a2, *(*(a3 + 8) + 8), a5);
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v14, v13, a2, a3);
}

uint64_t sub_2558A3300(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t, void, float), float a5)
{
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, a2);
  a4(v13, a1, a2, a2, *(*(a3 + 8) + 8), a5);
  return (*(v10 + 8))(v13, a2);
}

void static AccelerateBufferWrapper<>.** infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v13 = v23 - v12;
  v14 = *(a3 + 40);
  v23[2] = a1;
  v15 = v14(a2, a3);
  v16 = *(v15 + 16);
  if (v16)
  {
    v23[1] = a4;
    v24 = MEMORY[0x277D84F90];
    sub_2558A54D0(0, v16, 0);
    v17 = 0;
    v18 = v24;
    while (v17 < *(v15 + 16))
    {
      v19 = powf(a5, *(v15 + 4 * v17 + 32));
      v24 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = v19;
        sub_2558A54D0((v20 > 1), v21 + 1, 1);
        v19 = v22;
        v18 = v24;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      *(v18 + 4 * v21 + 32) = v19;
      if (v16 == v17)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_9:
    (*(a3 + 32))(a2, a3);
    (*(a3 + 48))(v18, v13, a2, a3);
  }
}

uint64_t sub_2558A3698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void))
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1);
  a5(v13, a2, a1, a3, a3, a3, *(*(a4 + 8) + 8), *(*(a4 + 8) + 8), *(a4 + 8));
  return (*(v10 + 8))(v13, a3);
}

double AccelerateBufferWrapper<>.normalize()(uint64_t a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6[0] = 0;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v6;
  v6[6] = &v5;
  v2 = *(a2 + 8);
  sub_255964FD0();
  result = *v6;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2558A3A04(uint64_t a1, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v12;
  if (*v12)
  {
    (*(v10 + 16))(v15, v13, a5);
    v17 = *(*(a6 + 8) + 8);
    v18 = sub_255964FF0();
    (*(v10 + 8))(v15, a5);
    if ((v18 & 0x8000000000000000) == 0)
    {
      vDSP_normalizeD(v16, 1, v16, 1, a2, a3, v18);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

double AccelerateBufferWrapper<>.meanAndStandardDeviation()(uint64_t a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6[0] = 0;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = v6;
  v6[6] = &v5;
  v2 = *(*(a2 + 8) + 8);
  sub_255964FE0();
  result = *v6;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2558A3BE8(const double *a1, uint64_t a2, double *a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v10 = *(*(a7 + 8) + 8);
    v11 = sub_255964FF0();
    if ((v11 & 0x8000000000000000) == 0)
    {
      vDSP_normalizeD(a1, 1, 0, 1, a3, a4, v11);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2558A3CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v11 = &v14 - v10;
  v12 = a4(a1, a2, *(*(a3 + 8) + 8));
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v12, v11, a2, a3);
}

uint64_t sub_2558A3DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void)@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = *(a4 + 32);
  v24 = a1;
  v18(a3, a4);
  v22 = a2;
  v18(a3, a4);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a1) = sub_255965390();
  v19 = *(v11 + 8);
  v19(v15, AssociatedTypeWitness);
  result = (v19)(v17, AssociatedTypeWitness);
  if (a1)
  {
    v21 = v23(v24, v22, a3, a3, *(*(a4 + 8) + 8), *(*(a4 + 8) + 8));
    v18(a3, a4);
    return (*(a4 + 48))(v21, v17, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AccelerateBufferWrapper<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  return sub_2558A4420(a1, a2, a3, MEMORY[0x277D830E8], a4);
}

{
  return sub_2558A42EC(a1, a2, a3, MEMORY[0x277D830E8], a4);
}

uint64_t static AccelerateBufferWrapper<>.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  return sub_2558A42EC(a1, a2, a3, MEMORY[0x277D83130], a4);
}

{
  return sub_2558A4420(a1, a2, a3, MEMORY[0x277D83130], a4);
}

uint64_t sub_2558A42EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, double), double a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v13 = &v16 - v12;
  v14 = a4(a1, a2, *(*(a3 + 8) + 8), a5);
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v14, v13, a2, a3);
}

uint64_t sub_2558A4420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, double), double a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v13 = &v16 - v12;
  v14 = a4(a1, a2, *(*(a3 + 8) + 8), a5);
  (*(a3 + 32))(a2, a3);
  return (*(a3 + 48))(v14, v13, a2, a3);
}

uint64_t sub_2558A4674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void))
{
  v26 = a5;
  v27 = a2;
  v7 = a1;
  v25 = *(a3 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v19 = *(a4 + 32);
  v24 = v7;
  v19(a3, a4);
  v19(a3, a4);
  swift_getAssociatedConformanceWitness();
  LOBYTE(v7) = sub_255965390();
  v20 = *(v12 + 8);
  v20(v16, AssociatedTypeWitness);
  result = (v20)(v18, AssociatedTypeWitness);
  if (v7)
  {
    v23 = v24;
    v22 = v25;
    (*(v25 + 16))(v10, v24, a3);
    v26(v10, v27, v23, a3, a3, a3, *(*(a4 + 8) + 8), *(*(a4 + 8) + 8), *(a4 + 8));
    return (*(v22 + 8))(v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2558A4A34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t, void, double), double a5)
{
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, a2);
  a4(v13, a1, a2, a2, *(*(a3 + 8) + 8), a5);
  return (*(v10 + 8))(v13, a2);
}

void static AccelerateBufferWrapper<>.** infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, long double a5@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = v24 - v13;
  v15 = *(a3 + 40);
  v24[2] = a1;
  v16 = v15(a2, a3, v12);
  v17 = *(v16 + 16);
  if (v17)
  {
    v24[1] = a4;
    v25 = MEMORY[0x277D84F90];
    sub_2558A5784(0, v17, 0);
    v18 = 0;
    v19 = v25;
    while (v18 < *(v16 + 16))
    {
      v20 = pow(a5, *(v16 + 8 * v18 + 32));
      v25 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        v23 = v20;
        sub_2558A5784((v21 > 1), v22 + 1, 1);
        v20 = v23;
        v19 = v25;
      }

      ++v18;
      *(v19 + 16) = v22 + 1;
      *(v19 + 8 * v22 + 32) = v20;
      if (v17 == v18)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
LABEL_9:
    (*(a3 + 32))(a2, a3);
    (*(a3 + 48))(v19, v14, a2, a3);
  }
}

uint64_t sub_2558A502C(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v30 = a1;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v26 = v31;
    result = sub_2558A527C(v30, a2, a3, a4, a5, a6, v28, v19);
    v17 = v19;
    if (v26)
    {
      return (*(v13 + 32))(v29, v17, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v20 = (((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8));
    }

    else
    {
      v20 = (a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v23 = sub_255965B60();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v22 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v22 = a3;
      }

      v23 = *(v22 + 16);
    }

    v24 = v31;
    result = v30(v20, v23, v17);
    if (v24)
    {
      return (*(v13 + 32))(v29, v17, a6);
    }
  }

  return result;
}

uint64_t sub_2558A527C(uint64_t (*a1)(char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2558A53D4(v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = *(v16 + 2);

  v19 = v23;
  result = a1(&v16[v17], v18, v14);
  if (v19)
  {
    return (*(v11 + 32))(v22, v14, a6);
  }

  return result;
}

void *sub_2558A53D4(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v3 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v1);
    v4 = objc_getAssociatedObject(v1, MEMORY[0x277D84F90]);
    if (v4)
    {
      v3 = v4;
      swift_retain_n();
    }

    else
    {
      sub_2559659F0();
      swift_getWitnessTable();
      v3 = sub_255965C20();

      objc_setAssociatedObject(v1, MEMORY[0x277D84F90], v3, 1);
    }

    objc_sync_exit(v1);
  }

  return v3;
}

char *sub_2558A54D0(char *a1, int64_t a2, char a3)
{
  result = sub_2558A5800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2558A54F0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2558A5534()
{
  v1 = v0[4];
  v4 = v0[2];
  v5 = v0[5];
  v2 = *(*(v0[3] + 8) + 8);
  return sub_255964FE0();
}

uint64_t sub_2558A55C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  result = v6();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

void sub_2558A5600(float **a1)
{
  v2 = *a1;
  if (v2)
  {
    vDSP_normalize(v2, 1, v2, 1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2558A5698(uint64_t *a1, uint64_t (*a2)(uint64_t, void, uint64_t, void))
{
  result = *a1;
  if (result)
  {
    return a2(result, *(v2 + 16), result, *(v2 + 24));
  }

  __break(1u);
  return result;
}

char *sub_2558A5724(char *a1, int64_t a2, char a3)
{
  result = sub_2558A5904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2558A5744(char *a1, int64_t a2, char a3)
{
  result = sub_2558A59F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2558A5764(void *a1, int64_t a2, char a3)
{
  result = sub_2558A5AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2558A5784(char *a1, int64_t a2, char a3)
{
  result = sub_2558A5C30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2558A57E0(void *a1, int64_t a2, char a3)
{
  result = sub_2558A5D34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2558A5800(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2558A5904(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7D6AC0, &unk_25596FD40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2558A59F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6458, "VW");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2558A5AFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6AB8, &qword_25596FD38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7D6720, &qword_25596F730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2558A5C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2558A5D34(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6AA8, &qword_25596FD20);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6AB0, &qword_25596FD28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t SparseBuffer.reduce<A>(into:update:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = v4[1];
  v15 = v4[2];
  v14 = v4[3];
  (*(*(v16 - 8) + 16))(a4);
  v20 = v12;
  v21 = v13;
  v22 = v15;
  v23 = v14;
  v25 = v12;
  v26 = v13;
  v27 = v15;
  v28 = v14;
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  sub_255965CF0();
  result = sub_255965D00();
  if (v24 != v20)
  {
    v18 = (v8 + 8);
    do
    {
      sub_255965D30();
      sub_255965D10();
      a2(a4, v11);
      (*v18)(v11, v7);
      result = sub_255965D00();
    }

    while (v24 != v20);
  }

  return result;
}

uint64_t SparseBuffer.union(with:combine:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v25 = a2;
  v26 = a3;
  v27 = a5;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v10[1];
  v36 = *v10;
  v37 = v13;
  v14 = v10[3];
  v38 = v10[2];
  v39 = v14;
  v15 = v5[1];
  v33[0] = *v5;
  v33[1] = v15;
  v16 = v5[3];
  v34 = v5[2];
  v35 = v16;
  v29 = v33[0];
  v30 = v15;
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  swift_getWitnessTable();
  v17 = sub_255965740();
  v28[0] = v36;
  v28[1] = v37;
  result = sub_255965740();
  v19 = v17 + result;
  if (__OFADD__(v17, result))
  {
    __break(1u);
  }

  else
  {
    v31 = v38;
    v32 = v39;
    v29 = v34;
    v30 = v35;
    *&v28[0] = MEMORY[0x277D84F90];
    v20 = *(a4 + 24);
    v21 = (*(v20 + 16))(v7, v20);
    MEMORY[0x28223BE20](v21);
    *(&v25 - 10) = v7;
    *(&v25 - 9) = v20;
    *(&v25 - 8) = v28;
    *(&v25 - 7) = v19;
    *(&v25 - 6) = &v29;
    *(&v25 - 5) = v33;
    v22 = v26;
    *(&v25 - 4) = v25;
    *(&v25 - 3) = v22;
    *(&v25 - 2) = &v36;
    *(&v25 - 1) = v12;
    v23 = sub_255965540();
    v24 = *&v28[0];

    SparseArray.init(values:offsets:)(v23, v24, v27);
    (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t SparseBuffer.intersection<A, B>(with:combine:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v33 = a7;
  v34 = a2;
  v35 = a3;
  v36 = a9;
  v13 = *(a6 - 8);
  v31 = a4;
  v32 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v15[1];
  v59 = *v15;
  v60 = v18;
  v19 = v15[3];
  v61 = v15[2];
  v62 = v19;
  v20 = v9[1];
  v56[0] = *v9;
  v56[1] = v20;
  v21 = v9[3];
  v57 = v9[2];
  v58 = v21;
  v52 = v56[0];
  v53 = v20;
  v23 = *(v22 + 16);
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  swift_getWitnessTable();
  v24 = sub_255965740();
  v51[0] = v59;
  v51[1] = v60;
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  swift_getWitnessTable();
  v25 = sub_255965740();
  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v52 = v57;
  v53 = v58;
  v54 = v61;
  v55 = v62;
  *&v51[0] = MEMORY[0x277D84F90];
  (*(a8 + 16))(a6, a8);
  v37 = v23;
  v38 = a5;
  v27 = *(v31 + 24);
  v39 = a6;
  v40 = v27;
  v41 = v33;
  v42 = a8;
  v43 = v51;
  v44 = v26;
  v45 = &v52;
  v46 = v34;
  v47 = v35;
  v48 = v56;
  v49 = &v59;
  v50 = v17;
  v28 = sub_255965540();
  v29 = *&v51[0];

  SparseArray.init(values:offsets:)(v28, v29, v36);
  (*(v32 + 8))(v17, a6);
}

uint64_t sub_2558A65D0@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v11 = *v2;
  v12 = v2[1];
  v13 = v2[2];
  v14 = v2[3];
  SparseBuffer.count.getter(a1);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = MEMORY[0x277D84F90];
  v6 = sub_255965540();
  if (v3)
  {
  }

  else
  {
    return SparseArray.init(values:offsets:)(v6, v10, a2);
  }
}

uint64_t SparseBuffer.mapIntersection<A>(with:initialValue:update:combine:)@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t, char *)@<X2>, uint64_t a3@<X3>, void (*a4)(char *, char *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v41 = a3;
  v10 = *(a6 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a7);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - v20;
  v22 = a1[1];
  v37 = *a1;
  v38 = v22;
  v23 = v7[1];
  v35 = *v7;
  v36 = v23;
  v25 = *(*(v24 - 8) + 16);
  v39 = v19;
  v25();
  v26 = v7[3];
  v63 = v7[2];
  v64 = v26;
  v27 = a1[3];
  v65 = a1[2];
  v66 = v27;
  v47 = v63;
  v48 = v64;
  v49 = v65;
  v50 = v27;
  result = sub_2558A8044(-1, -1, &v51);
  v53 = v47;
  v54 = v48;
  v55 = v49;
  v56 = v50;
  v30 = v51;
  v29 = v52;
  v57 = v51;
  v58 = v52;
  v59 = *(&v63 + 1) - v63;
  v60 = *(&v65 + 1) - v65;
  v33 = *(&v65 + 1) - v65;
  v34 = *(&v63 + 1) - v63;
  v61 = v51;
  v62 = v52;
  if (v51 != *(&v63 + 1) - v63 || v52 != v33)
  {
    v31 = (v11 + 8);
    do
    {
      do
      {
        v47 = v53;
        v48 = v54;
        v49 = v55;
        v50 = v56;
        sub_2558A8044(v30, v29, &v61);
        v45 = v35;
        v46 = v36;
        v44 = v30;
        sub_2559653C0();
        swift_getWitnessTable();
        sub_255965D20();
        sub_255965D30();
        v45 = v37;
        v46 = v38;
        v44 = v29;
        sub_255965D30();
        v42(v21, v18);
        v40(v39, v15);
        v32 = *v31;
        (*v31)(v15, v10);
        v32(v18, v10);
        result = (v32)(v21, v10);
        v30 = v61;
        v29 = v62;
      }

      while (v61 != v34);
    }

    while (v62 != v33);
  }

  return result;
}

uint64_t SparseBuffer.dotProduct(with:add:multiply:)@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20 = a5;
  v13 = *(a6 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v18 + 24) + 16))(v13);
  SparseBuffer.mapIntersection<A>(with:initialValue:update:combine:)(a1, a2, a3, a4, v20, a6, a7);
  return (*(v14 + 8))(v17, v13);
}

uint64_t SparseBuffer.sparseKroneckerMap<A, B>(with:combine:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for SparseArray();
  swift_getWitnessTable();
  return sub_2558A65D0(a2, a3);
}

uint64_t sub_2558A6BAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
LABEL_1:
  v5 = a3;
  while (1)
  {
    v6 = v5 - a2;
    if (__OFSUB__(v5, a2))
    {
      break;
    }

    if (v6 <= 128)
    {
      goto LABEL_10;
    }

    a3 = a2 + (v6 >> 1);
    if (__OFADD__(a2, v6 >> 1))
    {
      goto LABEL_19;
    }

    v7 = *(a4 + 8 * a3);
    if (v7 == result)
    {
      a2 = a3;
      goto LABEL_17;
    }

    if (v7 > result)
    {
      goto LABEL_1;
    }

    a2 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_10:
      if (a2 < v5)
      {
        while (1)
        {
          v8 = *(a4 + 8 * a2);
          if (v8 >= result)
          {
            break;
          }

          if (v5 == ++a2)
          {
            a2 = v5;
            goto LABEL_17;
          }
        }

        if (v8 > result)
        {
          v5 = a2;
        }
      }

LABEL_17:
      *a5 = a2;
      *(a5 + 8) = a2 != v5;
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

__n128 sub_2558A6C34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  return result;
}

uint64_t SparseBuffer.getValue(atOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *v3;
  v11 = v3[1];
  v6 = *(v3 + 7);
  sub_2558A6BAC(a1, *(v3 + 4), *(v3 + 5), *(v3 + 6), v12);
  if (BYTE8(v12[0]) == 1)
  {
    v12[0] = v10;
    v12[1] = v11;
    v7 = *(a2 + 16);
    sub_2559653C0();
    swift_getWitnessTable();
    sub_255965D20();
    sub_255965D30();
    return (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
  }

  else
  {
    v9 = *(*(*(a2 + 16) - 8) + 56);

    return v9(a3, 1, 1);
  }
}

uint64_t SparseBuffer.values.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

__n128 SparseBuffer.offsets.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t SparseBuffer.count.getter(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v2 = *(a1 + 16);
  sub_2559653C0();
  swift_getWitnessTable();
  sub_255965D20();
  swift_getWitnessTable();
  return sub_255965740();
}

uint64_t SparseBuffer.subscript.getter(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v9 = v2[1];
  v4 = *(v2 + 7);
  sub_2558A6BAC(a1, *(v2 + 4), *(v2 + 5), *(v2 + 6), v10);
  if (BYTE8(v10[0]) == 1)
  {
    v10[0] = v8;
    v10[1] = v9;
    v5 = *(a2 + 16);
    sub_2559653C0();
    swift_getWitnessTable();
    sub_255965D20();
    return sub_255965D30();
  }

  else
  {
    v7 = *(a2 + 16);
    return (*(*(a2 + 24) + 16))();
  }
}

uint64_t sub_2558A6F20(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  result = sub_2559658C0();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v9 = sub_2558A80CC(a4, sub_2558A83FC);
    v10 = *a3;
    *a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_2558A7018(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void (*a5)(char *, char *), uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v69 = a8;
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v65 = a4;
  v12 = *(*(a11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v70 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v55 = *result;
  if (v55)
  {
    v74 = &v52 - v18;
    v75 = a12;
    v20 = *v17;
    v21 = v17[1];
    v63 = v17[2];
    v22 = v17[4];
    v23 = v17[5];
    v62 = v17[6];
    v24 = v21 - v20;
    v57 = v16;
    v56 = a10;
    if (v21 == v20 || v23 == v22)
    {
      v26 = v23 != v22;
      v25 = v21 != v20;
    }

    else
    {
      v25 = *v62 >= *v63;
      v26 = *v63 >= *v62;
    }

    v58 = 0;
    v27 = 0;
    v28 = 0;
    v53 = a9;
    v29 = v23 - v22;
    v68 = v75 + 16;
    v73 = (v19 + 8);
    v64 = (v19 + 32);
    v54 = v19;
    v52 = v19 + 16;
    v66 = v23 - v22;
    v67 = v24;
LABEL_7:
    if (v27 != v24 || v28 != v29 || v25 || v26)
    {
      v30 = v27;
      do
      {
        if (v25)
        {
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        v31 = v28;
        if (v26)
        {
          v31 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_40;
          }
        }

        v32 = v31 != v29;
        v33 = v30 != v24;
        if (v30 != v24 && v31 != v29)
        {
          v34 = v63[v30];
          v35 = v62[v31];
          v33 = v35 >= v34;
          v32 = v34 >= v35;
        }

        v71 = v32;
        v72 = v33;
        v36 = v74;
        (*(v75 + 16))(a11);
        if (v25)
        {
          v37 = v65[1];
          v76 = *v65;
          v77 = v37;
          v78 = v27;
          sub_2559653C0();
          swift_getWitnessTable();
          sub_255965D20();
          v38 = v70;
          sub_255965D30();
          (*v73)(v36, a11);
          (*v64)(v36, v38, a11);
          if (v26)
          {
            goto LABEL_23;
          }

          v39 = *(*(v65 + 6) + 8 * v27);
        }

        else
        {
          if (v26)
          {
LABEL_23:
            v40 = v61;
            v41 = v61[1];
            v76 = *v61;
            v77 = v41;
            v78 = v28;
            sub_2559653C0();
            swift_getWitnessTable();
            sub_255965D20();
            v42 = v70;
            sub_255965D30();
            v43 = v74;
            v59(v74, v42);
            (*v73)(v42, a11);
            v39 = *(*(v40 + 6) + 8 * v28);
            goto LABEL_26;
          }

          v39 = 0;
        }

        v43 = v74;
LABEL_26:
        v44 = *(v75 + 8);
        if ((sub_255965390() & 1) == 0)
        {
          v47 = v54;
          v48 = v58;
          v49 = v53 + *(v54 + 72) * v58;
          v50 = v70;
          (*(v54 + 16))(v70, v43, a11);
          (*(v47 + 32))(v49, v50, a11);
          *(v55 + 8 * v48) = v39;
          result = (*(v47 + 8))(v43, a11);
          v26 = v71;
          v25 = v72;
          v27 = v30;
          v28 = v31;
          v58 = v48 + 1;
          v29 = v66;
          v24 = v67;
          if (!__OFADD__(v48, 1))
          {
            goto LABEL_7;
          }

          __break(1u);
          break;
        }

        result = (*v73)(v43, a11);
        v29 = v66;
        v24 = v67;
        v46 = v30 != v67 || v31 != v66;
        v26 = v71;
        v25 = v72;
        v28 = v31;
        v27 = v30;
      }

      while (v46 || v72 || v71);
    }

    v51 = v58;
    *v56 = v58;
    *v57 = v51;
  }

  else
  {
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_2558A754C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  result = sub_2559658C0();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v9 = sub_2558A80CC(a4, sub_2558A83B8);
    v10 = *a3;
    *a3 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_2558A7654(uint64_t a1, void *a2, __int128 *a3, void (*a4)(char *, char *), uint64_t a5, __int128 *a6, __int128 *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v79 = a7;
  v80 = a8;
  v102 = a6;
  v77 = a4;
  v78 = a5;
  v65 = a2;
  v76 = a12;
  v17 = *(a12 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](a1);
  v74 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v72 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a13 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v63 = v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v28);
  v32 = v59 - v31;
  v62 = *result;
  if (v62)
  {
    v73 = a16;
    v64 = a10;
    v60 = a9;
    v33 = a3[1];
    v86 = *a3;
    v87 = v33;
    v34 = a3[3];
    v88 = a3[2];
    v89 = v34;
    result = sub_2558A8044(-1, -1, &v90);
    v35 = 0;
    v36 = *(a3 + 1) - *a3;
    v37 = *(a3 + 5) - *(a3 + 4);
    v92 = v86;
    v93 = v87;
    v94 = v88;
    v95 = v89;
    v96 = v90;
    v97 = v91;
    v100 = v90;
    v101 = v91;
    v70 = (v22 + 8);
    v71 = (v17 + 8);
    v68 = v36;
    v69 = (v26 + 8);
    v59[1] = v26 + 32;
    v59[2] = v26 + 16;
    v98 = v36;
    v99 = v37;
    v61 = v26;
    v67 = v37;
    v38 = v75;
    while (1)
    {
      v66 = v35;
      v40 = v100;
      v39 = v101;
      if (v100 == v36 && v101 == v37)
      {
        break;
      }

      while (1)
      {
        v86 = v92;
        v87 = v93;
        v88 = v94;
        v89 = v95;
        sub_2558A8044(v40, v39, &v100);
        v42 = v102[1];
        v84 = *v102;
        v85 = v42;
        *&v82 = v40;
        sub_2559653C0();
        swift_getWitnessTable();
        sub_255965D20();
        v43 = v40;
        v44 = v32;
        v45 = v72;
        sub_255965D30();
        v46 = v79[1];
        v82 = *v79;
        v83 = v46;
        v81 = v39;
        v47 = v76;
        sub_2559653C0();
        swift_getWitnessTable();
        sub_255965D20();
        v48 = v74;
        sub_255965D30();
        v77(v45, v48);
        (*v71)(v48, v47);
        v49 = v45;
        v32 = v44;
        (*v70)(v49, v38);
        v50 = *(v73 + 8);
        if ((sub_255965390() & 1) == 0)
        {
          break;
        }

        result = (*v69)(v44, a13);
        v40 = v100;
        v39 = v101;
        if (v100 == v68 && v101 == v67)
        {
          goto LABEL_14;
        }
      }

      v51 = *(*(v102 + 6) + 8 * v43);
      v52 = v61;
      v53 = v66;
      v54 = v60 + *(v61 + 72) * v66;
      v55 = v63;
      (*(v61 + 16))(v63, v32, a13);
      (*(v52 + 32))(v54, v55, a13);
      *(v62 + 8 * v53) = v51;
      result = (*(v52 + 8))(v32, a13);
      v56 = __OFADD__(v53, 1);
      v35 = v53 + 1;
      v37 = v67;
      v36 = v68;
      if (v56)
      {
        __break(1u);
        break;
      }
    }

LABEL_14:
    v57 = v65;
    v58 = v66;
    *v64 = v66;
    *v57 = v58;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2558A7B3C(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, void (*a5)(char *), uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = *a1;
  v18 = a1[1];
  result = sub_2559658C0();
  if (!result)
  {
    goto LABEL_15;
  }

  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    v24 = a8;
    if (a4)
    {
      v22 = sub_255965530();
      *(v22 + 16) = a4;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v27 = 0;
    v26[0] = v22 + 32;
    v26[1] = a4;
    result = sub_2558A7C7C(v26, &v27, a4, a5, a6, a7, v21, a2, v24, a9, a10, a11);
    if (!v11)
    {
      if (v27 <= a4)
      {
        *(v22 + 16) = v27;
        v23 = *a3;
        *a3 = v22;
      }

      goto LABEL_14;
    }

    if (v27 <= a4)
    {
      *(v22 + 16) = v27;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t *sub_2558A7C7C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *), uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v50 = a7;
  v63 = a6;
  v60 = a4;
  v61 = a5;
  v59 = a9;
  v14 = *(*(a9 - 8) + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v58 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a10 - 8);
  v17 = *(v54 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v62 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v25 = &v45 - v24;
  v49 = *result;
  if (!v49)
  {
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v64 = v12;
  v51 = v21;
  v52 = v22;
  v53 = 0;
  v26 = 0;
  v56 = a12;
  v57 = (v23 + 8);
  v55 = a12 + 16;
  v27 = (v54 + 8);
  v48 = v54 + 16;
  v47 = v54 + 32;
  while (2)
  {
    if (v26 != a3)
    {
      while (1)
      {
        if (v26 >= a3)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_17;
        }

        v29 = v27;
        v30 = v63[1];
        v65 = *v63;
        v66 = v30;
        v67 = v26;
        v31 = v59;
        sub_2559653C0();
        swift_getWitnessTable();
        sub_255965D20();
        v32 = v58;
        sub_255965D30();
        v33 = v64;
        v60(v32);
        result = (*v57)(v32, v31);
        v64 = v33;
        if (v33)
        {
          return result;
        }

        v34 = a3;
        v35 = v56;
        v36 = v62;
        (*(v56 + 16))(a10, v56);
        v37 = *(v35 + 8);
        v38 = sub_255965390();
        v39 = *v29;
        v40 = v36;
        v27 = v29;
        (*v29)(v40, a10);
        if ((v38 & 1) == 0)
        {
          break;
        }

        result = v39(v25, a10);
        ++v26;
        a3 = v34;
        if (v28 == v34)
        {
          goto LABEL_14;
        }
      }

      v41 = v53;
      v42 = v54;
      v46 = v50 + *(v54 + 72) * v53;
      (*(v54 + 16))(v62, v25, a10);
      v43 = *(v42 + 32);
      v27 = v29;
      v43(v46, v62, a10);
      *(v49 + 8 * v41) = *(*(v63 + 6) + 8 * v26);
      result = v39(v25, a10);
      ++v26;
      v53 = v41 + 1;
      a3 = v34;
      if (!__OFADD__(v41, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_14:
  v44 = v53;
  *v52 = v53;
  *v51 = v44;
  return result;
}

uint64_t sub_2558A8044@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = v3[1] - *v3;
  v7 = v3[5] - v3[4];
  v8 = result + 1;
LABEL_4:
  if (v5 != v7)
  {
    while (v6 != v4)
    {
      v9 = *(v3[2] + 8 * v4);
      v10 = *(v3[6] + 8 * v5);
      if (v9 == v10)
      {
        goto LABEL_14;
      }

      if (v9 >= v10)
      {
        v11 = __OFADD__(v5++, 1);
        if (!v11)
        {
          goto LABEL_4;
        }

        __break(1u);
LABEL_14:
        v6 = v8;
        v7 = v5;
        break;
      }

      v11 = __OFADD__(v4, 1);
      v8 = ++v4;
      if (v11)
      {
        __break(1u);
        goto LABEL_16;
      }
    }
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t sub_2558A80CC(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_255965530();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2558A81CC(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v8 = *(v2 + 80);
  return sub_2558A6F20(a1, a2, *(v2 + 32), *(v2 + 40));
}

uint64_t sub_2558A8208(uint64_t *a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  v9 = *(v2 + 16);
  v10 = *(v2 + 32);
  v8 = *(v2 + 112);
  return sub_2558A754C(a1, a2, *(v2 + 64), *(v2 + 72));
}

uint64_t sub_2558A824C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v6 = *(v1 + 32);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  v4 = type metadata accessor for SparseBuffer();
  return sub_2558A65D0(v4, a1);
}

uint64_t sub_2558A82F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ElementIdentifierSet.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

uint64_t ElementIdentifierSet.intersection(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*a1 + 16);
  v5 = *(*v2 + 16);
  v6 = v4;
  v7 = [v5 identifierSetByIntersectingIdentifierSet_];
  [v7 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v8 = swift_allocObject();
  *(v8 + 16) = v10;

  *a2 = v8;
  return result;
}

uint64_t ElementIdentifierSet.subtracting(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*a1 + 16);
  v5 = *(*v2 + 16);
  v6 = v4;
  v7 = [v5 identifierSetBySubtractingIdentifierSet_];
  [v7 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v9;
  *a2 = result;
  return result;
}

uint64_t ElementIdentifierSet.insert(_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = v7;
    [v8 mutableCopy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_255888134(0, &qword_2810B7360, off_2797FD128);
    swift_dynamicCast();
    v7 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v9 = swift_allocObject();
    *(v9 + 16) = v14;
    v10 = *v2;

    *v2 = v9;
  }

  v11 = v7;
  v12 = [v11 containsIdentifier_];
  [v11 addIdentifier_];

  *a1 = v4;
  return v12 ^ 1;
}

uint64_t ElementIdentifierSet.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v5;
  *a2 = result;
  return result;
}

{
  v3 = [objc_allocWithZone(KGMutableElementIdentifierSet) initWithElementIdentifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void __swiftcall ElementIdentifierSet.wrappedValue()(KGElementIdentifierSet *__return_ptr retstr)
{
  v2 = *(*v1 + 16);
  [v2 copy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, qword_2810B7368, off_2797FD0B8);
  swift_dynamicCast();
}

uint64_t ElementIdentifierSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v13 = a2;
    v7 = 32;
    do
    {
      v9 = *(a1 + v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v5 + 16);
        [v10 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_255888134(0, &qword_2810B7360, off_2797FD128);
        swift_dynamicCast();
        v11 = swift_allocObject();
        *(v11 + 16) = v14;

        v5 = v11;
      }

      v8 = *(v5 + 16);
      [v8 containsIdentifier_];
      [v8 addIdentifier_];

      v7 += 8;
      --v6;
    }

    while (v6);

    a2 = v13;
  }

  else
  {
  }

  *a2 = v5;
  return result;
}

KnowledgeGraphKit::ElementIdentifier_optional __swiftcall ElementIdentifierSet.remove(_:)(KnowledgeGraphKit::ElementIdentifier a1)
{
  sub_2558A9DA4(a1.rawValue, &selRef_removeIdentifier_, v1);
  result.value.rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_2558A8B70(uint64_t *a1, SEL *a2)
{
  v4 = *a1;
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = v7;
    [v8 mutableCopy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_255888134(0, &qword_2810B7360, off_2797FD128);
    swift_dynamicCast();
    v7 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = *v2;

    *v2 = v9;
  }

  [v7 *a2];
}

id sub_2558A8C80(uint64_t *a1, SEL *a2)
{
  v4 = *a1;
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = v7;
    [v8 mutableCopy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_255888134(0, &qword_2810B7360, off_2797FD128);
    swift_dynamicCast();
    v7 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v9 = swift_allocObject();
    *(v9 + 16) = v12;
    v10 = *v2;

    *v2 = v9;
  }

  return [v7 *a2];
}

id sub_2558A8DAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);

  v5 = v3;
  v6 = v4;
  v7 = [v5 identifierSetByIntersectingIdentifierSet_];
  [v7 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();

  v8 = [v10 isEqualToElementIdentifierSet_];

  return v8;
}

uint64_t ElementIdentifierSet.sparseOffsetArray.getter()
{
  v1 = *v0;
  v2 = [*(*v0 + 16) count];

  v3 = sub_2558972F8(v2, v1);

  return v3;
}

uint64_t ElementIdentifierSet.sparseArray<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v18 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = *v4;
  v14 = [*(v13 + 16) count];

  v15 = sub_2558972F8(v14, v13);

  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  sub_255965BF0();
  v16 = sub_255899B74(v10, *(v15 + 16), a2);
  (*(v7 + 8))(v10, a2);
  return SparseArray.init(values:offsets:)(v16, v15, a4);
}

uint64_t KGElementIdentifierSet.elementIdentifiers.getter@<X0>(uint64_t *a1@<X8>)
{
  [v1 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();
  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  result = swift_allocObject();
  *(result + 16) = v4;
  *a1 = result;
  return result;
}

void ElementIdentifierSet.withValue<A>(_:)(void (*a1)(void))
{
  v3 = *(*v1 + 16);
  a1();
}

id sub_2558A92A0(id result, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (v6)
    {
      while (v9 != a4)
      {
        v9 = [*(a6 + 16) indexAfterIndex_];
        a2 = v11;
        if (!--v6)
        {
          return v9;
        }
      }

      return 0;
    }

    return v9;
  }

  return result;
}

id ElementIdentifierSet.init(_:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[4];
  result = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  v8 = result;
  if (v4 == v5)
  {
LABEL_6:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    result = swift_allocObject();
    *(result + 2) = v8;
    *a2 = result;
  }

  else
  {
    v9 = v4;
    while (v9 >= v4 && v9 < v5)
    {
      v10 = [v6[2] indexAfterIndex_];
      v3 = v11;
      result = [v8 addIdentifier_];
      v9 = v10;
      if (v10 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void ElementIdentifierSet.indexSet.getter()
{
  v1 = *(*v0 + 16);
  v2 = [v1 indexSet];
  sub_255965210();
}

KGElementIdentifierSetIndex __swiftcall ElementIdentifierSet.index(after:)(KGElementIdentifierSetIndex after)
{
  v2 = [*(*v1 + 16) indexAfterIndex_];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

id sub_2558A95CC@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  result = [*(*v2 + 16) *a1];
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_2558A962C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1[1];
  v8 = *a1;
  v4 = *v2;
  v5 = [*(v4 + 16) startIndex];
  result = [*(v4 + 16) endIndex];
  if (result < v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v7)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(a2 + 32) = v4;
  *a2 = v8;
  *(a2 + 16) = v7;
}

id sub_2558A96DC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  *a1 = v3;
  v4 = *(v3 + 16);

  a1[1] = [v4 startIndex];
  a1[2] = v5;
  result = [*(v3 + 16) endIndex];
  a1[3] = result;
  a1[4] = v7;
  return result;
}

void *sub_2558A9740@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v6 = *result;
    v7 = result[1];
    if (a2)
    {
      v8 = *v3;
      do
      {
        result = [*(v8 + 16) indexAfterIndex_];
        v6 = result;
        v7 = v9;
        --v4;
      }

      while (v4);
    }

    *a3 = v6;
    a3[1] = v7;
  }

  return result;
}

id sub_2558A97A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2558A92A0(*a1, *(a1 + 8), a2, *a3, *(a3 + 8), *v4);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8 & 1;
  return result;
}

void *sub_2558A97EC(void *result, void *a2)
{
  v3 = *a2;
  if (*a2 < *result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (*result != v3)
  {
    v5 = 0;
    v6 = result[1];
    v7 = *v2;
    while (1)
    {
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      result = [*(v7 + 16) indexAfterIndex_];
      ++v5;
      if (result == v3)
      {
        return v4;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return 0;
}

void *sub_2558A987C(void *result, void *a2)
{
  if (*result < *a2 || *result >= a2[2])
  {
    __break(1u);
  }

  return result;
}

void *sub_2558A989C(void *result, void *a2)
{
  if (*result < *a2 || a2[2] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2558A98BC(void *result, void *a2)
{
  if (*result < *a2 || a2[2] < result[2])
  {
    __break(1u);
  }

  return result;
}

id sub_2558A98E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*v2 + 16) indexAfterIndex_];
  *a2 = result;
  a2[1] = v5;
  return result;
}

id sub_2558A991C(void *a1)
{
  result = [*(*v1 + 16) indexAfterIndex_];
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_2558A9958@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  result = [*(v3 + 16) startIndex];
  a1[1] = result;
  a1[2] = v5;
  return result;
}

void *sub_2558A9994()
{
  v1 = sub_25587FFF0(*v0);

  return v1;
}

void ElementIdentifierSet.hash(into:)()
{
  v1 = *(*v0 + 16);
  MEMORY[0x259C43B00]([v1 hash]);
}

uint64_t ElementIdentifierSet.hashValue.getter()
{
  v1 = *v0;
  sub_255965D50();
  v2 = *(v1 + 16);
  MEMORY[0x259C43B00]([v2 hash]);

  return sub_255965D90();
}

uint64_t sub_2558A9A94()
{
  v1 = *v0;
  sub_255965D50();
  v2 = *(v1 + 16);
  MEMORY[0x259C43B00]([v2 hash]);

  return sub_255965D90();
}

void sub_2558A9AF4()
{
  v1 = *(*v0 + 16);
  MEMORY[0x259C43B00]([v1 hash]);
}

uint64_t sub_2558A9B54()
{
  v1 = *v0;
  sub_255965D50();
  v2 = *(v1 + 16);
  MEMORY[0x259C43B00]([v2 hash]);

  return sub_255965D90();
}

uint64_t ElementIdentifierSet.description.getter()
{
  sub_25587FFF0(*v0);
  v1 = MEMORY[0x259C43270]();

  return v1;
}

uint64_t sub_2558A9C04()
{
  sub_25587FFF0(*v0);
  v1 = MEMORY[0x259C43270]();

  return v1;
}

uint64_t sub_2558A9C74@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*a1 + 16);
  v7 = *(*v3 + 16);
  v8 = v6;
  v9 = [v7 *a2];
  [v9 mutableCopy];
  sub_2559658F0();
  swift_unknownObjectRelease();

  sub_255888134(0, &qword_2810B7360, off_2797FD128);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v10 = swift_allocObject();
  *(v10 + 16) = v12;

  *a3 = v10;
  return result;
}

void sub_2558A9DA4(uint64_t *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(*v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = v9;
    [v10 mutableCopy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_255888134(0, &qword_2810B7360, off_2797FD128);
    swift_dynamicCast();
    v9 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v11 = swift_allocObject();
    *(v11 + 16) = v16;
    v12 = *v3;

    *v3 = v11;
  }

  v13 = v9;
  v14 = [v13 containsIdentifier_];
  if (v14)
  {
    v15 = v6;
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
  *(a3 + 8) = v14 ^ 1;
  [v13 *a2];
}

uint64_t sub_2558A9FAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ElementIdentifierSet.subtracting(_:)(a1, a2);
  v3 = *v2;
}

void sub_2558AA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  if (!a2 || !a3)
  {
LABEL_18:
    *a1 = a4;
    *(a1 + 8) = a6;
    *(a1 + 16) = a5;
    *(a1 + 24) = a7;
    return;
  }

  if (a3 < 0)
  {
    goto LABEL_23;
  }

  v13 = 0;
  v14 = a3 - 1;
  while (a6 != 1.0)
  {
    sub_25588AF30(a1, 0.0, 1.0);
    v17 = ceil(log(1.0 - v16) * a7);
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_20;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_21;
    }

    v15 = __OFADD__(a4, v17);
    a4 += v17;
    if (v15)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (a4 > a5)
    {
      goto LABEL_18;
    }

    *(a2 + 8 * v13) = a4;
    if (v14 == v13)
    {
      goto LABEL_18;
    }

    if (__OFADD__(++v13, 1))
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  v15 = __OFADD__(a4++, 1);
  if (!v15)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

__objc2_class *sub_2558AA194(__objc2_class **a1, uint64_t a2, uint64_t a3, __objc2_class *a4)
{
  result = [a4->cache startIndex];
  v9 = result;
  v11 = v10;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *a1 = a4;
    a1[1] = v9;
    a1[2] = v11;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = a1;
    v12 = 0;
    a1 = &off_279800000;
    v13 = result;
    while (1)
    {
      if (v9 == [a4->cache endIndex])
      {
        a3 = v12;
        goto LABEL_13;
      }

      v14 = [a4->cache indexAfterIndex_];
      v13 = v14;
      v11 = v15;
      *(a2 + 8 * v12) = v9;
      if (a3 - 1 == v12)
      {
        break;
      }

      ++v12;
      v9 = v14;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v9 = v14;
LABEL_13:
    a1 = v16;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_2558AA2A0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2558AA430()
{
  result = qword_27F7D6B50;
  if (!qword_27F7D6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6B50);
  }

  return result;
}

uint64_t sub_2558AA4B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KGElementIdentifierSetIndex(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2558AA5C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_2558AA610()
{
  result = qword_27F7D6B90;
  if (!qword_27F7D6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6B90);
  }

  return result;
}

unint64_t sub_2558AA668()
{
  result = qword_27F7D6B98;
  if (!qword_27F7D6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6B98);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_2558AA784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2558AA7AC, 0, 0);
}

uint64_t sub_2558AA7AC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 40);
  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = &unk_2559702F0;
  v4[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6C50, &unk_2559702F8);
  sub_255965860();

  v5 = *(v0 + 16);
  *(v0 + 72) = v5;
  v6 = *(MEMORY[0x277D857C8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A0, &unk_25596FCF0);
  *v7 = v0;
  v7[1] = sub_2558AA924;
  v9 = *(v0 + 24);
  v10 = MEMORY[0x277D84950];
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v9, v5, v11, v8, v10);
}

uint64_t sub_2558AA924()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_2558AAAD0;
  }

  else
  {
    v3 = sub_2558AAA38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2558AAA38()
{
  v2 = v0[8];
  v1 = v0[9];

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_2558AAAD0()
{
  v2 = v0[8];
  v1 = v0[9];

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[1];
    v6 = v0[11];

    return v5();
  }

  return result;
}

uint64_t sub_2558AAB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62A8, &qword_25596E660);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25588797C(a3, v24 - v10);
  v12 = sub_255965680();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2558879EC(v11);
  }

  else
  {
    sub_255965670();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_255965650();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2559653F0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2558879EC(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2558879EC(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}