uint64_t sub_1D0F72540(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D0F7269C()
{
  result = qword_1EC5FCA70;
  if (!qword_1EC5FCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA70);
  }

  return result;
}

void sub_1D0F726F0()
{
  if (!qword_1EE06F2E8[0])
  {
    type metadata accessor for ColorRepresentation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE06F2E8);
    }
  }
}

uint64_t sub_1D0F72754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AtomicLazy.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AtomicLazy.init(_:)(a1, a2);
  return v4;
}

uint64_t AtomicLazy.__allocating_init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AtomicLazy.init(wrappedValue:)(a1, a2);
  return v4;
}

void *AtomicLazy.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  v7 = type metadata accessor for AtomicLazy.State();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v14 - v9);
  v11 = swift_allocObject();
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *v10 = sub_1D0F73490;
  v10[1] = v11;
  swift_storeEnumTagMultiPayload();
  v12 = sub_1D0F2670C();
  (*(v8 + 8))(v10, v7);
  v2[2] = v12;
  return v2;
}

uint64_t static AtomicLazy.subscript.getter(uint64_t a1)
{
  swift_getAtKeyPath();
  sub_1D0F72D5C(a1);
}

uint64_t sub_1D0F72B24(uint64_t a1, uint64_t a2)
{
  sub_1D0FF6258();
  type metadata accessor for AtomicLazy();
  sub_1D0FF6258();
  swift_getTupleTypeMetadata3();
  return static AtomicLazy.subscript.getter(a2);
}

uint64_t sub_1D0F72BC4(uint64_t a1)
{
  sub_1D0FF6258();
  type metadata accessor for AtomicLazy();
  sub_1D0FF6258();
  swift_getTupleTypeMetadata3();

  sub_1D0F734B8(a1);
}

uint64_t static AtomicLazy.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_1D0F734B8(a1);

  (*(*(*(v2 + 80) - 8) + 8))(a2);
  v5 = *(*(*(v2 + 88) - 8) + 8);

  return v5(a1);
}

void sub_1D0F72D5C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4[2] = *(*v1 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = a1;
  type metadata accessor for AtomicLazy.State();
  sub_1D0F80744(sub_1D0F73834, v4, v3);
}

void sub_1D0F72E00(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4[2] = *(*v1 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = a1;
  type metadata accessor for AtomicLazy.State();
  sub_1D0F80744(sub_1D0F73814, v4, v3);
}

void (*static AtomicLazy.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  *v10 = a3;
  v10[1] = a4;
  v12 = *(v4 + 88);
  v10[2] = v12;
  v13 = *(v12 - 8);
  v10[3] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[4] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[4] = malloc(v14);
    v15 = malloc(v14);
  }

  v11[5] = v15;
  v16 = *(v4 + 80);
  v11[6] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v11[7] = v17;
  if (v9)
  {
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v19 = malloc(*(v17 + 64));
  }

  v11[8] = v19;
  (*(v18 + 16))();
  static AtomicLazy.subscript.getter(a2);
  return sub_1D0F73040;
}

void sub_1D0F73040(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v9 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 32), v5, v9);

    sub_1D0F734B8(v7);

    (*(v4 + 8))(v3, v6);
    v10 = *(v8 + 8);
    v10(v7, v9);
    v10(v5, v9);
  }

  else
  {

    sub_1D0F734B8(v5);

    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1D0F731BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AtomicLazy.State();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v13 - v10);
  (*(v9 + 16))(&v13 - v10, a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(a3 - 8) + 32))(a4, v11, a3);
  }

  (*(v9 + 8))(a1, v8);
  (*v11)(a2);

  (*(*(a3 - 8) + 16))(a1, a4, a3);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D0F73370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AtomicLazy.State();
  (*(*(v7 - 8) + 8))(a1, v7);
  (*(*(a4 - 8) + 16))(a1, a2, a4);
  return swift_storeEnumTagMultiPayload();
}

uint64_t AtomicLazy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D0F734B8(uint64_t a1)
{
  swift_getAtKeyPath();
  sub_1D0F72E00(a1);
}

uint64_t sub_1D0F73544(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D0F7365C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

char *static KeywordFeatureTag.identifiers(for:)(void *a1)
{
  v1 = sub_1D0F8BF84(a1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v3 += 8;
      v6 = HKDisplayCategoryIdentifierToString();
      if (v6)
      {
        v7 = v6;
        v8 = sub_1D0FF5428();
        v10 = v9;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1D0F50290(0, *(v4 + 2) + 1, 1, v4);
        }

        v12 = *(v4 + 2);
        v11 = *(v4 + 3);
        if (v12 >= v11 >> 1)
        {
          v4 = sub_1D0F50290((v11 > 1), v12 + 1, 1, v4);
        }

        *(v4 + 2) = v12 + 1;
        v5 = &v4[16 * v12];
        *(v5 + 4) = v8;
        *(v5 + 5) = v10;
      }

      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t static KeywordFeatureTag.identifier(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 3)
  {
    if (*a1 > 1u)
    {
      if (v1 == 2)
      {
        return MEMORY[0x1EEE0F0E8]();
      }

      else
      {
        return MEMORY[0x1EEE0F120]();
      }
    }

    else if (*a1)
    {
      return MEMORY[0x1EEE0F0E0]();
    }

    else
    {
      return MEMORY[0x1EEE0F100]();
    }
  }

  else if (*a1 <= 5u)
  {
    if (v1 == 4)
    {
      return MEMORY[0x1EEE0F110]();
    }

    else
    {
      return MEMORY[0x1EEE0F0F0]();
    }
  }

  else if (v1 == 6)
  {
    return MEMORY[0x1EEE0F118]();
  }

  else if (v1 == 7)
  {
    return MEMORY[0x1EEE0F128]();
  }

  else
  {
    return MEMORY[0x1EEE0F0F8]();
  }
}

id static HKQuery.optionalPredicateForSamples(within:options:)(uint64_t a1, uint64_t a2)
{
  sub_1D0F73B6C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D0FF3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F73BC4(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D0F73C28(v6);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = objc_opt_self();
    v13 = sub_1D0FF3E58();
    v14 = [v12 predicateForSamplesWithinDateInterval:v13 options:a2];

    (*(v8 + 8))(v10, v7);
    return v14;
  }
}

void sub_1D0F73B6C()
{
  if (!qword_1EE070DB0)
  {
    sub_1D0FF3EA8();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070DB0);
    }
  }
}

uint64_t sub_1D0F73BC4(uint64_t a1, uint64_t a2)
{
  sub_1D0F73B6C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F73C28(uint64_t a1)
{
  sub_1D0F73B6C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D0F73C8C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D0FF5888();
  if (!v19)
  {
    return sub_1D0FF5658();
  }

  v41 = v19;
  v45 = sub_1D0FF5EF8();
  v32 = sub_1D0FF5F08();
  sub_1D0FF5EA8();
  result = sub_1D0FF5878();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1D0FF58C8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1D0FF5EE8();
      result = sub_1D0FF58A8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Collection<>.rawValuesString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v13 = sub_1D0F73C8C(sub_1D0F7419C, v12, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
  sub_1D0F3B6EC();
  sub_1D0F7420C();
  v8 = sub_1D0FF5388();
  v10 = v9;

  v13 = 91;
  v14 = 0xE100000000000000;
  MEMORY[0x1D3880AC0](v8, v10);

  MEMORY[0x1D3880AC0](93, 0xE100000000000000);
  return v13;
}

unint64_t sub_1D0F7420C()
{
  result = qword_1EE070B80;
  if (!qword_1EE070B80)
  {
    sub_1D0F3B6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070B80);
  }

  return result;
}

uint64_t MutableCollection.mutateEach(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v31 = a2;
  v32 = a4;
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v27 - v12;
  sub_1D0FF5878();
  v13 = (v7 + 8);
  v28 = (v7 + 16);
  v14 = v4;
  while (1)
  {
    v15 = v33;
    sub_1D0FF5898();
    swift_getAssociatedConformanceWitness();
    v16 = sub_1D0FF53D8();
    v17 = *v13;
    (*v13)(v15, AssociatedTypeWitness);
    if (v16)
    {
      return v17(v36, AssociatedTypeWitness);
    }

    v18 = v13;
    v19 = v5;
    v20 = v29;
    (*v28)(v29, v36, AssociatedTypeWitness);
    v21 = v14;
    v22 = sub_1D0FF53C8();
    v23 = v34;
    v30(v24);
    if (v23)
    {
      break;
    }

    v34 = 0;
    v22(v35, 0);
    v25 = v20;
    v13 = v18;
    v17(v25, AssociatedTypeWitness);
    v14 = v21;
    v5 = v19;
    sub_1D0FF58A8();
  }

  v22(v35, 1);
  v17(v20, AssociatedTypeWitness);
  return v17(v36, AssociatedTypeWitness);
}

id HKActivityMoveMode.description.getter()
{
  result = HKActivityMoveModeToString();
  if (result)
  {
    v1 = result;
    v2 = sub_1D0FF5428();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D0F74590()
{
  result = HKActivityMoveModeToString();
  if (result)
  {
    v1 = result;
    v2 = sub_1D0FF5428();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HKActivityMoveMode.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1004410 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D0FF6278();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t HKActivityMoveMode.CodingKeys.hashValue.getter()
{
  sub_1D0FF6338();
  MEMORY[0x1D3881950](0);
  return sub_1D0FF6378();
}

unint64_t sub_1D0F74728()
{
  result = qword_1EC5FCA78;
  if (!qword_1EC5FCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA78);
  }

  return result;
}

unint64_t sub_1D0F74780()
{
  result = qword_1EC5FCA80;
  if (!qword_1EC5FCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA80);
  }

  return result;
}

unint64_t sub_1D0F747D8()
{
  result = qword_1EC5FCA88;
  if (!qword_1EC5FCA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA88);
  }

  return result;
}

uint64_t sub_1D0F74848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1004410 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D0FF6278();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D0F748DC(uint64_t a1)
{
  v2 = sub_1D0F74A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F74918(uint64_t a1)
{
  v2 = sub_1D0F74A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D0F74A14()
{
  result = qword_1EE0710A8;
  if (!qword_1EE0710A8)
  {
    type metadata accessor for HKActivityMoveMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0710A8);
  }

  return result;
}

unint64_t sub_1D0F74A6C()
{
  result = qword_1EC5FCA90;
  if (!qword_1EC5FCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCA90);
  }

  return result;
}

void *sub_1D0F74AC0()
{
  sub_1D0F75878();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D0FFCB90;
  *(v0 + 32) = xmmword_1D0FFCBA0;
  *(v0 + 48) = 0xEA00000000003231;
  *(v0 + 56) = xmmword_1D0FFCBB0;
  *(v0 + 72) = 0xEA00000000003239;
  *(v0 + 80) = xmmword_1D0FFCBC0;
  *(v0 + 96) = 0xEA00000000003534;
  *(v0 + 104) = xmmword_1D0FFCBD0;
  *(v0 + 120) = 0xEA00000000003237;
  *(v0 + 128) = xmmword_1D0FFCBE0;
  *(v0 + 144) = 0xEA00000000003030;
  *(v0 + 152) = xmmword_1D0FFCBF0;
  *(v0 + 168) = 0xEA00000000003230;
  *(v0 + 176) = xmmword_1D0FFCC00;
  *(v0 + 192) = 0xEA00000000003332;
  *(v0 + 200) = xmmword_1D0FFCC10;
  *(v0 + 216) = 0xEA00000000003631;
  *(v0 + 224) = xmmword_1D0FFCC20;
  *(v0 + 240) = 0xEA00000000003539;
  *(v0 + 248) = xmmword_1D0FFCC30;
  *(v0 + 264) = 0xEA00000000003438;
  *(v0 + 272) = xmmword_1D0FFCC40;
  *(v0 + 288) = 0xEA00000000003833;
  *(v0 + 296) = 13;
  *(v0 + 304) = 0x3239333534393431;
  *(v0 + 312) = 0xEA00000000003838;
  *(v0 + 320) = xmmword_1D0FFCC50;
  *(v0 + 336) = 0xEA00000000003231;
  *(v0 + 344) = 15;
  *(v0 + 352) = 0x3539333534393431;
  *(v0 + 360) = 0xEA00000000003234;
  *(v0 + 368) = xmmword_1D0FFCC60;
  *(v0 + 384) = 0xEA00000000003734;
  *(v0 + 392) = 19;
  *(v0 + 400) = 0x3731343534393431;
  *(v0 + 408) = 0xEA00000000003736;
  *(v0 + 416) = xmmword_1D0FFCC70;
  *(v0 + 432) = 0xEA00000000003837;
  *(v0 + 440) = 21;
  *(v0 + 448) = 0x3538333534393431;
  *(v0 + 456) = 0xEA00000000003430;
  *(v0 + 464) = xmmword_1D0FFCC80;
  *(v0 + 480) = 0xEA00000000003937;
  *(v0 + 488) = 23;
  *(v0 + 496) = 0x3538333534393431;
  *(v0 + 504) = 0xEA00000000003438;
  *(v0 + 512) = xmmword_1D0FFCC90;
  *(v0 + 528) = 0xEA00000000003131;
  *(v0 + 536) = 25;
  *(v0 + 544) = 0x3339333534393431;
  *(v0 + 552) = 0xEA00000000003732;
  *(v0 + 560) = xmmword_1D0FFCCA0;
  *(v0 + 576) = 0xEA00000000003339;
  *(v0 + 584) = 27;
  *(v0 + 592) = 0x3839333534393431;
  *(v0 + 600) = 0xEA00000000003733;
  *(v0 + 608) = xmmword_1D0FFCCB0;
  *(v0 + 624) = 0xEA00000000003736;
  *(v0 + 632) = 29;
  *(v0 + 640) = 0x3232333734393431;
  *(v0 + 648) = 0xEA00000000003236;
  *(v0 + 656) = xmmword_1D0FFCCC0;
  *(v0 + 672) = 0xEA00000000003435;
  *(v0 + 680) = 31;
  *(v0 + 688) = 0x3238333534393431;
  *(v0 + 696) = 0xEA00000000003539;
  *(v0 + 704) = xmmword_1D0FFCCD0;
  *(v0 + 720) = 0xEA00000000003130;
  *(v0 + 728) = 33;
  *(v0 + 736) = 0x3538333534393431;
  *(v0 + 744) = 0xEA00000000003837;
  *(v0 + 752) = xmmword_1D0FFCCE0;
  *(v0 + 768) = 0xEA00000000003638;
  *(v0 + 776) = 35;
  *(v0 + 784) = 0x3134333734393431;
  *(v0 + 792) = 0xEA00000000003839;
  *(v0 + 800) = xmmword_1D0FFCCF0;
  *(v0 + 816) = 0xEA00000000003533;
  *(v0 + 824) = 37;
  *(v0 + 832) = 0x3231343534393431;
  *(v0 + 840) = 0xEA00000000003136;
  *(v0 + 848) = xmmword_1D0FFCD00;
  *(v0 + 864) = 0xEA00000000003734;
  *(v0 + 872) = 39;
  *(v0 + 880) = 0x3938333534393431;
  *(v0 + 888) = 0xEA00000000003730;
  *(v0 + 896) = xmmword_1D0FFCD10;
  *(v0 + 912) = 0xEA00000000003230;
  *(v0 + 920) = 41;
  *(v0 + 928) = 0x3631333734393431;
  *(v0 + 936) = 0xEA00000000003337;
  *(v0 + 944) = xmmword_1D0FFCD20;
  *(v0 + 960) = 0xEA00000000003230;
  *(v0 + 968) = 43;
  *(v0 + 976) = 0x3338333534393431;
  *(v0 + 984) = 0xEA00000000003839;
  *(v0 + 992) = xmmword_1D0FFCD30;
  *(v0 + 1008) = 0xEA00000000003738;
  *(v0 + 1016) = 45;
  *(v0 + 1024) = 0x3938333534393431;
  *(v0 + 1032) = 0xEA00000000003235;
  *(v0 + 1040) = xmmword_1D0FFCD40;
  *(v0 + 1056) = 0xEA00000000003538;
  *(v0 + 1064) = 47;
  *(v0 + 1072) = 0x3039323436393431;
  *(v0 + 1080) = 0xEA00000000003433;
  *(v0 + 1088) = xmmword_1D0FFCD50;
  *(v0 + 1104) = 0xEA00000000003839;
  *(v0 + 1112) = 49;
  *(v0 + 1120) = 0x3932333734393431;
  *(v0 + 1128) = 0xEA00000000003130;
  *(v0 + 1136) = xmmword_1D0FFCD60;
  *(v0 + 1152) = 0xEA00000000003835;
  *(v0 + 1160) = 51;
  *(v0 + 1168) = 0x3838333534393431;
  *(v0 + 1176) = 0xEA00000000003037;
  *(v0 + 1184) = xmmword_1D0FFCD70;
  *(v0 + 1200) = 0xEA00000000003736;
  *(v0 + 1208) = 53;
  *(v0 + 1216) = 0x3739323436393431;
  *(v0 + 1224) = 0xEA00000000003131;
  *(v0 + 1232) = xmmword_1D0FFCD80;
  *(v0 + 1248) = 0xEA00000000003537;
  *(v0 + 1256) = 55;
  *(v0 + 1264) = 0x3430333436393431;
  *(v0 + 1272) = 0xEA00000000003437;
  *(v0 + 1280) = xmmword_1D0FFCD90;
  *(v0 + 1296) = 0xEA00000000003831;
  *(v0 + 1304) = 57;
  *(v0 + 1312) = 0x3730333436393431;
  *(v0 + 1320) = 0xEA00000000003437;
  *(v0 + 1328) = xmmword_1D0FFCDA0;
  *(v0 + 1344) = 0xEA00000000003432;
  *(v0 + 1352) = 60;
  *(v0 + 1360) = 0x3636333534393431;
  *(v0 + 1368) = 0xEA00000000003538;
  *(v0 + 1376) = xmmword_1D0FFCDB0;
  *(v0 + 1392) = 0xEA00000000003539;
  *(v0 + 1400) = 62;
  *(v0 + 1408) = 0x3439333534393431;
  *(v0 + 1416) = 0xEA00000000003732;
  *(v0 + 1424) = xmmword_1D0FFCDC0;
  *(v0 + 1440) = 0xEA00000000003438;
  *(v0 + 1448) = 70;
  *(v0 + 1456) = 0x3431343534393431;
  *(v0 + 1464) = 0xEA00000000003136;
  *(v0 + 1472) = xmmword_1D0FFCDD0;
  *(v0 + 1488) = 0xEA00000000003133;
  *(v0 + 1496) = 72;
  *(v0 + 1504) = 0x3436333534393431;
  *(v0 + 1512) = 0xEA00000000003435;
  *(v0 + 1520) = xmmword_1D0FFCDE0;
  *(v0 + 1536) = 0xEA00000000003630;
  *(v0 + 1544) = 75;
  *(v0 + 1552) = 0x3635333436393431;
  *(v0 + 1560) = 0xEA00000000003832;
  *(v0 + 1568) = xmmword_1D0FFCDF0;
  *(v0 + 1584) = 0xEA00000000003937;
  *(v0 + 1592) = 79;
  *(v0 + 1600) = 0x3434333734393431;
  *(v0 + 1608) = 0xEA00000000003037;
  *(v0 + 1616) = xmmword_1D0FFCE00;
  *(v0 + 1632) = 0xEA00000000003934;
  *(v0 + 1640) = 83;
  *(v0 + 1648) = 0x3238333534393431;
  *(v0 + 1656) = 0xEA00000000003137;
  *(v0 + 1664) = xmmword_1D0FFCE10;
  *(v0 + 1680) = 0xEA00000000003633;
  *(v0 + 1688) = 89;
  *(v0 + 1696) = 0x3731343534393431;
  *(v0 + 1704) = 0xEA00000000003339;
  *(v0 + 1712) = xmmword_1D0FFCE20;
  *(v0 + 1728) = 0xEA00000000003539;
  *(v0 + 1736) = 91;
  *(v0 + 1744) = 0x3233343534393431;
  *(v0 + 1752) = 0xEA00000000003837;
  *(v0 + 1760) = xmmword_1D0FFCE30;
  *(v0 + 1776) = 0xEA00000000003233;
  *(v0 + 1784) = 95;
  *(v0 + 1792) = 0x3332343534393431;
  *(v0 + 1800) = 0xEA00000000003738;
  *(v0 + 1808) = xmmword_1D0FFCE40;
  *(v0 + 1824) = 0xEA00000000003633;
  *(v0 + 1832) = 97;
  *(v0 + 1840) = 0x3832343534393431;
  *(v0 + 1848) = 0xEA00000000003130;
  *(v0 + 1856) = xmmword_1D0FFCE50;
  *(v0 + 1872) = 0xEA00000000003138;
  *(v0 + 1880) = 100;
  *(v0 + 1888) = 0x3039333436393431;
  *(v0 + 1896) = 0xEA00000000003539;
  *(v0 + 1904) = xmmword_1D0FFCE60;
  *(v0 + 1920) = 0xEA00000000003436;
  *(v0 + 1928) = 110;
  *(v0 + 1936) = 0x3633333534393431;
  *(v0 + 1944) = 0xEA00000000003132;
  *(v0 + 1952) = xmmword_1D0FFCE70;
  *(v0 + 1968) = 0xEA00000000003936;
  *(v0 + 1976) = 113;
  *(v0 + 1984) = 0x3735333534393431;
  *(v0 + 1992) = 0xEA00000000003035;
  *(v0 + 2000) = xmmword_1D0FFCE80;
  *(v0 + 2016) = 0xEA00000000003936;
  *(v0 + 2024) = 118;
  *(v0 + 2032) = 0x3838333534393431;
  *(v0 + 2040) = 0xEA00000000003033;
  *(v0 + 2048) = xmmword_1D0FFCE90;
  *(v0 + 2064) = 0xEA00000000003538;
  *(v0 + 2072) = 125;
  *(v0 + 2080) = 0x3036333734393431;
  *(v0 + 2088) = 0xEA00000000003830;
  *(v0 + 2096) = xmmword_1D0FFCEA0;
  *(v0 + 2112) = 0xEA00000000003533;
  *(v0 + 2120) = 138;
  *(v0 + 2128) = 0x3434333534393431;
  *(v0 + 2136) = 0xEA00000000003535;
  *(v0 + 2144) = xmmword_1D0FFCEB0;
  *(v0 + 2160) = 0xEA00000000003835;
  *(v0 + 2168) = 140;
  *(v0 + 2176) = 0x3036353636393431;
  *(v0 + 2184) = 0xEA00000000003133;
  *(v0 + 2192) = xmmword_1D0FFCEC0;
  *(v0 + 2208) = 0xEA00000000003439;
  *(v0 + 2216) = 145;
  *(v0 + 2224) = 0x3934333534393431;
  *(v0 + 2232) = 0xEA00000000003632;
  *(v0 + 2240) = xmmword_1D0FFCED0;
  *(v0 + 2256) = 0xEA00000000003437;
  *(v0 + 2264) = 156;
  *(v0 + 2272) = 0x3037353636393431;
  *(v0 + 2280) = 0xEA00000000003738;
  *(v0 + 2288) = xmmword_1D0FFCEE0;
  *(v0 + 2304) = 0xEA00000000003437;
  *(v0 + 2312) = 158;
  *(v0 + 2320) = 0x3130343436393431;
  *(v0 + 2328) = 0xEA00000000003336;
  *(v0 + 2336) = xmmword_1D0FFCEF0;
  *(v0 + 2352) = 0xEA00000000003631;
  *(v0 + 2360) = 160;
  *(v0 + 2368) = 0x3530343436393431;
  *(v0 + 2376) = 0xEA00000000003635;
  *(v0 + 2384) = xmmword_1D0FFCF00;
  *(v0 + 2400) = 0xEA00000000003031;
  *(v0 + 2408) = 162;
  *(v0 + 2416) = 0x3031343436393431;
  *(v0 + 2424) = 0xEA00000000003930;
  *(v0 + 2432) = xmmword_1D0FFCF10;
  *(v0 + 2448) = 0xEA00000000003735;
  *(v0 + 2456) = 164;
  *(v0 + 2464) = 0x3933343436393431;
  *(v0 + 2472) = 0xEA00000000003936;
  *(v0 + 2480) = xmmword_1D0FFCF20;
  *(v0 + 2496) = 0xEA00000000003234;
  *(v0 + 2504) = 166;
  *(v0 + 2512) = 0x3434343436393431;
  *(v0 + 2520) = 0xEA00000000003734;
  *(v0 + 2528) = xmmword_1D0FFCF30;
  *(v0 + 2544) = 0xEA00000000003337;
  *(v0 + 2552) = 168;
  *(v0 + 2560) = 0x3834343436393431;
  *(v0 + 2568) = 0xEA00000000003938;
  *(v0 + 2576) = xmmword_1D0FFCF40;
  *(v0 + 2592) = 0xEA00000000003335;
  *(v0 + 2600) = 170;
  *(v0 + 2608) = 0x3734353636393431;
  *(v0 + 2616) = 0xEA00000000003635;
  *(v0 + 2624) = xmmword_1D0FFCF50;
  *(v0 + 2640) = 0xEA00000000003836;
  *(v0 + 2648) = 172;
  *(v0 + 2656) = 0x3136333436393431;
  *(v0 + 2664) = 0xEA00000000003532;
  *(v0 + 2672) = xmmword_1D0FFCF60;
  *(v0 + 2688) = 0xEA00000000003238;
  *(v0 + 2696) = 178;
  *(v0 + 2704) = 0x3037333436393431;
  *(v0 + 2712) = 0xEA00000000003231;
  *(v0 + 2720) = xmmword_1D0FFCF70;
  *(v0 + 2736) = 0xEA00000000003135;
  *(v0 + 2744) = 182;
  *(v0 + 2752) = 0x3231363636393431;
  *(v0 + 2760) = 0xEA00000000003130;
  *(v0 + 2768) = xmmword_1D0FFCF80;
  *(v0 + 2784) = 0xEA00000000003935;
  *(v0 + 2792) = 186;
  *(v0 + 2800) = 0x3639333436393431;
  *(v0 + 2808) = 0xEA00000000003033;
  *(v0 + 2816) = xmmword_1D0FFCF90;
  *(v0 + 2832) = 0xEA00000000003937;
  *(v0 + 2840) = 188;
  *(v0 + 2848) = 0x3731363636393431;
  *(v0 + 2856) = 0xEA00000000003534;
  *(v0 + 2864) = xmmword_1D0FFCFA0;
  *(v0 + 2880) = 0xEA00000000003930;
  *(v0 + 2888) = 191;
  *(v0 + 2896) = 0x3537333436393431;
  *(v0 + 2904) = 0xEA00000000003532;
  *(v0 + 2912) = xmmword_1D0FFCFB0;
  *(v0 + 2928) = 0xEA00000000003039;
  *(v0 + 2936) = 193;
  *(v0 + 2944) = 0x3238333436393431;
  *(v0 + 2952) = 0xEA00000000003639;
  *(v0 + 2960) = xmmword_1D0FFCFC0;
  *(v0 + 2976) = 0xEA00000000003835;
  *(v0 + 2984) = 195;
  *(v0 + 2992) = 0x3432363636393431;
  *(v0 + 3000) = 0xEA00000000003135;
  *(v0 + 3008) = xmmword_1D0FFCFD0;
  *(v0 + 3024) = 0xEA00000000003837;
  *(v0 + 3032) = 199;
  *(v0 + 3040) = 0x3337333436393431;
  *(v0 + 3048) = 0xEA00000000003534;
  *(v0 + 3056) = xmmword_1D0FFCFE0;
  *(v0 + 3072) = 0xEA00000000003439;
  *(v0 + 3080) = 202;
  *(v0 + 3088) = 0x3234363636393431;
  *(v0 + 3096) = 0xEA00000000003139;
  *(v0 + 3104) = xmmword_1D0FFCFF0;
  *(v0 + 3120) = 0xEA00000000003339;
  *(v0 + 3128) = 205;
  *(v0 + 3136) = 0x3235363636393431;
  *(v0 + 3144) = 0xEA00000000003535;
  *(v0 + 3152) = xmmword_1D0FFD000;
  *(v0 + 3168) = 0xEA00000000003339;
  *(v0 + 3176) = 207;
  *(v0 + 3184) = 0x3036363636393431;
  *(v0 + 3192) = 0xEA00000000003830;
  *(v0 + 3200) = xmmword_1D0FFD010;
  *(v0 + 3216) = 0xEA00000000003234;
  *(v0 + 3224) = 249;
  *(v0 + 3232) = 0x3333373334353531;
  *(v0 + 3240) = 0xEA00000000003935;
  *(v0 + 3248) = xmmword_1D0FFD020;
  *(v0 + 3264) = 0xEA00000000003439;
  *(v0 + 3272) = 266;
  *(v0 + 3280) = 0x3530393639303631;
  *(v0 + 3288) = 0xEA00000000003739;
  v1 = sub_1D0F53668(v0);
  swift_setDeallocating();
  sub_1D0F758D0();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

void sub_1D0F75878()
{
  if (!qword_1EE06E0C8)
  {
    sub_1D0F758D0();
    v0 = sub_1D0FF6248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E0C8);
    }
  }
}

void sub_1D0F758D0()
{
  if (!qword_1EE06E450)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06E450);
    }
  }
}

uint64_t ProfileDisplayName.init(sharingEntry:contact:)(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = [a2 termsOfAddress];
    sub_1D0F75B54();
    sub_1D0FF5608();

    sub_1D0F75BA0(0, &qword_1EC5FCA98, sub_1D0F75B54);
    sub_1D0F75BA0(0, &qword_1EC5FCAA0, MEMORY[0x1E6968198]);
    swift_dynamicCast();
  }

  type metadata accessor for SharingEntryProfileInformation();
  sub_1D0FF4998();
  sub_1D0FF4988();
  sub_1D0FF4988();
  sub_1D0FF47A8();

  return sub_1D0F4D848(a1);
}

unint64_t sub_1D0F75B54()
{
  result = qword_1EC5FC7D0;
  if (!qword_1EC5FC7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC5FC7D0);
  }

  return result;
}

void sub_1D0F75BA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D0FF56E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1D0F75BFC()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[3];
  }

  else
  {
    v3 = (*(*v0 + 280))();
    v4 = v0[3];
    v0[3] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1D0F75C7C()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1D0F75CDC(v0);
    v3 = *(v0 + 32);
    *(v0 + 32) = v2;
    v4 = v2;
    sub_1D0F2A5D0(v3);
  }

  sub_1D0F2A5E0(v1);
  return v2;
}

id sub_1D0F75CDC(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = sub_1D0FF53E8();
  v3 = [v1 stringForKey_];

  v9[0] = 0;
  v4 = [v3 valueWithError_];

  v5 = v9[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_1D0FF4198();

    swift_willThrow();
    return 0;
  }

  return v4;
}

void sub_1D0F75DDC(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_1D0F2A5D0(v2);
}

void (*sub_1D0F75DEC(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D0F75C7C();
  return sub_1D0F75E34;
}

void sub_1D0F75E34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 32);
  *(v3 + 32) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1D0F2A5D0(v4);
  }

  else
  {

    sub_1D0F2A5D0(v4);
  }
}

id sub_1D0F75EB0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1D0F75F10(v0);
    v3 = *(v0 + 40);
    *(v0 + 40) = v2;
    v4 = v2;
    sub_1D0F2A5D0(v3);
  }

  sub_1D0F2A5E0(v1);
  return v2;
}

id sub_1D0F75F10(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = sub_1D0FF53E8();
  v3 = [v1 URLForKey_];

  v9[0] = 0;
  v4 = [v3 valueWithError_];

  v5 = v9[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_1D0FF4198();

    swift_willThrow();
    return 0;
  }

  return v4;
}

void sub_1D0F7600C(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  sub_1D0F2A5D0(v2);
}

void (*sub_1D0F7601C(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D0F75EB0();
  return sub_1D0F76064;
}

void sub_1D0F76064(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1D0F2A5D0(v4);
  }

  else
  {

    sub_1D0F2A5D0(v4);
  }
}

id sub_1D0F760E0()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v3 = (*(*v0 + 264))();
    v4 = v0[6];
    v0[6] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1D0F76160()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[7];
  }

  else
  {
    v3 = (*(*v0 + 272))();
    v4 = v0[7];
    v0[7] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_1D0F761E0()
{
  v0 = sub_1D0F74AC0();
  if (qword_1EE06F208 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE079598;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0;
  sub_1D0F7AC44(v1, sub_1D0F7AC2C, 0, isUniquelyReferenced_nonNull_native, &v4);

  return v4;
}

uint64_t AppStoreDataProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  AppStoreDataProvider.init()();
  return v0;
}

void AppStoreDataProvider.init()()
{
  v2 = objc_opt_self();
  v3 = [v2 bagSubProfile];
  if (v3)
  {
    v0 = v3;
    v4 = [v2 bagSubProfileVersion];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() bagForProfile:v0 profileVersion:v4];

      *(v1 + 16) = v6;
      *(v1 + 24) = xmmword_1D0FF9300;
      *(v1 + 48) = 0;
      *(v1 + 56) = 0;
      *(v1 + 40) = 1;
      v7 = sub_1D0F75BFC();
      v8 = [objc_allocWithZone(MEMORY[0x1E698C9B8]) initWithTokenService_];

      v9 = sub_1D0F760E0();
      [v9 setProtocolHandler_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D0F763F8()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  v1 = [objc_allocWithZone(MEMORY[0x1E698CBA8]) initWithConfiguration_];

  return v1;
}

id sub_1D0F76460()
{
  v1 = sub_1D0F75BFC();
  v2 = [objc_allocWithZone(MEMORY[0x1E698C9C0]) initWithTokenService:v1 bag:*(v0 + 16)];

  return v2;
}

id sub_1D0F764B4()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(MEMORY[0x1E698C9E8]);
  v3 = v1;
  v4 = sub_1D0FF53E8();
  v5 = [v2 initWithClientIdentifier:v4 bag:v3];

  return v5;
}

uint64_t sub_1D0F7653C(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = MEMORY[0x1E695BED0];
  sub_1D0F7B8EC(0, &qword_1EE06E650, MEMORY[0x1E695BED0]);
  sub_1D0F7B95C(&qword_1EE06E658, &qword_1EE06E650, v4);

  return sub_1D0FF5008();
}

uint64_t sub_1D0F76634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D0F7B604();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D0FF4C18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B88();
  swift_bridgeObjectRetain_n();

  v12 = sub_1D0FF4C08();
  v13 = sub_1D0FF5978();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33 = v8;
    v17 = v16;
    v38 = a1;
    v39 = v16;
    *v15 = 136446722;
    type metadata accessor for AppStoreDataProvider();
    sub_1D0F7B7F0(&qword_1EC5FCAA8, v18, type metadata accessor for AppStoreDataProvider);
    v19 = sub_1D0FF6238();
    v21 = sub_1D0F1AE0C(v19, v20, &v39);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2048;
    v22 = *(a2 + 16);

    *(v15 + 14) = v22;

    *(v15 + 22) = 2080;
    v23 = MEMORY[0x1D3880C20](a2, MEMORY[0x1E69E6530]);
    v25 = sub_1D0F1AE0C(v23, v24, &v39);

    *(v15 + 24) = v25;
    _os_log_impl(&dword_1D0F17000, v12, v13, "%{public}s: Fetching Editorial Items for %ld identifiers %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v17, -1, -1);
    v26 = v15;
    a3 = v34;
    MEMORY[0x1D3882680](v26, -1, -1);

    (*(v9 + 8))(v11, v33);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v9 + 8))(v11, v8);
  }

  v39 = sub_1D0F76DB8(a2);

  sub_1D0FF4E48();
  sub_1D0F7B6FC(0, &qword_1EE06E660, MEMORY[0x1E695BED0]);
  v27 = MEMORY[0x1E695BED0];
  sub_1D0F7B8EC(0, &qword_1EE06E650, MEMORY[0x1E695BED0]);
  sub_1D0F7B774();
  sub_1D0F7B95C(&qword_1EE06E658, &qword_1EE06E650, v27);
  v28 = v35;
  sub_1D0FF5118();

  sub_1D0F7B7F0(&qword_1EE06E688, 255, sub_1D0F7B604);
  v29 = v37;
  v30 = sub_1D0FF5098();
  result = (*(v36 + 8))(v28, v29);
  *a3 = v30;
  return result;
}

uint64_t sub_1D0F76ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1D0FF3D78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1D0F7B838();
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D0F760E0();
  v13 = sub_1D0FF3D58();
  v14 = [v12 dataTaskPromiseWithRequest_];

  (*(v6 + 16))(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v6 + 32))(v16 + v15, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v17 = MEMORY[0x1E695C028];
  sub_1D0F7B8EC(0, &qword_1EE06E568, MEMORY[0x1E695C028]);
  sub_1D0F7B95C(&qword_1EE06E570, &qword_1EE06E568, v17);

  v18 = v14;
  sub_1D0FF5008();
  sub_1D0F7B7F0(&qword_1EE06E500, 255, sub_1D0F7B838);
  v19 = v23;
  v20 = sub_1D0FF5098();

  result = (*(v24 + 8))(v11, v19);
  *v25 = v20;
  return result;
}

uint64_t sub_1D0F76DB8(uint64_t a1)
{
  v2 = v1;
  sub_1D0F7B6FC(0, &unk_1EE06E5C8, MEMORY[0x1E695BFF0]);
  v57 = v4;
  v51 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v50 - v5;
  v6 = sub_1D0FF4C18();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F7B0FC();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F7BCA4(0, &qword_1EE06F880, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_1D0FF3F58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  v59 = a1;
  v21 = v2;
  sub_1D0F79A48(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v22 = v51;
    sub_1D0F7B1F0(v13, &qword_1EE06F880, MEMORY[0x1E69681B8]);
    sub_1D0FF4B88();

    v23 = v59;

    v24 = sub_1D0FF4C08();
    v25 = sub_1D0FF5958();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v60 = v21;
      v61 = v27;
      *v26 = 136446466;
      type metadata accessor for AppStoreDataProvider();
      sub_1D0F7B7F0(&qword_1EC5FCAA8, v28, type metadata accessor for AppStoreDataProvider);
      v29 = sub_1D0FF6238();
      v31 = sub_1D0F1AE0C(v29, v30, &v61);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = MEMORY[0x1D3880C20](v23, MEMORY[0x1E69E6530]);
      v34 = sub_1D0F1AE0C(v32, v33, &v61);

      *(v26 + 14) = v34;
      _os_log_impl(&dword_1D0F17000, v24, v25, "%{public}s: Unable to create URL for identifier %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v27, -1, -1);
      MEMORY[0x1D3882680](v26, -1, -1);
    }

    (*(v55 + 8))(v8, v56);
    sub_1D0F7B260();
    v35 = swift_allocError();
    *v36 = 2;
    v61 = v35;
    sub_1D0FF3D78();
    sub_1D0F1E940();
    v37 = v58;
    sub_1D0FF4F88();
    sub_1D0F7B2B4();
    v38 = v57;
    v39 = sub_1D0FF5098();
    (*(v22 + 8))(v37, v38);
  }

  else
  {
    v58 = *(v15 + 32);
    (v58)(v20, v13, v14);
    v50 = v2;
    v40 = sub_1D0F76160();
    v41 = sub_1D0FF3EF8();
    v57 = [v40 requestWithComponents_];

    (*(v15 + 16))(v18, v20, v14);
    v42 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v43 = (v16 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = v50;
    (v58)(v44 + v42, v18, v14);
    v45 = v57;
    *(v44 + v43) = v57;
    *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;
    sub_1D0F7B6FC(0, &qword_1EE06E588, MEMORY[0x1E695C028]);
    sub_1D0F7B17C();

    v46 = v45;

    v47 = v52;
    sub_1D0FF5008();
    sub_1D0F7B7F0(&qword_1EE06E510, 255, sub_1D0F7B0FC);
    v48 = v54;
    v39 = sub_1D0FF5098();

    (*(v53 + 8))(v47, v48);
    (*(v15 + 8))(v20, v14);
  }

  return v39;
}

uint64_t sub_1D0F77510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a5;
  v9 = sub_1D0FF3F58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  (*(v10 + 32))(v15 + v13, v12, v9);
  *(v15 + v14) = a3;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  sub_1D0F7B6FC(0, &qword_1EE06E588, MEMORY[0x1E695C028]);
  swift_allocObject();

  v16 = a3;

  result = sub_1D0FF4FF8();
  *v19 = result;
  return result;
}

void sub_1D0F776D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v40 = a1;
  v41 = a6;
  v10 = sub_1D0FF3F58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D0FF4C18();
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B88();
  (*(v11 + 16))(v13, a4, v10);

  v17 = sub_1D0FF4C08();
  v18 = sub_1D0FF5978();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a5;
    v20 = v19;
    v35 = swift_slowAlloc();
    v42 = a3;
    aBlock[0] = v35;
    *v20 = 136446466;
    type metadata accessor for AppStoreDataProvider();
    v36 = a2;
    sub_1D0F7B7F0(&qword_1EC5FCAA8, v21, type metadata accessor for AppStoreDataProvider);
    v22 = sub_1D0FF6238();
    v24 = sub_1D0F1AE0C(v22, v23, aBlock);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_1D0F7B7F0(&qword_1EE06F888, 255, MEMORY[0x1E69681B8]);
    v25 = sub_1D0FF6238();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v28 = sub_1D0F1AE0C(v25, v27, aBlock);
    a2 = v36;

    *(v20 + 14) = v28;
    _os_log_impl(&dword_1D0F17000, v17, v18, "%{public}s: Encoding request with components %s.", v20, 0x16u);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v29, -1, -1);
    v30 = v20;
    a5 = v37;
    MEMORY[0x1D3882680](v30, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v38 + 8))(v16, v39);
  v31 = swift_allocObject();
  v32 = v40;
  v33 = v41;
  v31[2] = a3;
  v31[3] = v33;
  v31[4] = v32;
  v31[5] = a2;
  aBlock[4] = sub_1D0F7B580;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F7BDC4;
  aBlock[3] = &block_descriptor_5;
  v34 = _Block_copy(aBlock);

  [a5 addFinishBlock_];
  _Block_release(v34);
}

uint64_t sub_1D0F77B08(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v95 = a6;
  v96 = a5;
  sub_1D0F7B6FC(0, &qword_1EE06E0A0, MEMORY[0x1E69E75F0]);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v85[-v11];
  v12 = sub_1D0FF4C18();
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v85[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v85[-v19];
  v21 = sub_1D0FF3D78();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v85[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v85[-v27];
  if (a2)
  {
    v29 = a2;
    sub_1D0FF4B88();
    v30 = a2;

    v31 = sub_1D0FF4C08();
    v32 = sub_1D0FF5958();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v90 = a4;
      v34 = v33;
      v35 = swift_slowAlloc();
      v97 = a3;
      v98 = v35;
      *v34 = 136446722;
      type metadata accessor for AppStoreDataProvider();
      sub_1D0F7B7F0(&qword_1EC5FCAA8, v36, type metadata accessor for AppStoreDataProvider);
      v37 = sub_1D0FF6238();
      v39 = sub_1D0F1AE0C(v37, v38, &v98);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v97 = a2;
      v40 = a2;
      sub_1D0F1E940();
      v41 = sub_1D0FF5448();
      v43 = sub_1D0F1AE0C(v41, v42, &v98);

      *(v34 + 14) = v43;
      *(v34 + 22) = 2080;
      v44 = MEMORY[0x1D3880C20](v90, MEMORY[0x1E69E6530]);
      v46 = sub_1D0F1AE0C(v44, v45, &v98);

      *(v34 + 24) = v46;
      _os_log_impl(&dword_1D0F17000, v31, v32, "%{public}s: Recieved an error %s encoding the URL for identifiers %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v35, -1, -1);
      MEMORY[0x1D3882680](v34, -1, -1);
    }

    (*(v91 + 8))(v20, v92);
    v47 = v94;
    *v94 = a2;
    swift_storeEnumTagMultiPayload();
    v48 = a2;
    v96(v47);

    return sub_1D0F7B58C(v47);
  }

  if (!a1)
  {
    sub_1D0FF4B88();

    v71 = sub_1D0FF4C08();
    v72 = sub_1D0FF5958();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v97 = a3;
      v98 = v74;
      *v73 = 136446466;
      type metadata accessor for AppStoreDataProvider();
      sub_1D0F7B7F0(&qword_1EC5FCAA8, v75, type metadata accessor for AppStoreDataProvider);
      v76 = sub_1D0FF6238();
      v78 = sub_1D0F1AE0C(v76, v77, &v98);

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      v79 = MEMORY[0x1D3880C20](a4, MEMORY[0x1E69E6530]);
      v81 = sub_1D0F1AE0C(v79, v80, &v98);

      *(v73 + 14) = v81;
      _os_log_impl(&dword_1D0F17000, v71, v72, "%{public}s: Unable to cast AMSURLRequest for identifiers %s.", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v74, -1, -1);
      MEMORY[0x1D3882680](v73, -1, -1);
    }

    (*(v91 + 8))(v15, v92);
    sub_1D0F7B260();
    v82 = swift_allocError();
    *v83 = 0;
    v47 = v94;
    *v94 = v82;
    swift_storeEnumTagMultiPayload();
    v96(v47);
    return sub_1D0F7B58C(v47);
  }

  v50 = v26;
  sub_1D0FF3D68();
  sub_1D0FF4B88();
  v89 = *(v22 + 16);
  v90 = v22 + 16;
  v89(v25, v28, v50);

  v51 = a4;

  v52 = sub_1D0FF4C08();
  v53 = sub_1D0FF5978();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = v50;
    v55 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v97 = a3;
    v98 = v88;
    *v55 = 136446722;
    type metadata accessor for AppStoreDataProvider();
    sub_1D0F7B7F0(&qword_1EC5FCAA8, v56, type metadata accessor for AppStoreDataProvider);
    v87 = v52;
    v57 = sub_1D0FF6238();
    v59 = sub_1D0F1AE0C(v57, v58, &v98);

    *(v55 + 4) = v59;
    v86 = v53;
    *(v55 + 12) = 2080;
    v60 = MEMORY[0x1D3880C20](v51, MEMORY[0x1E69E6530]);
    v62 = sub_1D0F1AE0C(v60, v61, &v98);

    *(v55 + 14) = v62;
    *(v55 + 22) = 2080;
    sub_1D0F7B7F0(&qword_1EE06F898, 255, MEMORY[0x1E6967EC8]);
    v63 = sub_1D0FF6238();
    v65 = v64;
    v66 = *(v22 + 8);
    v66(v25, v54);
    v67 = sub_1D0F1AE0C(v63, v65, &v98);

    *(v55 + 24) = v67;
    v68 = v87;
    _os_log_impl(&dword_1D0F17000, v87, v86, "%{public}s: Successfully encoded URL request for identifiers %s and request %s", v55, 0x20u);
    v69 = v88;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v69, -1, -1);
    v70 = v55;
    v50 = v54;
    MEMORY[0x1D3882680](v70, -1, -1);
  }

  else
  {

    v66 = *(v22 + 8);
    v66(v25, v50);
  }

  (*(v91 + 8))(v18, v92);
  v84 = v94;
  v89(v94, v28, v50);
  swift_storeEnumTagMultiPayload();
  v96(v84);
  sub_1D0F7B58C(v84);
  return (v66)(v28, v50);
}

uint64_t sub_1D0F78410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D0FF3D78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v9 + 32))(v12 + v11, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_1D0F7B8EC(0, &qword_1EE06E568, MEMORY[0x1E695C028]);
  swift_allocObject();

  v13 = a3;
  result = sub_1D0FF4FF8();
  *a4 = result;
  return result;
}

void sub_1D0F785B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a1;
  v9 = sub_1D0FF3D78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = v12;
  v47 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v40 - v13;
  v15 = sub_1D0FF4C18();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B88();
  v18 = *(v10 + 16);
  v48 = a4;
  v45 = v18;
  v18(v14, a4, v9);

  v19 = a3;
  v20 = sub_1D0FF4C08();
  v21 = sub_1D0FF5978();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v42 = a5;
    v23 = v22;
    v40[0] = swift_slowAlloc();
    v50 = v19;
    aBlock[0] = v40[0];
    *v23 = 136446466;
    type metadata accessor for AppStoreDataProvider();
    v41 = a2;
    sub_1D0F7B7F0(&qword_1EC5FCAA8, v24, type metadata accessor for AppStoreDataProvider);
    v40[1] = v19;
    v25 = sub_1D0FF6238();
    v27 = sub_1D0F1AE0C(v25, v26, aBlock);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_1D0F7B7F0(&qword_1EE06F898, 255, MEMORY[0x1E6967EC8]);
    v28 = sub_1D0FF6238();
    v30 = v29;
    (*(v10 + 8))(v14, v9);
    v31 = sub_1D0F1AE0C(v28, v30, aBlock);
    a2 = v41;

    *(v23 + 14) = v31;
    _os_log_impl(&dword_1D0F17000, v20, v21, "%{public}s: Begining EditorialItem download for request %s.", v23, 0x16u);
    v32 = v40[0];
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v32, -1, -1);
    v33 = v23;
    a5 = v42;
    MEMORY[0x1D3882680](v33, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  (*(v43 + 8))(v17, v44);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = v47;
  v45(v47, v48, v9);
  v36 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v37 = swift_allocObject();
  v38 = v49;
  *(v37 + 2) = v34;
  *(v37 + 3) = v38;
  *(v37 + 4) = a2;
  (*(v10 + 32))(&v37[v36], v35, v9);
  aBlock[4] = sub_1D0F7BBC8;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0F7BDC4;
  aBlock[3] = &block_descriptor_36;
  v39 = _Block_copy(aBlock);

  [a5 addFinishBlock_];
  _Block_release(v39);
}

void sub_1D0F78A88(void *a1, void *a2, uint64_t a3, void (*a4)(id *), uint64_t a5, void *a6)
{
  v117 = a6;
  v122 = a5;
  v123 = a4;
  v8 = sub_1D0FF3D78();
  v9 = *(v8 - 8);
  v118 = v8;
  v119 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v116 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v113 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v115 = &v113 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v113 - v17;
  v19 = sub_1D0FF4C18();
  v20 = *(v19 - 8);
  v120 = v19;
  v121 = v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v113 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v113 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v113 - v31;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    if (a2)
    {
      v35 = a2;
      sub_1D0FF4B88();
      v37 = v118;
      v36 = v119;
      (*(v119 + 16))(v18, v117, v118);
      v38 = a2;
      v117 = a1;
      v39 = a1;

      v40 = sub_1D0FF4C08();
      v41 = sub_1D0FF5958();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        LODWORD(v115) = v41;
        v43 = v36;
        v44 = v42;
        v116 = swift_slowAlloc();
        v124 = v34;
        v125 = v116;
        *v44 = 136446978;
        type metadata accessor for AppStoreDataProvider();
        v114 = v39;
        sub_1D0F7B7F0(&qword_1EC5FCAA8, v45, type metadata accessor for AppStoreDataProvider);
        v46 = sub_1D0FF6238();
        v48 = sub_1D0F1AE0C(v46, v47, &v125);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2080;
        v124 = a2;
        v49 = a2;
        sub_1D0F1E940();
        v50 = sub_1D0FF5448();
        v52 = sub_1D0F1AE0C(v50, v51, &v125);

        *(v44 + 14) = v52;
        *(v44 + 22) = 2080;
        sub_1D0F7B7F0(&qword_1EE06F898, 255, MEMORY[0x1E6967EC8]);
        v53 = sub_1D0FF6238();
        v55 = v54;
        (*(v43 + 8))(v18, v37);
        v56 = sub_1D0F1AE0C(v53, v55, &v125);

        *(v44 + 24) = v56;
        *(v44 + 32) = 2080;
        v124 = v117;
        sub_1D0F7BCA4(0, &qword_1EE06E440, sub_1D0F7BD08, MEMORY[0x1E69E6720]);
        v57 = v114;
        v58 = sub_1D0FF5448();
        v60 = sub_1D0F1AE0C(v58, v59, &v125);

        *(v44 + 34) = v60;
        _os_log_impl(&dword_1D0F17000, v40, v115, "%{public}s: Recieved an error %s downloading the request %s. Result %s", v44, 0x2Au);
        v61 = v116;
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v61, -1, -1);
        MEMORY[0x1D3882680](v44, -1, -1);
      }

      else
      {

        (*(v36 + 8))(v18, v37);
      }

      (*(v121 + 8))(v30, v120);
      v125 = a2;
      v126 = 1;
      v72 = a2;
      v123(&v125);
    }

    else if (a1)
    {
      v67 = [a1 data];
      v68 = sub_1D0FF4288();
      v70 = v69;

      sub_1D0FF3DA8();
      swift_allocObject();
      sub_1D0FF3D98();
      sub_1D0F7BC50();
      sub_1D0FF3D88();
      v71 = (v119 + 16);

      v90 = v125;
      v91 = v27;
      sub_1D0FF4B88();
      v92 = v115;
      v93 = v118;
      (*v71)(v115, v117, v118);

      v94 = sub_1D0FF4C08();
      v95 = sub_1D0FF5978();

      if (os_log_type_enabled(v94, v95))
      {
        v97 = swift_slowAlloc();
        v114 = v90;
        v98 = v97;
        v99 = swift_slowAlloc();
        v116 = v70;
        v100 = v99;
        v124 = v34;
        v125 = v99;
        *v98 = 136446466;
        type metadata accessor for AppStoreDataProvider();
        v117 = v34;
        sub_1D0F7B7F0(&qword_1EC5FCAA8, v101, type metadata accessor for AppStoreDataProvider);
        v102 = sub_1D0FF6238();
        v104 = sub_1D0F1AE0C(v102, v103, &v125);

        *(v98 + 4) = v104;
        *(v98 + 12) = 2080;
        sub_1D0F7B7F0(&qword_1EE06F898, 255, MEMORY[0x1E6967EC8]);
        v105 = sub_1D0FF6238();
        v107 = v106;
        (*(v119 + 8))(v92, v93);
        v108 = sub_1D0F1AE0C(v105, v107, &v125);

        *(v98 + 14) = v108;
        _os_log_impl(&dword_1D0F17000, v94, v95, "%{public}s: EditorialItem download complete for request %s.", v98, 0x16u);
        swift_arrayDestroy();
        v109 = v100;
        v70 = v116;
        MEMORY[0x1D3882680](v109, -1, -1);
        v110 = v98;
        v90 = v114;
        MEMORY[0x1D3882680](v110, -1, -1);
      }

      else
      {

        (*(v119 + 8))(v92, v93);
      }

      (*(v121 + 8))(v91, v120);
      v125 = v90;
      v126 = 0;
      v123(&v125);
      sub_1D0F34FDC(v68, v70);
    }

    else
    {
      sub_1D0FF4B88();
      v74 = v118;
      v73 = v119;
      (*(v119 + 16))(v14, v117, v118);

      v75 = sub_1D0FF4C08();
      v76 = sub_1D0FF5958();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v124 = v34;
        v125 = v78;
        *v77 = 136446722;
        type metadata accessor for AppStoreDataProvider();
        v117 = v34;
        sub_1D0F7B7F0(&qword_1EC5FCAA8, v79, type metadata accessor for AppStoreDataProvider);
        v80 = sub_1D0FF6238();
        v82 = sub_1D0F1AE0C(v80, v81, &v125);

        *(v77 + 4) = v82;
        *(v77 + 12) = 2080;
        sub_1D0F7B7F0(&qword_1EE06F898, 255, MEMORY[0x1E6967EC8]);
        v83 = sub_1D0FF6238();
        v85 = v84;
        (*(v73 + 8))(v14, v74);
        v86 = sub_1D0F1AE0C(v83, v85, &v125);

        *(v77 + 14) = v86;
        *(v77 + 22) = 2080;
        v124 = 0;
        sub_1D0F7BCA4(0, &qword_1EE071008, sub_1D0F1E940, MEMORY[0x1E69E6720]);
        v87 = sub_1D0FF5448();
        v89 = sub_1D0F1AE0C(v87, v88, &v125);

        *(v77 + 24) = v89;
        _os_log_impl(&dword_1D0F17000, v75, v76, "%{public}s: There are no apps for the request %s. The error is %s.", v77, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v78, -1, -1);
        MEMORY[0x1D3882680](v77, -1, -1);
      }

      else
      {

        (*(v73 + 8))(v14, v74);
      }

      (*(v121 + 8))(v24, v120);
      sub_1D0F7B260();
      v111 = swift_allocError();
      *v112 = 5;
      v125 = v111;
      v126 = 1;
      v123(&v125);
    }
  }

  else
  {
    sub_1D0FF4B88();
    v62 = sub_1D0FF4C08();
    v63 = sub_1D0FF5958();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_1D0F17000, v62, v63, "The store data provider has been deallocated.", v64, 2u);
      MEMORY[0x1D3882680](v64, -1, -1);
    }

    (*(v121 + 8))(v32, v120);
    sub_1D0F7B260();
    v65 = swift_allocError();
    *v66 = 4;
    v125 = v65;
    v126 = 1;
    v123(&v125);
  }

  sub_1D0F30600(v125, v126);
}

uint64_t sub_1D0F79A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v99 = a1;
  v5 = sub_1D0FF4C18();
  v6 = *(v5 - 8);
  v102 = v5;
  v103 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v93 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v93 - v16;
  sub_1D0F7BCA4(0, &qword_1EE070DA8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v97 = &v93 - v19;
  v20 = sub_1D0FF3F58();
  v104 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v100 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = (*(*v2 + 152))(v21);
  if (!v101)
  {
    sub_1D0FF4B88();

    v32 = sub_1D0FF4C08();
    v33 = sub_1D0FF5958();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = v20;
      v36 = swift_slowAlloc();
      v105[0] = v36;
      *v34 = 136446210;
      v106 = v2;
      type metadata accessor for AppStoreDataProvider();
      sub_1D0F7B7F0(&qword_1EC5FCAA8, v37, type metadata accessor for AppStoreDataProvider);
      v38 = sub_1D0FF6238();
      v40 = sub_1D0F1AE0C(v38, v39, v105);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_1D0F17000, v32, v33, "%{public}s: Unable to retrieve the country code from the bag.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v41 = v36;
      v20 = v35;
      MEMORY[0x1D3882680](v41, -1, -1);
      MEMORY[0x1D3882680](v34, -1, -1);
    }

    (*(v103 + 8))(v9, v102);
    return (*(v104 + 56))(a2, 1, 1, v20);
  }

  v98 = (*(*v2 + 176))();
  if (!v98)
  {
    sub_1D0FF4B88();

    v42 = sub_1D0FF4C08();
    v43 = sub_1D0FF5958();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v105[0] = v45;
      *v44 = 136446210;
      v106 = v2;
      type metadata accessor for AppStoreDataProvider();
      sub_1D0F7B7F0(&qword_1EC5FCAA8, v46, type metadata accessor for AppStoreDataProvider);
      v47 = sub_1D0FF6238();
      v49 = sub_1D0F1AE0C(v47, v48, v105);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1D0F17000, v42, v43, "%{public}s: Unable to retrieve the host from the bag.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1D3882680](v45, -1, -1);
      MEMORY[0x1D3882680](v44, -1, -1);
    }

    (*(v103 + 8))(v12, v102);
    return (*(v104 + 56))(a2, 1, 1, v20);
  }

  v94 = v17;
  v95 = v20;
  v96 = a2;
  v23 = *(v99 + 16);
  if (v23)
  {
    v24 = (v99 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      v27 = *v24++;
      v106 = v27;
      sub_1D0F7A758(&v106, v2, v105);
      v28 = v105[1];
      if (v105[1])
      {
        v29 = v105[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D0F50290(0, *(v25 + 2) + 1, 1, v25);
        }

        v31 = *(v25 + 2);
        v30 = *(v25 + 3);
        if (v31 >= v30 >> 1)
        {
          v25 = sub_1D0F50290((v30 > 1), v31 + 1, 1, v25);
        }

        *(v25 + 2) = v31 + 1;
        v26 = &v25[16 * v31];
        *(v26 + 4) = v29;
        *(v26 + 5) = v28;
      }

      --v23;
    }

    while (v23);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  if (*(v25 + 2))
  {
    v105[0] = v25;
    sub_1D0F3B6EC();
    sub_1D0F7B7F0(&qword_1EE070B80, 255, sub_1D0F3B6EC);
    sub_1D0FF5388();

    sub_1D0FF3F48();
    sub_1D0FF3F38();
    v51 = [v98 absoluteString];
    v52 = v96;
    v53 = v101;
    if (v51)
    {
      v54 = v51;
      v55 = sub_1D0FF5428();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    MEMORY[0x1D387F520](v55, v57);
    v105[0] = 0;
    v105[1] = 0xE000000000000000;
    sub_1D0FF5DE8();

    strcpy(v105, "/v1/editorial/");
    HIBYTE(v105[1]) = -18;
    v69 = [v53 description];
    v70 = sub_1D0FF5428();
    v72 = v71;

    MEMORY[0x1D3880AC0](v70, v72);

    MEMORY[0x1D3880AC0](0xD000000000000010, 0x80000001D1004560);
    MEMORY[0x1D387F530](v105[0], v105[1]);
    sub_1D0F7BCA4(0, &qword_1EE06E0E8, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
    sub_1D0FF3EC8();
    *(swift_allocObject() + 16) = xmmword_1D0FFD030;
    sub_1D0FF3EB8();

    v73 = v100;
    sub_1D0FF3EB8();
    sub_1D0FF3EE8();
    v74 = v97;
    sub_1D0FF3F08();
    v75 = sub_1D0FF4238();
    if ((*(*(v75 - 8) + 48))(v74, 1, v75) == 1)
    {
      sub_1D0F7B1F0(v74, &qword_1EE070DA8, MEMORY[0x1E6968FB0]);
      v76 = v94;
      sub_1D0FF4B88();

      v77 = v99;

      v78 = sub_1D0FF4C08();
      v79 = sub_1D0FF5958();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v105[0] = v81;
        *v80 = 136446466;
        v106 = v3;
        type metadata accessor for AppStoreDataProvider();
        sub_1D0F7B7F0(&qword_1EC5FCAA8, v82, type metadata accessor for AppStoreDataProvider);
        v83 = sub_1D0FF6238();
        v85 = sub_1D0F1AE0C(v83, v84, v105);

        *(v80 + 4) = v85;
        *(v80 + 12) = 2080;
        v86 = MEMORY[0x1D3880C20](v77, MEMORY[0x1E69E6530]);
        v88 = sub_1D0F1AE0C(v86, v87, v105);

        *(v80 + 14) = v88;
        _os_log_impl(&dword_1D0F17000, v78, v79, "%{public}s: Unable to create URL for identifiers %s", v80, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v81, -1, -1);
        MEMORY[0x1D3882680](v80, -1, -1);
      }

      (*(v103 + 8))(v76, v102);
      v91 = v104;
      v92 = v95;
      (*(v104 + 8))(v100, v95);
      return (*(v91 + 56))(v52, 1, 1, v92);
    }

    else
    {

      sub_1D0F7B1F0(v74, &qword_1EE070DA8, MEMORY[0x1E6968FB0]);
      v89 = v104;
      v90 = v95;
      (*(v104 + 32))(v52, v73, v95);
      return (*(v89 + 56))(v52, 0, 1, v90);
    }
  }

  else
  {

    sub_1D0FF4B88();

    v58 = sub_1D0FF4C08();
    v59 = sub_1D0FF5958();

    v60 = os_log_type_enabled(v58, v59);
    v61 = v96;
    v62 = v101;
    if (v60)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v105[0] = v64;
      *v63 = 136446210;
      v106 = v2;
      type metadata accessor for AppStoreDataProvider();
      sub_1D0F7B7F0(&qword_1EC5FCAA8, v65, type metadata accessor for AppStoreDataProvider);
      v66 = sub_1D0FF6238();
      v68 = sub_1D0F1AE0C(v66, v67, v105);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1D0F17000, v58, v59, "%{public}s: No editorial identifiers found.", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x1D3882680](v64, -1, -1);
      MEMORY[0x1D3882680](v63, -1, -1);
    }

    (*(v103 + 8))(v15, v102);
    return (*(v104 + 56))(v61, 1, 1, v95);
  }
}

uint64_t sub_1D0F7A758@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1D0FF4C18();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = (*(*a2 + 248))(v9);
  if (*(v13 + 16) && (v14 = sub_1D0FA27B8(v12), (v15 & 1) != 0))
  {
    v16 = (*(v13 + 56) + 16 * v14);
    v17 = a3;
    v19 = *v16;
    v18 = v16[1];

    *v17 = v19;
    v17[1] = v18;
  }

  else
  {
    v36 = v7;

    sub_1D0FF4B88();

    v21 = sub_1D0FF4C08();
    v22 = sub_1D0FF5978();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35[1] = v3;
      v24 = v23;
      v25 = swift_slowAlloc();
      v35[0] = a3;
      v26 = v25;
      v38 = v25;
      *v24 = 136446466;
      v37 = a2;
      type metadata accessor for AppStoreDataProvider();
      sub_1D0F7B7F0(&qword_1EC5FCAA8, v27, type metadata accessor for AppStoreDataProvider);
      v28 = sub_1D0FF6238();
      v30 = sub_1D0F1AE0C(v28, v29, &v38);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v37 = v12;
      v31 = sub_1D0FF6238();
      v33 = sub_1D0F1AE0C(v31, v32, &v38);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_1D0F17000, v21, v22, "%{public}s: Unable to find identifier or the identifier does not have an associated EI %s.", v24, 0x16u);
      swift_arrayDestroy();
      v34 = v26;
      a3 = v35[0];
      MEMORY[0x1D3882680](v34, -1, -1);
      MEMORY[0x1D3882680](v24, -1, -1);
    }

    result = (*(v8 + 8))(v11, v36);
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

id *AppStoreDataProvider.deinit()
{
  sub_1D0F2A5D0(v0[4]);
  sub_1D0F2A5D0(v0[5]);

  return v0;
}

uint64_t AppStoreDataProvider.__deallocating_deinit()
{
  sub_1D0F2A5D0(v0[4]);
  sub_1D0F2A5D0(v0[5]);

  return swift_deallocClassInstance();
}

uint64_t AppStoreDataProvider.description.getter()
{
  sub_1D0FF5DE8();
  MEMORY[0x1D3880AC0](0xD000000000000016, 0x80000001D1004450);
  sub_1D0FF5F38();
  MEMORY[0x1D3880AC0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D0F7AB8C()
{
  sub_1D0FF5DE8();
  MEMORY[0x1D3880AC0](0xD000000000000016, 0x80000001D1004450);
  sub_1D0FF5F38();
  MEMORY[0x1D3880AC0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D0F7AC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
}

uint64_t sub_1D0F7AC44(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v16 = v11;
LABEL_14:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = *(*(a1 + 48) + 8 * v18);
    v20 = (*(a1 + 56) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v46[0] = v19;
    v46[1] = v21;
    v46[2] = v22;

    a2(v45, v46);

    v23 = v45[0];
    v24 = v45[1];
    v25 = v45[2];
    v26 = *v47;
    v28 = sub_1D0FA27B8(v45[0]);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v44 & 1) == 0)
      {
        sub_1D0FA4E80();
      }
    }

    else
    {
      sub_1D0FA3160(v31, v44 & 1);
      v33 = sub_1D0FA27B8(v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v47;
    if (v32)
    {
      v12 = (v35[7] + 16 * v28);
      v14 = *v12;
      v13 = v12[1];

      v15 = (v35[7] + 16 * v28);
      *v15 = v14;
      v15[1] = v13;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      *(v35[6] + 8 * v28) = v23;
      v36 = (v35[7] + 16 * v28);
      *v36 = v24;
      v36[1] = v25;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v16;
    v6 = v41;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      sub_1D0F36568();
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D0FF62B8();
  __break(1u);
  return result;
}

void sub_1D0F7B0FC()
{
  if (!qword_1EE06E508)
  {
    sub_1D0F7B6FC(255, &qword_1EE06E588, MEMORY[0x1E695C028]);
    sub_1D0F7B17C();
    v0 = sub_1D0FF5018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E508);
    }
  }
}

unint64_t sub_1D0F7B17C()
{
  result = qword_1EE06E590;
  if (!qword_1EE06E590)
  {
    sub_1D0F7B6FC(255, &qword_1EE06E588, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06E590);
  }

  return result;
}

uint64_t sub_1D0F7B1F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D0F7BCA4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D0F7B260()
{
  result = qword_1EC5FCAB0;
  if (!qword_1EC5FCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCAB0);
  }

  return result;
}

unint64_t sub_1D0F7B2B4()
{
  result = qword_1EC5FCAB8;
  if (!qword_1EC5FCAB8)
  {
    sub_1D0F7B6FC(255, &unk_1EE06E5C8, MEMORY[0x1E695BFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCAB8);
  }

  return result;
}

uint64_t sub_1D0F7B328@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1D0FF3F58() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_1D0F77510(v8, v1 + v4, v6, v7, a1);
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_1D0FF3F58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_1D0F7B4C4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D0FF3F58() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D0F776D0(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_1D0F7B58C(uint64_t a1)
{
  sub_1D0F7B6FC(0, &qword_1EE06E0A0, MEMORY[0x1E69E75F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D0F7B604()
{
  if (!qword_1EE06E680)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1D0F7B8EC(255, &qword_1EE06E650, MEMORY[0x1E695BED0]);
    sub_1D0F7B6FC(255, &qword_1EE06E660, MEMORY[0x1E695BED0]);
    sub_1D0F7B95C(&qword_1EE06E658, &qword_1EE06E650, v0);
    sub_1D0F7B774();
    v1 = sub_1D0FF4D48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06E680);
    }
  }
}

void sub_1D0F7B6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D0FF3D78();
    v7 = sub_1D0F1E940();
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D0F7B774()
{
  result = qword_1EE06E668;
  if (!qword_1EE06E668)
  {
    sub_1D0F7B6FC(255, &qword_1EE06E660, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06E668);
  }

  return result;
}

uint64_t sub_1D0F7B7F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D0F7B838()
{
  if (!qword_1EE06E4F8)
  {
    v0 = MEMORY[0x1E695C028];
    sub_1D0F7B8EC(255, &qword_1EE06E568, MEMORY[0x1E695C028]);
    sub_1D0F7B95C(&qword_1EE06E570, &qword_1EE06E568, v0);
    v1 = sub_1D0FF5018();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE06E4F8);
    }
  }
}

void sub_1D0F7B8EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D0F1E940();
    v7 = a3(a1, &type metadata for AppStoreDataProvider.EditorialItemsList, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D0F7B95C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D0F7B8EC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D0F7B9A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1D0FF3D78() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D0F78410(v5, v1 + v4, v6, a1);
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_1D0FF3D78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1D0F7BB18(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D0FF3D78() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1D0F785B0(a1, a2, v8, v2 + v6, v7);
}

void sub_1D0F7BBC8(void *a1, void *a2)
{
  v5 = *(sub_1D0FF3D78() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  sub_1D0F78A88(a1, a2, v6, v7, v8, v9);
}

unint64_t sub_1D0F7BC50()
{
  result = qword_1EE06F210;
  if (!qword_1EE06F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F210);
  }

  return result;
}

void sub_1D0F7BCA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D0F7BD08()
{
  result = qword_1EE06E448;
  if (!qword_1EE06E448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06E448);
  }

  return result;
}

unint64_t sub_1D0F7BD68()
{
  result = qword_1EC5FCAC0;
  if (!qword_1EC5FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCAC0);
  }

  return result;
}

uint64_t sub_1D0F7BE1C(void *a1)
{
  v2 = v1;
  v4 = 0x6863746157;
  if (*(v1 + 16))
  {
    v4 = 0x412068746C616548;
  }

  v5 = 0xEA00000000007070;
  if (!*(v1 + 16))
  {
    v5 = 0xE500000000000000;
  }

  v6 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E6158];
  *&v24 = v4;
  *(&v24 + 1) = v5;
  sub_1D0F54254(&v24, v23);
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D0FC8FD0(v23, 0x65707954776F6C66, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v9 = *(v2 + 24);
  v10 = sub_1D0F7C038(v9);
  v25 = v6;
  *&v24 = v10;
  *(&v24 + 1) = v11;
  sub_1D0F54254(&v24, v23);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D0FC8FD0(v23, 0x6573657250736177, 0xEC0000006465746ELL, v12);
  v13 = sub_1D0F7C388(v9);
  v25 = v6;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  sub_1D0F54254(&v24, v23);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D0FC8FD0(v23, 0x6261736944646964, 0xEA0000000000656CLL, v15);
  v16 = sub_1D0FF5428();
  v18 = v17;
  v19 = [a1 environmentDataSource];
  v20 = [v19 isImproveHealthAndActivityEnabled];

  v25 = MEMORY[0x1E69E6370];
  LOBYTE(v24) = v20;
  sub_1D0F54254(&v24, v23);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D0FC8FD0(v23, v16, v18, v21);

  return v7;
}

uint64_t sub_1D0F7C038(unint64_t a1)
{
  v28 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_44:
    v2 = sub_1D0FF5D18();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D3881410](v4, a1);
        v5 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v5 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v6 = v28;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_45;
        }
      }

      sub_1D0FF4908();

      if (v27)
      {
        sub_1D0FF5E88();
        sub_1D0FF5EC8();
        sub_1D0FF5ED8();
        sub_1D0FF5E98();
      }

      else
      {
      }

      ++v4;
      if (v5 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

LABEL_18:
  if ((v6 & 0x4000000000000000) == 0)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      goto LABEL_20;
    }

LABEL_46:

    v10 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v28 = v10;

    sub_1D0F7CF80(&v28);

    sub_1D0F7E5A0(0, &qword_1EE070E18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D0F7420C();
    v25 = sub_1D0FF5388();

    return v25;
  }

LABEL_45:
  v24 = v6;
  v7 = sub_1D0FF5D18();
  v6 = v24;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_20:
  v8 = v6;
  v28 = v3;
  sub_1D0FD0C6C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v28;
    v11 = v8;
    v12 = v8 & 0xC000000000000001;
    v13 = v8;
    do
    {
      if (v12)
      {
        v14 = MEMORY[0x1D3881410](v9, v11);
      }

      else
      {
      }

      v15 = *(v14 + 16);

      v16 = 29559;
      if (v15 != 4)
      {
        v16 = 25960;
      }

      if (v15 == 3)
      {
        v16 = 29300;
      }

      v17 = 7497836;
      if (v15 == 1)
      {
        v17 = 7497832;
      }

      v18 = 0xE300000000000000;
      if (!v15)
      {
        v17 = 26211;
        v18 = 0xE200000000000000;
      }

      if (v15 <= 2)
      {
        v19 = v17;
      }

      else
      {
        v19 = v16;
      }

      if (v15 <= 2)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE200000000000000;
      }

      v28 = v10;
      v22 = *(v10 + 2);
      v21 = *(v10 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_1D0FD0C6C((v21 > 1), v22 + 1, 1);
        v10 = v28;
      }

      ++v9;
      *(v10 + 2) = v22 + 1;
      v23 = &v10[16 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v20;
      v11 = v13;
    }

    while (v7 != v9);

    goto LABEL_47;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D0F7C388(unint64_t a1)
{
  v28 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_45:
    v2 = sub_1D0FF5D18();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D3881410](v4, a1);
        v5 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_45;
        }

        v5 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v6 = v28;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_46;
        }
      }

      sub_1D0FF4908();

      if (v27 != 1 || (, sub_1D0FF4908(), , (v27 & 1) != 0))
      {
      }

      else
      {
        sub_1D0FF5E88();
        sub_1D0FF5EC8();
        sub_1D0FF5ED8();
        sub_1D0FF5E98();
      }

      ++v4;
      if (v5 == v2)
      {
        goto LABEL_16;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

LABEL_19:
  if ((v6 & 0x4000000000000000) == 0)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_47:

    v10 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v28 = v10;

    sub_1D0F7CF80(&v28);

    sub_1D0F7E5A0(0, &qword_1EE070E18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D0F7420C();
    v25 = sub_1D0FF5388();

    return v25;
  }

LABEL_46:
  v24 = v6;
  v7 = sub_1D0FF5D18();
  v6 = v24;
  if (!v7)
  {
    goto LABEL_47;
  }

LABEL_21:
  v8 = v6;
  v28 = v3;
  sub_1D0FD0C6C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v28;
    v11 = v8;
    v12 = v8 & 0xC000000000000001;
    v13 = v8;
    do
    {
      if (v12)
      {
        v14 = MEMORY[0x1D3881410](v9, v11);
      }

      else
      {
      }

      v15 = *(v14 + 16);

      v16 = 29559;
      if (v15 != 4)
      {
        v16 = 25960;
      }

      if (v15 == 3)
      {
        v16 = 29300;
      }

      v17 = 7497836;
      if (v15 == 1)
      {
        v17 = 7497832;
      }

      v18 = 0xE300000000000000;
      if (!v15)
      {
        v17 = 26211;
        v18 = 0xE200000000000000;
      }

      if (v15 <= 2)
      {
        v19 = v17;
      }

      else
      {
        v19 = v16;
      }

      if (v15 <= 2)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE200000000000000;
      }

      v28 = v10;
      v22 = *(v10 + 2);
      v21 = *(v10 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_1D0FD0C6C((v21 > 1), v22 + 1, 1);
        v10 = v28;
      }

      ++v9;
      *(v10 + 2) = v22 + 1;
      v23 = &v10[16 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v20;
      v11 = v13;
    }

    while (v7 != v9);

    goto LABEL_48;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D0F7C888()
{

  return swift_deallocClassInstance();
}

size_t sub_1D0F7C8E4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D0F7E508(0, &qword_1EC5FCAE0, MEMORY[0x1E6968198], MEMORY[0x1E69E6F90]);
  v10 = *(sub_1D0FF3ED8() - 8);
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
  v15 = *(sub_1D0FF3ED8() - 8);
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

char *sub_1D0F7CAE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D0F7E5A0(0, &qword_1EE071020, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D0F7CC04(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D0F7E5A0(0, &qword_1EC5FC5F8, &type metadata for AdvertisableFeature.Identifier, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D0F7CD10(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D0F7E508(0, &qword_1EC5FCAD0, sub_1D0F7E56C, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1D0F7E56C(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D0F7CE5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D0F7E5A0(0, &qword_1EE070AE0, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D0F7CF80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D0F7DB80(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D0F7CFEC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D0F7CFEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D0FF6228();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D0FF5668();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D0F7D1B4(v7, v8, a1, v4);
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
    return sub_1D0F7D0E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D0F7D0E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D0FF6278(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F7D1B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D0F7DA44(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D0F7D790((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D0FF6278();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D0FF6278();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D0F503A0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D0F503A0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D0F7D790((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D0F7DA44(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D0F7D9B8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D0FF6278(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D0F7D790(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D0FF6278() & 1) != 0)
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
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D0FF6278() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D0F7D9B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D0F7DA44(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1D0F7DA58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D0F7E508(0, &qword_1EC5FC5C0, sub_1D0F51678, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D0F7DB94(void *a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;
  v1 = [a1 biologicalSexWithError_];
  if (v1)
  {
    v2 = v1;
    v3 = v21[0];
    v4 = HKAnalyticsPropertyValueForBiologicalSex();
    v5 = sub_1D0FF5428();
  }

  else
  {
    v6 = v21[0];
    v7 = sub_1D0FF4198();

    swift_willThrow();
    v8 = v7;
    v9 = sub_1D0FF4C08();
    v10 = sub_1D0FF5958();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21[0] = v12;
      *v11 = 136446466;
      type metadata accessor for AdvertisableFeatureInteractionAnalyticsEvent();
      sub_1D0F7E4C4();
      v13 = sub_1D0FF5448();
      v15 = sub_1D0F1AE0C(v13, v14, v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = v7;
      sub_1D0F1E940();
      v17 = sub_1D0FF5448();
      v19 = sub_1D0F1AE0C(v17, v18, v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_1D0F17000, v9, v10, "[%{public}s] Error when retrieving biological sex: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v12, -1, -1);
      MEMORY[0x1D3882680](v11, -1, -1);
    }

    v5 = sub_1D0FF5428();
  }

  return v5;
}

id sub_1D0F7DDDC(void *a1, void *a2, uint64_t a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D0FF4348();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 currentDate];
  sub_1D0FF4328();

  v11 = sub_1D0FF42E8();
  (*(v7 + 8))(v9, v6);
  v42[0] = 0;
  v12 = [a1 ageWithCurrentDate:v11 error:v42];

  v13 = v42[0];
  if (v12)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v15 = v12;
    v16 = v13;
    v17 = [v14 initWithInteger_];
    v18 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    if (!v18)
    {
      v19 = sub_1D0FF4C08();
      v20 = sub_1D0FF5958();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v42[0] = v22;
        *v21 = 136446210;
        v41 = type metadata accessor for AdvertisableFeatureInteractionAnalyticsEvent();
        sub_1D0F7E4C4();
        v23 = sub_1D0FF5448();
        v25 = sub_1D0F1AE0C(v23, v24, v42);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_1D0F17000, v19, v20, "[%{public}s] Error when bucketing retrieved age", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1D3882680](v22, -1, -1);
        MEMORY[0x1D3882680](v21, -1, -1);
      }

      v18 = *MEMORY[0x1E696B4B8];
    }
  }

  else
  {
    v26 = v42[0];
    v27 = sub_1D0FF4198();

    swift_willThrow();
    v28 = v27;
    v29 = sub_1D0FF4C08();
    v30 = sub_1D0FF5958();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v31 = 136446466;
      v41 = type metadata accessor for AdvertisableFeatureInteractionAnalyticsEvent();
      sub_1D0F7E4C4();
      v33 = sub_1D0FF5448();
      v35 = sub_1D0F1AE0C(v33, v34, v42);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2082;
      v41 = v27;
      v36 = v27;
      sub_1D0F1E940();
      v37 = sub_1D0FF5448();
      v39 = sub_1D0F1AE0C(v37, v38, v42);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_1D0F17000, v29, v30, "[%{public}s] Error when retrieving bucketed age: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v32, -1, -1);
      MEMORY[0x1D3882680](v31, -1, -1);
    }

    v18 = *MEMORY[0x1E696B4B8];
  }

  return v18;
}

uint64_t sub_1D0F7E21C(void *a1)
{
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v6 = [a1 healthDataSource];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D0FF5428();
    v10 = v9;
    sub_1D0FF4B98();
    v11 = sub_1D0F7DB94(v7);
    v13 = v12;
    v25 = *(v3 + 8);
    v25(v5, v2);
    v29 = MEMORY[0x1E69E6158];
    *&v28 = v11;
    *(&v28 + 1) = v13;
    sub_1D0F54254(&v28, v27);
    v14 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v14;
    sub_1D0FC8FD0(v27, v8, v10, isUniquelyReferenced_nonNull_native);

    v16 = v30;
    v17 = sub_1D0FF5428();
    v19 = v18;
    v20 = [v26 environmentDataSource];
    sub_1D0FF4B98();
    v21 = sub_1D0F7DDDC(v7, v20, 17);

    v25(v5, v2);
    v29 = sub_1D0F51FF0();
    *&v28 = v21;
    sub_1D0F54254(&v28, v27);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v16;
    sub_1D0FC8FD0(v27, v17, v19, v22);

    swift_unknownObjectRelease();
    return v30;
  }

  else
  {
    result = sub_1D0FF5F98();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D0F7E4C4()
{
  result = qword_1EC5FCAC8;
  if (!qword_1EC5FCAC8)
  {
    type metadata accessor for AdvertisableFeatureInteractionAnalyticsEvent();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC5FCAC8);
  }

  return result;
}

void sub_1D0F7E508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D0F7E5A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D0F7E604@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  type metadata accessor for CachedAsync.CacheEntry();
  v4 = sub_1D0FF5C38();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D0F7E6BC(uint64_t a1)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  type metadata accessor for CachedAsync.CacheEntry();
  v4 = sub_1D0FF5C38();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t CachedAsync.__allocating_init(dataProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CachedAsync.init(dataProvider:)(a1, a2);
  return v4;
}

uint64_t CachedAsync.init(dataProvider:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v5 = *(*v2 + 96);
  v6 = type metadata accessor for CachedAsync.CacheEntry();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  v7 = (v2 + *(*v2 + 104));
  *v7 = a1;
  v7[1] = a2;
  return v2;
}

char *CachedAsync.deinit()
{
  v1 = *v0;
  v2 = type metadata accessor for CachedAsync.CacheEntry();
  v3 = sub_1D0FF5C38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v7], v3);
  v8 = *(v2 - 8);
  if ((*(v8 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 8))(v6, v2);
  }

  else
  {
    sub_1D0F1E940();
    sub_1D0FF57A8();
  }

  (*(v4 + 8))(&v0[v7], v3);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CachedAsync.__deallocating_deinit()
{
  CachedAsync.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D0F7EB0C()
{
  v0 = type metadata accessor for CachedAsync.CacheEntry();
  v1 = sub_1D0FF5C38();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  sub_1D0F7E604(&v7 - v3);
  v5 = *(v0 - 8);
  if ((*(v5 + 48))(v4, 1, v0) == 1)
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v4, v0);
    return 0;
  }

  else
  {
    sub_1D0F1E940();
    sub_1D0FF57A8();

    return 1;
  }
}

uint64_t sub_1D0F7ECB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1D0F7F884();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for CachedAsync.CacheEntry();
  v2[8] = v4;
  v5 = sub_1D0FF5C38();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0F7EE94, v1, 0);
}

uint64_t sub_1D0F7EE94()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  sub_1D0F7E604(v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[13];
    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[7];
    v8 = v0[3];
    (*(v0[10] + 8))(v0[12], v0[9]);
    v9 = sub_1D0FF5788();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    type metadata accessor for CachedAsync();
    WitnessTable = swift_getWitnessTable();
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = WitnessTable;
    v11[4] = v8;
    swift_retain_n();
    v12 = sub_1D0F7FCDC(0, 0, v7, &unk_1D0FFD200, v11);
    v0[19] = v12;
    *v5 = v12;
    swift_storeEnumTagMultiPayload();
    v13 = *(v4 + 56);
    v0[20] = v13;
    v0[21] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v5, 0, 1, v6);

    sub_1D0F7E6BC(v5);
    v14 = swift_task_alloc();
    v0[22] = v14;
    v15 = sub_1D0F1E940();
    *v14 = v0;
    v14[1] = sub_1D0F7F460;
    v16 = v0[6];
    v17 = v0[4];
    v18 = MEMORY[0x1E69E7288];
    v19 = v12;
LABEL_8:

    return MEMORY[0x1EEE6DA10](v16, v19, v17, v15, v18);
  }

  v20 = v0[14];
  v21 = v0[15];
  v22 = v0[13];
  v23 = v0[8];
  (*(v22 + 32))(v21, v0[12], v23);
  (*(v22 + 16))(v20, v21, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v30 = *v0[14];
    v0[16] = v30;
    v31 = swift_task_alloc();
    v0[17] = v31;
    v15 = sub_1D0F1E940();
    *v31 = v0;
    v31[1] = sub_1D0F7F268;
    v17 = v0[4];
    v16 = v0[2];
    v18 = MEMORY[0x1E69E7288];
    v19 = v30;
    goto LABEL_8;
  }

  v24 = v0[14];
  v25 = v0[4];
  v26 = v0[5];
  v27 = v0[2];
  (*(v0[13] + 8))(v0[15], v0[8]);
  (*(v26 + 32))(v27, v24, v25);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1D0F7F268()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1D0F7F6D0;
  }

  else
  {
    v4 = sub_1D0F7F394;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D0F7F394()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D0F7F460()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1D0F7F79C;
  }

  else
  {
    v4 = sub_1D0F7F58C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D0F7F58C()
{
  v1 = v0[20];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];
  (*(v4 + 16))(v2, v5, v6);
  swift_storeEnumTagMultiPayload();
  v1(v2, 0, 1, v3);
  sub_1D0F7E6BC(v2);

  (*(v4 + 32))(v7, v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D0F7F6D0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D0F7F79C()
{
  v1 = *(v0 + 88);
  (*(v0 + 160))(v1, 1, 1, *(v0 + 64));
  sub_1D0F7E6BC(v1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D0F7F884()
{
  if (!qword_1EC5FCAE8[0])
  {
    sub_1D0FF5788();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, qword_1EC5FCAE8);
    }
  }
}

uint64_t sub_1D0F7F8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D0F7F8FC, a4, 0);
}

uint64_t sub_1D0F7F8FC()
{
  v1 = (v0[3] + *(*v0[3] + 104));
  v2 = *v1;
  v0[4] = v1[1];

  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1D0F7FA1C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1D0F7FA1C()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1D0F7FBAC;
  }

  else
  {
    v4 = sub_1D0F7FB48;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D0F7FB48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0F7FBAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0F7FC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0F80740;

  return sub_1D0F7F8DC(a1, v4, v5, v6);
}

uint64_t sub_1D0F7FCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D0F7F884();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[5] = a4;
  v23[6] = a5;
  sub_1D0F805C4(a3, v11);
  v12 = sub_1D0FF5788();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D0F80628(v11);
  }

  else
  {
    sub_1D0FF5778();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D0FF56F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D0FF5468();
      sub_1D0F80684(v19 + 32, v23);

      v20 = v23[0];
      sub_1D0F80628(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D0F80628(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D0F7FF40()
{
  type metadata accessor for CachedAsync.CacheEntry();
  result = sub_1D0FF5C38();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of CachedAsync.getValue()(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D0F8016C;

  return v6(a1);
}

uint64_t sub_1D0F8016C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D0F80260()
{
  sub_1D0F1E940();
  result = sub_1D0FF57B8();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0F802F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D0F8040C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1D0F805C4(uint64_t a1, uint64_t a2)
{
  sub_1D0F7F884();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F80628(uint64_t a1)
{
  sub_1D0F7F884();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D0F80684@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D0F80744(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t ReplaySubject.__allocating_init(bufferSize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ReplaySubject.init(bufferSize:)(a1);
  return v2;
}

uint64_t sub_1D0F8083C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1D0F26440(a1);
  return v2;
}

uint64_t sub_1D0F8087C(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v15 - v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1D0FF4DE8();
  v7 = sub_1D0FF5C38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  sub_1D0FF47F8();
  v11 = *(*v1 + 120);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  LODWORD(v11) = (*(*(v6 - 8) + 48))(v10, 1, v6);
  result = (*(v8 + 8))(v10, v7);
  if (v11 == 1)
  {
    swift_beginAccess();
    sub_1D0FF4E48();
    if (sub_1D0FF4E28())
    {
      v13 = sub_1D0FF4DC8();
    }

    else
    {
      (*(v16 + 16))(v5, v17, AssociatedTypeWitness);
      swift_beginAccess();
      sub_1D0FF56E8();
      sub_1D0FF56A8();
      swift_endAccess();
      v13 = sub_1D0F26D6C(0, 1);
    }

    v14 = v13;
    sub_1D0FF4808();
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F80BD8(uint64_t a1)
{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D0FF4DE8();
  v5 = sub_1D0FF5C38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-v10];
  sub_1D0FF47F8();
  v12 = *(*v1 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v11, v1 + v12, v5);
  v13 = *(v4 - 8);
  v14 = (*(v13 + 48))(v11, 1, v4);
  result = (*(v6 + 8))(v11, v5);
  if (v14 == 1)
  {
    (*(v13 + 16))(v9, a1, v4);
    (*(v13 + 56))(v9, 0, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(v2 + v12, v9, v5);
    swift_endAccess();
    sub_1D0F26D6C(0, 1);
    return sub_1D0FF4808();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1D0F80EA0()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112), *(v1 + 80));
  v2 = *(*v0 + 120);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D0FF4DE8();
  v3 = sub_1D0FF5C38();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

BOOL sub_1D0F8100C()
{
  v1 = *v0;
  v2 = sub_1D0FF4DE8();
  v3 = sub_1D0FF5C38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v7], v3);
  v8 = (*(*(v2 - 8) + 48))(v6, 1, v2) == 1;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t ReplaySubject.send(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v16 - v6;
  sub_1D0FF47F8();
  if (!sub_1D0F8100C())
  {
    return sub_1D0FF4808();
  }

  (*(v5 + 16))(v7, a1, v4);
  swift_beginAccess();
  sub_1D0FF56E8();
  sub_1D0FF56A8();
  swift_endAccess();

  v8 = sub_1D0FF5698();

  if (v1[2] < v8)
  {
    swift_beginAccess();
    swift_getWitnessTable();
    sub_1D0FF58D8();
    swift_endAccess();
    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  v9 = v1[4];

  v10 = sub_1D0FF4808();
  v16[6] = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = *(v3 + 88);
  v11 = *(v3 + 96);
  v16[-4] = v4;
  v16[-3] = v12;
  v16[-2] = v11;
  v16[-1] = a1;
  v13 = sub_1D0FF4E78();
  WitnessTable = swift_getWitnessTable();
  v16[1] = v4;
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = WitnessTable;
  type metadata accessor for ReplaySubject.Subscription();
  sub_1D0FF56E8();
  swift_getWitnessTable();
  sub_1D0FF5578();
}

void sub_1D0F81504(uint64_t a1)
{
  v3 = v1[2];
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 104);
  v9[0] = *(*v1 + 80);
  v9[1] = v6;
  v9[2] = v7;
  v9[3] = v8;
  type metadata accessor for ReplaySubject.Subscription.SubscriptionState();
  type metadata accessor for DemandBuffer();
  sub_1D0FF5C38();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1D0F275C4((v3 + v4), v9);
  os_unfair_lock_unlock((v3 + v5));
  if (v9[0])
  {

    sub_1D0F8087C(a1);
  }
}

uint64_t ReplaySubject.send(completion:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = sub_1D0FF4DE8();
  v8 = sub_1D0FF5C38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  sub_1D0FF47F8();
  if (!sub_1D0F8100C())
  {
    return sub_1D0FF4808();
  }

  v12 = *(v7 - 8);
  (*(v12 + 16))(v11, a1, v7);
  (*(v12 + 56))(v11, 0, 1, v7);
  v13 = *(*v2 + 128);
  swift_beginAccess();
  (*(v9 + 40))(&v2[v13], v11, v8);
  swift_endAccess();
  swift_beginAccess();
  v14 = *(v2 + 4);

  v15 = sub_1D0FF4808();
  v20[6] = v14;
  MEMORY[0x1EEE9AC00](v15);
  v16 = *(v4 + 80);
  v20[-4] = v16;
  v20[-3] = v5;
  v20[-2] = v6;
  v20[-1] = a1;
  v17 = sub_1D0FF4E78();
  WitnessTable = swift_getWitnessTable();
  v20[1] = v16;
  v20[2] = v5;
  v20[3] = v17;
  v20[4] = WitnessTable;
  type metadata accessor for ReplaySubject.Subscription();
  sub_1D0FF56E8();
  swift_getWitnessTable();
  sub_1D0FF5578();
}

uint64_t sub_1D0F819F0(uint64_t a1)
{
  v3 = v1[2];
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 104);
  v10[0] = *(*v1 + 80);
  v10[1] = v7;
  v10[2] = v8;
  v10[3] = v9;
  type metadata accessor for ReplaySubject.Subscription.SubscriptionState();
  type metadata accessor for DemandBuffer();
  sub_1D0FF5C38();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1D0F26BE0((v3 + v4), v10);
  os_unfair_lock_unlock((v3 + v5));
  if (v10[0])
  {

    sub_1D0F80BD8(a1);
  }

  sub_1D0F81E9C();
}

uint64_t sub_1D0F81BA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D0F81C04();
  }

  return result;
}

uint64_t sub_1D0F81C04()
{
  sub_1D0FF47F8();
  swift_beginAccess();
  sub_1D0FF4E78();
  swift_getWitnessTable();
  type metadata accessor for ReplaySubject.Subscription();
  sub_1D0FF56E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D0FF58E8();
  swift_endAccess();
  return sub_1D0FF4808();
}

uint64_t ReplaySubject.deinit()
{

  v1 = *(*v0 + 128);
  sub_1D0FF4DE8();
  v2 = sub_1D0FF5C38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

void sub_1D0F81E9C()
{
  v1 = *(v0 + 16);
  type metadata accessor for ReplaySubject.Subscription.SubscriptionState();
  sub_1D0F82854(0, &qword_1EE06F8A0, sub_1D0F28E50);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1D0F82834((v1 + v2), &v6);
  os_unfair_lock_unlock((v1 + v3));
  v4 = v6;
  if (v6)
  {

    (v4)(v5);
    sub_1D0F2625C(v4);
    sub_1D0F2625C(v4);
  }
}

uint64_t sub_1D0F82004@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  a1[1] = 0;
  a1[2] = 0;

  *a1 = 0;
  if (v5)
  {
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v4;
    v7 = sub_1D0F828A8;
  }

  else
  {
    v7 = 0;
    result = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1D0F82090()
{

  v1 = qword_1EE0707D0;
  v2 = sub_1D0FF4C88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D0F82110(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1D0F82190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D0FF63B8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F82854(0, &qword_1EC5FC270, MEMORY[0x1E69E75C8]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v21 - v11;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = *(v13 + 16);
  v17(v21 - v18, a1, a4);
  sub_1D0F25ECC(0, &qword_1EC5FCC80);
  if (swift_dynamicCast())
  {
    sub_1D0F25C68(v21, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_1D0FF5F48();
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1D0F82914(v21, &qword_1EC5FCC88, &qword_1EC5FCC80);
    v17(v16, a1, a4);
    v20 = sub_1D0FF63A8();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    sub_1D0F394A4(v8);
    return sub_1D0FF63E8();
  }
}

uint64_t sub_1D0F82448()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_1D0F824B8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D0F25ECC(255, a3);
    v4 = sub_1D0FF5C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D0F82510@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D0F82528()
{
  sub_1D0FF4C88();

  return sub_1D0F81BA4();
}

uint64_t sub_1D0F825BC@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = sub_1D0FF6238();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D0F826E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1D0F82740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D0F82794()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D0F827D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0F827F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_1D0F82854(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D0FF5C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D0F82914(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D0F824B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Publisher.buffer<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15, a2);
  (*(v8 + 16))(v11, a1, a3);
  return Publishers.BufferUpstreamPublisher.init(upstream:gatePublisher:)(v13, v11, a2, a3, a4);
}

uint64_t Publishers.BufferUpstreamPublisher.init(upstream:gatePublisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for Publishers.BufferUpstreamPublisher();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t Publishers.BufferUpstreamPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *(v14 + 52);
  v16 = *(v14 + 24);
  v15 = *(v14 + 32);
  v17 = *(v14 + 40);
  v22 = v5;
  v23 = v16;
  v24 = v18;
  v25 = v15;
  v26 = v17;
  v27 = v19;
  _s23BufferUpstreamPublisherV5InnerCMa();
  (*(v11 + 16))(v13, a1, a3);
  (*(v6 + 16))(v9, v21[1], v5);
  swift_allocObject();
  v22 = sub_1D0F82E60(v13, v9);
  swift_getWitnessTable();
  sub_1D0FF5168();
}

uint64_t *sub_1D0F82E60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a2;
  v17 = a1;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = sub_1D0FF5C38();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  sub_1D0FF4548();
  swift_allocObject();
  v2[2] = sub_1D0FF4538();
  sub_1D0FF4828();
  swift_allocObject();
  v2[3] = sub_1D0FF4818();
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  v2[8] = 0;
  *(v2 + 72) = 2;
  v9 = *(*v2 + 152);
  v10 = *(v5 - 8);
  v11 = *(v10 + 56);
  v11(v2 + v9, 1, 1, v5);
  v12 = *(*v2 + 160);
  *(v3 + v12) = sub_1D0FF4E38();
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 176)) = 0;
  v13 = *(*v3 + 184);
  v14 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  *(v3 + v13) = sub_1D0FF5658();
  *(v3 + *(*v3 + 200)) = 0;
  (*(v10 + 32))(v8, v17, v5);
  v11(v8, 0, 1, v5);
  swift_beginAccess();
  (*(v18 + 40))(v3 + v9, v8, v19);
  swift_endAccess();
  (*(*(v14 - 8) + 32))(v3 + *(*v3 + 192), v20, v14);
  return v3;
}

uint64_t sub_1D0F8317C(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = sub_1D0FF5C38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16[-v11];
  sub_1D0FF4518();
  swift_beginAccess();
  sub_1D0F395E4((v1 + 4), &v17);
  if (v20 == 2 && (v13 = vorrq_s8(v18, v19), !(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v17)))
  {
    sub_1D0F39640(&v17);
    sub_1D0F39694(a1, &v17);
    v20 = 0;
    swift_beginAccess();
    sub_1D0F396F8(&v17, (v1 + 4));
    swift_endAccess();
    v15 = *(*v1 + 152);
    swift_beginAccess();
    (*(v6 + 16))(v9, v1 + v15, v5);
    if ((*(v10 + 48))(v9, 1, v4) == 1)
    {
      (*(v6 + 8))(v9, v5);
      return sub_1D0FF4528();
    }

    else
    {
      (*(v10 + 32))(v12, v9, v4);
      sub_1D0FF4528();
      sub_1D0FF47F8();
      v19.i64[0] = v3;
      v19.i64[1] = swift_getWitnessTable();
      v17 = v1;

      sub_1D0FF4DB8();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      sub_1D0FF4808();
      return (*(v10 + 8))(v12, v4);
    }
  }

  else
  {
    sub_1D0F39640(&v17);
    sub_1D0FF4528();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_1D0FF4DD8();
  }
}

uint64_t sub_1D0F834DC(uint64_t a1)
{
  v2 = v1;
  sub_1D0FF4518();
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1D0FF4E48();
  if ((sub_1D0FF4E28() & 1) == 0)
  {
    sub_1D0FF4E48();
    v6 = sub_1D0FF4E28();
    v7 = sub_1D0FF4E48();
    if (v6)
    {
LABEL_3:
      *(v2 + v4) = v7;
      goto LABEL_9;
    }

    result = sub_1D0FF4E28();
    if ((result & 1) == 0)
    {
      if ((v5 | a1) < 0)
      {
        goto LABEL_21;
      }

      v7 = v5 + a1;
      if (!__OFADD__(v5, a1))
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_3;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }
    }

    *(v2 + v4) = sub_1D0FF4E48();
  }

LABEL_9:
  swift_endAccess();
  swift_beginAccess();
  sub_1D0F395E4(v2 + 32, &v12);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1D0F39640(&v12);
    }

    else if (!(v14 | v15 | v12 | v13 | *(&v12 + 1)))
    {
      return sub_1D0FF4528();
    }

    swift_getWitnessTable();
    sub_1D0FF4798();
    return sub_1D0FF4528();
  }

  sub_1D0F25C68(&v12, v11);
  v9 = *(*v2 + 200);
  if (!*(v2 + v9))
  {
    sub_1D0FF4528();
    v10 = sub_1D0F8370C();
    sub_1D0FF4518();
    *(v2 + v9) = v10;
  }

  sub_1D0FF4528();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_1D0FF4E68();
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_1D0F8370C()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v15 = swift_allocObject();
  v4 = v1[10];
  v3[2] = v4;
  v5 = v1[11];
  v3[3] = v5;
  v6 = v1[12];
  v3[4] = v6;
  v7 = v1[13];
  v3[5] = v7;
  v8 = v1[14];
  v3[6] = v8;
  v9 = v1[15];
  v3[7] = v9;
  v3[8] = v2;
  swift_weakInit();
  v10 = swift_allocObject();
  *&v11 = v4;
  *(&v11 + 1) = v5;
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *(v10 + 16) = v11;
  *(v10 + 32) = v12;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  *(v10 + 64) = v15;

  v13 = sub_1D0FF50D8();

  return v13;
}

uint64_t sub_1D0F83910(uint64_t a1)
{
  v31 = *v1;
  v3 = *(v31 + 96);
  v37 = sub_1D0FF5C38();
  v39 = *(v37 - 8);
  v4 = MEMORY[0x1EEE9AC00](v37);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v33 = v3;
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v29 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = sub_1D0FF4DE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  sub_1D0FF4518();
  v34 = v12;
  v35 = v11;
  v15 = *(v12 + 16);
  v32 = a1;
  v15(v14, a1, v11);
  v16 = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness);
  v17 = *v1;
  if (v16 == 1)
  {
    v18 = *(v17 + 168);
    swift_beginAccess();
    *(v1 + v18) = 1;
    return sub_1D0FF4528();
  }

  else
  {
    v20 = *(v17 + 152);
    swift_beginAccess();
    v21 = v37;
    (*(v39 + 16))(v8, v1 + v20, v37);
    v22 = v33;
    if ((*(v38 + 48))(v8, 1, v33) == 1)
    {
      (*(v39 + 8))(v8, v21);
      sub_1D0FF4528();
    }

    else
    {
      v23 = v38;
      (*(v38 + 32))(v36, v8, v22);
      v24 = *(*v1 + 168);
      swift_beginAccess();
      *(v1 + v24) = 1;
      swift_getAssociatedTypeWitness();
      v25 = sub_1D0FF5658();
      v26 = *(*v1 + 184);
      swift_beginAccess();
      *(v1 + v26) = v25;

      v27 = v30;
      (*(v23 + 56))(v30, 1, 1, v22);
      swift_beginAccess();
      (*(v39 + 40))(v1 + v20, v27, v21);
      swift_endAccess();
      sub_1D0FF4528();
      sub_1D0FF47F8();
      v28 = v36;
      sub_1D0FF4DA8();
      sub_1D0FF4808();
      (*(v23 + 8))(v28, v22);
    }

    return (*(v34 + 8))(v14, v35);
  }
}

uint64_t sub_1D0F83E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a9(a1);
  }

  return result;
}

uint64_t sub_1D0F83EBC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9 - v5;
  sub_1D0FF4518();
  (*(v4 + 16))(v6, a1, AssociatedTypeWitness);
  swift_beginAccess();
  sub_1D0FF56E8();
  sub_1D0FF56A8();
  swift_endAccess();
  swift_beginAccess();
  sub_1D0F395E4(v1 + 32, &v10);
  if (v13 == 1)
  {
    sub_1D0F39640(&v10);
LABEL_7:
    swift_getWitnessTable();
    sub_1D0FF4798();
    return sub_1D0FF4528();
  }

  if (v13 == 2 && v10 == 1)
  {
    v7 = vorrq_s8(v11, v12);
    if (!*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))
    {
      goto LABEL_7;
    }
  }

  sub_1D0F39640(&v10);
  return sub_1D0FF4528();
}

uint64_t sub_1D0F840EC(uint64_t a1)
{
  v2 = v1;
  v25 = *v1;
  v4 = *(v25 + 96);
  v5 = sub_1D0FF5C38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v23 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - v11;
  sub_1D0FF4518();
  v13 = *(*v1 + 176);
  swift_beginAccess();
  if (*(v2 + v13))
  {
    goto LABEL_14;
  }

  v23[1] = a1;
  v24 = sub_1D0FF4E38();
  v14 = *(*v2 + 160);
  swift_beginAccess();
  v15 = *(v2 + v14);
  sub_1D0FF4E48();
  result = sub_1D0FF4E28();
  if (result)
  {
    goto LABEL_5;
  }

  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v15)
  {
LABEL_5:
    swift_beginAccess();
    v17 = *(v2 + v14);
    sub_1D0FF4E48();
    if (sub_1D0FF4E28())
    {
LABEL_12:
      swift_endAccess();
      v19 = *(*v2 + 152);
      swift_beginAccess();
      (*(v6 + 16))(v9, v2 + v19, v5);
      if ((*(v10 + 48))(v9, 1, v4) == 1)
      {
        (*(v6 + 8))(v9, v5);
LABEL_14:
        sub_1D0FF4528();
        return sub_1D0FF4E38();
      }

      (*(v10 + 32))(v12, v9, v4);
      sub_1D0FF4528();
      sub_1D0FF47F8();
      v24 = sub_1D0FF4DC8();
      sub_1D0FF4808();
      sub_1D0FF4518();
      swift_beginAccess();
      v20 = *(v2 + v14);
      sub_1D0FF4E48();
      if (sub_1D0FF4E28())
      {
        goto LABEL_24;
      }

      sub_1D0FF4E48();
      v21 = sub_1D0FF4E28();
      v22 = sub_1D0FF4E48();
      if (v21)
      {
LABEL_23:
        *(v2 + v14) = v22;
LABEL_24:
        swift_endAccess();
        (*(v10 + 8))(v12, v4);
        goto LABEL_25;
      }

      result = sub_1D0FF4E28();
      if (result)
      {
LABEL_21:
        v22 = sub_1D0FF4E48();
        goto LABEL_23;
      }

      if (((v20 | v24) & 0x8000000000000000) == 0)
      {
        v22 = v20 + v24;
        if (!__OFADD__(v20, v24))
        {
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

LABEL_31:
          __break(1u);
          return result;
        }

        goto LABEL_21;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_1D0FF4E48();
    result = sub_1D0FF4E28();
    if (result)
    {
      v18 = sub_1D0FF4E48();
LABEL_11:
      *(v2 + v14) = v18;
      goto LABEL_12;
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      if (v17)
      {
        v18 = v17 - 1;
        goto LABEL_11;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  sub_1D0FF4528();
  return v24;
}

uint64_t sub_1D0F84500(uint64_t a1)
{
  v2 = v1;
  v35 = *v1;
  v4 = *(v35 + 96);
  v38 = sub_1D0FF5C38();
  v36 = *(v38 - 8);
  v5 = MEMORY[0x1EEE9AC00](v38);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v39 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = sub_1D0FF4DE8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v40 = v1[2];
  sub_1D0FF4518();
  v16 = *(v13 + 16);
  v34 = a1;
  v16(v15, a1, v12);
  v17 = (*(*(AssociatedTypeWitness - 8) + 48))(v15, 1, AssociatedTypeWitness);
  (*(v13 + 8))(v15, v12);
  if (v17 == 1)
  {
    swift_beginAccess();
    sub_1D0F395E4((v2 + 4), &v41);
    v18 = v44;
    sub_1D0F39640(&v41);
    v41 = 1;
    v42 = 0u;
    v43 = 0u;
    v44 = 2;
    swift_beginAccess();
    sub_1D0F396F8(&v41, (v2 + 4));
    swift_endAccess();
    if (!v18)
    {
      swift_getWitnessTable();
      sub_1D0FF4798();
    }
  }

  else
  {
    v19 = *v2;
    if (*(v2 + *(*v2 + 200)))
    {

      sub_1D0FF4E98();

      v19 = *v2;
    }

    v20 = v38;
    v21 = *(v19 + 168);
    swift_beginAccess();
    *(v2 + v21) = 1;
    swift_getAssociatedTypeWitness();
    v22 = sub_1D0FF5658();
    v23 = *(*v2 + 184);
    swift_beginAccess();
    *(v2 + v23) = v22;

    v41 = 1;
    v42 = 0u;
    v43 = 0u;
    v44 = 2;
    swift_beginAccess();
    sub_1D0F396F8(&v41, (v2 + 4));
    swift_endAccess();
    v24 = *(*v2 + 152);
    swift_beginAccess();
    v25 = v36;
    (*(v36 + 16))(v9, v2 + v24, v20);
    v26 = v37;
    v27 = v39;
    if ((*(v37 + 48))(v9, 1, v39) != 1)
    {
      v28 = v33;
      (*(v26 + 32))(v33, v9, v27);
      v29 = v32;
      (*(v26 + 56))(v32, 1, 1, v27);
      swift_beginAccess();
      (*(v25 + 40))(v2 + v24, v29, v20);
      swift_endAccess();
      sub_1D0FF4528();
      sub_1D0FF47F8();
      sub_1D0FF4DA8();
      sub_1D0FF4808();
      return (*(v26 + 8))(v28, v27);
    }

    (*(v25 + 8))(v9, v20);
  }

  return sub_1D0FF4528();
}

uint64_t sub_1D0F84B8C()
{
  v1 = v0;
  sub_1D0FF4518();
  swift_beginAccess();
  sub_1D0F395E4(v0 + 32, &v6);
  sub_1D0FF4E08();
  sub_1D0F39640(&v6);
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1D0FF4DD8();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    sub_1D0F39754(v10);
  }

  v6 = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 2;
  swift_beginAccess();
  sub_1D0F396F8(&v6, v0 + 32);
  swift_endAccess();
  if (*(v0 + *(*v0 + 200)))
  {

    sub_1D0FF4E98();
  }

  swift_getAssociatedTypeWitness();
  v2 = sub_1D0FF5658();
  v3 = *(*v1 + 184);
  swift_beginAccess();
  *(v1 + v3) = v2;

  v4 = *(*v1 + 176);
  swift_beginAccess();
  *(v1 + v4) = 1;
  return sub_1D0FF4528();
}

uint64_t *sub_1D0F84D74()
{
  v1 = *v0;

  sub_1D0F39640((v0 + 4));
  v2 = *(*v0 + 152);
  v3 = sub_1D0FF5C38();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 192));

  return v0;
}

uint64_t sub_1D0F84EA4()
{
  sub_1D0F84D74();

  return swift_deallocClassInstance();
}

uint64_t sub_1D0F84F90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_1D0FF5C38();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D0F8502C(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_1D0FF5C38();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1D0F85198(uint64_t a1)
{
  v3 = *(*v1 + 184);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1D0F85268()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D0F852B8(uint64_t a1)
{
  v3 = *(*v1 + 160);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D0F85380()
{
  v1 = *(*v0 + 168);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D0F853D0(char a1)
{
  v3 = *(*v1 + 168);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D0F85498()
{
  v1 = *(*v0 + 176);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D0F854E8(char a1)
{
  v3 = *(*v1 + 176);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D0F855F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0F8567C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1D0F85858(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
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
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1D0F85B14()
{
  result = sub_1D0FF5C38();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D0F85D38(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = *(*a4 + *MEMORY[0x1E69E77B0] + 8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (a3)
  {
    v12 = sub_1D0FF5398();
  }

  else
  {
    v12 = sub_1D0FF53A8();
  }

  v13 = v12;
  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);
  return v13 & 1;
}

uint64_t sub_1D0F85F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void *a5)
{
  v6 = *(*a5 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = a3(v12, v10);
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1D0FF5658();
  if (sub_1D0FF5698())
  {
    v13 = sub_1D0F866C0(v12, AssociatedTypeWitness, a3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v18 = v13;
  v14 = (*(v8 + 16))(v10, v4, a1);
  MEMORY[0x1EEE9AC00](v14);
  *(&v17 - 4) = a1;
  *(&v17 - 3) = a2;
  *(&v17 - 2) = a3;
  *(&v17 - 1) = &v18;
  v15 = sub_1D0FF5548();

  return v15;
}

uint64_t sub_1D0F86294(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_1D0FF5848();
  v9 = sub_1D0FF5828();
  (*(v3 + 8))(v8, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t Sequence.unique<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_1D0FF5318();
  (*(v13 + 16))(v15, v6, a3);
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a1;
  v24 = a2;
  v25 = &v26;
  v16 = sub_1D0FF5548();

  return v16;
}

uint64_t sub_1D0F86538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v21 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v21 - v15;
  v17(v14);
  (*(v7 + 16))(v10, v16, a6);
  sub_1D0FF5848();
  v18 = sub_1D0FF5828();
  v19 = *(v7 + 8);
  v19(v13, a6);
  v19(v16, a6);
  return v18 & 1;
}

uint64_t sub_1D0F866C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  if (sub_1D0FF5698())
  {
    sub_1D0FF5DC8();
    v15 = sub_1D0FF5DB8();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1D0FF5698();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1D0FF5678();
    sub_1D0FF5628();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1D0FF5DF8();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1D0FF5368();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1D0FF53D8();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t CompoundAsyncPrecondition.evaluate(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *v2;
  if (!*(*v2 + 16))
  {
    return a1(1);
  }

  sub_1D0F39694(v5 + 32, v11);
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = 1;
  v8[4] = a1;
  v8[5] = a2;
  v9 = *(v7 + 8);

  v9(sub_1D0F86CEC, v8, v6, v7);

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_1D0F86BD0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if ((result & 1) == 0)
  {
    v7 = 0;
    return a4(v7);
  }

  v6 = *(a2 + 16);
  if (v6 == a3)
  {
    v7 = 1;
    return a4(v7);
  }

  if (v6 > a3)
  {
    v8 = a3 + 1;
    sub_1D0F39694(a2 + 40 * a3 + 32, v15);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = v8;
    v13[4] = a4;
    v13[5] = a5;
    v14 = *(v12 + 8);

    v14(sub_1D0F86D60, v13, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id ColorRepresentation.encode()()
{
  v1 = type metadata accessor for HKObjectTypeColorProvider(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ColorRepresentation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_allocWithZone(MEMORY[0x1E69A41A0]) init];
  if (result)
  {
    v8 = result;
    sub_1D0F87048(v0, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v17 = sub_1D0FF53E8();

        [v8 setSemanticColorName_];
      }

      else
      {
        v12 = *v6;
        v13 = v6[1];
        v14 = v6[2];
        v15 = v6[3];
        v16 = [objc_allocWithZone(MEMORY[0x1E69A4228]) init];
        [v16 setRed_];
        [v16 setGreen_];
        [v16 setBlue_];
        [v16 setAlpha_];
        [v8 setRgbConfiguration_];
      }
    }

    else if (EnumCaseMultiPayload)
    {
      [v8 setDisplayCategoryIdentifier_];
    }

    else
    {
      sub_1D0F870AC(v6, v3);
      sub_1D0F87110();
      v10 = sub_1D0FF52B8();
      v11 = [v10 identifier];

      if (!v11)
      {
        sub_1D0FF5428();
        v11 = sub_1D0FF53E8();
      }

      [v8 setObjectTypeIdentifier_];

      sub_1D0F871B4(v3);
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F87048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F870AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKObjectTypeColorProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D0F87110()
{
  if (!qword_1EE06FAB8)
  {
    sub_1D0F87168();
    v0 = sub_1D0FF52E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06FAB8);
    }
  }
}

unint64_t sub_1D0F87168()
{
  result = qword_1EE06FA48;
  if (!qword_1EE06FA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06FA48);
  }

  return result;
}

uint64_t sub_1D0F871B4(uint64_t a1)
{
  v2 = type metadata accessor for HKObjectTypeColorProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ColorRepresentation.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 hasObjectTypeIdentifier])
  {
    v4 = objc_opt_self();
    v5 = [a1 objectTypeIdentifier];
    v6 = [v4 _typeWithIdentifier_];

    if (v6)
    {
      sub_1D0F87168();
      sub_1D0FF52F8();

      type metadata accessor for ColorRepresentation(0);
LABEL_6:
      swift_storeEnumTagMultiPayload();
      return;
    }

    v11 = 1;
    goto LABEL_23;
  }

  if ([a1 hasDisplayCategoryIdentifier])
  {
    v7 = [a1 displayCategoryIdentifier];

    *a2 = v7;
    type metadata accessor for ColorRepresentation(0);
    goto LABEL_6;
  }

  if (![a1 hasSemanticColorName])
  {
    if ([a1 hasRgbConfiguration])
    {
      v12 = [a1 rgbConfiguration];
      if (v12)
      {
        v13 = v12;
        if ([v12 hasRed] && objc_msgSend(v13, sel_hasGreen) && objc_msgSend(v13, sel_hasBlue) && objc_msgSend(v13, sel_hasAlpha))
        {
          [v13 red];
          v15 = v14;
          [v13 green];
          v17 = v16;
          [v13 blue];
          v19 = v18;
          [v13 alpha];
          v21 = v20;

          *a2 = v15;
          a2[1] = v17;
          a2[2] = v19;
          a2[3] = v21;
          type metadata accessor for ColorRepresentation(0);
          goto LABEL_6;
        }
      }

      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

LABEL_23:
    sub_1D0F87518();
    swift_allocError();
    *v22 = v11;
    swift_willThrow();

    return;
  }

  v8 = [a1 semanticColorName];
  if (v8)
  {
    v9 = v8;
    sub_1D0FF5428();

    v10 = sub_1D0FF6088();

    if (v10 <= 3)
    {

      *a2 = v10;
      type metadata accessor for ColorRepresentation(0);
      goto LABEL_6;
    }

    v11 = 3;
    goto LABEL_23;
  }

  __break(1u);
}

unint64_t sub_1D0F87518()
{
  result = qword_1EC5FCC90;
  if (!qword_1EC5FCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCC90);
  }

  return result;
}

uint64_t _s14descr1F4CF3A31O30ColorRepresentationCodingErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14descr1F4CF3A31O30ColorRepresentationCodingErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D0F876C0()
{
  result = qword_1EC5FCC98;
  if (!qword_1EC5FCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FCC98);
  }

  return result;
}

uint64_t FeatureStatusConfiguration.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeatureStatusConfiguration.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeatureStatusConfiguration.titleName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeatureStatusConfiguration.analyticsDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t type metadata accessor for FeatureStatusConfiguration()
{
  result = qword_1EE06EEB0;
  if (!qword_1EE06EEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeatureStatusConfiguration.accessoryTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureStatusConfiguration() + 40));

  return v1;
}

uint64_t FeatureStatusConfiguration.primaryDescriptionContent.getter()
{
  type metadata accessor for FeatureStatusConfiguration();
}

uint64_t FeatureStatusConfiguration.secondaryDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureStatusConfiguration() + 48));

  return v1;
}

uint64_t FeatureStatusConfiguration.footerMarkdown.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureStatusConfiguration() + 52));

  return v1;
}

void sub_1D0F87A70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D0FF5C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t FeatureStatusConfiguration.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeatureStatusConfiguration() + 64));

  return v1;
}

uint64_t FeatureStatusConfiguration.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FeatureStatusConfiguration() + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_1D0F87B94(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_1D0FF5C48();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_1D0FF5C48();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_1D0F8A088(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_1D0FF54E8();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_1D0F8A088(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_1D0F8A088(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_1D0FF54E8();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_1D0FF54C8();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x1D3880A80](result);
LABEL_23:
        sub_1D0FF5518();
        sub_1D0F8BCCC();
        sub_1D0FF54A8();

        sub_1D0FF54A8();
        sub_1D0F8A03C(a2, a5, a6);
        sub_1D0FF54A8();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t FeatureStatusConfiguration.init(titleName:analyticsDescription:isSensitiveFeature:featureStatusKind:imageData:accessoryTitle:primaryDescriptionContent:secondaryDescription:footerDescription:footerLinkTitle:footerLinkURL:isOnboardingCompleted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18)
{
  v47 = a5;
  v48 = a6;
  v49 = a1;
  v50 = a3;
  v59 = a18;
  v57 = a12;
  v58 = a7;
  v54 = a10;
  v52 = a4;
  v53 = a9;
  v51 = a17;
  v55 = MEMORY[0x1E69A3D50];
  v56 = a11;
  sub_1D0F87A70(0, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v45[-v21];
  sub_1D0F87A70(0, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v45[-v24];
  v46 = *v47;
  v47 = sub_1D0F8A9CC(a13, a14, a17, a15, a16);
  v27 = v26;

  v28 = v48;
  sub_1D0F8BC04(v48, v25, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  v29 = sub_1D0FF48F8();
  (*(*(v29 - 8) + 56))(v22, 1, 1, v29);
  v30 = type metadata accessor for FeatureStatusConfiguration();
  v31 = (a8 + v30[16]);
  *v31 = 0xD000000000000016;
  v31[1] = 0x80000001D1004870;
  v33 = v49;
  v32 = v50;
  *(a8 + 16) = v49;
  *(a8 + 24) = a2;
  v34 = v52;
  *(a8 + 32) = v32;
  *(a8 + 40) = v34;
  *(a8 + 48) = 0;
  *(a8 + 49) = v46;
  sub_1D0F8BC04(v25, a8 + v30[9], &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  v35 = (a8 + v30[10]);
  v37 = v53;
  v36 = v54;
  *v35 = v58;
  v35[1] = v37;
  *(a8 + v30[11]) = v36;
  v38 = (a8 + v30[12]);
  v39 = v57;
  *v38 = v56;
  v38[1] = v39;
  v40 = (a8 + v30[13]);
  *v40 = v47;
  v40[1] = v27;
  *(a8 + v30[14]) = v59;
  v41 = v55;
  sub_1D0F8BC04(v22, a8 + v30[15], &qword_1EE06F808, v55);
  v60 = 0xD00000000000001BLL;
  v61 = 0x80000001D1004890;

  MEMORY[0x1D3880AC0](v33, a2);

  v42 = v60;
  v43 = v61;
  sub_1D0F8BC70(v51, &qword_1EE070DA8, MEMORY[0x1E6968FB0]);
  sub_1D0F8BC70(v28, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  sub_1D0F8BC70(v22, &qword_1EE06F808, v41);
  result = sub_1D0F8BC70(v25, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  *a8 = v42;
  *(a8 + 8) = v43;
  return result;
}

uint64_t FeatureStatusConfiguration.init(titleName:analyticsDescription:isSensitiveFeature:featureStatusKind:imageData:accessoryTitle:primaryDescriptionContent:secondaryDescription:footerMarkdown:isOnboardingCompleted:countryRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v24 = *a6;
  v25 = type metadata accessor for FeatureStatusConfiguration();
  v26 = (a9 + v25[16]);
  *v26 = 0xD000000000000016;
  v26[1] = 0x80000001D1004870;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 49) = v24;
  sub_1D0F8BC04(a7, a9 + v25[9], &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  v27 = (a9 + v25[10]);
  *v27 = a8;
  v27[1] = a10;
  *(a9 + v25[11]) = a11;
  v28 = (a9 + v25[12]);
  *v28 = a12;
  v28[1] = a13;
  v29 = (a9 + v25[13]);
  *v29 = a14;
  v29[1] = a15;
  *(a9 + v25[14]) = a16;
  v30 = v25[15];
  v31 = MEMORY[0x1E69A3D50];
  sub_1D0F8BC04(a17, a9 + v30, &qword_1EE06F808, MEMORY[0x1E69A3D50]);

  MEMORY[0x1D3880AC0](a1, a2);

  sub_1D0F8BC70(a17, &qword_1EE06F808, v31);
  result = sub_1D0F8BC70(a7, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  *a9 = 0xD00000000000001BLL;
  *(a9 + 8) = 0x80000001D1004890;
  return result;
}

uint64_t FeatureStatusConfiguration.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeatureStatusConfiguration();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 48) = 0;
  v10 = (a3 + *(v7 + 64));
  *v10 = 0xD000000000000016;
  v10[1] = 0x80000001D1004870;
  sub_1D0FF3DA8();
  swift_allocObject();
  sub_1D0FF3D98();
  sub_1D0F8BBBC(&qword_1EC5FCCA0, type metadata accessor for FeatureStatusConfiguration);
  sub_1D0FF3D88();
  sub_1D0F34FDC(a1, a2);

  return sub_1D0F8AED0(v9, a3, type metadata accessor for FeatureStatusConfiguration);
}

uint64_t FeatureStatusConfiguration.init(userData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FeatureStatusConfiguration();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 48) = 0;
  v11 = (a3 + *(v8 + 64));
  *v11 = 0xD000000000000016;
  v11[1] = 0x80000001D1004870;
  sub_1D0FF3DA8();
  swift_allocObject();
  sub_1D0FF3D98();
  sub_1D0F8BBBC(&qword_1EC5FCCA0, type metadata accessor for FeatureStatusConfiguration);
  sub_1D0FF3D88();
  sub_1D0F34FDC(a1, a2);

  if (!v3)
  {
    return sub_1D0F8AED0(v10, a3, type metadata accessor for FeatureStatusConfiguration);
  }

  return result;
}

uint64_t FeatureStatusConfiguration.encode()()
{
  sub_1D0FF3DD8();
  swift_allocObject();
  sub_1D0FF3DC8();
  type metadata accessor for FeatureStatusConfiguration();
  sub_1D0F8BBBC(&qword_1EE070D20, type metadata accessor for FeatureStatusConfiguration);
  v0 = sub_1D0FF3DB8();

  return v0;
}

unint64_t sub_1D0F888F0(char a1)
{
  result = 0x6D614E656C746974;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7461446567616D69;
      break;
    case 6:
      result = 0x726F737365636361;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x614D7265746F6F66;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x527972746E756F63;
      break;
    case 12:
      result = 0x6564496573756572;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D0F88AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0F8B6C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0F88AEC(uint64_t a1)
{
  v2 = sub_1D0F8AE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F88B28(uint64_t a1)
{
  v2 = sub_1D0F8AE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureStatusConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D0F8AF38(0, &qword_1EE070AE8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F8AE28();
  sub_1D0FF6438();
  LOBYTE(v12) = 0;
  sub_1D0FF61C8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D0FF61C8();
    LOBYTE(v12) = 2;
    sub_1D0FF61C8();
    LOBYTE(v12) = 3;
    sub_1D0FF61D8();
    LOBYTE(v12) = *(v3 + 49);
    v13 = 4;
    sub_1D0F8AE7C();
    sub_1D0FF6208();
    v11 = type metadata accessor for FeatureStatusConfiguration();
    LOBYTE(v12) = 5;
    type metadata accessor for ImageRepresentation();
    sub_1D0F8BBBC(&qword_1EE06F2D8, type metadata accessor for ImageRepresentation);
    sub_1D0FF61B8();
    LOBYTE(v12) = 6;
    sub_1D0FF6188();
    v12 = *(v3 + *(v11 + 44));
    v13 = 7;
    sub_1D0F8B420(0, &qword_1EE070E18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D0F8AFF0(&qword_1EE070B88);
    sub_1D0FF61B8();
    LOBYTE(v12) = 8;
    sub_1D0FF6188();
    LOBYTE(v12) = 9;
    sub_1D0FF6188();
    LOBYTE(v12) = 10;
    sub_1D0FF6198();
    LOBYTE(v12) = 11;
    sub_1D0FF48F8();
    sub_1D0F8BBBC(&unk_1EE06F810, MEMORY[0x1E69A3D50]);
    sub_1D0FF61B8();
    LOBYTE(v12) = 12;
    sub_1D0FF61C8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t FeatureStatusConfiguration.hash(into:)()
{
  v1 = sub_1D0FF48F8();
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F87A70(0, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for ImageRepresentation();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F87A70(0, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  sub_1D0FF5488();
  sub_1D0FF5488();
  sub_1D0FF5488();
  sub_1D0FF6358();
  sub_1D0FF5488();

  v13 = type metadata accessor for FeatureStatusConfiguration();
  sub_1D0F8BC04(v0 + v13[9], v12, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    sub_1D0F8AED0(v12, v9, type metadata accessor for ImageRepresentation);
    sub_1D0FF6358();
    ImageRepresentation.hash(into:)();
    sub_1D0F8B144(v9, type metadata accessor for ImageRepresentation);
  }

  if (*(v0 + v13[10] + 8))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  v14 = *(v0 + v13[11]);
  if (v14)
  {
    sub_1D0FF6358();
    MEMORY[0x1D3881950](*(v14 + 16));
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + 40;
      do
      {

        sub_1D0FF5488();

        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    sub_1D0FF6358();
  }

  if (*(v0 + v13[12] + 8))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  if (*(v0 + v13[13] + 8))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  if (*(v0 + v13[14]) != 2)
  {
    sub_1D0FF6358();
  }

  sub_1D0FF6358();
  sub_1D0F8BC04(v0 + v13[15], v5, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
  v17 = v21;
  if ((*(v21 + 48))(v5, 1, v1) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v18 = v20;
    (*(v17 + 32))(v20, v5, v1);
    sub_1D0FF6358();
    sub_1D0F8BBBC(&qword_1EC5FCCA8, MEMORY[0x1E69A3D50]);
    sub_1D0FF5378();
    (*(v17 + 8))(v18, v1);
  }

  return sub_1D0FF5488();
}

uint64_t FeatureStatusConfiguration.hashValue.getter()
{
  sub_1D0FF6338();
  FeatureStatusConfiguration.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t FeatureStatusConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  sub_1D0F87A70(0, &qword_1EE06F808, MEMORY[0x1E69A3D50]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v60 - v4;
  sub_1D0F87A70(0, &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v60 - v7;
  sub_1D0F8AF38(0, &qword_1EC5FCCB0, MEMORY[0x1E69E6F48]);
  v66 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - v11;
  v13 = type metadata accessor for FeatureStatusConfiguration();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D0F8AE28();
  v65 = v12;
  v17 = v67;
  sub_1D0FF6428();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  v18 = v8;
  v19 = v5;
  v67 = v10;
  v63 = v13;
  v20 = v15;
  LOBYTE(v69) = 0;
  v21 = v65;
  v22 = v66;
  v24 = v15;
  *v15 = sub_1D0FF6108();
  v15[1] = v25;
  LOBYTE(v69) = 1;
  v26 = sub_1D0FF6108();
  v28 = 0;
  v29 = v67;
  v15[2] = v26;
  v15[3] = v27;
  LOBYTE(v69) = 2;
  v30 = sub_1D0FF6108();
  v31 = v63;
  *(v20 + 32) = v30;
  *(v20 + 40) = v32;
  LOBYTE(v69) = 3;
  v33 = sub_1D0FF6118();
  v62 = 0;
  *(v20 + 48) = v33 & 1;
  v70 = 4;
  sub_1D0F8AF9C();
  v34 = v62;
  sub_1D0FF6148();
  v62 = v34;
  if (v34)
  {
    (*(v29 + 8))(v21, v22);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v61 = 0;
    *(v20 + 49) = v69;
    type metadata accessor for ImageRepresentation();
    LOBYTE(v69) = 5;
    sub_1D0F8BBBC(&qword_1EE070318, type metadata accessor for ImageRepresentation);
    v37 = v62;
    sub_1D0FF60F8();
    v62 = v37;
    if (v37)
    {
      (*(v29 + 8))(v21, v22);
      v35 = 0;
      v36 = 0;
      v28 = v61;
    }

    else
    {
      sub_1D0F8B074(v18, v20 + v31[9], &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
      LOBYTE(v69) = 6;
      v38 = v62;
      v39 = sub_1D0FF60C8();
      v62 = v38;
      v28 = v61;
      if (v38)
      {
        (*(v29 + 8))(v21, v22);
        v36 = 0;
        v35 = 1;
      }

      else
      {
        v41 = (v20 + v31[10]);
        *v41 = v39;
        v41[1] = v40;
        sub_1D0F8B420(0, &qword_1EE070E18, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        v70 = 7;
        sub_1D0F8AFF0(&qword_1EC5FCCC0);
        v42 = v62;
        sub_1D0FF60F8();
        if (!v42)
        {
          *(v20 + v31[11]) = v69;
          LOBYTE(v69) = 8;
          v43 = sub_1D0FF60C8();
          v62 = 0;
          v44 = (v20 + v31[12]);
          *v44 = v43;
          v44[1] = v45;
          LOBYTE(v69) = 9;
          v46 = v62;
          v47 = sub_1D0FF60C8();
          v49 = v46;
          if (v46)
          {
            (*(v67 + 8))(v65, v66);
            v50 = 0;
            v62 = v46;
          }

          else
          {
            v51 = (v20 + v63[13]);
            *v51 = v47;
            v51[1] = v48;
            LOBYTE(v69) = 10;
            v52 = sub_1D0FF60D8();
            v62 = 0;
            *(v20 + v63[14]) = v52;
            sub_1D0FF48F8();
            LOBYTE(v69) = 11;
            sub_1D0F8BBBC(&qword_1EC5FCCC8, MEMORY[0x1E69A3D50]);
            v53 = v62;
            sub_1D0FF60F8();
            v62 = v53;
            if (v53)
            {
              (*(v67 + 8))(v65, v66);
              v50 = 0;
            }

            else
            {
              sub_1D0F8B074(v19, v20 + v63[15], &qword_1EE06F808, MEMORY[0x1E69A3D50]);
              LOBYTE(v69) = 12;
              v54 = v62;
              v55 = sub_1D0FF6108();
              v62 = v54;
              if (!v54)
              {
                v57 = v55;
                v58 = v56;
                v59 = (v20 + v63[16]);
                (*(v67 + 8))(v65, v66);
                *v59 = v57;
                v59[1] = v58;
                sub_1D0F8B0E0(v20, v64);
                __swift_destroy_boxed_opaque_existential_1Tm(v68);
                return sub_1D0F8B144(v20, type metadata accessor for FeatureStatusConfiguration);
              }

              (*(v67 + 8))(v65, v66);
              v50 = 1;
            }
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v68);

          sub_1D0F8BC70(v20 + v63[9], &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);

          if (v49)
          {
            if (!v50)
            {
              return result;
            }
          }

          else
          {

            if ((v50 & 1) == 0)
            {
              return result;
            }
          }

          return sub_1D0F8BC70(v20 + v63[15], &qword_1EE06F808, MEMORY[0x1E69A3D50]);
        }

        v62 = v42;
        (*(v29 + 8))(v21, v22);
        v35 = 1;
        v36 = 1;
        v28 = v61;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v68);

  if (!v28)
  {
  }

  if (v35)
  {
    result = sub_1D0F8BC70(v24 + v31[9], &qword_1EE06F2D0, type metadata accessor for ImageRepresentation);
    if (v36)
    {
    }
  }

  else if (v36)
  {
  }

  return result;
}

uint64_t sub_1D0F89F84()
{
  sub_1D0FF6338();
  FeatureStatusConfiguration.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F89FC8()
{
  sub_1D0FF6338();
  FeatureStatusConfiguration.hash(into:)();
  return sub_1D0FF6378();
}