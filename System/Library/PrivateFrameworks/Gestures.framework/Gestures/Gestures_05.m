void *sub_18E6C9630(uint64_t a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_18E6A4AD8(a1);
}

uint64_t sub_18E6C9674@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18E6AA174();

  *a1 = v2;
  return result;
}

uint64_t sub_18E6C96B4()
{
  v1 = v0;
  if (v0[2])
  {
    v2 = v0[1];
    v3 = v0[2];
    goto LABEL_30;
  }

  v4 = *v0;
  if (*v0)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    if ((v4 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_18E69F7B4((v0 + 6), &v21);
    __swift_project_boxed_opaque_existential_1(&v21, v23);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v21);
    v24 = sub_18E72B9C8();
    v25 = v5;
    if ((v4 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  sub_18E69F7B4((v0 + 6), &v21);
  __swift_project_boxed_opaque_existential_1(&v21, v23);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(&v21);
  if (swift_isClassType() && DynamicType)
  {
    v21 = 15392;
    v22 = 0xE200000000000000;
    __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
    *&v16 = 30768;
    *(&v16 + 1) = 0xE200000000000000;
    v19 = sub_18E72B7B8();
    sub_18E6A9FC4();
    v7 = sub_18E72B098();
    MEMORY[0x193AD15C0](v7);
    swift_unknownObjectRelease();

    MEMORY[0x193AD15C0](30768, 0xE200000000000000);

    MEMORY[0x193AD15C0](v21, v22);

    if ((v4 & 2) != 0)
    {
LABEL_20:
      MEMORY[0x193AD15C0](62, 0xE100000000000000);
      goto LABEL_21;
    }

    v8 = 1;
LABEL_13:
    sub_18E69F7B4((v1 + 6), &v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5C0, &qword_18E72E020);
    if (swift_dynamicCast())
    {
      sub_18E689D58(&v16, &v21);
      v19 = 0;
      v20 = 0xE000000000000000;
      if (v8)
      {
        MEMORY[0x193AD15C0](32, 0xE100000000000000);
        __swift_project_boxed_opaque_existential_1(&v21, v23);
        *(&v17 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(&v16);
        sub_18E72B5D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
        sub_18E72B6C8();
        __swift_destroy_boxed_opaque_existential_0(&v16);
      }

      else
      {
        MEMORY[0x193AD15C0](15392, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_1(&v21, v23);
        *(&v17 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(&v16);
        sub_18E72B5D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
        sub_18E72B6C8();
        __swift_destroy_boxed_opaque_existential_0(&v16);
        MEMORY[0x193AD15C0](62, 0xE100000000000000);
      }

      MEMORY[0x193AD15C0](v19, v20);

      __swift_destroy_boxed_opaque_existential_0(&v21);
      if (!v8)
      {
        goto LABEL_21;
      }
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v16 = 0u;
      v17 = 0u;
      sub_18E68B548(&v16, &qword_1EAC8E5C8, &qword_18E72E028);
      if (!v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

LABEL_11:
  if ((v4 & 2) == 0)
  {
    v8 = 0;
    goto LABEL_13;
  }

LABEL_21:
  v9 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v9 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 32 * (v9 != 0);
  if (v9)
  {
    v11 = 0xE100000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v21 = v24;
  v22 = v25;

  MEMORY[0x193AD15C0](v10, v11);

  MEMORY[0x193AD15C0](123, 0xE100000000000000);

  v12 = *(v1[10] + 16);
  v13 = 32 * (v12 != 0);
  if (v12)
  {
    v14 = 0xE100000000000000;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x193AD15C0](v13, v14);

  v2 = v21;
LABEL_30:

  return v2;
}

void sub_18E6C9B94()
{
  if ((*v0 & 8) != 0)
  {
    v5 = *(v0 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
    sub_18E6A9E68();
    sub_18E72AF58();

    return;
  }

  if (!*(*(v0 + 80) + 16))
  {
    goto LABEL_6;
  }

  if (!__OFADD__(*(v0 + 40), 1))
  {
    sub_18E72B088();
    v1 = sub_18E72B088();
    MEMORY[0x193AD15C0](v1);

LABEL_6:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
    sub_18E6A9E68();
    v2 = sub_18E72AF58();
    v4 = v3;

    MEMORY[0x193AD15C0](v2, v4);

    return;
  }

  __break(1u);
}

uint64_t sub_18E6C9D10()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
  }

  else
  {
    v3 = 0xE100000000000000;
    v2 = 125;
  }

  if (*(*(v0 + 80) + 16))
  {
    if ((*v0 & 8) != 0)
    {
      v7 = 32 * (v1 == 0);
    }

    else
    {
      v4 = *(v0 + 40);

      sub_18E72B088();
      v5 = sub_18E72B088();
      v7 = 10;
      MEMORY[0x193AD15C0](v5);
    }

    MEMORY[0x193AD15C0](v2, v3);

    return v7;
  }

  else
  {
  }

  return v2;
}

BOOL sub_18E6C9E1C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 1);
  if (v6 != 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return v6 == 1;
}

uint64_t sub_18E6C9F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = (*(v4 + 8))(v7, a1);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return (*(v9 + 32))(boxed_opaque_existential_0, v7, v8);
  }

  return result;
}

void *sub_18E6CA09C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18E69F7B4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD20, &qword_18E72CD38);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_18E68B548(&v9, &qword_1EAC8DD28, &unk_18E72CD40);
    return sub_18E69F7B4(a1, a2);
  }

  sub_18E689D58(&v9, v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if ((*(v5 + 8))(v4, v5))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    result = (*(v8 + 16))(&v9, v7, v8);
    if (!*(&v10 + 1))
    {
      __break(1u);
      return result;
    }

    sub_18E68A8E4(&v9, a2);
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_18E6CA1E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v8[2] = a3;
  v8[3] = a4;
  v5 = sub_18E72B278();
  WitnessTable = swift_getWitnessTable();
  return sub_18E6CA3BC(&v9, a1, sub_18E6CACAC, v8, v5, WitnessTable);
}

uint64_t sub_18E6CA26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18E72B438();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(a3 - 8);
  (*(v10 + 16))(&v12 - v8, a1, a3);
  (*(v10 + 56))(v9, 0, 1, a3);
  sub_18E6C9080(v9, 0, 0, a3);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18E6CA3BC(uint64_t a1, uint64_t *a2, void (*a3)(char *, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a3;
  v43 = a4;
  v9 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v38 - v12;
  v13 = sub_18E72B438();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v38 - v16;
  v44 = *(a5 - 8);
  v18 = *(v44 + 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v9;
  v45 = swift_getAssociatedTypeWitness();
  v38 = *(v45 - 8);
  v21 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v38 - v22;
  v24 = sub_18E72B308();
  v25 = *a2;
  if (v24 < 2)
  {
    v26 = 9;
    if ((~v25 & 9) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v25)
    {
      goto LABEL_6;
    }

    v26 = 1;
  }

  *a2 = v25 | v26;
LABEL_6:
  v27 = a2[2];

  *(a2 + 1) = xmmword_18E72CA40;
  v28 = a2[4];

  *(a2 + 3) = xmmword_18E72CA50;
  (*(v44 + 2))(v20, a1, a5);
  sub_18E72B0C8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = v23;
  v41 = AssociatedConformanceWitness;
  sub_18E72B448();
  v30 = v39;
  v31 = *(v39 + 48);
  v32 = v31(v17, 1, AssociatedTypeWitness);
  v33 = v40;
  if (v32 != 1)
  {
    v36 = *(v30 + 32);
    v34 = v30 + 32;
    v35 = v36;
    do
    {
      v35(v33, v17, AssociatedTypeWitness);
      v42(v33, a2);
      (*(v34 - 24))(v33, AssociatedTypeWitness);
      sub_18E72B448();
    }

    while (v31(v17, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v38 + 8))(v44, v45);
}

uint64_t sub_18E6CA7E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v6 = sub_18E72B2E8();
  WitnessTable = swift_getWitnessTable();
  return sub_18E6CA3BC(&v10, a1, sub_18E6CACC0, v9, v6, WitnessTable);
}

uint64_t sub_18E6CA8B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v7 = sub_18E72AED8();
  WitnessTable = swift_getWitnessTable();
  return sub_18E6CA3BC(&v11, a1, sub_18E6CACB4, v10, v7, WitnessTable);
}

uint64_t sub_18E6CA944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v20 - v10;
  v12 = sub_18E72B438();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v8 + 16))(v11, a1, TupleTypeMetadata2);
  v17 = *(TupleTypeMetadata2 + 48);
  v18 = *(a4 - 8);
  (*(v18 + 32))(v16, &v11[v17], a4);
  (*(v18 + 56))(v16, 0, 1, a4);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_18E72B798();
  sub_18E6C9080(v16, v20, v21, a4);

  (*(v13 + 8))(v16, v12);
  return (*(*(a3 - 8) + 8))(v11, a3);
}

void *sub_18E6CABE4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_18E6A4FF4(a1);
}

void *sub_18E6CAC20(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_18E6A551C(a1);
}

void *sub_18E6CAC64(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_18E6A5000(a1);
}

uint64_t sub_18E6CACB4(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_18E6CA944(a1, a2, v2[2], v2[3]);
}

uint64_t sub_18E6CACC0(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_18E6CA26C(a1, a2, v2[2]);
}

uint64_t destroy for NestedDescription(void *a1)
{
  v2 = a1[2];

  v3 = a1[4];

  __swift_destroy_boxed_opaque_existential_0(a1 + 6);
  v4 = a1[10];
}

uint64_t initializeWithCopy for NestedDescription(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  v7 = **(v6 - 8);

  v7(a1 + 48, a2 + 48, v6);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

void *assignWithCopy for NestedDescription(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a1[2];
  a1[2] = a2[2];

  a1[3] = a2[3];
  v5 = a1[4];
  a1[4] = a2[4];

  a1[5] = a2[5];
  __swift_assign_boxed_opaque_existential_0(a1 + 6, a2 + 6);
  v6 = a2[10];
  v7 = a1[10];
  a1[10] = v6;

  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
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

uint64_t assignWithTake for NestedDescription(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  *(a1 + 40) = *(a2 + 40);
  __swift_destroy_boxed_opaque_existential_0((a1 + 48));
  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  v8 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for NestedDescription(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NestedDescription(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

unint64_t sub_18E6CB1D0()
{
  result = qword_1EAC8E778;
  if (!qword_1EAC8E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E778);
  }

  return result;
}

unint64_t sub_18E6CB228()
{
  result = qword_1EAC8E780;
  if (!qword_1EAC8E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E780);
  }

  return result;
}

unint64_t sub_18E6CB280()
{
  result = qword_1EAC8E788;
  if (!qword_1EAC8E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E788);
  }

  return result;
}

unint64_t sub_18E6CB2D8()
{
  result = qword_1EAC8E790;
  if (!qword_1EAC8E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E790);
  }

  return result;
}

uint64_t PanComponent.pointCountTimeout.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PanComponent.pointCountTimeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PanComponent.init(hysteresis:minimumPointCount:maximumPointCount:maximumSeparationDistance:pointCountTimeout:failOnExceedingMaximumPointCount:invertScrollingDirection:preferNonAcceleratedScrollingDelta:ignoreStationaryPoints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  v39 = a12;
  v40 = a13;
  v41 = a14;
  v42 = a15;
  v19 = *(type metadata accessor for PanComponent() + 84);
  v20 = *(a14 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  v21 = type metadata accessor for ExpirationComponent();
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v24 = *(a14 + 16);
  v39 = v21;
  v40 = WitnessTable;
  v41 = v23;
  v42 = v24;
  type metadata accessor for SeparationDistanceGate();
  swift_getWitnessTable();
  v43 = *(v20 + 8);
  type metadata accessor for StationaryLocationFilter();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  swift_getWitnessTable();
  v44[0] = type metadata accessor for MapComponent();
  v44[1] = type metadata accessor for ScrollPositionListener();
  v38[0] = swift_getWitnessTable();
  v38[1] = &off_1EE4C9C68;
  v39 = 2;
  v40 = v44;
  v41 = v25;
  v42 = v38;
  type metadata accessor for CombinerComponent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  swift_getWitnessTable();
  type metadata accessor for ReduceComponent();
  swift_getWitnessTable();
  sub_18E6CB950(&qword_1EAC8E7B0);
  v26 = type metadata accessor for ThresholdComponent();
  v27 = swift_getWitnessTable();
  v28 = sub_18E6CB950(&qword_1EAC8E7B8);
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = &off_1F01A6538;
  type metadata accessor for VelocityComponent();
  swift_getWitnessTable();
  v29 = type metadata accessor for MapComponent();
  result = (*(*(v29 - 8) + 56))(a9 + v19, 1, 1, v29);
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 48) = a5;
  *(a9 + 49) = a6;
  *(a9 + 50) = a7;
  *(a9 + 51) = a8;
  return result;
}

uint64_t sub_18E6CB950(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PanComponent.upstream.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  v7 = type metadata accessor for ExpirationComponent();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v10 = *(v5 + 16);
  v102 = v7;
  v103 = WitnessTable;
  v104 = v9;
  v105 = v10;
  v11 = type metadata accessor for SeparationDistanceGate();
  v12 = swift_getWitnessTable();
  v13 = *(v6 + 8);
  v102 = v11;
  v103 = v12;
  v104 = v9;
  v105 = v10;
  v106 = v13;
  type metadata accessor for StationaryLocationFilter();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  swift_getWitnessTable();
  v15 = type metadata accessor for MapComponent();
  v89 = *(v15 - 8);
  v16 = *(v89 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v88 = &v66 - v18;
  v101[0] = v17;
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v101[1] = type metadata accessor for ScrollPositionListener();
  v90 = v15;
  v82 = swift_getWitnessTable();
  v100[0] = v82;
  v100[1] = &off_1EE4C9C68;
  v102 = 2;
  v103 = v101;
  v91 = v14;
  v104 = v14;
  v105 = v100;
  v21 = type metadata accessor for CombinerComponent();
  v86 = *(v21 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  v25 = swift_getWitnessTable();
  v87 = v21;
  v81 = v24;
  v79 = v25;
  v26 = type metadata accessor for ReduceComponent();
  v83 = *(v26 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v80 = &v66 - v28;
  v29 = swift_getWitnessTable();
  v30 = sub_18E6CB950(&qword_1EAC8E7B0);
  v84 = v26;
  v77 = v29;
  v75 = v30;
  v31 = type metadata accessor for ThresholdComponent();
  v78 = *(v31 - 8);
  v32 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v76 = &v66 - v33;
  v34 = swift_getWitnessTable();
  v35 = sub_18E6CB950(&qword_1EAC8E7B8);
  v69 = v31;
  v102 = v31;
  v103 = v34;
  v73 = v34;
  v72 = v35;
  v104 = v35;
  v105 = &off_1F01A6538;
  v36 = type metadata accessor for VelocityComponent();
  v74 = *(v36 - 8);
  v37 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v71 = &v66 - v38;
  v70 = swift_getWitnessTable();
  v39 = type metadata accessor for MapComponent();
  v40 = sub_18E72B438();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v66 - v44;
  v46 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v66 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v2;
  (*(v49 + 16))(v48, v2, a1);
  v51 = a1;
  v52 = v40;
  (*(v41 + 32))(v45, &v48[*(a1 + 84)], v40);
  v53 = *(v39 - 8);
  if ((*(v53 + 48))(v45, 1, v39) != 1)
  {
    return (*(v53 + 32))(v92, v45, v39);
  }

  v68 = *(v41 + 8);
  v67 = v52;
  v68(v45, v52);
  v54 = v88;
  v66 = v51;
  v55 = v50;
  sub_18E6CC4C8(v51, v88);
  v99[0] = v54;
  sub_18E6CCAF4(v51, v98);
  v99[1] = v98;
  v102 = 0;
  v103 = 0;
  v104 = sub_18E6CCB98;
  v105 = 0;
  v106 = sub_18E702EC0;
  v107 = 0;
  v97[0] = v82;
  v97[1] = &off_1EE4C9C68;
  v56 = v85;
  sub_18E6E7084(v99, 1, &v102, 2uLL, v101, v91, v97, v85);
  (*(v89 + 8))(v54, v90);
  v94 = MEMORY[0x1E69E7CD0];
  v95 = 0u;
  v96 = 0u;
  v57 = v80;
  v58 = v87;
  sub_18E6B89C8(&v94, sub_18E6CCCD0, 0, v87, v81, v80);
  (*(v86 + 8))(v56, v58);
  v93 = *v50;
  v59 = v76;
  v60 = v84;
  sub_18E713918(&v93, v84, v77, v75, v76);
  (*(v83 + 8))(v57, v60);
  v61 = v71;
  v62 = v69;
  sub_18E705CA0(v69, v73, v72, &off_1F01A6538, v71, 0.75);
  (*(v78 + 8))(v59, v62);
  v63 = v92;
  sub_18E7131EC(sub_18E6CCEC8, 0, v36, &type metadata for PanComponentValue, v70, v92);
  (*(v74 + 8))(v61, v36);
  v64 = *(v66 + 21);
  v68(&v55[v64], v67);
  (*(v53 + 16))(&v55[v64], v63, v39);
  return (*(v53 + 56))(&v55[v64], 0, 1, v39);
}

uint64_t sub_18E6CC4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v65 = "Failure requirement";
  v66 = a1 + 3;
  v67 = a1 + 5;
  v4 = a1[2];
  v5 = *(a1[4] + 8);
  v61 = a1[4];
  v6 = v61;
  v7 = type metadata accessor for EventSource();
  WitnessTable = swift_getWitnessTable();
  v62 = type metadata accessor for DynamicCombinerComponent();
  v64 = *(v62 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = (&v47 - v10);
  v63 = swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  v51 = v4;
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  v11 = type metadata accessor for ExpirationComponent();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v47 - v13;
  v14 = swift_getWitnessTable();
  v54 = v14;
  v15 = swift_getWitnessTable();
  v16 = *(v6 + 16);
  v71 = v11;
  v72 = v14;
  v73 = v15;
  v74 = v16;
  v17 = v15;
  v50 = v15;
  v18 = v16;
  v49 = v16;
  v19 = type metadata accessor for SeparationDistanceGate();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - v21;
  v52 = swift_getWitnessTable();
  v53 = *(v5 + 8);
  v71 = v19;
  v72 = v52;
  v73 = v17;
  v74 = v18;
  v75 = v53;
  v23 = type metadata accessor for StationaryLocationFilter();
  v24 = *(v23 - 8);
  v57 = v23;
  v58 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v48 = &v47 - v26;
  sub_18E6BCAE4(&v71);
  v69 = v71;
  v70 = v72;
  v27 = v3;
  v28 = *(v3 + 32);
  v29 = *(v27 + 40);
  LODWORD(v4) = *(v27 + 48);
  swift_getAssociatedTypeWitness();
  v30 = sub_18E701540();
  v46 = WitnessTable;
  v31 = v60;
  sub_18E6D7C3C(&v69, v28, v29, 0, 1, v4, v30, v32, v60, v7, v46);

  v33 = v55;
  v34 = v62;
  sub_18E721B58(*(v27 + 16), *(v27 + 24), 0xD000000000000013, v65 | 0x8000000000000000, v62, v63, v55);
  (*(v64 + 8))(v31, v34);
  v35 = v50;
  v36 = v49;
  sub_18E71D170(v11, v54, v50, v49, v22, *(v27 + 8));
  (*(v59 + 8))(v33, v11);
  if (*(v27 + 51))
  {
    v37 = 1;
  }

  else
  {
    v37 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v38 = v48;
  sub_18E6D9B28(v37, 0x7FFFFFFFFFFFFFFFLL, v19, v52, v35, v36, v53, v48);
  (*(v56 + 8))(v22, v19);
  v39 = swift_allocObject();
  *&v40 = v51;
  *(&v40 + 1) = *v66;
  *&v41 = v61;
  *(&v41 + 1) = *v67;
  *(v39 + 16) = v40;
  *(v39 + 32) = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v43 = v57;
  v44 = swift_getWitnessTable();
  sub_18E7131EC(sub_18E6D4D34, v39, v43, v42, v44, v68);

  return (*(v58 + 8))(v38, v43);
}

uint64_t sub_18E6CCAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 49))
  {
    v4 = *(v2 + 50) | 2;
  }

  else
  {
    v4 = *(v2 + 50);
  }

  v5 = *(a1 + 24);
  sub_18E6FC158(&v12, *(a1 + 40));
  v10 = v12;
  v11 = v13;
  v6 = sub_18E6FC164();
  return sub_18E6FC174(&v10, v6, v8, v7 & 1, v4, a2);
}

uint64_t sub_18E6CCB98@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = **a1;
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E900, &qword_18E72EA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;

  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  if (v8 != 1)
  {
    v11 = sub_18E6EE18C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_18E6EE18C((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[24 * v13];
    *(v14 + 4) = v5;
    *(v14 + 5) = v6;
    *(v14 + 6) = v7;
  }

  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = v10;
  }

  v17 = v15;
  result = sub_18E70144C(v11);
  *a2 = v17;
  return result;
}

double sub_18E6CCCD0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 32);
  v5 = *a2;

  sub_18E6D4CCC(v10, v8, &qword_1EAC8E7A8, &qword_18E72E768);
  sub_18E6CCD64(v5, v10, v8);
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v9;
  return result;
}

uint64_t sub_18E6CCD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_18E6853AC(0, v6, 0);
    v7 = v21;
    v8 = (a1 + 32);
    v9 = *(v21 + 16);
    do
    {
      v11 = *v8;
      v8 += 3;
      v10 = v11;
      v12 = *(v21 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_18E6853AC((v12 > 1), v9 + 1, 1);
      }

      *(v21 + 16) = v9 + 1;
      *(v21 + 8 * v9++ + 32) = v10;
      --v6;
    }

    while (v6);
  }

  v13 = sub_18E6BFA68(v7);

  v14 = sub_18E6DC574(a1);
  v16 = v15;

  v18 = *(a2 + 24);
  v17 = *(a2 + 32);
  v19 = sub_18E6AB458(v13, *a2);
  result = sub_18E68B548(a2, &qword_1EAC8E7A8, &qword_18E72E768);
  if (v19)
  {
    v18 = v18 + v14 - *(a2 + 8);
    v17 = v17 + v16 - *(a2 + 16);
  }

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  *(a3 + 24) = v18;
  *(a3 + 32) = v17;
  return result;
}

__n128 sub_18E6CCEC8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v2;
  result = *(a1 + 40);
  *(a2 + 32) = result;
  return result;
}

uint64_t PanComponent.upstream.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 84);
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
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
  v9 = type metadata accessor for ExpirationComponent();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = *(v7 + 16);
  v27 = v9;
  v28 = WitnessTable;
  v29 = v11;
  v30 = v12;
  v13 = type metadata accessor for SeparationDistanceGate();
  v14 = swift_getWitnessTable();
  v15 = *(v8 + 8);
  v27 = v13;
  v28 = v14;
  v29 = v11;
  v30 = v12;
  v31 = v15;
  type metadata accessor for StationaryLocationFilter();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  swift_getWitnessTable();
  v32[0] = type metadata accessor for MapComponent();
  v17 = *(a2 + 24);
  v18 = *(a2 + 40);
  v32[1] = type metadata accessor for ScrollPositionListener();
  v26[0] = swift_getWitnessTable();
  v26[1] = &off_1EE4C9C68;
  v27 = 2;
  v28 = v32;
  v29 = v16;
  v30 = v26;
  type metadata accessor for CombinerComponent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  swift_getWitnessTable();
  type metadata accessor for ReduceComponent();
  swift_getWitnessTable();
  sub_18E6CB950(&qword_1EAC8E7B0);
  v19 = type metadata accessor for ThresholdComponent();
  v20 = swift_getWitnessTable();
  v21 = sub_18E6CB950(&qword_1EAC8E7B8);
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = &off_1F01A6538;
  type metadata accessor for VelocityComponent();
  swift_getWitnessTable();
  v22 = type metadata accessor for MapComponent();
  v23 = sub_18E72B438();
  (*(*(v23 - 8) + 8))(v2 + v5, v23);
  v24 = *(v22 - 8);
  (*(v24 + 32))(v2 + v5, a1, v22);
  return (*(v24 + 56))(v2 + v5, 0, 1, v22);
}

void (*PanComponent.upstream.modify(uint64_t *a1, void *a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0xD8uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 168) = a2;
  *(v6 + 176) = v2;
  v8 = a2[2];
  v9 = a2[4];
  v10 = *(v9 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  v11 = type metadata accessor for ExpirationComponent();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = *(v9 + 16);
  v7[5] = v11;
  v7[6] = WitnessTable;
  v7[7] = v13;
  v7[8] = v14;
  v15 = type metadata accessor for SeparationDistanceGate();
  v16 = swift_getWitnessTable();
  v17 = *(v10 + 8);
  *v7 = v15;
  v7[1] = v16;
  v7[2] = v13;
  v7[3] = v14;
  v7[4] = v17;
  type metadata accessor for StationaryLocationFilter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  swift_getWitnessTable();
  v7[17] = type metadata accessor for MapComponent();
  v19 = a2[3];
  v20 = a2[5];
  v7[18] = type metadata accessor for ScrollPositionListener();
  v7[19] = swift_getWitnessTable();
  v7[20] = &off_1EE4C9C68;
  v7[9] = 2;
  v7[10] = v7 + 17;
  v7[11] = v18;
  v7[12] = v7 + 19;
  type metadata accessor for CombinerComponent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  swift_getWitnessTable();
  type metadata accessor for ReduceComponent();
  swift_getWitnessTable();
  sub_18E6CB950(&qword_1EAC8E7B0);
  v21 = type metadata accessor for ThresholdComponent();
  v22 = swift_getWitnessTable();
  v23 = sub_18E6CB950(&qword_1EAC8E7B8);
  v7[13] = v21;
  v7[14] = v22;
  v7[15] = v23;
  v7[16] = &off_1F01A6538;
  type metadata accessor for VelocityComponent();
  swift_getWitnessTable();
  v24 = type metadata accessor for MapComponent();
  v7[23] = v24;
  v25 = *(v24 - 8);
  v7[24] = v25;
  v26 = *(v25 + 64);
  if (v5)
  {
    v7[25] = swift_coroFrameAlloc();
    v27 = swift_coroFrameAlloc();
  }

  else
  {
    v7[25] = malloc(*(v25 + 64));
    v27 = malloc(v26);
  }

  v7[26] = v27;
  PanComponent.upstream.getter(a2, v27);
  return sub_18E6CD7E4;
}

void sub_18E6CD7E4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[25];
  v4 = (*a1)[26];
  if (a2)
  {
    v5 = v2[23];
    v6 = v2[24];
    v8 = v2[21];
    v7 = v2[22];
    (*(v6 + 16))((*a1)[25], v4, v5);
    PanComponent.upstream.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[22];
    PanComponent.upstream.setter((*a1)[26], v2[21]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*sub_18E6CD8A4())(uint64_t a1)
{
  swift_getAssociatedTypeWitness();

  return sub_18E701540();
}

uint64_t sub_18E6CD8E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12[5] = a5;
  v12[7] = *a1;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v7 = sub_18E72B278();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E908, &qword_18E72EA20);
  WitnessTable = swift_getWitnessTable();
  result = sub_18E6D9708(sub_18E6D4D54, v12, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
  *a6 = result;
  return result;
}

Gestures::GestureTraitCollection_optional __swiftcall PanComponent.traits()()
{
  v1 = v0;
  if (qword_1EAC8D938 != -1)
  {
    swift_once();
  }

  v2 = qword_1EAC8E798;
  v3 = sub_18E6CE470(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  result.value = GestureTraitCollection.init(traits:)(inited);
  *v1 = v6;
  return result;
}

unint64_t static GestureTrait.pan()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EAC8D938 != -1)
  {
    swift_once();
  }

  v2 = qword_1EAC8E798;
  result = sub_18E6CE470(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

void (*sub_18E6CDAD8(uint64_t *a1, void *a2))(uint64_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xF8uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = a2[2];
  v8 = a2[4];
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
  v10 = type metadata accessor for ExpirationComponent();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = *(v8 + 16);
  v6[5] = v10;
  v6[6] = WitnessTable;
  v6[7] = v12;
  v6[8] = v13;
  v14 = type metadata accessor for SeparationDistanceGate();
  v15 = swift_getWitnessTable();
  v16 = *(v9 + 8);
  *v6 = v14;
  v6[1] = v15;
  v6[2] = v12;
  v6[3] = v13;
  v6[4] = v16;
  type metadata accessor for StationaryLocationFilter();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  swift_getWitnessTable();
  v6[21] = type metadata accessor for MapComponent();
  v18 = a2[3];
  v19 = a2[5];
  v6[22] = type metadata accessor for ScrollPositionListener();
  v6[23] = swift_getWitnessTable();
  v6[24] = &off_1EE4C9C68;
  v6[9] = 2;
  v6[10] = v6 + 21;
  v6[11] = v17;
  v6[12] = v6 + 23;
  type metadata accessor for CombinerComponent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  swift_getWitnessTable();
  type metadata accessor for ReduceComponent();
  swift_getWitnessTable();
  sub_18E6CB950(&qword_1EAC8E7B0);
  v20 = type metadata accessor for ThresholdComponent();
  v21 = swift_getWitnessTable();
  v22 = sub_18E6CB950(&qword_1EAC8E7B8);
  v6[13] = v20;
  v6[14] = v21;
  v6[15] = v22;
  v6[16] = &off_1F01A6538;
  type metadata accessor for VelocityComponent();
  swift_getWitnessTable();
  v23 = type metadata accessor for MapComponent();
  v6[25] = v23;
  v24 = *(v23 - 8);
  if (v4)
  {
    v25 = swift_coroFrameAlloc();
  }

  else
  {
    v25 = malloc(*(*(v23 - 8) + 64));
  }

  v26 = v25;
  v6[26] = v25;
  v6[27] = PanComponent.upstream.modify(v6 + 17, a2);
  v6[28] = v27;
  v28 = *(v24 + 32);
  v6[29] = v28;
  v6[30] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v28(v26);
  return sub_18E6CDF80;
}

void sub_18E6CDF80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 136;
  v5 = *(*a1 + 240);
  (*(*a1 + 232))(*(*a1 + 224), *(v3 + 208), *(v3 + 200));
  v6 = *(v3 + 208);
  (*(v3 + 216))(v4, a2);
  free(v6);

  free(v3);
}

double PanComponentValue.location.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

double PanComponentValue.translation.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

double PanComponentValue.velocity.getter()
{
  __asm
  {
    FMOV            V2.2D, #0.25
    FMOV            V1.2D, #4.0
  }

  *&result = *&vmulq_f64(vsubq_f64(vaddq_f64(*v0, vmulq_f64(v0[2], _Q2)), *v0), _Q1);
  return result;
}

double PanComponentValue.predictedEndLocation.getter()
{
  __asm { FMOV            V2.2D, #0.25 }

  *&result = *&vaddq_f64(*v0, vmulq_f64(v0[2], _Q2));
  return result;
}

double PanComponentValue.predictedEndTranslation.getter()
{
  __asm { FMOV            V2.2D, #0.25 }

  *&result = *&vaddq_f64(v0[1], vmulq_f64(v0[2], _Q2));
  return result;
}

uint64_t sub_18E6CE0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  return sub_18E72A9B8(a1, a2, a3, a4, a5, a6);
}

Gestures::GestureTraitID sub_18E6CE104()
{
  v0._countAndFlagsBits = 7233904;
  v0._object = 0xE300000000000000;
  return GestureTraitID.init(_:)(v0);
}

uint64_t static GestureTraitID.pan.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EAC8D938 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EAC8E798;
  return result;
}

uint64_t sub_18E6CE18C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6CE1E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

double sub_18E6CE234()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

void sub_18E6CE244(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  *a1 = sub_18E6CE234();
  *(a1 + 8) = v3;
}

void (*sub_18E6CE288(uint64_t *a1, uint64_t a2))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 56) = v2;
  *(v5 + 64) = a2;
  v7 = *v2;
  v8 = v2[1];
  *(v5 + 32) = *(v2 + 4);
  *v5 = v7;
  *(v5 + 16) = v8;
  *(v5 + 40) = sub_18E6CE234();
  *(v6 + 48) = v9;
  return sub_18E6CE31C;
}

void sub_18E6CE31C(double **a1)
{
  v1 = *a1;
  v3 = *(*a1 + 7);
  v2 = *(*a1 + 8);
  sub_18E6CE23C(v1[5], v1[6]);

  free(v1);
}

void *sub_18E6CE35C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E920, &qword_18E730EE0);
  v3 = sub_18E72B738();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_18E6EB450(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_18E6EB450(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E6CE470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F8, &qword_18E72EA10);
    v3 = sub_18E72B738();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *i;
      v14 = *(i - 1);
      v15 = v5;
      result = sub_18E6EBF18(&v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = *(&v14 + 1);
      *(v3[6] + 8 * result) = v14;
      v9 = v3[7] + 16 * result;
      v10 = v15;
      *v9 = v8;
      *(v9 + 8) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_18E6CE568(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_18E6CE5AC(uint64_t a1)
{
  *(a1 + 8) = sub_18E6CE5DC();
  result = sub_18E6CE630();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6CE5DC()
{
  result = qword_1EAC8E7C0;
  if (!qword_1EAC8E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E7C0);
  }

  return result;
}

unint64_t sub_18E6CE630()
{
  result = qword_1EAC8E7C8;
  if (!qword_1EAC8E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E7C8);
  }

  return result;
}

uint64_t sub_18E6CE68C(void *a1)
{
  v26[2] = MEMORY[0x1E69E5D08] + 64;
  v26[3] = MEMORY[0x1E69E5D08] + 64;
  v26[4] = &unk_18E72E868;
  v26[5] = MEMORY[0x1E69E5D08] + 64;
  v26[6] = MEMORY[0x1E69E5D08] + 64;
  v26[7] = &unk_18E72E880;
  v26[8] = &unk_18E72E880;
  v26[9] = &unk_18E72E880;
  v26[10] = &unk_18E72E880;
  v2 = a1[2];
  v3 = a1[4];
  v4 = *(v3 + 8);
  type metadata accessor for EventSource();
  swift_getWitnessTable();
  type metadata accessor for DynamicCombinerComponent();
  swift_getWitnessTable();
  type metadata accessor for TimeoutComponent();
  swift_getWitnessTable();
  sub_18E72B278();
  type metadata accessor for ExpirationRecord();
  swift_getWitnessTable();
  v5 = type metadata accessor for ExpirationComponent();
  WitnessTable = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  v8 = *(v3 + 16);
  v21 = v5;
  v22 = WitnessTable;
  v23 = v7;
  v24 = v8;
  v9 = type metadata accessor for SeparationDistanceGate();
  v10 = swift_getWitnessTable();
  v11 = *(v4 + 8);
  v21 = v9;
  v22 = v10;
  v23 = v7;
  v24 = v8;
  v25 = v11;
  type metadata accessor for StationaryLocationFilter();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  swift_getWitnessTable();
  v26[0] = type metadata accessor for MapComponent();
  v13 = a1[3];
  v14 = a1[5];
  v26[1] = type metadata accessor for ScrollPositionListener();
  v20[0] = swift_getWitnessTable();
  v20[1] = &off_1EE4C9C68;
  v21 = 2;
  v22 = v26;
  v23 = v12;
  v24 = v20;
  type metadata accessor for CombinerComponent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  swift_getWitnessTable();
  type metadata accessor for ReduceComponent();
  swift_getWitnessTable();
  sub_18E6CB950(&qword_1EAC8E7B0);
  v15 = type metadata accessor for ThresholdComponent();
  v16 = swift_getWitnessTable();
  v17 = sub_18E6CB950(&qword_1EAC8E7B8);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = &off_1F01A6538;
  type metadata accessor for VelocityComponent();
  swift_getWitnessTable();
  type metadata accessor for MapComponent();
  result = sub_18E72B438();
  if (v19 <= 0x3F)
  {
    v26[11] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6CEACC(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  v13 = (v12 + 63) & 0xFFFFFFFFFFFFFFF8;
  v14 = (((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 49) & 0xFFFFFFFFFFFFFFF8;
  v18 = (((((v17 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 87) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 95) & 0xFFFFFFFFFFFFFFF8;
  if (((-53 - v6) | v6) - (((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) < 0xFFFFFFFFFFFFFFE7)
  {
LABEL_19:
    v37 = *a2;
    *a1 = *a2;
    a1 = (v37 + ((v6 + 16) & ~v6));

    return a1;
  }

  *a1 = *a2;
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  *(v27 + 9) = *(v28 + 9);
  *(v27 + 10) = *(v28 + 10);
  *(v27 + 11) = *(v28 + 11);
  v171 = v27 + 19;
  v29 = (v27 + 19) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v28 + 19) & 0xFFFFFFFFFFFFFFF8);
  v31 = v9 | 1;
  v172 = v28 + 19;
  v32 = ((((v28 + 19) | 7) + (v9 | 1)) & 0xFFFFFFFFFFFFFFF8);
  if (*v32 < 0xFFFFFFFFuLL)
  {
    memcpy(((v27 + 19) & 0xFFFFFFFFFFFFFFF8), v30, ((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    return a1;
  }

  v33 = v30[v9];
  v34 = v33 - 3;
  if (v33 >= 3)
  {
    if (v9 <= 3)
    {
      v35 = v9;
    }

    else
    {
      v35 = 4;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v36 = *v30;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v35 == 3)
        {
          v36 = *v30 | (v30[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v33 = v36 + 3;
          goto LABEL_28;
        }

        v36 = *v30;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v33 = (v36 | (v34 << (8 * v9))) + 3;
      goto LABEL_28;
    }

    if (!v35)
    {
      goto LABEL_28;
    }

    v36 = *v30;
    if (v9 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_28:
  v169 = (v27 + 19) & 0xFFFFFFFFFFFFFFF8;
  v170 = (v28 + 19) & 0xFFFFFFFFFFFFFFF8;
  v167 = (v19 + 95) & 0xFFFFFFFFFFFFFFF8;
  v168 = a1;
  v165 = (((((v17 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v166 = (v18 + 87) & 0xFFFFFFFFFFFFFFF8;
  v162 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v164 = (v16 + 49) & 0xFFFFFFFFFFFFFFF8;
  v159 = (((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v160 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v33 != 2)
  {
    v38 = v8 | 1;
    if (v33 == 1)
    {
      v39 = *v30;
      *(v29 + 8) = v30[8];
      *v29 = v39;
      v40 = v27 + 35;
      v41 = ((v27 + 35) & 0xFFFFFFFFFFFFFFF8);
      v42 = v28 + 35;
      v43 = ((v28 + 35) & 0xFFFFFFFFFFFFFFF8);
      v44 = *(v43 + v8);
      if (v44 > 2)
      {
        v56 = v41;
        v57 = v43;
        memcpy(v41, v43, v8 | 1);
        v43 = v57;
        v41 = v56;
        v38 = v8 | 1;
        v31 = v9 | 1;
        v30 = v170;
        v47 = v171;
        v29 = v169;
      }

      else
      {
        if (v44 == 2)
        {
          v153 = v43;
          v155 = v41;
          (*(v4 + 16))(v41, v43);
          v60 = ((v40 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
          v61 = ((v42 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v61 < 0xFFFFFFFFuLL)
          {
            v70 = *(v61 + 16);
            *v60 = *v61;
            *(v60 + 16) = v70;
          }

          else
          {
            *v60 = *v61;
            *(v60 + 8) = *(v61 + 8);
            *(v60 + 16) = *(v61 + 16);
            *(v60 + 24) = *(v61 + 24);
          }

          v30 = v170;
          v47 = v171;
          v29 = v169;
          v38 = v8 | 1;
          v31 = v9 | 1;
          v69 = 2;
        }

        else
        {
          if (v44 != 1)
          {
            *v41 = *v43;
            v62 = v43[1];
            v47 = v171;
            v29 = v169;
            if (v62)
            {
              v41[1] = v62;
              v157 = v41;
              v41[2] = v43[2];
              v41[3] = v43[3];
              v41[4] = v43[4];
              v63 = v43;

              v43 = v63;
              v41 = v157;
              v38 = v8 | 1;
              v31 = v9 | 1;
              v30 = v170;
            }

            else
            {
              v74 = *(v43 + 3);
              *(v41 + 1) = *(v43 + 1);
              *(v41 + 3) = v74;
            }

            *(v41 + v8) = 0;
            goto LABEL_63;
          }

          v153 = v43;
          v155 = v41;
          (*(v4 + 16))(v41, v43);
          v45 = ((v40 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
          v46 = ((v42 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v46 < 0xFFFFFFFFuLL)
          {
            v68 = *(v46 + 16);
            *v45 = *v46;
            *(v45 + 16) = v68;
          }

          else
          {
            *v45 = *v46;
            *(v45 + 8) = *(v46 + 8);
            *(v45 + 16) = *(v46 + 16);
            *(v45 + 24) = *(v46 + 24);
          }

          v30 = v170;
          v47 = v171;
          v29 = v169;
          v38 = v8 | 1;
          v31 = v9 | 1;
          v69 = 1;
        }

        v43 = v153;
        v41 = v155;
        *(v155 + v8) = v69;
      }

LABEL_63:
      *(v41 + v38) = *(v43 + v38);
      *(v29 + v9) = 1;
      goto LABEL_67;
    }

    v48 = *v30;
    *(v29 + 8) = v30[8];
    *v29 = v48;
    v49 = v27 + 35;
    v50 = ((v27 + 35) & 0xFFFFFFFFFFFFFFF8);
    v51 = v28 + 35;
    v52 = ((v28 + 35) & 0xFFFFFFFFFFFFFFF8);
    v53 = *(v52 + v8);
    if (v53 > 2)
    {
      v58 = v50;
      v59 = v52;
      memcpy(v50, v52, v8 | 1);
      v52 = v59;
      v50 = v58;
      v38 = v8 | 1;
      v31 = v9 | 1;
      v30 = v170;
      v47 = v171;
      v29 = v169;
    }

    else
    {
      if (v53 == 2)
      {
        v154 = v52;
        v156 = v50;
        (*(v4 + 16))(v50, v52);
        v64 = ((v49 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
        v65 = ((v51 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
        if (*v65 < 0xFFFFFFFFuLL)
        {
          v73 = *(v65 + 16);
          *v64 = *v65;
          *(v64 + 16) = v73;
        }

        else
        {
          *v64 = *v65;
          *(v64 + 8) = *(v65 + 8);
          *(v64 + 16) = *(v65 + 16);
          *(v64 + 24) = *(v65 + 24);
        }

        v30 = v170;
        v47 = v171;
        v29 = v169;
        v38 = v8 | 1;
        v31 = v9 | 1;
        v72 = 2;
      }

      else
      {
        if (v53 != 1)
        {
          *v50 = *v52;
          v66 = v52[1];
          v47 = v171;
          v29 = v169;
          if (v66)
          {
            v50[1] = v66;
            v158 = v50;
            v50[2] = v52[2];
            v50[3] = v52[3];
            v50[4] = v52[4];
            v67 = v52;

            v52 = v67;
            v50 = v158;
            v38 = v8 | 1;
            v31 = v9 | 1;
            v30 = v170;
          }

          else
          {
            v75 = *(v52 + 3);
            *(v50 + 1) = *(v52 + 1);
            *(v50 + 3) = v75;
          }

          *(v50 + v8) = 0;
          goto LABEL_66;
        }

        v154 = v52;
        v156 = v50;
        (*(v4 + 16))(v50, v52);
        v54 = ((v49 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
        v55 = ((v51 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
        if (*v55 < 0xFFFFFFFFuLL)
        {
          v71 = *(v55 + 16);
          *v54 = *v55;
          *(v54 + 16) = v71;
        }

        else
        {
          *v54 = *v55;
          *(v54 + 8) = *(v55 + 8);
          *(v54 + 16) = *(v55 + 16);
          *(v54 + 24) = *(v55 + 24);
        }

        v30 = v170;
        v47 = v171;
        v29 = v169;
        v38 = v8 | 1;
        v31 = v9 | 1;
        v72 = 1;
      }

      v52 = v154;
      v50 = v156;
      *(v156 + v8) = v72;
    }

LABEL_66:
    *(v50 + v38) = *(v52 + v38);
    *(v29 + v9) = 0;
    goto LABEL_67;
  }

  *v29 = *v30;
  *(v29 + v9) = 2;

  v31 = v9 | 1;
  v30 = v170;
  v47 = v171;
LABEL_67:
  v76 = (((v47 | 7) + v31) & 0xFFFFFFFFFFFFFFF8);
  v77 = v32[1];
  *v76 = *v32;
  v76[1] = v77;
  v78 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
  v79 = ((v76 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v79 = *v78;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v80 = *v81;
  *(v80 + 8) = *(v81 + 8);
  *(v80 + 9) = *(v81 + 9);
  v82 = v10 + 10 + v29;
  v83 = &v30[v10 + 10];
  *v82 = *v83;
  v82 &= 0xFFFFFFFFFFFFFFF8;
  v83 &= 0xFFFFFFFFFFFFFFF8;
  *(v82 + 8) = *(v83 + 8);
  v84 = ((v82 + 31) & 0xFFFFFFFFFFFFFFF8);
  v85 = ((v83 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v84 = *v85;
  v84[1] = v85[1];
  v86 = ((v84 + 23) & 0xFFFFFFFFFFFFFFF8);
  v87 = ((v85 + 23) & 0xFFFFFFFFFFFFFFF8);
  v88 = v87[1];
  *v86 = *v87;
  v86[1] = v88;
  v89 = (v11 + 16 + v47) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v11 + 16 + v172) & 0xFFFFFFFFFFFFFFF8;
  v91 = *(v90 + 48);

  if (v91 == 1)
  {
    v92 = *v90;
    v93 = *(v90 + 16);
    v94 = *(v90 + 32);
    *(v89 + 48) = *(v90 + 48);
    *(v89 + 16) = v93;
    *(v89 + 32) = v94;
    *v89 = v92;
  }

  else
  {
    *v89 = *v90;
    *(v89 + 8) = *(v90 + 8);
    *(v89 + 24) = *(v90 + 24);
    *(v89 + 40) = *(v90 + 40);
    *(v89 + 48) = *(v90 + 48);
  }

  *((v12 + 56 + v47) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 56 + v172) & 0xFFFFFFFFFFFFFFF8);
  v95 = ((v13 + 8 + v47) & 0xFFFFFFFFFFFFFFF8);
  v96 = ((v13 + 8 + v172) & 0xFFFFFFFFFFFFFFF8);
  *v95 = *v96;
  v97 = ((v95 + 15) & 0xFFFFFFFFFFFFFFF8);
  v98 = ((v96 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v97 = *v98;
  *((v97 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v98 + 15) & 0xFFFFFFFFFFFFFFF8);
  v99 = ((v159 + 8 + v47) & 0xFFFFFFFFFFFFFFF8);
  v100 = ((v159 + 8 + v172) & 0xFFFFFFFFFFFFFFF8);
  v101 = v100[1];
  *v99 = *v100;
  v99[1] = v101;
  v102 = (v160 + 16 + v47) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v160 + 16 + v172) & 0xFFFFFFFFFFFFFFF8;
  v104 = *(v103 + 40);

  if (v104 == 255)
  {
    v110 = *v103;
    v111 = *(v103 + 16);
    *(v102 + 25) = *(v103 + 25);
    *v102 = v110;
    *(v102 + 16) = v111;
  }

  else
  {
    v105 = *v103;
    v106 = *(v103 + 8);
    v107 = *(v103 + 16);
    v108 = *(v103 + 24);
    v109 = *(v103 + 32);
    sub_18E6CF73C(*v103, v106, v107, v108, v109, v104);
    *v102 = v105;
    *(v102 + 8) = v106;
    *(v102 + 16) = v107;
    *(v102 + 24) = v108;
    *(v102 + 32) = v109;
    *(v102 + 40) = v104;
  }

  *(v102 + 41) = *(v103 + 41);
  v112 = v47 | 6;
  v113 = ((v47 | 6) + v162 + 42) & 0xFFFFFFFFFFFFFFF8;
  v114 = ((v172 | 6) + v162 + 42) & 0xFFFFFFFFFFFFFFF8;
  v115 = *v114;
  v116 = *(v114 + 32);
  *(v113 + 16) = *(v114 + 16);
  *(v113 + 32) = v116;
  *v113 = v115;
  v117 = *(v114 + 104);
  if (v117 == 255)
  {
    v123 = *(v114 + 48);
    v124 = *(v114 + 64);
    v125 = *(v114 + 80);
    *(v113 + 89) = *(v114 + 89);
    *(v113 + 64) = v124;
    *(v113 + 80) = v125;
    *(v113 + 48) = v123;
  }

  else
  {
    v118 = *(v114 + 56);
    v119 = *(v114 + 64);
    v120 = *(v114 + 72);
    v121 = *(v114 + 80);
    v122 = *(v114 + 88);
    v161 = *(v114 + 96);
    v163 = *(v114 + 48);
    sub_18E6CFC68(v163, v118, v119, v120, v121, v122, v161, v117, sub_18E6A9F20);
    *(v113 + 48) = v163;
    *(v113 + 56) = v118;
    *(v113 + 64) = v119;
    *(v113 + 72) = v120;
    *(v113 + 80) = v121;
    *(v113 + 88) = v122;
    *(v113 + 96) = v161;
    *(v113 + 104) = v117;
  }

  *(v113 + 105) = *(v114 + 105);
  v126 = (v112 + v164 + 106) & 0xFFFFFFFFFFFFFFF8;
  v127 = ((v172 | 6) + v164 + 106) & 0xFFFFFFFFFFFFFFF8;
  if (*v127)
  {
    v128 = *(v127 + 8);
    *v126 = *v127;
    *(v126 + 8) = v128;
  }

  else
  {
    *v126 = *v127;
  }

  v129 = *(v127 + 16);
  if (v129)
  {
    v130 = *(v127 + 24);
    *(v126 + 16) = v129;
    *(v126 + 24) = v130;
  }

  else
  {
    *(v126 + 16) = *(v127 + 16);
  }

  v131 = *(v127 + 40);
  *(v126 + 32) = *(v127 + 32);
  *(v126 + 40) = v131;
  *(v126 + 48) = *(v127 + 48);
  v132 = ((v164 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
  v133 = v132 + v169;
  v134 = v132 + v170;
  *(v133 + 7) = *(v134 + 7);
  *(v133 + 15) = *(v134 + 15);
  *(v133 + 31) = *(v134 + 31);
  v135 = (v133 + 54) & 0xFFFFFFFFFFFFFFF8;
  v136 = (v134 + 54) & 0xFFFFFFFFFFFFFFF8;
  *v135 = *v136;
  *(v135 + 8) = *(v136 + 8);
  *(v135 + 24) = *(v136 + 24);
  v137 = ((v135 + 47) & 0xFFFFFFFFFFFFFFF8);
  v138 = ((v136 + 47) & 0xFFFFFFFFFFFFFFF8);
  v139 = v138[1];
  *v137 = *v138;
  v137[1] = v139;
  v140 = (v165 + 16 + v171) & 0xFFFFFFFFFFFFFFF8;
  v141 = (v165 + 16 + v172) & 0xFFFFFFFFFFFFFFF8;
  *v140 = *v141;
  *(v140 + 8) = *(v141 + 8);
  *(v140 + 24) = *(v141 + 24);
  v142 = *(v141 + 40);
  *(v140 + 56) = *(v141 + 56);
  *(v140 + 40) = v142;
  v143 = *(v141 + 72);
  *(v140 + 64) = *(v141 + 64);
  *(v140 + 72) = v143;
  v144 = (v166 + 16 + v171) & 0xFFFFFFFFFFFFFFF8;
  v145 = (v166 + 16 + v172) & 0xFFFFFFFFFFFFFFF8;
  *v144 = *v145;
  v146 = *(v145 + 16);
  v147 = *(v145 + 32);
  v148 = *(v145 + 48);
  *(v144 + 64) = *(v145 + 64);
  *(v144 + 32) = v147;
  *(v144 + 48) = v148;
  *(v144 + 16) = v146;
  *(v144 + 72) = *(v145 + 72);
  v149 = ((v167 + 8 + v171) & 0xFFFFFFFFFFFFFFF8);
  v150 = ((v167 + 8 + v172) & 0xFFFFFFFFFFFFFFF8);
  v151 = v150[1];
  *v149 = *v150;
  v149[1] = v151;

  return v168;
}

void sub_18E6CF73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 >= 2)
  {
    if (a6)
    {
      return;
    }
  }

  else
  {
  }

  sub_18E6A9F20(a2);
}

uint64_t sub_18E6CF7BC(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8;
  v4 = v3 | 7;
  v5 = ((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v3 | 7) + 12) & ~(v3 | 7));
  v6 = v3 + 16;
  v7 = (v3 + 16) & ~(v3 | 7);
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

  v11 = v5 + 8;
  v12 = (&v5[v10 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (*v12 >= 0xFFFFFFFFuLL)
  {
    v13 = v5[v10];
    v14 = v13 - 3;
    if (v13 < 3)
    {
      goto LABEL_22;
    }

    if (v10 <= 3)
    {
      v15 = v10;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_22;
      }

      v16 = *v5;
      if (v10 < 4)
      {
LABEL_31:
        if ((v16 | (v14 << (8 * v10))) == 0xFFFFFFFF)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }
    }

    else if (v15 == 2)
    {
      v16 = *v5;
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    else if (v15 == 3)
    {
      v16 = *v5 | (v5[2] << 16);
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *v5;
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    v13 = v16 + 3;
LABEL_22:
    if (v13 == 2)
    {
LABEL_32:
      v21 = v5;
      goto LABEL_33;
    }

LABEL_23:
    v17 = &v5[v6] & ~v4;
    v18 = *(v17 + v9);
    if (v18 <= 2)
    {
      if (v18 == 2 || v18 == 1)
      {
        (*(v2 + 8))(&v5[v6] & ~v4);
        v19 = ((v8 + v17) & 0xFFFFFFFFFFFFFFF8);
        if (*v19 >= 0xFFFFFFFFuLL)
        {

          v20 = v19[1];

          v21 = v19 + 3;
LABEL_33:
          v23 = *v21;
        }
      }

      else if (*((&v5[v6] & ~v4) + 8))
      {

        v22 = *(v17 + 16);

        v21 = (v17 + 32);
        goto LABEL_33;
      }
    }

    v24 = v12[1];

    v25 = ((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = ((&v5[v25 + 10] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 8);

    v28 = *(((v26 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

    v29 = (((((v25 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = v5 + 16;
    if (*&v5[v29 + 64] != 1)
    {
    }

    v31 = (((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
    v32 = *&v11[v31];

    v33 = (((((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = *&v11[v33 + 8];

    v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = v30[v35 + 40];
    if (v36 != 255)
    {
      sub_18E6CFBE8(*&v30[v35], *&v30[v35 + 8], *&v30[v35 + 16], *&v30[v35 + 24], *&v30[v35 + 32], v36);
    }

    v37 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v38 = &v5[v37 + 49] & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v38 + 104);
    if (v39 != 255)
    {
      sub_18E6CFC68(*(v38 + 48), *(v38 + 56), *(v38 + 64), *(v38 + 72), *(v38 + 80), *(v38 + 88), *(v38 + 96), v39, sub_18E6AF804);
    }

    v40 = (v37 + 49) & 0xFFFFFFFFFFFFFFF8;
    v41 = (&v5[v40 + 113] & 0xFFFFFFFFFFFFFFF8);
    if (*v41)
    {
      v42 = v41[1];
    }

    if (v41[2])
    {
      v43 = v41[3];
    }

    v44 = v41[5];

    v45 = &v5[((v40 + 113) & 0xFFFFFFFFFFFFFFF8) + 56];
    v47 = (v45 & 0xFFFFFFFFFFFFFFF8) + 47;
    v46 = *(v45 & 0xFFFFFFFFFFFFFFF8);

    v47 &= 0xFFFFFFFFFFFFFFF8;
    v48 = *v47;

    v49 = *(((v47 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);

    v50 = (((((v40 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
    v51 = &v30[v50];
    v52 = *v51;

    v53 = *(v51 + 9);

    v54 = *&v11[((((v50 + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 8];
  }

  return result;
}

void sub_18E6CFBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 >= 2)
  {
    if (a6)
    {
      return;
    }
  }

  else
  {
  }

  sub_18E6AF804(a2);
}

uint64_t sub_18E6CFC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a8 == 2 || a8 == 1)
  {
    return a9(a4, a5, a6, a7);
  }

  if (!a8)
  {
    return a9(a2, a3, a4, a5);
  }

  return result;
}

void *sub_18E6CFCB8(void *a1, uint64_t *a2, uint64_t a3)
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
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 9) = *(v11 + 9);
  *(v10 + 10) = *(v11 + 10);
  *(v10 + 11) = *(v11 + 11);
  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 80) & 0xF8;
  v14 = v13 + 19 + v10;
  v15 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & v15;
  v17 = (v13 + 19 + v11) & v15;
  v18 = v13 + 16;
  v19 = (v13 + 16) & v15;
  v20 = *(v12 + 64) + 7;
  if ((v20 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v21 = 40;
  }

  else
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((v19 + v21) | 2) <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = (v19 + v21) | 2;
  }

  v23 = (((v17 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  if (*v23 < 0xFFFFFFFFuLL)
  {
    v28 = (((((((((((((((((((((((((((((((((((((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    memcpy((v14 & v15), v17, v28);
    return a1;
  }

  v24 = *(v17 + v22);
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v22 <= 3)
    {
      v26 = v22;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *v17;
        if (v22 < 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v26 == 3)
        {
          v27 = *v17 | (*(v17 + 2) << 16);
          if (v22 < 4)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        v27 = *v17;
        if (v22 < 4)
        {
LABEL_24:
          v24 = (v27 | (v25 << (8 * v22))) + 3;
          goto LABEL_25;
        }
      }

LABEL_22:
      v24 = v27 + 3;
      goto LABEL_25;
    }

    if (v26)
    {
      v27 = *v17;
      if (v22 < 4)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

LABEL_25:
  v153 = v17;
  v150 = v17 | 7;
  if (v24 == 2)
  {
    *v16 = *v17;
    *(v16 + v22) = 2;
    v38 = v17;

    v39 = v38;
  }

  else
  {
    v31 = v21 | 1;
    if (v24 == 1)
    {
      v32 = *v17;
      *((v14 & v15) + 8) = *(v17 + 8);
      *v16 = v32;
      v33 = ((v18 + v16) & v15);
      v34 = ((v18 + v17) & v15);
      v35 = v34[v21];
      if (v35 > 2)
      {
        memcpy(((v18 + v16) & v15), ((v18 + v17) & v15), v21 | 1);
      }

      else if (v35 == 2)
      {
        (*(v12 + 16))((v18 + v16) & v15, (v18 + v17) & v15);
        v46 = &v33[v20] & 0xFFFFFFFFFFFFFFF8;
        v47 = &v34[v20] & 0xFFFFFFFFFFFFFFF8;
        if (*v47 < 0xFFFFFFFFuLL)
        {
          v53 = *(v47 + 16);
          *v46 = *v47;
          *(v46 + 16) = v53;
        }

        else
        {
          *v46 = *v47;
          *(v46 + 8) = *(v47 + 8);
          *(v46 + 16) = *(v47 + 16);
          *(v46 + 24) = *(v47 + 24);
        }

        v33[v21] = 2;
      }

      else if (v35 == 1)
      {
        (*(v12 + 16))((v18 + v16) & v15, (v18 + v17) & v15);
        v36 = &v33[v20] & 0xFFFFFFFFFFFFFFF8;
        v37 = &v34[v20] & 0xFFFFFFFFFFFFFFF8;
        if (*v37 < 0xFFFFFFFFuLL)
        {
          v52 = *(v37 + 16);
          *v36 = *v37;
          *(v36 + 16) = v52;
        }

        else
        {
          *v36 = *v37;
          *(v36 + 8) = *(v37 + 8);
          *(v36 + 16) = *(v37 + 16);
          *(v36 + 24) = *(v37 + 24);
        }

        v33[v21] = 1;
      }

      else
      {
        *v33 = *v34;
        v48 = *(((v18 + v17) & v15) + 8);
        if (v48)
        {
          *(((v18 + v16) & v15) + 8) = v48;
          *(((v18 + v16) & v15) + 0x10) = *(((v18 + v17) & v15) + 0x10);
          *(((v18 + v16) & v15) + 0x18) = *(((v18 + v17) & v15) + 0x18);
          *(((v18 + v16) & v15) + 0x20) = *(((v18 + v17) & v15) + 0x20);
        }

        else
        {
          v56 = *(((v18 + v17) & v15) + 0x18);
          *(((v18 + v16) & v15) + 8) = *(((v18 + v17) & v15) + 8);
          *(((v18 + v16) & v15) + 0x18) = v56;
        }

        v33[v21] = 0;
      }

      v33[v31] = v34[v31];
      *(v16 + v22) = 1;
    }

    else
    {
      v40 = *v17;
      *((v14 & v15) + 8) = *(v17 + 8);
      *v16 = v40;
      v41 = ((v18 + v16) & v15);
      v42 = ((v18 + v17) & v15);
      v43 = v42[v21];
      if (v43 > 2)
      {
        memcpy(((v18 + v16) & v15), ((v18 + v17) & v15), v21 | 1);
      }

      else if (v43 == 2)
      {
        (*(v12 + 16))((v18 + v16) & v15, (v18 + v17) & v15);
        v49 = &v41[v20] & 0xFFFFFFFFFFFFFFF8;
        v50 = &v42[v20] & 0xFFFFFFFFFFFFFFF8;
        if (*v50 < 0xFFFFFFFFuLL)
        {
          v55 = *(v50 + 16);
          *v49 = *v50;
          *(v49 + 16) = v55;
        }

        else
        {
          *v49 = *v50;
          *(v49 + 8) = *(v50 + 8);
          *(v49 + 16) = *(v50 + 16);
          *(v49 + 24) = *(v50 + 24);
        }

        v41[v21] = 2;
      }

      else if (v43 == 1)
      {
        (*(v12 + 16))((v18 + v16) & v15, (v18 + v17) & v15);
        v44 = &v41[v20] & 0xFFFFFFFFFFFFFFF8;
        v45 = &v42[v20] & 0xFFFFFFFFFFFFFFF8;
        if (*v45 < 0xFFFFFFFFuLL)
        {
          v54 = *(v45 + 16);
          *v44 = *v45;
          *(v44 + 16) = v54;
        }

        else
        {
          *v44 = *v45;
          *(v44 + 8) = *(v45 + 8);
          *(v44 + 16) = *(v45 + 16);
          *(v44 + 24) = *(v45 + 24);
        }

        v41[v21] = 1;
      }

      else
      {
        *v41 = *v42;
        v51 = *(((v18 + v17) & v15) + 8);
        if (v51)
        {
          *(((v18 + v16) & v15) + 8) = v51;
          *(((v18 + v16) & v15) + 0x10) = *(((v18 + v17) & v15) + 0x10);
          *(((v18 + v16) & v15) + 0x18) = *(((v18 + v17) & v15) + 0x18);
          *(((v18 + v16) & v15) + 0x20) = *(((v18 + v17) & v15) + 0x20);
        }

        else
        {
          v57 = *(((v18 + v17) & v15) + 0x18);
          *(((v18 + v16) & v15) + 8) = *(((v18 + v17) & v15) + 8);
          *(((v18 + v16) & v15) + 0x18) = v57;
        }

        v41[v21] = 0;
      }

      v41[v31] = v42[v31];
      *(v16 + v22) = 0;
    }

    v39 = v153;
  }

  v149 = v16 | 7;
  v58 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v59 = v23[1];
  *v58 = *v23;
  v58[1] = v59;
  v60 = ((v58 + 23) & 0xFFFFFFFFFFFFFFF8);
  v61 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v62 = *v63;
  *(v62 + 8) = *(v63 + 8);
  *(v62 + 9) = *(v63 + 9);
  v64 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = v64 + 10 + v16;
  v66 = v64 + 10 + v39;
  *v65 = *v66;
  v65 &= 0xFFFFFFFFFFFFFFF8;
  v66 &= 0xFFFFFFFFFFFFFFF8;
  *(v65 + 8) = *(v66 + 8);
  v67 = ((v65 + 31) & 0xFFFFFFFFFFFFFFF8);
  v68 = ((v66 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v67 = *v68;
  v67[1] = v68[1];
  v69 = ((v67 + 23) & 0xFFFFFFFFFFFFFFF8);
  v70 = ((v68 + 23) & 0xFFFFFFFFFFFFFFF8);
  v71 = v70[1];
  *v69 = *v70;
  v69[1] = v71;
  v72 = (((((v64 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v152 = v16;
  v73 = (v72 + 16 + v16);
  v74 = (v72 + 16 + v39);
  v75 = *(v74 + 6);

  if (v75 == 1)
  {
    v76 = *v74;
    v77 = v74[1];
    v78 = v74[2];
    *(v73 + 6) = *(v74 + 6);
    *(v73 + 1) = v77;
    *(v73 + 2) = v78;
    *v73 = v76;
  }

  else
  {
    *v73 = *v74;
    *(v73 + 8) = *(v74 + 8);
    *(v73 + 24) = *(v74 + 24);
    *(v73 + 5) = *(v74 + 5);
    *(v73 + 6) = *(v74 + 6);
  }

  v79 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = v153;
  *(v79 + 56 + v152) = *(v79 + 56 + v153);
  v81 = (v79 + 63) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 8 + v152);
  v83 = (v81 + 8 + v153);
  *v82 = *v83;
  v84 = ((v82 + 15) & 0xFFFFFFFFFFFFFFF8);
  v85 = ((v83 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v84 = *v85;
  *((v84 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v85 + 15) & 0xFFFFFFFFFFFFFFF8);
  v86 = (((((v81 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 8 + v152);
  v88 = (v86 + 8 + v153);
  v89 = v88[1];
  *v87 = *v88;
  v87[1] = v89;
  v90 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = v90 + 16 + v152;
  v92 = v90 + 16 + v153;
  v93 = *(v92 + 40);

  if (v93 == 255)
  {
    v99 = *v92;
    v100 = *(v92 + 16);
    *(v91 + 25) = *(v92 + 25);
    *v91 = v99;
    *(v91 + 16) = v100;
  }

  else
  {
    v94 = *v92;
    v95 = *(v92 + 8);
    v96 = *(v92 + 16);
    v97 = *(v92 + 24);
    v98 = *(v92 + 32);
    sub_18E6CF73C(*v92, v95, v96, v97, v98, v93);
    *v91 = v94;
    *(v91 + 8) = v95;
    v80 = v153;
    *(v91 + 16) = v96;
    *(v91 + 24) = v97;
    *(v91 + 32) = v98;
    *(v91 + 40) = v93;
  }

  *(v91 + 41) = *(v92 + 41);
  v101 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v102 = v152 | 6;
  v103 = ((v152 | 6) + v101 + 42) & 0xFFFFFFFFFFFFFFF8;
  v104 = v80 | 6;
  v105 = (v104 + v101 + 42) & 0xFFFFFFFFFFFFFFF8;
  v106 = *v105;
  v107 = *(v105 + 32);
  *(v103 + 16) = *(v105 + 16);
  *(v103 + 32) = v107;
  *v103 = v106;
  v108 = *(v105 + 104);
  if (v108 == 255)
  {
    v113 = *(v105 + 48);
    v114 = *(v105 + 64);
    v115 = *(v105 + 80);
    *(v103 + 89) = *(v105 + 89);
    *(v103 + 64) = v114;
    *(v103 + 80) = v115;
    *(v103 + 48) = v113;
  }

  else
  {
    v147 = *(v105 + 56);
    v148 = *(v105 + 48);
    v109 = *(v105 + 64);
    v110 = *(v105 + 72);
    v111 = *(v105 + 80);
    v112 = *(v105 + 88);
    v146 = *(v105 + 96);
    sub_18E6CFC68(v148, v147, v109, v110, v111, v112, v146, v108, sub_18E6A9F20);
    v102 = v152 | 6;
    *(v103 + 48) = v148;
    *(v103 + 56) = v147;
    *(v103 + 64) = v109;
    *(v103 + 72) = v110;
    *(v103 + 80) = v111;
    *(v103 + 88) = v112;
    *(v103 + 96) = v146;
    *(v103 + 104) = v108;
  }

  *(v103 + 105) = *(v105 + 105);
  v116 = (v101 + 49) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v102 + v116 + 106) & 0xFFFFFFFFFFFFFFF8;
  v118 = (v104 + v116 + 106) & 0xFFFFFFFFFFFFFFF8;
  if (*v118)
  {
    v119 = *(v118 + 8);
    *v117 = *v118;
    *(v117 + 8) = v119;
  }

  else
  {
    *v117 = *v118;
  }

  v120 = *(v118 + 16);
  if (v120)
  {
    v121 = *(v118 + 24);
    *(v117 + 16) = v120;
    *(v117 + 24) = v121;
  }

  else
  {
    *(v117 + 16) = *(v118 + 16);
  }

  v122 = *(v118 + 40);
  *(v117 + 32) = *(v118 + 32);
  *(v117 + 40) = v122;
  *(v117 + 48) = *(v118 + 48);
  v123 = ((v116 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
  v124 = v149 + v123;
  v125 = v150 + v123;
  *v124 = *v125;
  *(v124 + 8) = *(v125 + 8);
  *(v124 + 24) = *(v125 + 24);
  v126 = (v124 + 47) & 0xFFFFFFFFFFFFFFF8;
  v127 = (v125 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v126 = *v127;
  *(v126 + 8) = *(v127 + 8);
  *(v126 + 24) = *(v127 + 24);
  v128 = ((v126 + 47) & 0xFFFFFFFFFFFFFFF8);
  v129 = ((v127 + 47) & 0xFFFFFFFFFFFFFFF8);
  v130 = v129[1];
  *v128 = *v129;
  v128[1] = v130;
  v131 = (((((v116 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v132 = v131 + 16 + v152;
  v133 = v131 + 16 + v153;
  *v132 = *v133;
  *(v132 + 8) = *(v133 + 8);
  *(v132 + 24) = *(v133 + 24);
  v134 = *(v133 + 40);
  *(v132 + 56) = *(v133 + 56);
  *(v132 + 40) = v134;
  v135 = *(v133 + 72);
  *(v132 + 64) = *(v133 + 64);
  *(v132 + 72) = v135;
  v136 = (v131 + 87) & 0xFFFFFFFFFFFFFFF8;
  v137 = v136 + 16 + v152;
  v138 = v136 + 16 + v153;
  *v137 = *v138;
  v139 = *(v138 + 16);
  v140 = *(v138 + 32);
  v141 = *(v138 + 48);
  *(v137 + 64) = *(v138 + 64);
  *(v137 + 32) = v140;
  *(v137 + 48) = v141;
  *(v137 + 16) = v139;
  *(v137 + 72) = *(v138 + 72);
  v142 = ((v136 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
  v143 = (v142 + v152);
  v144 = (v142 + v153);
  v145 = v144[1];
  *v143 = *v144;
  v143[1] = v145;

  return a1;
}

void *sub_18E6D07FC(void *a1, uint64_t *a2, uint64_t a3)
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
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 9) = *(v11 + 9);
  *(v10 + 10) = *(v11 + 10);
  *(v10 + 11) = *(v11 + 11);
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80) & 0xF8;
  v15 = ~v14 & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 19 + v10) & v15;
  v17 = (v14 + 19 + v11) & v15;
  v18 = v14 + 16;
  v19 = *(v13 + 64) + 7;
  if ((v19 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v20 = 40;
  }

  else
  {
    v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v21 = v20 | 1;
  if (((((v14 + 16) & v15) + v20) | 2) <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = (((v14 + 16) & v15) + v20) | 2;
  }

  v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v24 = (((v17 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  __src = (v14 + 19 + v11) & v15;
  v396 = (v14 + 19 + v10) & v15;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    if (v25 < 0xFFFFFFFF)
    {
      memcpy(v16, v17, (((((((((((((((((((((((((((((((((((((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      return a1;
    }

    v30 = *(v17 + v22);
    v31 = v30 - 3;
    if (v30 < 3)
    {
LABEL_58:
      v393 = v16 | 7;
      v394 = a1;
      v391 = v17 | 7;
      if (v30 == 2)
      {
        *v16 = *v17;
        *(v16 + v22) = 2;

        v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
LABEL_159:
        v142 = *((((v17 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8) + 8);
        *v23 = *v24;
        v23[1] = v142;
        v143 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
        v144 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v143 = *v144;
        v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
        *v145 = *v146;
        *(v145 + 8) = *(v146 + 8);
        *(v145 + 9) = *(v146 + 9);
        v147 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v148 = v147 + 10 + v16;
        v149 = v147 + 10 + v17;
        *v148 = *v149;
        v148 &= 0xFFFFFFFFFFFFFFF8;
        v149 &= 0xFFFFFFFFFFFFFFF8;
        *(v148 + 8) = *(v149 + 8);
        v150 = ((v148 + 31) & 0xFFFFFFFFFFFFFFF8);
        v151 = ((v149 + 31) & 0xFFFFFFFFFFFFFFF8);
        *v150 = *v151;
        v150[1] = v151[1];
        v152 = ((v150 + 23) & 0xFFFFFFFFFFFFFFF8);
        v153 = ((v151 + 23) & 0xFFFFFFFFFFFFFFF8);
        v154 = v153[1];
        *v152 = *v153;
        v152[1] = v154;
        v155 = v17;
        v156 = (((((v147 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v157 = (v156 + 16 + v16);
        v158 = v156 + 16 + v155;
        v159 = *(v158 + 48);

        if (v159 == 1)
        {
          v160 = *v158;
          v161 = *(v158 + 16);
          v162 = *(v158 + 32);
          *(v157 + 6) = *(v158 + 48);
          *(v157 + 1) = v161;
          *(v157 + 2) = v162;
          *v157 = v160;
        }

        else
        {
          *v157 = *v158;
          *(v157 + 8) = *(v158 + 8);
          *(v157 + 24) = *(v158 + 24);
          *(v157 + 5) = *(v158 + 40);
          *(v157 + 6) = *(v158 + 48);
        }

        v163 = (v156 + 23) & 0xFFFFFFFFFFFFFFF8;
        *(v163 + 56 + v396) = *(v163 + 56 + __src);
        v164 = (v163 + 63) & 0xFFFFFFFFFFFFFFF8;
        v165 = (v164 + 8 + v396);
        v166 = (v164 + 8 + __src);
        *v165 = *v166;
        v167 = ((v165 + 15) & 0xFFFFFFFFFFFFFFF8);
        v168 = ((v166 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v167 = *v168;
        *((v167 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v168 + 15) & 0xFFFFFFFFFFFFFFF8);
        v169 = (((((v164 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v170 = (v169 + 8 + v396);
        v171 = (v169 + 8 + __src);
        v172 = v171[1];
        *v170 = *v171;
        v170[1] = v172;
        v173 = (v169 + 15) & 0xFFFFFFFFFFFFFFF8;
        v174 = v173 + 16 + v396;
        v175 = v173 + 16 + __src;
        v176 = *(v175 + 40);

        if (v176 == 255)
        {
          v182 = *v175;
          v183 = *(v175 + 16);
          *(v174 + 25) = *(v175 + 25);
          *v174 = v182;
          *(v174 + 16) = v183;
        }

        else
        {
          v177 = *v175;
          v178 = *(v175 + 8);
          v179 = *(v175 + 16);
          v180 = *(v175 + 24);
          v181 = *(v175 + 32);
          sub_18E6CF73C(*v175, v178, v179, v180, v181, v176);
          *v174 = v177;
          *(v174 + 8) = v178;
          *(v174 + 16) = v179;
          *(v174 + 24) = v180;
          *(v174 + 32) = v181;
          *(v174 + 40) = v176;
        }

        *(v174 + 41) = *(v175 + 41);
        v184 = (v173 + 23) & 0xFFFFFFFFFFFFFFF8;
        v185 = v396 | 6;
        v186 = ((v396 | 6) + v184 + 42) & 0xFFFFFFFFFFFFFFF8;
        v187 = ((__src | 6) + v184 + 42) & 0xFFFFFFFFFFFFFFF8;
        v188 = *v187;
        v189 = *(v187 + 32);
        *(v186 + 16) = *(v187 + 16);
        *(v186 + 32) = v189;
        *v186 = v188;
        v190 = *(v187 + 104);
        if (v190 == 255)
        {
          v195 = *(v187 + 48);
          v196 = *(v187 + 64);
          v197 = *(v187 + 80);
          *(v186 + 89) = *(v187 + 89);
          *(v186 + 64) = v196;
          *(v186 + 80) = v197;
          *(v186 + 48) = v195;
        }

        else
        {
          v385 = *(v187 + 56);
          v389 = *(v187 + 48);
          v191 = *(v187 + 72);
          v384 = *(v187 + 64);
          v192 = *(v187 + 80);
          v193 = *(v187 + 88);
          v194 = *(v187 + 96);
          sub_18E6CFC68(v389, v385, v384, v191, v192, v193, v194, v190, sub_18E6A9F20);
          v185 = v396 | 6;
          *(v186 + 48) = v389;
          *(v186 + 56) = v385;
          *(v186 + 64) = v384;
          *(v186 + 72) = v191;
          *(v186 + 80) = v192;
          *(v186 + 88) = v193;
          *(v186 + 96) = v194;
          *(v186 + 104) = v190;
        }

        *(v186 + 105) = *(v187 + 105);
        v198 = (v184 + 49) & 0xFFFFFFFFFFFFFFF8;
        v199 = (v185 + v198 + 106) & 0xFFFFFFFFFFFFFFF8;
        v200 = ((__src | 6) + v198 + 106) & 0xFFFFFFFFFFFFFFF8;
        if (*v200)
        {
          v201 = *(v200 + 8);
          *v199 = *v200;
          *(v199 + 8) = v201;
        }

        else
        {
          *v199 = *v200;
        }

        v202 = *(v200 + 16);
        if (v202)
        {
          v203 = *(v200 + 24);
          *(v199 + 16) = v202;
          *(v199 + 24) = v203;
        }

        else
        {
          *(v199 + 16) = *(v200 + 16);
        }

        v204 = *(v200 + 40);
        *(v199 + 32) = *(v200 + 32);
        *(v199 + 40) = v204;
        *(v199 + 48) = *(v200 + 48);
        v205 = ((v198 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
        v206 = v393 + v205;
        v207 = v391 + v205;
        *v206 = *v207;
        *(v206 + 8) = *(v207 + 8);
        *(v206 + 24) = *(v207 + 24);
        v208 = (v206 + 47) & 0xFFFFFFFFFFFFFFF8;
        v209 = (v207 + 47) & 0xFFFFFFFFFFFFFFF8;
        *v208 = *v209;
        *(v208 + 8) = *(v209 + 8);
        *(v208 + 24) = *(v209 + 24);
        v210 = ((v208 + 47) & 0xFFFFFFFFFFFFFFF8);
        v211 = ((v209 + 47) & 0xFFFFFFFFFFFFFFF8);
        v212 = v211[1];
        *v210 = *v211;
        v210[1] = v212;
        v213 = (((((v198 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
        v214 = v213 + 16 + v396;
        v215 = v213 + 16 + __src;
        *v214 = *v215;
        *(v214 + 8) = *(v215 + 8);
        *(v214 + 24) = *(v215 + 24);
        v216 = *(v215 + 40);
        *(v214 + 56) = *(v215 + 56);
        *(v214 + 40) = v216;
        v217 = *(v215 + 72);
        *(v214 + 64) = *(v215 + 64);
        *(v214 + 72) = v217;
        v218 = (v213 + 87) & 0xFFFFFFFFFFFFFFF8;
        v219 = v218 + 16 + v396;
        v220 = v218 + 16 + __src;
        *v219 = *v220;
        v221 = *(v220 + 16);
        v222 = *(v220 + 32);
        v223 = *(v220 + 48);
        *(v219 + 64) = *(v220 + 64);
        *(v219 + 32) = v222;
        *(v219 + 48) = v223;
        *(v219 + 16) = v221;
        *(v219 + 72) = *(v220 + 72);
        v224 = ((v218 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
        v225 = (v224 + v396);
        v226 = (v224 + __src);
        v227 = v226[1];
        *v225 = *v226;
        v225[1] = v227;

        return v394;
      }

      if (v30 == 1)
      {
        v48 = *v17;
        *(v16 + 8) = *(v17 + 8);
        *v16 = v48;
        v49 = ((v18 + v16) & v15);
        v50 = ((v18 + v17) & v15);
        v51 = *(v50 + v20);
        v52 = v49;
        if (v51 > 2)
        {
          memcpy(v49, v50, v20 | 1);
          v49 = v52;
          v21 = v20 | 1;
          v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
        }

        else
        {
          if (v51 == 2)
          {
            (*(v13 + 16))(v49, v50, v12);
            v96 = (v52 + v19) & 0xFFFFFFFFFFFFFFF8;
            v97 = (v50 + v19) & 0xFFFFFFFFFFFFFFF8;
            if (*v97 < 0xFFFFFFFFuLL)
            {
              v49 = v52;
              v133 = *(v97 + 16);
              *v96 = *v97;
              *(v96 + 16) = v133;
            }

            else
            {
              *v96 = *v97;
              *(v96 + 8) = *(v97 + 8);
              *(v96 + 16) = *(v97 + 16);
              *(v96 + 24) = *(v97 + 24);

              v49 = v52;
            }

            v21 = v20 | 1;
            v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
            v132 = 2;
          }

          else
          {
            if (v51 != 1)
            {
              *v49 = *v50;
              v98 = v50[1];
              if (v98)
              {
                v49[1] = v98;
                v49[2] = v50[2];
                v49[3] = v50[3];
                v49[4] = v50[4];

                v49 = v52;
                v21 = v20 | 1;
                v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
                *(v52 + v20) = 0;
              }

              else
              {
                v233 = *(v50 + 3);
                *(v49 + 1) = *(v50 + 1);
                *(v49 + 3) = v233;
                *(v49 + v20) = 0;
              }

              goto LABEL_148;
            }

            (*(v13 + 16))(v49, v50, v12);
            v53 = (v52 + v19) & 0xFFFFFFFFFFFFFFF8;
            v54 = (v50 + v19) & 0xFFFFFFFFFFFFFFF8;
            if (*v54 < 0xFFFFFFFFuLL)
            {
              v49 = v52;
              v131 = *(v54 + 16);
              *v53 = *v54;
              *(v53 + 16) = v131;
            }

            else
            {
              *v53 = *v54;
              *(v53 + 8) = *(v54 + 8);
              *(v53 + 16) = *(v54 + 16);
              *(v53 + 24) = *(v54 + 24);

              v49 = v52;
            }

            v21 = v20 | 1;
            v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
            v132 = 1;
          }

          *(v49 + v20) = v132;
        }

LABEL_148:
        *(v49 + v21) = *(v50 + v21);
        *(v16 + v22) = 1;
        goto LABEL_159;
      }

      v55 = *v17;
      *(v16 + 8) = *(v17 + 8);
      *v16 = v55;
      v56 = ((v18 + v16) & v15);
      v57 = ((v18 + v17) & v15);
      v58 = *(v57 + v20);
      v59 = v56;
      if (v58 > 2)
      {
        memcpy(v56, v57, v20 | 1);
        v56 = v59;
        v21 = v20 | 1;
        v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
      }

      else
      {
        if (v58 == 2)
        {
          (*(v13 + 16))(v56, v57, v12);
          v99 = (v59 + v19) & 0xFFFFFFFFFFFFFFF8;
          v100 = (v57 + v19) & 0xFFFFFFFFFFFFFFF8;
          if (*v100 < 0xFFFFFFFFuLL)
          {
            v56 = v59;
            v141 = *(v100 + 16);
            *v99 = *v100;
            *(v99 + 16) = v141;
          }

          else
          {
            *v99 = *v100;
            *(v99 + 8) = *(v100 + 8);
            *(v99 + 16) = *(v100 + 16);
            *(v99 + 24) = *(v100 + 24);

            v56 = v59;
          }

          v21 = v20 | 1;
          v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
          v138 = 2;
        }

        else
        {
          if (v58 != 1)
          {
            *v56 = *v57;
            v101 = v57[1];
            if (v101)
            {
              v56[1] = v101;
              v56[2] = v57[2];
              v56[3] = v57[3];
              v56[4] = v57[4];

              v56 = v59;
              v21 = v20 | 1;
              v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
              *(v59 + v20) = 0;
            }

            else
            {
              v234 = *(v57 + 3);
              *(v56 + 1) = *(v57 + 1);
              *(v56 + 3) = v234;
              *(v56 + v20) = 0;
            }

            goto LABEL_158;
          }

          (*(v13 + 16))(v56, v57, v12);
          v60 = (v59 + v19) & 0xFFFFFFFFFFFFFFF8;
          v61 = (v57 + v19) & 0xFFFFFFFFFFFFFFF8;
          if (*v61 < 0xFFFFFFFFuLL)
          {
            v56 = v59;
            v137 = *(v61 + 16);
            *v60 = *v61;
            *(v60 + 16) = v137;
          }

          else
          {
            *v60 = *v61;
            *(v60 + 8) = *(v61 + 8);
            *(v60 + 16) = *(v61 + 16);
            *(v60 + 24) = *(v61 + 24);

            v56 = v59;
          }

          v21 = v20 | 1;
          v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
          v138 = 1;
        }

        *(v56 + v20) = v138;
      }

LABEL_158:
      *(v56 + v21) = *(v57 + v21);
      *(v16 + v22) = 0;
      goto LABEL_159;
    }

    if (v22 <= 3)
    {
      v32 = v22;
    }

    else
    {
      v32 = 4;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v33 = *v17;
        if (v22 >= 4)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v32 == 3)
        {
          v33 = *v17 | (*(v17 + 2) << 16);
          if (v22 < 4)
          {
            goto LABEL_57;
          }

LABEL_45:
          v30 = v33 + 3;
          goto LABEL_58;
        }

        v33 = *v17;
        if (v22 >= 4)
        {
          goto LABEL_45;
        }
      }

LABEL_57:
      v30 = (v33 | (v31 << (8 * v22))) + 3;
      goto LABEL_58;
    }

    if (!v32)
    {
      goto LABEL_58;
    }

    v33 = *v17;
    if (v22 < 4)
    {
      goto LABEL_57;
    }

    goto LABEL_45;
  }

  if (v25 >= 0xFFFFFFFF)
  {
    v392 = v16 | 7;
    v394 = a1;
    v390 = v17 | 7;
    if (v16 == v17)
    {
      goto LABEL_197;
    }

    v26 = *(v16 + v22);
    v27 = v26 - 3;
    if (v26 >= 3)
    {
      if (v22 <= 3)
      {
        v28 = v22;
      }

      else
      {
        v28 = 4;
      }

      if (v28 <= 1)
      {
        if (!v28)
        {
          goto LABEL_103;
        }

        v29 = *v16;
      }

      else if (v28 == 2)
      {
        v29 = *v16;
      }

      else if (v28 == 3)
      {
        v29 = *v16 | (*(v16 + 2) << 16);
      }

      else
      {
        v29 = *v16;
      }

      if (v22 < 4)
      {
        v26 = (v29 | (v27 << (8 * v22))) + 3;
      }

      else
      {
        v26 = v29 + 3;
      }
    }

LABEL_103:
    v388 = ((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8;
    if (v26 == 2)
    {
      v104 = v20 | 1;
    }

    else
    {
      v102 = (v18 + v16) & v15;
      v103 = *(v102 + v20);
      if (v103 > 2)
      {
        goto LABEL_111;
      }

      v104 = v20 | 1;
      if (v103 == 2 || v103 == 1)
      {
        (*(v13 + 8))((v18 + v396) & v15, v12);
        v105 = ((v19 + v102) & 0xFFFFFFFFFFFFFFF8);
        v21 = v20 | 1;
        if (*v105 < 0xFFFFFFFFuLL)
        {
          goto LABEL_111;
        }

        v106 = v105[1];

        v16 = (v105 + 3);
      }

      else
      {
        if (!*(((v18 + v396) & v15) + 8))
        {
LABEL_111:
          v17 = __src;
          v108 = *(__src + v22);
          v109 = v108 - 3;
          if (v108 < 3)
          {
            goto LABEL_128;
          }

          if (v22 <= 3)
          {
            v110 = v22;
          }

          else
          {
            v110 = 4;
          }

          if (v110 <= 1)
          {
            if (!v110)
            {
              goto LABEL_128;
            }

            v111 = *__src;
          }

          else if (v110 == 2)
          {
            v111 = *__src;
          }

          else if (v110 == 3)
          {
            v111 = *__src | (*(__src + 2) << 16);
          }

          else
          {
            v111 = *__src;
          }

          if (v22 < 4)
          {
            v108 = (v111 | (v109 << (8 * v22))) + 3;
          }

          else
          {
            v108 = v111 + 3;
          }

LABEL_128:
          if (v108 == 2)
          {
            v16 = v396;
            *v396 = *__src;
            *(v396 + v22) = 2;

            v23 = v388;
          }

          else if (v108 == 1)
          {
            v113 = *__src;
            *(v396 + 8) = *(__src + 8);
            *v396 = v113;
            v114 = ((v18 + v396) & v15);
            v115 = ((v18 + __src) & v15);
            v116 = *(v115 + v20);
            if (v116 > 2)
            {
              v127 = v21;
              memcpy(v114, v115, v21);
              v21 = v127;
              v128 = v114;
              v16 = v396;
              v23 = v388;
            }

            else
            {
              if (v116 == 2)
              {
                v134 = v21;
                (*(v13 + 16))(v114, v115, v12);
                v135 = (v114 + v19) & 0xFFFFFFFFFFFFFFF8;
                v136 = (v115 + v19) & 0xFFFFFFFFFFFFFFF8;
                if (*v136 < 0xFFFFFFFFuLL)
                {
                  v236 = *(v136 + 16);
                  *v135 = *v136;
                  *(v135 + 16) = v236;
                }

                else
                {
                  *v135 = *v136;
                  *(v135 + 8) = *(v136 + 8);
                  *(v135 + 16) = *(v136 + 16);
                  *(v135 + 24) = *(v136 + 24);
                }

                v23 = v388;
                v21 = v134;
                *(v114 + v20) = 2;
              }

              else if (v116 == 1)
              {
                v117 = v21;
                (*(v13 + 16))(v114, v115, v12);
                v118 = (v114 + v19) & 0xFFFFFFFFFFFFFFF8;
                v119 = (v115 + v19) & 0xFFFFFFFFFFFFFFF8;
                if (*v119 < 0xFFFFFFFFuLL)
                {
                  v235 = *(v119 + 16);
                  *v118 = *v119;
                  *(v118 + 16) = v235;
                }

                else
                {
                  *v118 = *v119;
                  *(v118 + 8) = *(v119 + 8);
                  *(v118 + 16) = *(v119 + 16);
                  *(v118 + 24) = *(v119 + 24);
                }

                v23 = v388;
                v21 = v117;
                *(v114 + v20) = 1;
              }

              else
              {
                *v114 = *v115;
                v139 = v115[1];
                if (v139)
                {
                  v114[1] = v139;
                  v114[2] = v115[2];
                  v114[3] = v115[3];
                  v114[4] = v115[4];
                  v140 = v21;

                  v21 = v140;
                }

                else
                {
                  v239 = *(v115 + 3);
                  *(v114 + 1) = *(v115 + 1);
                  *(v114 + 3) = v239;
                }

                v23 = v388;
                *(v114 + v20) = 0;
              }

              v128 = v114;
              v16 = v396;
            }

            *(v128 + v21) = *(v115 + v21);
            *(v16 + v22) = 1;
          }

          else
          {
            v120 = *__src;
            *(v396 + 8) = *(__src + 8);
            *v396 = v120;
            v121 = ((v18 + v396) & v15);
            v122 = ((v18 + __src) & v15);
            v123 = *(v122 + v20);
            if (v123 > 2)
            {
              v129 = v21;
              memcpy(v121, v122, v21);
              v21 = v129;
              v130 = v121;
              v16 = v396;
              v23 = v388;
            }

            else
            {
              if (v123 == 2)
              {
                v228 = v21;
                (*(v13 + 16))(v121, v122, v12);
                v229 = (v121 + v19) & 0xFFFFFFFFFFFFFFF8;
                v230 = (v122 + v19) & 0xFFFFFFFFFFFFFFF8;
                if (*v230 < 0xFFFFFFFFuLL)
                {
                  v238 = *(v230 + 16);
                  *v229 = *v230;
                  *(v229 + 16) = v238;
                }

                else
                {
                  *v229 = *v230;
                  *(v229 + 8) = *(v230 + 8);
                  *(v229 + 16) = *(v230 + 16);
                  *(v229 + 24) = *(v230 + 24);
                }

                v23 = v388;
                v21 = v228;
                *(v121 + v20) = 2;
              }

              else if (v123 == 1)
              {
                v124 = v21;
                (*(v13 + 16))(v121, v122, v12);
                v125 = (v121 + v19) & 0xFFFFFFFFFFFFFFF8;
                v126 = (v122 + v19) & 0xFFFFFFFFFFFFFFF8;
                if (*v126 < 0xFFFFFFFFuLL)
                {
                  v237 = *(v126 + 16);
                  *v125 = *v126;
                  *(v125 + 16) = v237;
                }

                else
                {
                  *v125 = *v126;
                  *(v125 + 8) = *(v126 + 8);
                  *(v125 + 16) = *(v126 + 16);
                  *(v125 + 24) = *(v126 + 24);
                }

                v23 = v388;
                v21 = v124;
                *(v121 + v20) = 1;
              }

              else
              {
                *v121 = *v122;
                v231 = v122[1];
                if (v231)
                {
                  v121[1] = v231;
                  v121[2] = v122[2];
                  v121[3] = v122[3];
                  v121[4] = v122[4];
                  v232 = v21;

                  v21 = v232;
                }

                else
                {
                  v240 = *(v122 + 3);
                  *(v121 + 1) = *(v122 + 1);
                  *(v121 + 3) = v240;
                }

                v23 = v388;
                *(v121 + v20) = 0;
              }

              v130 = v121;
              v16 = v396;
            }

            *(v130 + v21) = *(v122 + v21);
            *(v16 + v22) = 0;
          }

LABEL_197:
          v241 = v24[1];
          v242 = v23[1];
          *v23 = *v24;
          v23[1] = v241;
          v243 = v23;

          v244 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
          v245 = ((v243 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v245 = *v244;
          v246 = (v245 + 15) & 0xFFFFFFFFFFFFFFF8;
          v247 = (v244 + 15) & 0xFFFFFFFFFFFFFFF8;
          *v246 = *v247;
          *(v246 + 8) = *(v247 + 8);
          *(v246 + 9) = *(v247 + 9);
          v248 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v249 = v248 + 10 + v16;
          v250 = v248 + 10 + v17;
          *v249 = *v250;
          v249 &= 0xFFFFFFFFFFFFFFF8;
          v250 &= 0xFFFFFFFFFFFFFFF8;
          *(v249 + 8) = *(v250 + 8);
          *(v249 + 16) = *(v250 + 16);
          v251 = v17;
          v252 = ((v249 + 31) & 0xFFFFFFFFFFFFFFF8);
          v253 = ((v250 + 31) & 0xFFFFFFFFFFFFFFF8);
          *v252 = *v253;
          v254 = v252[1];
          v252[1] = v253[1];

          v255 = ((v252 + 23) & 0xFFFFFFFFFFFFFFF8);
          v256 = ((v253 + 23) & 0xFFFFFFFFFFFFFFF8);
          v257 = v256[1];
          v258 = v255[1];
          *v255 = *v256;
          v255[1] = v257;

          v259 = (((((v248 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
          v260 = v259 + 16 + v396;
          v261 = v259 + 16 + v251;
          v262 = *(v261 + 48);
          if (*(v260 + 48) == 1)
          {
            if (v262 == 1)
            {
              v263 = *v261;
              v264 = *(v261 + 16);
              v265 = *(v261 + 32);
              *(v260 + 48) = *(v261 + 48);
              *(v260 + 16) = v264;
              *(v260 + 32) = v265;
              *v260 = v263;
            }

            else
            {
              *v260 = *v261;
              *(v260 + 8) = *(v261 + 8);
              *(v260 + 24) = *(v261 + 24);
              *(v260 + 40) = *(v261 + 40);
              *(v260 + 48) = *(v261 + 48);
            }
          }

          else if (v262 == 1)
          {
            sub_18E6AC114(v259 + 16 + v396);
            v267 = *(v261 + 16);
            v266 = *(v261 + 32);
            v268 = *v261;
            *(v260 + 48) = *(v261 + 48);
            *(v260 + 16) = v267;
            *(v260 + 32) = v266;
            *v260 = v268;
          }

          else
          {
            *v260 = *v261;
            *(v260 + 8) = *(v261 + 8);
            *(v260 + 16) = *(v261 + 16);
            *(v260 + 24) = *(v261 + 24);
            *(v260 + 32) = *(v261 + 32);
            *(v260 + 40) = *(v261 + 40);
            *(v260 + 48) = *(v261 + 48);
          }

          v269 = (v259 + 23) & 0xFFFFFFFFFFFFFFF8;
          *(v269 + 56 + v396) = *(v269 + 56 + __src);
          v270 = (v269 + 63) & 0xFFFFFFFFFFFFFFF8;
          v271 = v270 + 8 + v396;
          v272 = (v270 + 8 + __src);
          v273 = *v271;
          *v271 = *v272;
          v271 += 15;

          v274 = ((v272 + 15) & 0xFFFFFFFFFFFFFFF8);
          *(v271 & 0xFFFFFFFFFFFFFFF8) = *v274;
          *(((v271 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *((v274 + 15) & 0xFFFFFFFFFFFFFFF8);
          v275 = (((((v270 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v276 = (v275 + 8 + v396);
          v277 = (v275 + 8 + __src);
          v278 = v277[1];
          v279 = v276[1];
          *v276 = *v277;
          v276[1] = v278;

          v280 = (v275 + 15) & 0xFFFFFFFFFFFFFFF8;
          v281 = v280 + 16 + v396;
          v282 = v280 + 16 + __src;
          v283 = *(v282 + 40);
          if (*(v281 + 40) == 255)
          {
            if (v283 == 255)
            {
              v302 = *v282;
              v303 = *(v282 + 16);
              *(v281 + 25) = *(v282 + 25);
              *v281 = v302;
              *(v281 + 16) = v303;
            }

            else
            {
              v295 = *v282;
              v296 = *(v282 + 8);
              v297 = *(v282 + 16);
              v298 = *(v282 + 24);
              v299 = *(v282 + 32);
              sub_18E6CF73C(*v282, v296, v297, v298, v299, *(v282 + 40));
              *v281 = v295;
              *(v281 + 8) = v296;
              *(v281 + 16) = v297;
              *(v281 + 24) = v298;
              *(v281 + 32) = v299;
              *(v281 + 40) = v283;
            }
          }

          else if (v283 == 255)
          {
            sub_18E68B548(v280 + 16 + v396, &qword_1EAC8E7D0, &qword_18E72E840);
            v300 = *(v282 + 25);
            v301 = *(v282 + 16);
            *v281 = *v282;
            *(v281 + 16) = v301;
            *(v281 + 25) = v300;
          }

          else
          {
            v284 = *v282;
            v285 = *(v282 + 8);
            v286 = *(v282 + 16);
            v287 = *(v282 + 24);
            v288 = *(v282 + 32);
            sub_18E6CF73C(*v282, v285, v286, v287, v288, *(v282 + 40));
            v289 = *v281;
            v290 = *(v281 + 8);
            v291 = *(v281 + 16);
            v292 = *(v281 + 24);
            v293 = *(v281 + 32);
            *v281 = v284;
            *(v281 + 8) = v285;
            *(v281 + 16) = v286;
            *(v281 + 24) = v287;
            *(v281 + 32) = v288;
            v294 = *(v281 + 40);
            *(v281 + 40) = v283;
            sub_18E6CFBE8(v289, v290, v291, v292, v293, v294);
          }

          *(v281 + 41) = *(v282 + 41);
          v304 = (v280 + 23) & 0xFFFFFFFFFFFFFFF8;
          v305 = v396 | 6;
          v306 = ((v396 | 6) + v304 + 42) & 0xFFFFFFFFFFFFFFF8;
          v307 = __src | 6;
          v308 = ((__src | 6) + v304 + 42) & 0xFFFFFFFFFFFFFFF8;
          v309 = *v308;
          *(v306 + 8) = *(v308 + 8);
          *v306 = v309;
          v310 = *(v308 + 16);
          *(v306 + 32) = *(v308 + 32);
          *(v306 + 16) = v310;
          *(v306 + 40) = *(v308 + 40);
          v311 = *(v308 + 104);
          if (*(v306 + 104) == 255)
          {
            if (v311 == 255)
            {
              v337 = *(v308 + 48);
              v338 = *(v308 + 64);
              v339 = *(v308 + 80);
              *(v306 + 89) = *(v308 + 89);
              *(v306 + 64) = v338;
              *(v306 + 80) = v339;
              *(v306 + 48) = v337;
            }

            else
            {
              v387 = v304;
              v327 = *(v308 + 48);
              v328 = *(v308 + 56);
              v329 = *(v308 + 64);
              v330 = *(v308 + 72);
              v331 = *(v308 + 80);
              v332 = *(v308 + 88);
              v333 = *(v308 + 96);
              sub_18E6CFC68(v327, v328, v329, v330, v331, v332, v333, v311, sub_18E6A9F20);
              *(v306 + 48) = v327;
              *(v306 + 56) = v328;
              v304 = v387;
              v305 = v396 | 6;
              *(v306 + 64) = v329;
              *(v306 + 72) = v330;
              v307 = __src | 6;
              *(v306 + 80) = v331;
              *(v306 + 88) = v332;
              *(v306 + 96) = v333;
              *(v306 + 104) = v311;
            }
          }

          else if (v311 == 255)
          {
            sub_18E68B548(v306 + 48, qword_1EAC8E7D8, &unk_18E72E848);
            v335 = *(v308 + 64);
            v334 = *(v308 + 80);
            v336 = *(v308 + 48);
            *(v306 + 89) = *(v308 + 89);
            *(v306 + 64) = v335;
            *(v306 + 80) = v334;
            *(v306 + 48) = v336;
          }

          else
          {
            v386 = v304;
            v312 = *(v308 + 48);
            v313 = *(v308 + 56);
            v314 = *(v308 + 64);
            v315 = *(v308 + 72);
            v316 = *(v308 + 80);
            v317 = *(v308 + 88);
            v318 = *(v308 + 96);
            sub_18E6CFC68(v312, v313, v314, v315, v316, v317, v318, v311, sub_18E6A9F20);
            v319 = *(v306 + 48);
            v320 = *(v306 + 56);
            v321 = *(v306 + 64);
            v322 = *(v306 + 72);
            v323 = *(v306 + 80);
            v324 = *(v306 + 88);
            v325 = *(v306 + 96);
            *(v306 + 48) = v312;
            *(v306 + 56) = v313;
            v307 = __src | 6;
            v304 = v386;
            *(v306 + 64) = v314;
            *(v306 + 72) = v315;
            *(v306 + 80) = v316;
            *(v306 + 88) = v317;
            *(v306 + 96) = v318;
            v305 = v396 | 6;
            v326 = *(v306 + 104);
            *(v306 + 104) = v311;
            sub_18E6CFC68(v319, v320, v321, v322, v323, v324, v325, v326, sub_18E6AF804);
          }

          *(v306 + 105) = *(v308 + 105);
          v340 = (v304 + 49) & 0xFFFFFFFFFFFFFFF8;
          v341 = (v305 + v340 + 106) & 0xFFFFFFFFFFFFFFF8;
          v342 = (v307 + v340 + 106) & 0xFFFFFFFFFFFFFFF8;
          v343 = *v342;
          if (*v341)
          {
            if (v343)
            {
              v344 = *(v342 + 8);
              v345 = *(v341 + 8);
              *v341 = v343;
              *(v341 + 8) = v344;

              goto LABEL_225;
            }

            v347 = *(v341 + 8);
          }

          else if (v343)
          {
            v346 = *(v342 + 8);
            *v341 = v343;
            *(v341 + 8) = v346;

            goto LABEL_225;
          }

          *v341 = *v342;
LABEL_225:
          v348 = *(v342 + 16);
          if (*(v341 + 16))
          {
            if (v348)
            {
              v349 = *(v342 + 24);
              v350 = *(v341 + 24);
              *(v341 + 16) = v348;
              *(v341 + 24) = v349;

LABEL_232:
              v353 = *(v342 + 40);
              v354 = *(v341 + 40);
              *(v341 + 32) = *(v342 + 32);
              *(v341 + 40) = v353;

              *(v341 + 48) = *(v342 + 48);
              v355 = ((v340 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
              v356 = (v392 + v355);
              v357 = (v390 + v355);
              v358 = *(v392 + v355);
              *(v392 + v355) = *(v390 + v355);

              v356[1] = v357[1];
              v356[2] = v357[2];
              v356[3] = v357[3];
              v356[4] = v357[4];
              v359 = ((v356 + 47) & 0xFFFFFFFFFFFFFFF8);
              v360 = ((v357 + 47) & 0xFFFFFFFFFFFFFFF8);
              v361 = *v359;
              *v359 = *v360;

              v359[1] = v360[1];
              v359[2] = v360[2];
              v359[3] = v360[3];
              v359[4] = v360[4];
              v362 = ((v359 + 47) & 0xFFFFFFFFFFFFFFF8);
              v363 = ((v360 + 47) & 0xFFFFFFFFFFFFFFF8);
              v364 = v363[1];
              v365 = v362[1];
              *v362 = *v363;
              v362[1] = v364;

              v366 = (((((v340 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
              v367 = v366 + 16 + v396;
              v368 = v366 + 16 + __src;
              v369 = *v367;
              *v367 = *v368;

              *(v367 + 8) = *(v368 + 8);
              *(v367 + 16) = *(v368 + 16);
              *(v367 + 24) = *(v368 + 24);
              *(v367 + 32) = *(v368 + 32);
              v370 = *(v368 + 40);
              *(v367 + 56) = *(v368 + 56);
              *(v367 + 40) = v370;
              v371 = *(v368 + 72);
              v372 = *(v367 + 72);
              *(v367 + 64) = *(v368 + 64);
              *(v367 + 72) = v371;

              v373 = (v366 + 87) & 0xFFFFFFFFFFFFFFF8;
              v374 = v373 + 16 + v396;
              v375 = v373 + 16 + __src;
              v376 = *v375;
              *(v374 + 16) = *(v375 + 16);
              *v374 = v376;
              v377 = *(v375 + 24);
              *(v374 + 40) = *(v375 + 40);
              *(v374 + 24) = v377;
              v378 = *(v375 + 48);
              *(v374 + 64) = *(v375 + 64);
              *(v374 + 48) = v378;
              *(v374 + 72) = *(v375 + 72);
              v379 = ((v373 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
              v380 = (v379 + v396);
              v381 = (v379 + __src);
              v382 = v381[1];
              v383 = v380[1];
              *v380 = *v381;
              v380[1] = v382;

              return v394;
            }

            v352 = *(v341 + 24);
          }

          else if (v348)
          {
            v351 = *(v342 + 24);
            *(v341 + 16) = v348;
            *(v341 + 24) = v351;

            goto LABEL_232;
          }

          *(v341 + 16) = *(v342 + 16);
          goto LABEL_232;
        }

        v112 = *(v102 + 16);

        v16 = v102 + 32;
      }
    }

    v107 = *v16;

    v21 = v104;
    goto LABEL_111;
  }

  v34 = *(v16 + v22);
  v35 = v34 - 3;
  if (v34 >= 3)
  {
    if (v22 <= 3)
    {
      v36 = v22;
    }

    else
    {
      v36 = 4;
    }

    if (v36 <= 1)
    {
      if (!v36)
      {
        goto LABEL_48;
      }

      v37 = *v16;
      if (v22 < 4)
      {
LABEL_74:
        if ((v37 | (v35 << (8 * v22))) == 0xFFFFFFFF)
        {
          goto LABEL_75;
        }

        goto LABEL_49;
      }
    }

    else if (v36 == 2)
    {
      v37 = *v16;
      if (v22 < 4)
      {
        goto LABEL_74;
      }
    }

    else if (v36 == 3)
    {
      v37 = *v16 | (*(v16 + 2) << 16);
      if (v22 < 4)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v37 = *v16;
      if (v22 < 4)
      {
        goto LABEL_74;
      }
    }

    v34 = v37 + 3;
  }

LABEL_48:
  if (v34 == 2)
  {
LABEL_75:
    v43 = ((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8;
    v40 = a1;
    v46 = v16;
    goto LABEL_76;
  }

LABEL_49:
  v40 = a1;
  v41 = ((v18 + v16) & v15);
  v42 = *(v41 + v20);
  if (v42 <= 2)
  {
    v43 = ((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8;
    if (v42 == 2 || v42 == 1)
    {
      (*(v13 + 8))(v41, v12);
      v44 = ((v41 + v19) & 0xFFFFFFFFFFFFFFF8);
      v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
      if (*v44 >= 0xFFFFFFFFuLL)
      {

        v45 = v44[1];

        v46 = v44 + 3;
LABEL_76:
        v62 = *v46;

        v23 = v43;
      }
    }

    else if (v41[1])
    {

      v47 = v41[2];

      v46 = v41 + 4;
      goto LABEL_76;
    }
  }

  v63 = v40;
  v64 = v23[1];

  v65 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (((v16 + v65 + 10) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v67 = *(v66 + 8);

  v68 = *(((v66 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v69 = (((((v65 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v16 + 16);
  if (*(v16 + 16 + v69 + 48) != 1)
  {
  }

  v71 = (((v69 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v72 = *(v396 + 8 + v71);

  v73 = (((((v71 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = *(v396 + 8 + v73 + 8);

  v75 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = v70[v75 + 40];
  if (v76 != 255)
  {
    sub_18E6CFBE8(*&v70[v75], *&v70[v75 + 8], *&v70[v75 + 16], *&v70[v75 + 24], *&v70[v75 + 32], v76);
  }

  v77 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v396 + v77 + 49) & 0xFFFFFFFFFFFFFFF8;
  v79 = *(v78 + 104);
  if (v79 != 255)
  {
    sub_18E6CFC68(*(v78 + 48), *(v78 + 56), *(v78 + 64), *(v78 + 72), *(v78 + 80), *(v78 + 88), *(v78 + 96), v79, sub_18E6AF804);
  }

  v80 = (v77 + 49) & 0xFFFFFFFFFFFFFFF8;
  v81 = ((v396 + v80 + 113) & 0xFFFFFFFFFFFFFFF8);
  if (*v81)
  {
    v82 = v81[1];
  }

  if (v81[2])
  {
    v83 = v81[3];
  }

  v84 = v81[5];

  v85 = v396 + ((v80 + 113) & 0xFFFFFFFFFFFFFFF8) + 56;
  v87 = (v85 & 0xFFFFFFFFFFFFFFF8) + 47;
  v86 = *(v85 & 0xFFFFFFFFFFFFFFF8);

  v87 &= 0xFFFFFFFFFFFFFFF8;
  v88 = *v87;

  v89 = *(((v87 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);

  v90 = (((((v80 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v91 = &v70[v90];
  v92 = *v91;

  v93 = *(v91 + 9);

  v94 = (((v90 + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8;
  v95 = *(v396 + 8 + v94 + 8);

  memcpy(v396, __src, ((v94 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v63;
}

__n128 sub_18E6D256C(void *a1, uint64_t *a2, uint64_t a3)
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
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 9) = *(v11 + 9);
  *(v10 + 10) = *(v11 + 10);
  *(v10 + 11) = *(v11 + 11);
  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 80) & 0xF8;
  v14 = v13 + 19 + v10;
  v15 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & v15;
  v17 = (v13 + 19 + v11) & v15;
  v18 = v13 + 16;
  v19 = (v13 + 16) & v15;
  v20 = *(v12 + 64) + 7;
  if ((v20 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v21 = 40;
  }

  else
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((v19 + v21) | 2) <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = (v19 + v21) | 2;
  }

  v23 = v17 | 7;
  v24 = (((v17 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  if (*v24 < 0xFFFFFFFFuLL)
  {
    memcpy((v14 & v15), v17, (((((((((((((((((((((((((((((((((((((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    return result;
  }

  v25 = *(v17 + v22);
  v26 = v25 - 3;
  if (v25 >= 3)
  {
    if (v22 <= 3)
    {
      v27 = v22;
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

      v28 = *v17;
      if (v22 < 4)
      {
LABEL_36:
        v45 = v28 | (v26 << (8 * v22));
        v25 = v45 + 3;
        if (v45 == -1)
        {
          goto LABEL_37;
        }

LABEL_24:
        v30 = v21 | 1;
        if (v25 == 1)
        {
          v31 = *v17;
          *((v14 & v15) + 8) = *(v17 + 8);
          *v16 = v31;
          v32 = ((v18 + v16) & v15);
          v33 = ((v18 + v17) & v15);
          v34 = *(v33 + v21);
          if (v34 > 2)
          {
            memcpy(((v18 + v16) & v15), ((v18 + v17) & v15), v21 | 1);
            v23 = v17 | 7;
          }

          else if (v34 == 2)
          {
            (*(v12 + 32))((v18 + v16) & v15, (v18 + v17) & v15);
            v23 = v17 | 7;
            v47 = ((v32 + v20) & 0xFFFFFFFFFFFFFFF8);
            v48 = ((v33 + v20) & 0xFFFFFFFFFFFFFFF8);
            v49 = v48[1];
            *v47 = *v48;
            v47[1] = v49;
            *(v32 + v21) = 2;
          }

          else if (v34 == 1)
          {
            (*(v12 + 32))((v18 + v16) & v15, (v18 + v17) & v15);
            v23 = v17 | 7;
            v35 = ((v32 + v20) & 0xFFFFFFFFFFFFFFF8);
            v36 = ((v33 + v20) & 0xFFFFFFFFFFFFFFF8);
            v37 = v36[1];
            *v35 = *v36;
            v35[1] = v37;
            *(v32 + v21) = 1;
          }

          else
          {
            v50 = *v33;
            v51 = *(((v18 + v17) & v15) + 0x10);
            *(((v18 + v16) & v15) + 0x20) = *(((v18 + v17) & v15) + 0x20);
            *v32 = v50;
            *(((v18 + v16) & v15) + 0x10) = v51;
            *(v32 + v21) = 0;
          }

          *(v32 + v30) = *(v33 + v30);
          v46 = 1;
        }

        else
        {
          v38 = *v17;
          *((v14 & v15) + 8) = *(v17 + 8);
          *v16 = v38;
          v39 = ((v18 + v16) & v15);
          v40 = ((v18 + v17) & v15);
          v41 = *(v40 + v21);
          if (v41 > 2)
          {
            memcpy(((v18 + v16) & v15), ((v18 + v17) & v15), v21 | 1);
            v23 = v17 | 7;
          }

          else if (v41 == 2)
          {
            (*(v12 + 32))((v18 + v16) & v15, (v18 + v17) & v15);
            v23 = v17 | 7;
            v52 = ((v39 + v20) & 0xFFFFFFFFFFFFFFF8);
            v53 = ((v40 + v20) & 0xFFFFFFFFFFFFFFF8);
            v54 = v53[1];
            *v52 = *v53;
            v52[1] = v54;
            *(v39 + v21) = 2;
          }

          else if (v41 == 1)
          {
            (*(v12 + 32))((v18 + v16) & v15, (v18 + v17) & v15);
            v23 = v17 | 7;
            v42 = ((v39 + v20) & 0xFFFFFFFFFFFFFFF8);
            v43 = ((v40 + v20) & 0xFFFFFFFFFFFFFFF8);
            v44 = v43[1];
            *v42 = *v43;
            v42[1] = v44;
            *(v39 + v21) = 1;
          }

          else
          {
            v55 = *v40;
            v56 = *(((v18 + v17) & v15) + 0x10);
            *(((v18 + v16) & v15) + 0x20) = *(((v18 + v17) & v15) + 0x20);
            *v39 = v55;
            *(((v18 + v16) & v15) + 0x10) = v56;
            *(v39 + v21) = 0;
          }

          v46 = 0;
          *(v39 + v30) = *(v40 + v30);
        }

        goto LABEL_44;
      }
    }

    else if (v27 == 2)
    {
      v28 = *v17;
      if (v22 < 4)
      {
        goto LABEL_36;
      }
    }

    else if (v27 == 3)
    {
      v28 = *v17 | (*(v17 + 2) << 16);
      if (v22 < 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v28 = *v17;
      if (v22 < 4)
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
  *v16 = *v17;
  v46 = 2;
LABEL_44:
  *(v16 + v22) = v46;
  v57 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  *v57 = *v24;
  v58 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v58 = *v59;
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v60 = *v61;
  *(v60 + 8) = *(v61 + 8);
  *(v60 + 9) = *(v61 + 9);
  v62 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = v62 + 10 + v16;
  v64 = v62 + 10 + v17;
  *v63 = *v64;
  v63 &= 0xFFFFFFFFFFFFFFF8;
  v64 &= 0xFFFFFFFFFFFFFFF8;
  *(v63 + 8) = *(v64 + 8);
  v65 = ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  *((v65 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v66 + 23) & 0xFFFFFFFFFFFFFFF8);
  v67 = (((((v62 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 16 + v16);
  v69 = (v67 + 16 + v17);
  v70 = *v69;
  v71 = *(v69 + 1);
  v72 = *(v69 + 2);
  *(v68 + 6) = *(v69 + 6);
  *(v68 + 1) = v71;
  *(v68 + 2) = v72;
  *v68 = v70;
  v73 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v73 + 56 + v16) = *(v73 + 56 + v17);
  v74 = (v73 + 63) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 8 + v17);
  v76 = (v74 + 8 + v16);
  *v76 = *v75;
  v77 = ((v75 + 15) & 0xFFFFFFFFFFFFFFF8);
  v78 = ((v76 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v78 = *v77;
  *((v78 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v77 + 15) & 0xFFFFFFFFFFFFFFF8);
  v79 = (((((v74 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v79 + 8 + v16) = *(v79 + 8 + v17);
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 16 + v16);
  v82 = (v80 + 16 + v17);
  v83 = *v82;
  v84 = *(v82 + 1);
  *(v81 + 26) = *(v82 + 26);
  *v81 = v83;
  v81[1] = v84;
  v85 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = (((v16 | 6) + v85 + 42) & 0xFFFFFFFFFFFFFFF8);
  v87 = (((v17 | 6) + v85 + 42) & 0xFFFFFFFFFFFFFFF8);
  v89 = v87[4];
  v88 = v87[5];
  v90 = v87[3];
  *(v86 + 90) = *(v87 + 90);
  v86[4] = v89;
  v86[5] = v88;
  v86[3] = v90;
  v91 = *v87;
  v92 = v87[2];
  v86[1] = v87[1];
  v86[2] = v92;
  *v86 = v91;
  v93 = (v85 + 49) & 0xFFFFFFFFFFFFFFF8;
  v94 = ((v16 | 6) + v93 + 106) & 0xFFFFFFFFFFFFFFF8;
  v95 = ((v17 | 6) + v93 + 106) & 0xFFFFFFFFFFFFFFF8;
  v96 = *v95;
  v97 = *(v95 + 32);
  *(v94 + 16) = *(v95 + 16);
  *(v94 + 32) = v97;
  *v94 = v96;
  *(v94 + 48) = *(v95 + 48);
  v98 = ((v93 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
  v99 = (v16 | 7) + v98;
  v100 = v23 + v98;
  v101 = *v100;
  v102 = *(v100 + 16);
  *(v99 + 32) = *(v100 + 32);
  *v99 = v101;
  *(v99 + 16) = v102;
  v103 = (v99 + 47) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v100 + 47) & 0xFFFFFFFFFFFFFFF8;
  v105 = *v104;
  v106 = *(v104 + 16);
  *(v103 + 32) = *(v104 + 32);
  *v103 = v105;
  *(v103 + 16) = v106;
  *((v103 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v104 + 47) & 0xFFFFFFFFFFFFFFF8);
  v107 = (((((v93 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v107 + 16 + v16);
  v109 = (v107 + 16 + v17);
  v110 = *v109;
  v111 = *(v109 + 1);
  v112 = *(v109 + 2);
  *(v108 + 41) = *(v109 + 41);
  v108[1] = v111;
  v108[2] = v112;
  *v108 = v110;
  v108[4] = *(v109 + 4);
  v113 = (v107 + 87) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v113 + 16 + v16);
  v115 = (v113 + 16 + v17);
  *v114 = *v115;
  v116 = *(v115 + 1);
  v117 = *(v115 + 2);
  v118 = *(v115 + 3);
  v114[64] = v115[64];
  *(v114 + 2) = v117;
  *(v114 + 3) = v118;
  *(v114 + 1) = v116;
  *(v114 + 9) = *(v115 + 9);
  v119 = ((v113 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
  result = *(v119 + v17);
  *(v119 + v16) = result;
  return result;
}

void *sub_18E6D2D3C(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 9) = *(v12 + 9);
  *(v11 + 10) = *(v12 + 10);
  *(v11 + 11) = *(v12 + 11);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 19 + v11) & v16;
  v18 = (v15 + 19 + v12) & v16;
  v19 = v15 + 16;
  v20 = (v15 + 16) & v16;
  v21 = *(v14 + 64) + 7;
  if ((v21 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v22 = 40;
  }

  else
  {
    v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v23 = v22 | 1;
  if (((v20 + v22) | 2) <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = (v20 + v22) | 2;
  }

  v25 = v17 | 7;
  v26 = (((v17 | 7) + (v24 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v27 = v18 | 7;
  v28 = (((v18 | 7) + (v24 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v29 = *v28;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    if (v29 < 0xFFFFFFFF)
    {
      memcpy(v17, v18, (((((((((((((((((((((((((((((((((((((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      return v3;
    }

    v34 = *(v18 + v24);
    v35 = v34 - 3;
    if (v34 >= 3)
    {
      if (v24 <= 3)
      {
        v36 = v24;
      }

      else
      {
        v36 = 4;
      }

      if (v36 <= 1)
      {
        if (!v36)
        {
          goto LABEL_46;
        }

        v37 = *v18;
        if (v24 < 4)
        {
LABEL_69:
          v69 = v37 | (v35 << (8 * v24));
          v34 = v69 + 3;
          if (v69 == -1)
          {
            goto LABEL_70;
          }

          goto LABEL_47;
        }
      }

      else if (v36 == 2)
      {
        v37 = *v18;
        if (v24 < 4)
        {
          goto LABEL_69;
        }
      }

      else if (v36 == 3)
      {
        v37 = *v18 | (*(v18 + 2) << 16);
        if (v24 < 4)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v37 = *v18;
        if (v24 < 4)
        {
          goto LABEL_69;
        }
      }

      v34 = v37 + 3;
    }

LABEL_46:
    if (v34 == 2)
    {
LABEL_70:
      *v17 = *v18;
      v70 = 2;
LABEL_99:
      *(v17 + v24) = v70;
      *v26 = *v28;
      v117 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
      v118 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v117 = *v118;
      v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
      v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v119 = *v120;
      *(v119 + 8) = *(v120 + 8);
      *(v119 + 9) = *(v120 + 9);
      v121 = ((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v122 = v121 + 10 + v17;
      v123 = v121 + 10 + v18;
      *v122 = *v123;
      v122 &= 0xFFFFFFFFFFFFFFF8;
      v123 &= 0xFFFFFFFFFFFFFFF8;
      *(v122 + 8) = *(v123 + 8);
      v124 = ((v122 + 31) & 0xFFFFFFFFFFFFFFF8);
      v125 = ((v123 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v124 = *v125;
      *((v124 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v125 + 23) & 0xFFFFFFFFFFFFFFF8);
      v126 = (((((v121 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v127 = (v126 + 16 + v17);
      v128 = (v126 + 16 + v18);
      v129 = *v128;
      v130 = *(v128 + 1);
      v131 = *(v128 + 2);
      *(v127 + 6) = *(v128 + 6);
      *(v127 + 1) = v130;
      *(v127 + 2) = v131;
      *v127 = v129;
      v132 = (v126 + 23) & 0xFFFFFFFFFFFFFFF8;
      *(v132 + 56 + v17) = *(v132 + 56 + v18);
      v133 = (v132 + 63) & 0xFFFFFFFFFFFFFFF8;
      v134 = (v133 + 8 + v18);
      v135 = (v133 + 8 + v17);
      *v135 = *v134;
      v136 = ((v134 + 15) & 0xFFFFFFFFFFFFFFF8);
      v137 = ((v135 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v137 = *v136;
      *((v137 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v136 + 15) & 0xFFFFFFFFFFFFFFF8);
      v138 = (((((v133 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v138 + 8 + v17) = *(v138 + 8 + v18);
      v139 = (v138 + 15) & 0xFFFFFFFFFFFFFFF8;
      v140 = (v139 + 16 + v17);
      v141 = (v139 + 16 + v18);
      v142 = *v141;
      v143 = *(v141 + 1);
      *(v140 + 26) = *(v141 + 26);
      *v140 = v142;
      *(v140 + 1) = v143;
      v144 = (v139 + 23) & 0xFFFFFFFFFFFFFFF8;
      v145 = (((v17 | 6) + v144 + 42) & 0xFFFFFFFFFFFFFFF8);
      v146 = (((v18 | 6) + v144 + 42) & 0xFFFFFFFFFFFFFFF8);
      v148 = v146[4];
      v147 = v146[5];
      v149 = v146[3];
      *(v145 + 90) = *(v146 + 90);
      v145[4] = v148;
      v145[5] = v147;
      v145[3] = v149;
      v150 = *v146;
      v151 = v146[2];
      v145[1] = v146[1];
      v145[2] = v151;
      *v145 = v150;
      v152 = (v144 + 49) & 0xFFFFFFFFFFFFFFF8;
      v153 = ((v17 | 6) + v152 + 106) & 0xFFFFFFFFFFFFFFF8;
      v154 = ((v18 | 6) + v152 + 106) & 0xFFFFFFFFFFFFFFF8;
      v155 = *v154;
      v156 = *(v154 + 32);
      *(v153 + 16) = *(v154 + 16);
      *(v153 + 32) = v156;
      *v153 = v155;
      *(v153 + 48) = *(v154 + 48);
      v157 = ((v152 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
      v158 = v25 + v157;
      v159 = v27 + v157;
      v160 = *v159;
      v161 = *(v159 + 16);
      *(v158 + 32) = *(v159 + 32);
      *v158 = v160;
      *(v158 + 16) = v161;
      v162 = (v158 + 47) & 0xFFFFFFFFFFFFFFF8;
      v163 = (v159 + 47) & 0xFFFFFFFFFFFFFFF8;
      v164 = *v163;
      v165 = *(v163 + 16);
      *(v162 + 32) = *(v163 + 32);
      *v162 = v164;
      *(v162 + 16) = v165;
      *((v162 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v163 + 47) & 0xFFFFFFFFFFFFFFF8);
      v166 = (((((v152 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
      v167 = (v166 + 16 + v17);
      v168 = (v166 + 16 + v18);
      v169 = *v168;
      v170 = *(v168 + 1);
      v171 = *(v168 + 2);
      *(v167 + 41) = *(v168 + 41);
      *(v167 + 1) = v170;
      *(v167 + 2) = v171;
      *v167 = v169;
      *(v167 + 4) = *(v168 + 4);
      v172 = (v166 + 87) & 0xFFFFFFFFFFFFFFF8;
      v173 = (v172 + 16 + v17);
      v174 = (v172 + 16 + v18);
      *v173 = *v174;
      v175 = *(v174 + 1);
      v176 = *(v174 + 2);
      v177 = *(v174 + 3);
      v173[64] = v174[64];
      *(v173 + 2) = v176;
      *(v173 + 3) = v177;
      *(v173 + 1) = v175;
      *(v173 + 9) = *(v174 + 9);
      *(((v172 + 95) & 0xFFFFFFFFFFFFFFF8) + 8 + v17) = *(((v172 + 95) & 0xFFFFFFFFFFFFFFF8) + 8 + v18);
      return v3;
    }

LABEL_47:
    if (v34 == 1)
    {
      v42 = *v18;
      *(v17 + 8) = *(v18 + 8);
      *v17 = v42;
      v43 = ((v19 + v17) & v16);
      v44 = ((v19 + v18) & v16);
      v45 = *(v44 + v22);
      if (v45 > 2)
      {
        v60 = v22 | 1;
        memcpy(v43, v44, v23);
        v27 = v18 | 7;
        v25 = v17 | 7;
LABEL_92:
        *(v43 + v60) = *(v44 + v60);
        v70 = 1;
LABEL_98:
        v3 = a1;
        goto LABEL_99;
      }

      if (v45 == 2)
      {
        v105 = v21;
        (*(v14 + 32))(v43, v44);
        v27 = v18 | 7;
        v25 = v17 | 7;
        v106 = ((v43 + v105) & 0xFFFFFFFFFFFFFFF8);
        v107 = ((v44 + v105) & 0xFFFFFFFFFFFFFFF8);
        v108 = v107[1];
        *v106 = *v107;
        v106[1] = v108;
        v50 = 2;
      }

      else
      {
        if (v45 != 1)
        {
          v109 = *v44;
          v110 = v44[1];
          *(v43 + 4) = *(v44 + 4);
          *v43 = v109;
          v43[1] = v110;
          *(v43 + v22) = 0;
          goto LABEL_91;
        }

        v46 = v21;
        (*(v14 + 32))(v43, v44);
        v27 = v18 | 7;
        v25 = v17 | 7;
        v47 = ((v43 + v46) & 0xFFFFFFFFFFFFFFF8);
        v48 = ((v44 + v46) & 0xFFFFFFFFFFFFFFF8);
        v49 = v48[1];
        *v47 = *v48;
        v47[1] = v49;
        v50 = 1;
      }

      *(v43 + v22) = v50;
LABEL_91:
      v60 = v22 | 1;
      goto LABEL_92;
    }

    v51 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *v17 = v51;
    v52 = ((v19 + v17) & v16);
    v53 = ((v19 + v18) & v16);
    v54 = *(v53 + v22);
    if (v54 > 2)
    {
      v61 = v22 | 1;
      memcpy(v52, v53, v23);
      v27 = v18 | 7;
      v25 = v17 | 7;
LABEL_97:
      v70 = 0;
      *(v52 + v61) = *(v53 + v61);
      goto LABEL_98;
    }

    if (v54 == 2)
    {
      v111 = v21;
      (*(v14 + 32))(v52, v53);
      v27 = v18 | 7;
      v25 = v17 | 7;
      v112 = ((v52 + v111) & 0xFFFFFFFFFFFFFFF8);
      v113 = ((v53 + v111) & 0xFFFFFFFFFFFFFFF8);
      v114 = v113[1];
      *v112 = *v113;
      v112[1] = v114;
      v59 = 2;
    }

    else
    {
      if (v54 != 1)
      {
        v115 = *v53;
        v116 = v53[1];
        *(v52 + 4) = *(v53 + 4);
        *v52 = v115;
        v52[1] = v116;
        *(v52 + v22) = 0;
        goto LABEL_96;
      }

      v55 = v21;
      (*(v14 + 32))(v52, v53);
      v27 = v18 | 7;
      v25 = v17 | 7;
      v56 = ((v52 + v55) & 0xFFFFFFFFFFFFFFF8);
      v57 = ((v53 + v55) & 0xFFFFFFFFFFFFFFF8);
      v58 = v57[1];
      *v56 = *v57;
      v56[1] = v58;
      v59 = 1;
    }

    *(v52 + v22) = v59;
LABEL_96:
    v61 = v22 | 1;
    goto LABEL_97;
  }

  if (v29 >= 0xFFFFFFFF)
  {
    v339 = v18 | 7;
    if (v17 == v18)
    {
      goto LABEL_157;
    }

    v30 = *(v17 + v24);
    v31 = v30 - 3;
    if (v30 >= 3)
    {
      if (v24 <= 3)
      {
        v32 = v24;
      }

      else
      {
        v32 = 4;
      }

      if (v32 <= 1)
      {
        if (!v32)
        {
          goto LABEL_105;
        }

        v33 = *v17;
      }

      else if (v32 == 2)
      {
        v33 = *v17;
      }

      else if (v32 == 3)
      {
        v33 = *v17 | (*(v17 + 2) << 16);
      }

      else
      {
        v33 = *v17;
      }

      if (v24 < 4)
      {
        v30 = (v33 | (v31 << (8 * v24))) + 3;
      }

      else
      {
        v30 = v33 + 3;
      }
    }

LABEL_105:
    v332 = *(*(v13 - 8) + 64) + 7;
    v333 = v13;
    if (v30 == 2)
    {
      v334 = v17 | 7;
      v180 = v17;
    }

    else
    {
      v178 = (v19 + v17) & v16;
      v179 = *(v178 + v22);
      if (v179 > 2)
      {
        goto LABEL_116;
      }

      v334 = v17 | 7;
      if (v179 == 2 || v179 == 1)
      {
        (*(v14 + 8))((v19 + v17) & v16, v13);
        v181 = ((v332 + v178) & 0xFFFFFFFFFFFFFFF8);
        v25 = v17 | 7;
        v23 = v22 | 1;
        if (*v181 < 0xFFFFFFFFuLL)
        {
          goto LABEL_116;
        }

        v182 = v181[1];

        v180 = v181 + 3;
      }

      else
      {
        v25 = v17 | 7;
        v23 = v22 | 1;
        if (!*(((v19 + v17) & v16) + 8))
        {
          goto LABEL_116;
        }

        v183 = *(((v19 + v17) & v16) + 0x10);

        v180 = (v178 + 32);
      }
    }

    v184 = *v180;

    v25 = v334;
    v23 = v22 | 1;
LABEL_116:
    v185 = *(v18 + v24);
    v186 = v185 - 3;
    v3 = a1;
    if (v185 < 3)
    {
      v188 = v333;
      goto LABEL_132;
    }

    if (v24 <= 3)
    {
      v187 = v24;
    }

    else
    {
      v187 = 4;
    }

    v188 = v333;
    if (v187 <= 1)
    {
      if (!v187)
      {
        goto LABEL_132;
      }

      v189 = *v18;
    }

    else if (v187 == 2)
    {
      v189 = *v18;
    }

    else if (v187 == 3)
    {
      v189 = *v18 | (*(v18 + 2) << 16);
    }

    else
    {
      v189 = *v18;
    }

    if (v24 < 4)
    {
      v185 = (v189 | (v186 << (8 * v24))) + 3;
    }

    else
    {
      v185 = v189 + 3;
    }

LABEL_132:
    if (v185 == 2)
    {
      *v17 = *v18;
      v198 = 2;
LABEL_156:
      *(v17 + v24) = v198;
LABEL_157:
      v221 = v25;
      v222 = *((((v17 | 7) + (v24 | 1)) & 0xFFFFFFFFFFFFFFF8) + 8);
      v224 = *v28;
      v223 = v28 + 23;
      *v26 = v224;

      v225 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v225 = *(v223 & 0xFFFFFFFFFFFFFFF8);
      v226 = (v225 + 15) & 0xFFFFFFFFFFFFFFF8;
      v227 = ((v223 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      *v226 = *v227;
      *(v226 + 8) = *(v227 + 8);
      *(v226 + 9) = *(v227 + 9);
      v228 = ((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v229 = v228 + 10 + v17;
      v230 = v228 + 10 + v18;
      *v229 = *v230;
      v229 &= 0xFFFFFFFFFFFFFFF8;
      v230 &= 0xFFFFFFFFFFFFFFF8;
      *(v229 + 8) = *(v230 + 8);
      *(v229 + 16) = *(v230 + 16);
      v231 = ((v229 + 31) & 0xFFFFFFFFFFFFFFF8);
      v232 = ((v230 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v231 = *v232;
      v233 = v231[1];
      v231[1] = v232[1];

      v234 = (v231 + 23) & 0xFFFFFFFFFFFFFFF8;
      v235 = *(v234 + 8);
      *v234 = *((v232 + 23) & 0xFFFFFFFFFFFFFFF8);

      v236 = (((((v228 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v237 = (v236 + 16 + v17);
      v238 = (v236 + 16 + v18);
      if (*(v237 + 6) == 1)
      {
        v239 = *v238;
        v240 = *(v238 + 1);
        v241 = *(v238 + 2);
        *(v237 + 6) = *(v238 + 6);
        *(v237 + 1) = v240;
        *(v237 + 2) = v241;
        *v237 = v239;
      }

      else if (*(v238 + 6) == 1)
      {
        sub_18E6AC114(v236 + 16 + v17);
        v243 = *(v238 + 1);
        v242 = *(v238 + 2);
        v244 = *v238;
        *(v237 + 6) = *(v238 + 6);
        *(v237 + 1) = v243;
        *(v237 + 2) = v242;
        *v237 = v244;
      }

      else
      {
        *v237 = *v238;
        *(v237 + 1) = *(v238 + 1);
        *(v237 + 2) = *(v238 + 2);
        *(v237 + 3) = *(v238 + 3);
        *(v237 + 4) = *(v238 + 4);
        *(v237 + 5) = *(v238 + 5);
        *(v237 + 6) = *(v238 + 6);
      }

      v245 = (v236 + 23) & 0xFFFFFFFFFFFFFFF8;
      *(v245 + 56 + v17) = *(v245 + 56 + v18);
      v246 = (v245 + 63) & 0xFFFFFFFFFFFFFFF8;
      v247 = v246 + 8 + v17;
      v248 = v246 + 8 + v18;
      v249 = *v247;
      v250 = *v248;
      v248 += 15;
      *v247 = v250;
      v247 += 15;

      *(v247 & 0xFFFFFFFFFFFFFFF8) = *(v248 & 0xFFFFFFFFFFFFFFF8);
      *(((v247 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *(((v248 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v251 = (((((v246 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v252 = (v251 + 8 + v17);
      v253 = *(v252 + 1);
      *v252 = *(v251 + 8 + v18);

      v254 = (v251 + 15) & 0xFFFFFFFFFFFFFFF8;
      v255 = (v254 + 16 + v17);
      v256 = (v254 + 16 + v18);
      v257 = v255[40];
      if (v257 == 255)
      {
        v259 = v3;
        v267 = *v256;
        v268 = *(v256 + 1);
        *(v255 + 25) = *(v256 + 25);
        *v255 = v267;
        *(v255 + 1) = v268;
      }

      else
      {
        v258 = v256[40];
        v259 = v3;
        if (v258 == 255)
        {
          sub_18E68B548(v254 + 16 + v17, &qword_1EAC8E7D0, &qword_18E72E840);
          v269 = *(v256 + 25);
          v270 = *(v256 + 1);
          *v255 = *v256;
          *(v255 + 1) = v270;
          *(v255 + 25) = v269;
        }

        else
        {
          v260 = *(v256 + 4);
          v261 = *v255;
          v262 = *(v255 + 1);
          v263 = *(v255 + 2);
          v264 = *(v255 + 3);
          v265 = *(v255 + 4);
          v266 = *(v256 + 1);
          *v255 = *v256;
          *(v255 + 1) = v266;
          *(v255 + 4) = v260;
          v255[40] = v258;
          sub_18E6CFBE8(v261, v262, v263, v264, v265, v257);
        }
      }

      v255[41] = v256[41];
      v271 = (v254 + 23) & 0xFFFFFFFFFFFFFFF8;
      v272 = ((v17 | 6) + v271 + 42) & 0xFFFFFFFFFFFFFFF8;
      v273 = ((v18 | 6) + v271 + 42) & 0xFFFFFFFFFFFFFFF8;
      v274 = *v273;
      *(v272 + 8) = *(v273 + 8);
      *v272 = v274;
      v275 = *(v273 + 16);
      *(v272 + 32) = *(v273 + 32);
      *(v272 + 16) = v275;
      *(v272 + 40) = *(v273 + 40);
      v276 = *(v272 + 104);
      if (v276 == 255)
      {
        v288 = *(v273 + 48);
        v289 = *(v273 + 64);
        v290 = *(v273 + 80);
        *(v272 + 89) = *(v273 + 89);
        *(v272 + 64) = v289;
        *(v272 + 80) = v290;
        *(v272 + 48) = v288;
      }

      else
      {
        v277 = *(v273 + 104);
        if (v277 == 255)
        {
          sub_18E68B548(v272 + 48, qword_1EAC8E7D8, &unk_18E72E848);
          v292 = *(v273 + 64);
          v291 = *(v273 + 80);
          v293 = *(v273 + 48);
          *(v272 + 89) = *(v273 + 89);
          *(v272 + 64) = v292;
          *(v272 + 80) = v291;
          *(v272 + 48) = v293;
        }

        else
        {
          v278 = *(v273 + 96);
          v279 = *(v272 + 48);
          v280 = *(v272 + 56);
          v281 = *(v272 + 64);
          v282 = *(v272 + 72);
          v283 = *(v272 + 80);
          v284 = *(v272 + 88);
          v285 = *(v272 + 96);
          v286 = *(v273 + 64);
          v287 = *(v273 + 80);
          *(v272 + 48) = *(v273 + 48);
          *(v272 + 64) = v286;
          *(v272 + 80) = v287;
          *(v272 + 96) = v278;
          *(v272 + 104) = v277;
          sub_18E6CFC68(v279, v280, v281, v282, v283, v284, v285, v276, sub_18E6AF804);
        }
      }

      *(v272 + 105) = *(v273 + 105);
      v294 = (v271 + 49) & 0xFFFFFFFFFFFFFFF8;
      v295 = ((v17 | 6) + v294 + 106) & 0xFFFFFFFFFFFFFFF8;
      v296 = ((v18 | 6) + v294 + 106) & 0xFFFFFFFFFFFFFFF8;
      v297 = *v296;
      if (*v295)
      {
        if (v297)
        {
          v298 = *(v296 + 8);
          v299 = *(v295 + 8);
          *v295 = v297;
          *(v295 + 8) = v298;

          goto LABEL_179;
        }

        v301 = *(v295 + 8);
      }

      else if (v297)
      {
        v300 = *(v296 + 8);
        *v295 = v297;
        *(v295 + 8) = v300;
        goto LABEL_179;
      }

      *v295 = *v296;
LABEL_179:
      v302 = *(v296 + 16);
      if (*(v295 + 16))
      {
        if (v302)
        {
          v303 = *(v296 + 24);
          v304 = *(v295 + 24);
          *(v295 + 16) = v302;
          *(v295 + 24) = v303;

LABEL_186:
          v3 = v259;
          v307 = *(v295 + 40);
          *(v295 + 32) = *(v296 + 32);

          *(v295 + 48) = *(v296 + 48);
          v308 = ((v294 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
          v309 = (v221 + v308);
          v310 = (v339 + v308);
          v311 = *(v221 + v308);
          *(v221 + v308) = *(v339 + v308);

          v309[1] = v310[1];
          v309[2] = v310[2];
          v309[3] = v310[3];
          v309[4] = v310[4];
          v312 = ((v309 + 47) & 0xFFFFFFFFFFFFFFF8);
          v313 = ((v310 + 47) & 0xFFFFFFFFFFFFFFF8);
          v314 = *v312;
          *v312 = *v313;

          v312[1] = v313[1];
          v312[2] = v313[2];
          v312[3] = v313[3];
          v312[4] = v313[4];
          v315 = (v312 + 47) & 0xFFFFFFFFFFFFFFF8;
          v316 = *(v315 + 8);
          *v315 = *((v313 + 47) & 0xFFFFFFFFFFFFFFF8);

          v317 = (((((v294 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
          v318 = (v317 + 16 + v17);
          v319 = (v317 + 16 + v18);
          v320 = *v318;
          *v318 = *v319;

          *(v318 + 1) = *(v319 + 1);
          *(v318 + 2) = *(v319 + 2);
          *(v318 + 3) = *(v319 + 3);
          *(v318 + 4) = *(v319 + 4);
          v321 = *(v319 + 40);
          v318[56] = v319[56];
          *(v318 + 40) = v321;
          v322 = *(v318 + 9);
          *(v318 + 4) = *(v319 + 4);

          v323 = (v317 + 87) & 0xFFFFFFFFFFFFFFF8;
          v324 = (v323 + 16 + v17);
          v325 = (v323 + 16 + v18);
          v326 = *v325;
          v324[16] = v325[16];
          *v324 = v326;
          v327 = *(v325 + 24);
          v324[40] = v325[40];
          *(v324 + 24) = v327;
          v328 = *(v325 + 3);
          v324[64] = v325[64];
          *(v324 + 3) = v328;
          *(v324 + 9) = *(v325 + 9);
          v329 = ((v323 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
          v330 = *(v329 + v17 + 8);
          *(v329 + v17) = *(v329 + v18);

          return v3;
        }

        v306 = *(v295 + 24);
      }

      else if (v302)
      {
        v305 = *(v296 + 24);
        *(v295 + 16) = v302;
        *(v295 + 24) = v305;
        goto LABEL_186;
      }

      *(v295 + 16) = *(v296 + 16);
      goto LABEL_186;
    }

    if (v185 == 1)
    {
      v190 = *v18;
      *(v17 + 8) = *(v18 + 8);
      *v17 = v190;
      v191 = ((v19 + v17) & v16);
      v192 = ((v19 + v18) & v16);
      v193 = *(v192 + v22);
      if (v193 > 2)
      {
        v207 = v23;
        v208 = v25;
        memcpy(v191, v192, v23);
        v25 = v208;
LABEL_149:
        *(v191 + v207) = *(v192 + v207);
        v198 = 1;
LABEL_155:
        v3 = a1;
        goto LABEL_156;
      }

      if (v193 == 2)
      {
        v337 = v25;
        (*(v14 + 32))(v191, v192, v188);
        v25 = v337;
        v211 = ((v191 + v332) & 0xFFFFFFFFFFFFFFF8);
        v212 = ((v192 + v332) & 0xFFFFFFFFFFFFFFF8);
        v213 = v212[1];
        *v211 = *v212;
        v211[1] = v213;
        v197 = 2;
      }

      else
      {
        if (v193 != 1)
        {
          v214 = *v192;
          v215 = v192[1];
          *(v191 + 4) = *(v192 + 4);
          *v191 = v214;
          v191[1] = v215;
          *(v191 + v22) = 0;
          goto LABEL_148;
        }

        v335 = v25;
        (*(v14 + 32))(v191, v192, v188);
        v25 = v335;
        v194 = ((v191 + v332) & 0xFFFFFFFFFFFFFFF8);
        v195 = ((v192 + v332) & 0xFFFFFFFFFFFFFFF8);
        v196 = v195[1];
        *v194 = *v195;
        v194[1] = v196;
        v197 = 1;
      }

      *(v191 + v22) = v197;
LABEL_148:
      v207 = v22 | 1;
      goto LABEL_149;
    }

    v199 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *v17 = v199;
    v200 = ((v19 + v17) & v16);
    v201 = ((v19 + v18) & v16);
    v202 = *(v201 + v22);
    if (v202 > 2)
    {
      v209 = v23;
      v210 = v25;
      memcpy(v200, v201, v23);
      v25 = v210;
LABEL_154:
      v198 = 0;
      *(v200 + v209) = *(v201 + v209);
      goto LABEL_155;
    }

    if (v202 == 2)
    {
      v338 = v25;
      (*(v14 + 32))(v200, v201, v188);
      v25 = v338;
      v216 = ((v200 + v332) & 0xFFFFFFFFFFFFFFF8);
      v217 = ((v201 + v332) & 0xFFFFFFFFFFFFFFF8);
      v218 = v217[1];
      *v216 = *v217;
      v216[1] = v218;
      v206 = 2;
    }

    else
    {
      if (v202 != 1)
      {
        v219 = *v201;
        v220 = v201[1];
        *(v200 + 4) = *(v201 + 4);
        *v200 = v219;
        v200[1] = v220;
        *(v200 + v22) = 0;
        goto LABEL_153;
      }

      v336 = v25;
      (*(v14 + 32))(v200, v201, v188);
      v25 = v336;
      v203 = ((v200 + v332) & 0xFFFFFFFFFFFFFFF8);
      v204 = ((v201 + v332) & 0xFFFFFFFFFFFFFFF8);
      v205 = v204[1];
      *v203 = *v204;
      v203[1] = v205;
      v206 = 1;
    }

    *(v200 + v22) = v206;
LABEL_153:
    v209 = v22 | 1;
    goto LABEL_154;
  }

  v38 = *(v17 + v24);
  v39 = v38 - 3;
  if (v38 >= 3)
  {
    if (v24 <= 3)
    {
      v40 = v24;
    }

    else
    {
      v40 = 4;
    }

    if (v40 <= 1)
    {
      if (!v40)
      {
        goto LABEL_60;
      }

      v41 = *v17;
      if (v24 < 4)
      {
LABEL_72:
        if ((v41 | (v39 << (8 * v24))) == 0xFFFFFFFF)
        {
          goto LABEL_73;
        }

        goto LABEL_61;
      }
    }

    else if (v40 == 2)
    {
      v41 = *v17;
      if (v24 < 4)
      {
        goto LABEL_72;
      }
    }

    else if (v40 == 3)
    {
      v41 = *v17 | (*(v17 + 2) << 16);
      if (v24 < 4)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v41 = *v17;
      if (v24 < 4)
      {
        goto LABEL_72;
      }
    }

    v38 = v41 + 3;
  }

LABEL_60:
  if (v38 == 2)
  {
LABEL_73:
    v67 = v17;
    goto LABEL_74;
  }

LABEL_61:
  v62 = ((v19 + v17) & v16);
  v63 = *(v62 + v22);
  if (v63 <= 2)
  {
    if (v63 == 2 || v63 == 1)
    {
      v64 = *(*(v13 - 8) + 64) + 7;
      (*(v14 + 8))(v62, v13);
      v65 = ((v62 + v64) & 0xFFFFFFFFFFFFFFF8);
      if (*v65 >= 0xFFFFFFFFuLL)
      {

        v66 = v65[1];

        v67 = v65 + 3;
LABEL_74:
        v71 = *v67;
      }
    }

    else if (v62[1])
    {

      v68 = v62[2];

      v67 = v62 + 4;
      goto LABEL_74;
    }
  }

  v72 = *((((v17 | 7) + (v24 | 1)) & 0xFFFFFFFFFFFFFFF8) + 8);

  v73 = ((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (((v17 + v73 + 10) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v75 = *(v74 + 8);

  v76 = *(((v74 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  v77 = (((((v73 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v17 + 16);
  if (*(v17 + 16 + v77 + 48) != 1)
  {
  }

  v79 = (((v77 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8;
  v80 = *(v17 + 8 + v79);

  v81 = (((((v79 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = *(v17 + 8 + v81 + 8);

  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = v78[v83 + 40];
  if (v84 != 255)
  {
    sub_18E6CFBE8(*&v78[v83], *&v78[v83 + 8], *&v78[v83 + 16], *&v78[v83 + 24], *&v78[v83 + 32], v84);
  }

  v85 = v3;
  v86 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v17 + v86 + 49) & 0xFFFFFFFFFFFFFFF8;
  v88 = *(v87 + 104);
  if (v88 != 255)
  {
    sub_18E6CFC68(*(v87 + 48), *(v87 + 56), *(v87 + 64), *(v87 + 72), *(v87 + 80), *(v87 + 88), *(v87 + 96), v88, sub_18E6AF804);
  }

  v89 = (v86 + 49) & 0xFFFFFFFFFFFFFFF8;
  v90 = ((v17 + v89 + 113) & 0xFFFFFFFFFFFFFFF8);
  if (*v90)
  {
    v91 = v90[1];
  }

  if (v90[2])
  {
    v92 = v90[3];
  }

  v93 = v90[5];

  v94 = v17 + ((v89 + 113) & 0xFFFFFFFFFFFFFFF8) + 56;
  v96 = (v94 & 0xFFFFFFFFFFFFFFF8) + 47;
  v95 = *(v94 & 0xFFFFFFFFFFFFFFF8);

  v96 &= 0xFFFFFFFFFFFFFFF8;
  v97 = *v96;

  v98 = *(((v96 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);

  v99 = (((((v89 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v100 = &v78[v99];
  v101 = *v100;

  v102 = *(v100 + 9);

  v103 = (((v99 + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8;
  v104 = *(v17 + 8 + v103 + 8);

  memcpy(v17, v18, ((v103 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v85;
}

uint64_t sub_18E6D42DC(int *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v4 + 59) & ~v5) + ((((((((((((((((((((((((((((((((((((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
  v17 = *((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 12) & ~v5) + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
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

unsigned int *sub_18E6D44F8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = (v4 + 16) & ~(v4 | 7);
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  v8 = (v4 + 59) & ~v5;
  v9 = v7 + v6;
  if (v7 + v6 <= 8)
  {
    v9 = 8;
  }

  v10 = v8 + ((((((((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v13 = 0;
  }

  else
  {
    v11 = a3 - 2147483645;
    if (v8 + ((((((((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 49) & 0xFFFFFFF8) + 169) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != -16)
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
    if (v8 + ((((((((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 49) & 0xFFFFFFF8) + 169) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == -16)
    {
      v14 = a2 - 2147483646;
    }

    else
    {
      v14 = 1;
    }

    if (v8 + ((((((((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 49) & 0xFFFFFFF8) + 169) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != -16)
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
        *((((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 12) & ~v5) + v9 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PanComponentValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PanComponentValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_18E6D47E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t *sub_18E6D4828(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t *sub_18E6D4890(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

uint64_t sub_18E6D48F0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6D496C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6D49AC()
{
  result = qword_1EAC8E8E0;
  if (!qword_1EAC8E8E0)
  {
    type metadata accessor for CGVector(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E8E0);
  }

  return result;
}

uint64_t sub_18E6D4A04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_18E6D4A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E918, &qword_18E72EA30);
  v3 = sub_18E72B738();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_18E6EB564(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 2 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 4);
    v15 = *v10;

    v8 = sub_18E6EB564(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E6D4B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E910, &qword_18E72EA28);
  v3 = sub_18E72B738();
  v4 = *(a1 + 32);
  v16 = *(a1 + 56);
  v17 = *(a1 + 40);
  v15 = *(a1 + 72);
  v5 = *(a1 + 88);
  result = sub_18E6EB564(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 152);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 2 * result) = v4;
    v9 = v3[7] + 56 * result;
    *v9 = v17;
    *(v9 + 16) = v16;
    *(v9 + 32) = v15;
    *(v9 + 48) = v5 & 1;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 64;
    v4 = *(v8 - 28);
    v16 = *(v8 - 2);
    v17 = *(v8 - 3);
    v15 = *(v8 - 1);
    v5 = *v8;

    result = sub_18E6EB564(v4);
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6D4CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_18E6D4D54(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  (*(*(v4 + 8) + 16))(&v8, v3);
  v5 = v8;
  v6 = (*(*(v4 + 16) + 8))(v3);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
}

uint64_t GestureNodeID.hashValue.getter()
{
  sub_18E72B888();
  sub_18E72B8C8();
  return sub_18E72B8E8();
}

uint64_t EventID.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t _s8Gestures12GestureTraitV12AttributeKeyV9hashValueSivg_0()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E6D5070()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

void *MouseEvent.init(id:phase:timestamp:location:button:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v8 = *a2;
  v9 = *a5;
  *a6 = *result;
  *(a6 + 8) = v8;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = v9;
  return result;
}

uint64_t MouseEvent.timestamp.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

double MouseEvent.location.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

Gestures::MouseEvent::Button __swiftcall MouseEvent.Button.init(rawValue:)(Gestures::MouseEvent::Button rawValue)
{
  if (rawValue.rawValue < 1)
  {
    __break(1u);
  }

  else
  {
    v1->rawValue = rawValue.rawValue;
  }

  return rawValue;
}

void *sub_18E6D5184@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*result < 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    *(a2 + 8) = 0;
  }

  return result;
}

unint64_t sub_18E6D51AC(uint64_t a1)
{
  result = sub_18E6D51D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6D51D4()
{
  result = qword_1EAC8E928;
  if (!qword_1EAC8E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E928);
  }

  return result;
}

unint64_t sub_18E6D5228(uint64_t a1)
{
  result = sub_18E6D5250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6D5250()
{
  result = qword_1EAC8E930;
  if (!qword_1EAC8E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E930);
  }

  return result;
}

unint64_t sub_18E6D52A4(uint64_t a1)
{
  *(a1 + 8) = sub_18E6D52D4();
  result = sub_18E6D5328();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6D52D4()
{
  result = qword_1EAC8E938;
  if (!qword_1EAC8E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E938);
  }

  return result;
}

unint64_t sub_18E6D5328()
{
  result = qword_1EAC8E940[0];
  if (!qword_1EAC8E940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8E940);
  }

  return result;
}

uint64_t sub_18E6D537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = *(v7 + 6);
  return sub_18E72A9BC(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t getEnumTagSinglePayload for MouseEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MouseEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

__n128 (*sub_18E6D5474(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_18E6D54A0;
}

__n128 sub_18E6D54A0(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

double sub_18E6D54F8@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 * a3;
  *a2 = result;
  return result;
}

double sub_18E6D5508@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double sub_18E6D551C(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

double sub_18E6D553C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double (*sub_18E6D5548(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_18E6D5574;
}

double sub_18E6D5574(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

__n128 (*sub_18E6D5584(uint64_t a1))(__n128 *)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_18E6D55B0;
}

uint64_t sub_18E6D55B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for CombinerElement();
  result = type metadata accessor for ReplicatingList.Storage();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_18E6D5684(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v10 & 0xF8 | 7;
  v12 = *(v9 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v7 + v11) & ~v11) + v13) | 2) <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = (((v7 + v11) & ~v11) + v13) | 2;
  }

  v15 = *(v6 + 80) & 0xF8 | v11;
  v16 = (*(v6 + 80) | v10) & 0x100000;
  if (v15 == 7 && v16 == 0 && (((((v14 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10 <= 0x18)
  {
    v20 = a2[v14];
    v21 = v20 - 3;
    if (v20 < 3)
    {
      goto LABEL_30;
    }

    if (v14 <= 3)
    {
      v22 = v14;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = *a2;
      if (v14 < 4)
      {
LABEL_45:
        v43 = v23 | (v21 << (8 * v14));
        v20 = v43 + 3;
        if (v43 == -1)
        {
          goto LABEL_46;
        }

        goto LABEL_31;
      }
    }

    else if (v22 == 2)
    {
      v23 = *a2;
      if (v14 < 4)
      {
        goto LABEL_45;
      }
    }

    else if (v22 == 3)
    {
      v23 = *a2 | (a2[2] << 16);
      if (v14 < 4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v23 = *a2;
      if (v14 < 4)
      {
        goto LABEL_45;
      }
    }

    v20 = v23 + 3;
LABEL_30:
    if (v20 == 2)
    {
LABEL_46:
      *a1 = *a2;
      *(a1 + v14) = 2;

LABEL_67:
      v56 = ((a1 + v14 + 8) & 0xFFFFFFFFFFFFFFF8);
      v57 = (&a2[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
      v58 = v57[1];
      *v56 = *v57;
      v56[1] = v58;
      v59 = ((v56 + 23) & 0xFFFFFFFFFFFFFFF8);
      v60 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v59 = *v60;
      v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
      v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v61 = *v62;
      *(v61 + 8) = *(v62 + 8);
      *(v61 + 9) = *(v62 + 9);
      goto LABEL_68;
    }

LABEL_31:
    __n = v13 | 1;
    v24 = AssociatedTypeWitness;
    if (v20 == 1)
    {
      (*(v6 + 16))(a1, a2, v5);
      v25 = a1 + v7 + 7;
      v26 = v25 & 0xFFFFFFFFFFFFFFF8;
      v27 = &a2[v7 + 7];
      v28 = v27 & 0xFFFFFFFFFFFFFFF8;
      v29 = *((v27 & 0xFFFFFFFFFFFFFFF8) + v13);
      if (v29 > 2)
      {
        v39 = (v27 & 0xFFFFFFFFFFFFFFF8);
        v40 = v13 | 1;
        memcpy((v25 & 0xFFFFFFFFFFFFFFF8), v39, __n);
        v26 = v25 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        if (v29 == 2)
        {
          v66 = v25 & 0xFFFFFFFFFFFFFFF8;
          (*(v9 + 16))(v25 & 0xFFFFFFFFFFFFFFF8, v27 & 0xFFFFFFFFFFFFFFF8, v24);
          v44 = ((v25 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
          v45 = ((v27 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
          if (*v45 < 0xFFFFFFFFuLL)
          {
            v52 = *(v45 + 16);
            *v44 = *v45;
            *(v44 + 16) = v52;
          }

          else
          {
            *v44 = *v45;
            *(v44 + 8) = *(v45 + 8);
            *(v44 + 16) = *(v45 + 16);
            *(v44 + 24) = *(v45 + 24);
          }

          v40 = v13 | 1;
          v51 = 2;
        }

        else
        {
          if (v29 != 1)
          {
            *v26 = *v28;
            v46 = *(v28 + 8);
            v40 = v13 | 1;
            if (v46)
            {
              *(v26 + 8) = v46;
              *(v26 + 16) = *(v28 + 16);
              *(v26 + 24) = *(v28 + 24);
              *(v26 + 32) = *(v28 + 32);

              v26 = v25 & 0xFFFFFFFFFFFFFFF8;
              *((v25 & 0xFFFFFFFFFFFFFFF8) + v13) = 0;
            }

            else
            {
              v64 = *(v28 + 24);
              *(v26 + 8) = *(v28 + 8);
              *(v26 + 24) = v64;
              *(v26 + v13) = 0;
            }

            goto LABEL_60;
          }

          v66 = v25 & 0xFFFFFFFFFFFFFFF8;
          (*(v9 + 16))(v25 & 0xFFFFFFFFFFFFFFF8, v27 & 0xFFFFFFFFFFFFFFF8, v24);
          v30 = ((v25 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
          v31 = ((v27 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
          if (*v31 < 0xFFFFFFFFuLL)
          {
            v50 = *(v31 + 16);
            *v30 = *v31;
            *(v30 + 16) = v50;
          }

          else
          {
            *v30 = *v31;
            *(v30 + 8) = *(v31 + 8);
            *(v30 + 16) = *(v31 + 16);
            *(v30 + 24) = *(v31 + 24);
          }

          v40 = v13 | 1;
          v51 = 1;
        }

        v26 = v66;
        *(v66 + v13) = v51;
      }

LABEL_60:
      *(v40 + v26) = *(v40 + v28);
      *(a1 + v14) = 1;
      goto LABEL_67;
    }

    (*(v6 + 16))(a1, a2, v5);
    v32 = a1 + v7 + 7;
    v33 = v32 & 0xFFFFFFFFFFFFFFF8;
    v34 = &a2[v7 + 7];
    v35 = v34 & 0xFFFFFFFFFFFFFFF8;
    v36 = *((v34 & 0xFFFFFFFFFFFFFFF8) + v13);
    if (v36 > 2)
    {
      v41 = (v34 & 0xFFFFFFFFFFFFFFF8);
      v42 = v13 | 1;
      memcpy((v32 & 0xFFFFFFFFFFFFFFF8), v41, __n);
      v33 = v32 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      if (v36 == 2)
      {
        v67 = v32 & 0xFFFFFFFFFFFFFFF8;
        (*(v9 + 16))(v32 & 0xFFFFFFFFFFFFFFF8, v34 & 0xFFFFFFFFFFFFFFF8, v24);
        v47 = ((v32 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
        v48 = ((v34 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
        if (*v48 < 0xFFFFFFFFuLL)
        {
          v55 = *(v48 + 16);
          *v47 = *v48;
          *(v47 + 16) = v55;
        }

        else
        {
          *v47 = *v48;
          *(v47 + 8) = *(v48 + 8);
          *(v47 + 16) = *(v48 + 16);
          *(v47 + 24) = *(v48 + 24);
        }

        v42 = v13 | 1;
        v54 = 2;
      }

      else
      {
        if (v36 != 1)
        {
          *v33 = *v35;
          v49 = *(v35 + 8);
          v42 = v13 | 1;
          if (v49)
          {
            *(v33 + 8) = v49;
            *(v33 + 16) = *(v35 + 16);
            *(v33 + 24) = *(v35 + 24);
            *(v33 + 32) = *(v35 + 32);

            v33 = v32 & 0xFFFFFFFFFFFFFFF8;
            *((v32 & 0xFFFFFFFFFFFFFFF8) + v13) = 0;
          }

          else
          {
            v65 = *(v35 + 24);
            *(v33 + 8) = *(v35 + 8);
            *(v33 + 24) = v65;
            *(v33 + v13) = 0;
          }

          goto LABEL_66;
        }

        v67 = v32 & 0xFFFFFFFFFFFFFFF8;
        (*(v9 + 16))(v32 & 0xFFFFFFFFFFFFFFF8, v34 & 0xFFFFFFFFFFFFFFF8, v24);
        v37 = ((v32 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
        v38 = ((v34 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
        if (*v38 < 0xFFFFFFFFuLL)
        {
          v53 = *(v38 + 16);
          *v37 = *v38;
          *(v37 + 16) = v53;
        }

        else
        {
          *v37 = *v38;
          *(v37 + 8) = *(v38 + 8);
          *(v37 + 16) = *(v38 + 16);
          *(v37 + 24) = *(v38 + 24);
        }

        v42 = v13 | 1;
        v54 = 1;
      }

      v33 = v67;
      *(v67 + v13) = v54;
    }

LABEL_66:
    *(v42 + v33) = *(v42 + v35);
    *(a1 + v14) = 0;
    goto LABEL_67;
  }

  v19 = *a2;
  *a1 = *a2;
  a1 = (v19 + ((v15 + 16) & ~v15));
LABEL_68:

  return a1;
}

uint64_t sub_18E6D5D44(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = v6 + v9;
  v11 = *(v8 + 64) + 7;
  if ((v11 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v12 = 40;
  }

  else
  {
    v12 = (v11 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v6 + v9) & ~v9) + v12) | 2) <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = (((v6 + v9) & ~v9) + v12) | 2;
  }

  v14 = a1[v13];
  v15 = v14 - 3;
  if (v14 >= 3)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = *a1;
    }

    else if (v16 == 2)
    {
      v17 = *a1;
    }

    else if (v16 == 3)
    {
      v17 = *a1 | (a1[2] << 16);
    }

    else
    {
      v17 = *a1;
    }

    v18 = (v17 | (v15 << (8 * v13))) + 3;
    v14 = v17 + 3;
    if (v13 < 4)
    {
      v14 = v18;
    }
  }

LABEL_21:
  if (v14 == 2)
  {
    v25 = *a1;
LABEL_28:

    goto LABEL_29;
  }

  v19 = ~v9;
  (*(v5 + 8))(a1, v4);
  v20 = &a1[v10] & v19;
  v21 = *(v20 + v12);
  if (v21 > 2)
  {
    goto LABEL_29;
  }

  if (v21 == 2 || v21 == 1)
  {
    (*(v8 + 8))(&a1[v10] & v19, AssociatedTypeWitness);
    v22 = ((v11 + v20) & 0xFFFFFFFFFFFFFFF8);
    if (*v22 < 0xFFFFFFFFuLL)
    {
      goto LABEL_29;
    }

    v23 = v22[1];

    v24 = v22[3];
    goto LABEL_28;
  }

  if (*((&a1[v10] & v19) + 8))
  {

    v28 = *((&a1[v10] & v19) + 0x10);

    v29 = *((&a1[v10] & v19) + 0x20);
    goto LABEL_28;
  }

LABEL_29:
  v26 = *((&a1[v13 + 8] & 0xFFFFFFFFFFFFFFF8) + 8);
}

void *sub_18E6D5FB4(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80) & 0xF8 | 7;
  v11 = v7 + v10;
  v12 = *(v9 + 64) + 7;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if ((((v11 & ~v10) + v13) | 2) <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = ((v11 & ~v10) + v13) | 2;
  }

  v15 = a2[v14];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *a2;
      if (v14 < 4)
      {
LABEL_36:
        v38 = v18 | (v16 << (8 * v14));
        v15 = v38 + 3;
        if (v38 == -1)
        {
          goto LABEL_37;
        }

        goto LABEL_22;
      }
    }

    else if (v17 == 2)
    {
      v18 = *a2;
      if (v14 < 4)
      {
        goto LABEL_36;
      }
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v14 < 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v18 = *a2;
      if (v14 < 4)
      {
        goto LABEL_36;
      }
    }

    v15 = v18 + 3;
  }

LABEL_21:
  if (v15 == 2)
  {
LABEL_37:
    *a1 = *a2;
    *(a1 + v14) = 2;

    goto LABEL_60;
  }

LABEL_22:
  v19 = ~v10;
  __n = v13 | 1;
  v60 = v13;
  if (v15 == 1)
  {
    (*(v6 + 16))(a1, a2, v5);
    v20 = v60;
    v21 = ((a1 + v11) & v19);
    v22 = (&a2[v11] & v19);
    v23 = v22[v60];
    if (v23 > 2)
    {
      v32 = ((a1 + v11) & v19);
      v33 = (&a2[v11] & v19);
      v34 = __n;
      memcpy(v32, v33, __n);
    }

    else if (v23 == 2)
    {
      (*(v9 + 16))((a1 + v11) & v19, &a2[v11] & v19, AssociatedTypeWitness);
      v39 = &v21[v12] & 0xFFFFFFFFFFFFFFF8;
      v40 = &v22[v12] & 0xFFFFFFFFFFFFFFF8;
      if (*v40 < 0xFFFFFFFFuLL)
      {
        v46 = *(v40 + 16);
        *v39 = *v40;
        *(v39 + 16) = v46;
      }

      else
      {
        *v39 = *v40;
        *(v39 + 8) = *(v40 + 8);
        *(v39 + 16) = *(v40 + 16);
        *(v39 + 24) = *(v40 + 24);
      }

      v34 = __n;
      v21[v60] = 2;
    }

    else if (v23 == 1)
    {
      (*(v9 + 16))((a1 + v11) & v19, &a2[v11] & v19, AssociatedTypeWitness);
      v24 = &v21[v12] & 0xFFFFFFFFFFFFFFF8;
      v25 = &v22[v12] & 0xFFFFFFFFFFFFFFF8;
      if (*v25 < 0xFFFFFFFFuLL)
      {
        v45 = *(v25 + 16);
        *v24 = *v25;
        *(v24 + 16) = v45;
      }

      else
      {
        *v24 = *v25;
        *(v24 + 8) = *(v25 + 8);
        *(v24 + 16) = *(v25 + 16);
        *(v24 + 24) = *(v25 + 24);
      }

      v34 = __n;
      v21[v60] = 1;
    }

    else
    {
      *v21 = *v22;
      v41 = *((&a2[v11] & v19) + 8);
      if (v41)
      {
        *(((a1 + v11) & v19) + 8) = v41;
        *(((a1 + v11) & v19) + 0x10) = *((&a2[v11] & v19) + 0x10);
        *(((a1 + v11) & v19) + 0x18) = *((&a2[v11] & v19) + 0x18);
        *(((a1 + v11) & v19) + 0x20) = *((&a2[v11] & v19) + 0x20);

        v20 = v60;
      }

      else
      {
        v49 = *((&a2[v11] & v19) + 0x18);
        *(((a1 + v11) & v19) + 8) = *((&a2[v11] & v19) + 8);
        *(((a1 + v11) & v19) + 0x18) = v49;
      }

      v34 = __n;
      v21[v20] = 0;
    }

    v21[v34] = v22[v34];
    *(a1 + v14) = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v26 = ((a1 + v11) & v19);
    v27 = (&a2[v11] & v19);
    v28 = v60;
    v29 = v27[v60];
    if (v29 > 2)
    {
      v35 = ((a1 + v11) & v19);
      v36 = (&a2[v11] & v19);
      v37 = __n;
      memcpy(v35, v36, __n);
    }

    else if (v29 == 2)
    {
      (*(v9 + 16))((a1 + v11) & v19, &a2[v11] & v19, AssociatedTypeWitness);
      v42 = &v26[v12] & 0xFFFFFFFFFFFFFFF8;
      v43 = &v27[v12] & 0xFFFFFFFFFFFFFFF8;
      if (*v43 < 0xFFFFFFFFuLL)
      {
        v48 = *(v43 + 16);
        *v42 = *v43;
        *(v42 + 16) = v48;
      }

      else
      {
        *v42 = *v43;
        *(v42 + 8) = *(v43 + 8);
        *(v42 + 16) = *(v43 + 16);
        *(v42 + 24) = *(v43 + 24);
      }

      v37 = __n;
      v26[v60] = 2;
    }

    else if (v29 == 1)
    {
      (*(v9 + 16))((a1 + v11) & v19, &a2[v11] & v19, AssociatedTypeWitness);
      v30 = &v26[v12] & 0xFFFFFFFFFFFFFFF8;
      v31 = &v27[v12] & 0xFFFFFFFFFFFFFFF8;
      if (*v31 < 0xFFFFFFFFuLL)
      {
        v47 = *(v31 + 16);
        *v30 = *v31;
        *(v30 + 16) = v47;
      }

      else
      {
        *v30 = *v31;
        *(v30 + 8) = *(v31 + 8);
        *(v30 + 16) = *(v31 + 16);
        *(v30 + 24) = *(v31 + 24);
      }

      v37 = __n;
      v26[v60] = 1;
    }

    else
    {
      *v26 = *v27;
      v44 = *((&a2[v11] & v19) + 8);
      if (v44)
      {
        *(((a1 + v11) & v19) + 8) = v44;
        *(((a1 + v11) & v19) + 0x10) = *((&a2[v11] & v19) + 0x10);
        *(((a1 + v11) & v19) + 0x18) = *((&a2[v11] & v19) + 0x18);
        *(((a1 + v11) & v19) + 0x20) = *((&a2[v11] & v19) + 0x20);

        v28 = v60;
      }

      else
      {
        v50 = *((&a2[v11] & v19) + 0x18);
        *(((a1 + v11) & v19) + 8) = *((&a2[v11] & v19) + 8);
        *(((a1 + v11) & v19) + 0x18) = v50;
      }

      v37 = __n;
      v26[v28] = 0;
    }

    v26[v37] = v27[v37];
    *(a1 + v14) = 0;
  }

LABEL_60:
  v51 = ((a1 + v14 + 8) & 0xFFFFFFFFFFFFFFF8);
  v52 = (&a2[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
  v53 = v52[1];
  *v51 = *v52;
  v51[1] = v53;
  v54 = ((v51 + 23) & 0xFFFFFFFFFFFFFFF8);
  v55 = ((v52 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v54 = *v55;
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v56 = *v57;
  *(v56 + 8) = *(v57 + 8);
  *(v56 + 9) = *(v57 + 9);

  return a1;
}

unsigned __int16 *sub_18E6D65CC(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 == a2)
  {
    goto LABEL_86;
  }

  v7 = *(*(a3 + 16) - 8);
  v75 = v7;
  v8 = *(v6 + 64);
  v74 = a3;
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = *(AssociatedTypeWitness - 8);
  v72 = AssociatedTypeWitness;
  v11 = *(v71 + 80) & 0xF8 | 7;
  v12 = v8 + v11;
  v73 = *(v71 + 64) + 7;
  if ((v73 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v73 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v8 + v11) & ~v11) + v13) | 2) <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = (((v8 + v11) & ~v11) + v13) | 2;
  }

  v15 = *(a1 + v14);
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a1;
        if (v14 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v17 == 3)
        {
          v18 = *a1 | (*(a1 + 2) << 16);
          if (v14 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v15 = v18 + 3;
          goto LABEL_24;
        }

        v18 = *a1;
        if (v14 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v15 = (v18 | (v16 << (8 * v14))) + 3;
      goto LABEL_24;
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = *a1;
    if (v14 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v19 = ~v11;
  v20 = a1;
  if (v15 != 2)
  {
    (*(v7 + 8))(a1, v5);
    v21 = (a1 + v12) & v19;
    v22 = *(v21 + v13);
    if (v22 > 2)
    {
      goto LABEL_33;
    }

    if (v22 == 2 || v22 == 1)
    {
      (*(v71 + 8))((a1 + v12) & v19, v72);
      v23 = ((v73 + v21) & 0xFFFFFFFFFFFFFFF8);
      if (*v23 < 0xFFFFFFFFuLL)
      {
        goto LABEL_33;
      }

      v24 = v23[1];

      v20 = (v23 + 3);
    }

    else
    {
      if (!*(((a1 + v12) & v19) + 8))
      {
        goto LABEL_33;
      }

      v25 = *(((a1 + v12) & v19) + 0x10);

      v20 = (v21 + 32);
    }
  }

  v26 = *v20;

LABEL_33:
  v27 = *(a2 + v14);
  v28 = v27 - 3;
  if (v27 < 3)
  {
    goto LABEL_47;
  }

  if (v14 <= 3)
  {
    v29 = v14;
  }

  else
  {
    v29 = 4;
  }

  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v30 = *a2;
      if (v14 < 4)
      {
        goto LABEL_62;
      }
    }

    else if (v29 == 3)
    {
      v30 = *a2 | (*(a2 + 2) << 16);
      if (v14 < 4)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v30 = *a2;
      if (v14 < 4)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_46;
  }

  if (!v29)
  {
    goto LABEL_47;
  }

  v30 = *a2;
  if (v14 >= 4)
  {
LABEL_46:
    v27 = v30 + 3;
LABEL_47:
    if (v27 == 2)
    {
LABEL_63:
      *a1 = *a2;
      *(a1 + v14) = 2;

      a3 = v74;
      v6 = v7;
      goto LABEL_86;
    }

    goto LABEL_48;
  }

LABEL_62:
  v42 = v30 | (v28 << (8 * v14));
  v27 = v42 + 3;
  if (v42 == -1)
  {
    goto LABEL_63;
  }

LABEL_48:
  v31 = v13 | 1;
  if (v27 == 1)
  {
    (*(v7 + 16))(a1, a2, v5);
    v32 = ((a1 + v12) & v19);
    v33 = ((a2 + v12) & v19);
    v34 = *(v33 + v13);
    if (v34 > 2)
    {
      memcpy(v32, v33, v31);
      a3 = v74;
      v6 = v75;
    }

    else if (v34 == 2)
    {
      (*(v71 + 16))(v32, v33, v72);
      v43 = (v32 + v73) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v33 + v73) & 0xFFFFFFFFFFFFFFF8;
      if (*v44 < 0xFFFFFFFFuLL)
      {
        v50 = *(v44 + 16);
        *v43 = *v44;
        *(v43 + 16) = v50;
      }

      else
      {
        *v43 = *v44;
        *(v43 + 8) = *(v44 + 8);
        *(v43 + 16) = *(v44 + 16);
        *(v43 + 24) = *(v44 + 24);
      }

      a3 = v74;
      v6 = v75;
      *(v32 + v13) = 2;
    }

    else if (v34 == 1)
    {
      (*(v71 + 16))(v32, v33, v72);
      v35 = (v32 + v73) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v33 + v73) & 0xFFFFFFFFFFFFFFF8;
      if (*v36 < 0xFFFFFFFFuLL)
      {
        v49 = *(v36 + 16);
        *v35 = *v36;
        *(v35 + 16) = v49;
      }

      else
      {
        *v35 = *v36;
        *(v35 + 8) = *(v36 + 8);
        *(v35 + 16) = *(v36 + 16);
        *(v35 + 24) = *(v36 + 24);
      }

      a3 = v74;
      v6 = v75;
      *(v32 + v13) = 1;
    }

    else
    {
      *v32 = *v33;
      v45 = v33[1];
      if (v45)
      {
        v32[1] = v45;
        v32[2] = v33[2];
        v32[3] = v33[3];
        v32[4] = v33[4];
      }

      else
      {
        v53 = *(v33 + 3);
        *(v32 + 1) = *(v33 + 1);
        *(v32 + 3) = v53;
      }

      a3 = v74;
      v6 = v75;
      *(v32 + v13) = 0;
    }

    *(v32 + v31) = *(v33 + v31);
    *(a1 + v14) = 1;
  }

  else
  {
    (*(v7 + 16))(a1, a2, v5);
    v37 = ((a1 + v12) & v19);
    v38 = ((a2 + v12) & v19);
    v39 = *(v38 + v13);
    if (v39 > 2)
    {
      memcpy(v37, v38, v31);
      a3 = v74;
      v6 = v75;
    }

    else if (v39 == 2)
    {
      (*(v71 + 16))(v37, v38, v72);
      v46 = (v37 + v73) & 0xFFFFFFFFFFFFFFF8;
      v47 = (v38 + v73) & 0xFFFFFFFFFFFFFFF8;
      if (*v47 < 0xFFFFFFFFuLL)
      {
        v52 = *(v47 + 16);
        *v46 = *v47;
        *(v46 + 16) = v52;
      }

      else
      {
        *v46 = *v47;
        *(v46 + 8) = *(v47 + 8);
        *(v46 + 16) = *(v47 + 16);
        *(v46 + 24) = *(v47 + 24);
      }

      a3 = v74;
      v6 = v75;
      *(v37 + v13) = 2;
    }

    else if (v39 == 1)
    {
      (*(v71 + 16))(v37, v38, v72);
      v40 = (v37 + v73) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v38 + v73) & 0xFFFFFFFFFFFFFFF8;
      if (*v41 < 0xFFFFFFFFuLL)
      {
        v51 = *(v41 + 16);
        *v40 = *v41;
        *(v40 + 16) = v51;
      }

      else
      {
        *v40 = *v41;
        *(v40 + 8) = *(v41 + 8);
        *(v40 + 16) = *(v41 + 16);
        *(v40 + 24) = *(v41 + 24);
      }

      a3 = v74;
      v6 = v75;
      *(v37 + v13) = 1;
    }

    else
    {
      *v37 = *v38;
      v48 = v38[1];
      if (v48)
      {
        v37[1] = v48;
        v37[2] = v38[2];
        v37[3] = v38[3];
        v37[4] = v38[4];
      }

      else
      {
        v54 = *(v38 + 3);
        *(v37 + 1) = *(v38 + 1);
        *(v37 + 3) = v54;
      }

      a3 = v74;
      v6 = v75;
      *(v37 + v13) = 0;
    }

    *(v37 + v31) = *(v38 + v31);
    *(a1 + v14) = 0;
  }

LABEL_86:
  v55 = *(v6 + 64);
  v56 = *(a3 + 24);
  v57 = *(swift_getAssociatedTypeWitness() - 8);
  v58 = (v55 + (*(v57 + 80) & 0xF8 | 7)) & ~(*(v57 + 80) & 0xF8 | 7);
  v59 = ((*(v57 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v59 <= 0x28)
  {
    v59 = 40;
  }

  v60 = (v58 + v59) | 2;
  if (v60 <= 8)
  {
    v60 = 8;
  }

  v61 = v60 + 8;
  v62 = ((a1 + v61) & 0xFFFFFFFFFFFFFFF8);
  v63 = ((a2 + v61) & 0xFFFFFFFFFFFFFFF8);
  v64 = v63[1];
  v65 = v62[1];
  *v62 = *v63;
  v62[1] = v64;

  v66 = ((v63 + 23) & 0xFFFFFFFFFFFFFFF8);
  v67 = ((v62 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v67 = *v66;
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v68 = *v69;
  *(v68 + 8) = *(v69 + 8);
  *(v68 + 9) = *(v69 + 9);
  return a1;
}

void *sub_18E6D6E20(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80) & 0xF8 | 7;
  v11 = v7 + v10;
  v12 = *(v9 + 64) + 7;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if ((((v11 & ~v10) + v13) | 2) <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = ((v11 & ~v10) + v13) | 2;
  }

  v15 = a2[v14];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *a2;
      if (v14 < 4)
      {
LABEL_34:
        v33 = v18 | (v16 << (8 * v14));
        v15 = v33 + 3;
        if (v33 == -1)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }
    }

    else if (v17 == 2)
    {
      v18 = *a2;
      if (v14 < 4)
      {
        goto LABEL_34;
      }
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v14 < 4)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = *a2;
      if (v14 < 4)
      {
        goto LABEL_34;
      }
    }

    v15 = v18 + 3;
  }

LABEL_21:
  if (v15 == 2)
  {
LABEL_35:
    *a1 = *a2;
    v34 = 2;
LABEL_39:
    *(a1 + v14) = v34;
    goto LABEL_43;
  }

LABEL_22:
  v19 = ~v10;
  v20 = v13 | 1;
  v52 = AssociatedTypeWitness;
  v53 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  if (v15 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v21 = ((a1 + v11) & v19);
    v22 = (&a2[v11] & v19);
    v23 = *(v22 + v13);
    if (v23 > 2)
    {
      memcpy(((a1 + v11) & v19), (&a2[v11] & v19), v13 | 1);
    }

    else if (v23 == 2)
    {
      (*(v9 + 32))((a1 + v11) & v19, &a2[v11] & v19, v52);
      v35 = ((v21 + v53) & 0xFFFFFFFFFFFFFFF8);
      v36 = ((v22 + v53) & 0xFFFFFFFFFFFFFFF8);
      v37 = v36[1];
      *v35 = *v36;
      v35[1] = v37;
      *(v21 + v13) = 2;
    }

    else if (v23 == 1)
    {
      (*(v9 + 32))((a1 + v11) & v19, &a2[v11] & v19, v52);
      v24 = ((v21 + v53) & 0xFFFFFFFFFFFFFFF8);
      v25 = ((v22 + v53) & 0xFFFFFFFFFFFFFFF8);
      v26 = v25[1];
      *v24 = *v25;
      v24[1] = v26;
      *(v21 + v13) = 1;
    }

    else
    {
      v38 = *v22;
      v39 = *((&a2[v11] & v19) + 0x10);
      *(((a1 + v11) & v19) + 0x20) = *((&a2[v11] & v19) + 0x20);
      *v21 = v38;
      *(((a1 + v11) & v19) + 0x10) = v39;
      *(v21 + v13) = 0;
    }

    *(v21 + v20) = *(v22 + v20);
    v34 = 1;
    goto LABEL_39;
  }

  (*(v6 + 32))(a1, a2, v5);
  v27 = ((a1 + v11) & v19);
  v28 = (&a2[v11] & v19);
  v29 = *(v28 + v13);
  if (v29 > 2)
  {
    memcpy(((a1 + v11) & v19), (&a2[v11] & v19), v13 | 1);
  }

  else if (v29 == 2)
  {
    (*(v9 + 32))((a1 + v11) & v19, &a2[v11] & v19, v52);
    v40 = ((v27 + v53) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v28 + v53) & 0xFFFFFFFFFFFFFFF8);
    v42 = v41[1];
    *v40 = *v41;
    v40[1] = v42;
    *(v27 + v13) = 2;
  }

  else if (v29 == 1)
  {
    (*(v9 + 32))((a1 + v11) & v19, &a2[v11] & v19, v52);
    v30 = ((v27 + v53) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v28 + v53) & 0xFFFFFFFFFFFFFFF8);
    v32 = v31[1];
    *v30 = *v31;
    v30[1] = v32;
    *(v27 + v13) = 1;
  }

  else
  {
    v43 = *v28;
    v44 = *((&a2[v11] & v19) + 0x10);
    *(((a1 + v11) & v19) + 0x20) = *((&a2[v11] & v19) + 0x20);
    *v27 = v43;
    *(((a1 + v11) & v19) + 0x10) = v44;
    *(v27 + v13) = 0;
  }

  *(v27 + v20) = *(v28 + v20);
  *(a1 + v14) = 0;
LABEL_43:
  v45 = ((a1 + v14 + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (&a2[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v45 = *v46;
  v47 = ((v46 + 23) & 0xFFFFFFFFFFFFFFF8);
  v48 = ((v45 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v48 = *v47;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v49 = *v50;
  *(v49 + 8) = *(v50 + 8);
  *(v49 + 9) = *(v50 + 9);
  return a1;
}

unsigned __int16 *sub_18E6D7268(unsigned __int16 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if (a1 != a2)
  {
    v8 = *(*(a3 + 16) - 8);
    v77 = v8;
    v9 = *(v7 + 64);
    v10 = *(a3 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v74 = *(AssociatedTypeWitness - 8);
    v75 = AssociatedTypeWitness;
    v12 = *(v74 + 80) & 0xF8 | 7;
    v13 = v9 + v12;
    v14 = (v9 + v12) & ~v12;
    v15 = *(v74 + 64) + 7;
    if ((v15 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
    {
      v16 = 40;
    }

    else
    {
      v16 = (v15 & 0xFFFFFFFFFFFFFFF8) + 32;
    }

    if (((v14 + v16) | 2) <= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = (v14 + v16) | 2;
    }

    v18 = *(a1 + v17);
    v19 = v18 - 3;
    if (v18 < 3)
    {
LABEL_24:
      v78 = v16;
      v22 = ~v12;
      v23 = a1;
      v76 = v22;
      if (v18 != 2)
      {
        (*(v8 + 8))(a1, v6);
        v24 = ((a1 + v13) & v22);
        v25 = *(v24 + v78);
        if (v25 > 2)
        {
          goto LABEL_33;
        }

        if (v25 == 2 || v25 == 1)
        {
          (*(v74 + 8))(v24, v75);
          v26 = ((v24 + v15) & 0xFFFFFFFFFFFFFFF8);
          if (*v26 < 0xFFFFFFFFuLL)
          {
            goto LABEL_33;
          }

          v27 = v26[1];

          v23 = (v26 + 3);
        }

        else
        {
          if (!v24[1])
          {
            goto LABEL_33;
          }

          v28 = v24[2];

          v23 = (v24 + 4);
        }
      }

      v29 = *v23;

LABEL_33:
      v30 = a2[v17];
      v31 = v30 - 3;
      if (v30 < 3)
      {
        goto LABEL_47;
      }

      if (v17 <= 3)
      {
        v32 = v17;
      }

      else
      {
        v32 = 4;
      }

      if (v32 <= 1)
      {
        if (!v32)
        {
          goto LABEL_47;
        }

        v33 = *a2;
        if (v17 < 4)
        {
LABEL_60:
          v47 = v33 | (v31 << (8 * v17));
          v30 = v47 + 3;
          if (v47 == -1)
          {
            goto LABEL_61;
          }

          goto LABEL_48;
        }
      }

      else if (v32 == 2)
      {
        v33 = *a2;
        if (v17 < 4)
        {
          goto LABEL_60;
        }
      }

      else if (v32 == 3)
      {
        v33 = *a2 | (a2[2] << 16);
        if (v17 < 4)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v33 = *a2;
        if (v17 < 4)
        {
          goto LABEL_60;
        }
      }

      v30 = v33 + 3;
LABEL_47:
      if (v30 == 2)
      {
LABEL_61:
        *a1 = *a2;
        v48 = 2;
        v7 = v8;
LABEL_68:
        *(a1 + v17) = v48;
        goto LABEL_69;
      }

LABEL_48:
      v34 = v78 | 1;
      if (v30 == 1)
      {
        (*(v8 + 32))(a1, a2, v6);
        v35 = ((a1 + v13) & v76);
        v36 = (&a2[v13] & v76);
        v37 = *(v36 + v78);
        if (v37 > 2)
        {
          memcpy(v35, v36, v34);
        }

        else if (v37 == 2)
        {
          (*(v74 + 32))(v35, v36, v75);
          v49 = ((v35 + v15) & 0xFFFFFFFFFFFFFFF8);
          v50 = ((v36 + v15) & 0xFFFFFFFFFFFFFFF8);
          v51 = v50[1];
          *v49 = *v50;
          v49[1] = v51;
          *(v35 + v78) = 2;
        }

        else if (v37 == 1)
        {
          (*(v74 + 32))(v35, v36, v75);
          v38 = ((v35 + v15) & 0xFFFFFFFFFFFFFFF8);
          v39 = ((v36 + v15) & 0xFFFFFFFFFFFFFFF8);
          v40 = v39[1];
          *v38 = *v39;
          v38[1] = v40;
          *(v35 + v78) = 1;
        }

        else
        {
          v52 = *v36;
          v53 = v36[1];
          *(v35 + 4) = *(v36 + 4);
          *v35 = v52;
          v35[1] = v53;
          *(v35 + v78) = 0;
        }

        v7 = v77;
        *(v35 + v34) = *(v36 + v34);
        v48 = 1;
      }

      else
      {
        (*(v8 + 32))(a1, a2, v6);
        v41 = ((a1 + v13) & v76);
        v42 = (&a2[v13] & v76);
        v43 = *(v42 + v78);
        if (v43 > 2)
        {
          memcpy(v41, v42, v34);
        }

        else if (v43 == 2)
        {
          (*(v74 + 32))(v41, v42, v75);
          v54 = ((v41 + v15) & 0xFFFFFFFFFFFFFFF8);
          v55 = ((v42 + v15) & 0xFFFFFFFFFFFFFFF8);
          v56 = v55[1];
          *v54 = *v55;
          v54[1] = v56;
          *(v41 + v78) = 2;
        }

        else if (v43 == 1)
        {
          (*(v74 + 32))(v41, v42, v75);
          v44 = ((v41 + v15) & 0xFFFFFFFFFFFFFFF8);
          v45 = ((v42 + v15) & 0xFFFFFFFFFFFFFFF8);
          v46 = v45[1];
          *v44 = *v45;
          v44[1] = v46;
          *(v41 + v78) = 1;
        }

        else
        {
          v57 = *v42;
          v58 = v42[1];
          *(v41 + 4) = *(v42 + 4);
          *v41 = v57;
          v41[1] = v58;
          *(v41 + v78) = 0;
        }

        v7 = v77;
        v48 = 0;
        *(v41 + v34) = *(v42 + v34);
      }

      goto LABEL_68;
    }

    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = *a1 | (*(a1 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v18 = v21 + 3;
          goto LABEL_24;
        }

        v21 = *a1;
        if (v17 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v18 = (v21 | (v19 << (8 * v17))) + 3;
      goto LABEL_24;
    }

    if (!v20)
    {
      goto LABEL_24;
    }

    v21 = *a1;
    if (v17 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_69:
  v59 = *(v7 + 64);
  v60 = *(a3 + 24);
  v61 = *(swift_getAssociatedTypeWitness() - 8);
  v62 = (v59 + (*(v61 + 80) & 0xF8 | 7)) & ~(*(v61 + 80) & 0xF8 | 7);
  v63 = ((*(v61 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v63 <= 0x28)
  {
    v63 = 40;
  }

  v64 = (v62 + v63) | 2;
  if (v64 <= 8)
  {
    v64 = 8;
  }

  v65 = v64 + 8;
  v66 = (a1 + v65) & 0xFFFFFFFFFFFFFFF8;
  v67 = &a2[v65];
  v68 = *(v66 + 8);
  v69 = (v67 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v66 = *(v67 & 0xFFFFFFFFFFFFFFF8);

  v70 = ((v66 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v70 = *(v69 & 0xFFFFFFFFFFFFFFF8);
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = ((v69 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *v71 = *v72;
  *(v71 + 8) = *(v72 + 8);
  *(v71 + 9) = *(v72 + 9);
  return a1;
}

uint64_t sub_18E6D78E8(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80) & 0xF8 | 7;
  v9 = (v6 + v8) & ~v8;
  v10 = ((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v10 <= 0x28)
  {
    v10 = 40;
  }

  v11 = (v9 + v10) | 2;
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v14 = (((((v11 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v14 > 3 || (a2 - 2147418112) >> 16 <= 0xFE)
  {
    v15 = *(a1 + v14);
    if (!*(a1 + v14))
    {
LABEL_7:
      v12 = *((a1 + v11 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v12 >= 0xFFFFFFFF)
      {
        LODWORD(v12) = -1;
      }

      return (v12 + 1);
    }
  }

  else
  {
    v15 = *(a1 + v14);
    if (!*(a1 + v14))
    {
      goto LABEL_7;
    }
  }

  v16 = (v15 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return (v17 | v16) ^ 0x80000000;
}

void sub_18E6D7A74(_WORD *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80) & 0xF8 | 7;
  v11 = (v8 + v10) & ~v10;
  v12 = ((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v12 <= 0x28)
  {
    v12 = 40;
  }

  v13 = (v11 + v12) | 2;
  if (v13 <= 8)
  {
    v13 = 8;
  }

  v14 = (((((v13 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (a3 < 0)
  {
    if ((a3 - 2147418112) < 0xFF0000 || v14 > 3)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if ((a2 & 0x80000000) == 0)
    {
LABEL_7:
      if (v15)
      {
        if (v15 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_26;
        }

        *(a1 + v14) = 0;
      }

      if (!a2)
      {
        return;
      }

LABEL_26:
      *((a1 + v13 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
      return;
    }
  }

  else
  {
    v15 = 0;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  bzero(a1, v14);
  if (v14 <= 3)
  {
    v17 = (HIWORD(a2) & 0x7FFF) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v14 <= 3)
  {
    *a1 = a2;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    *a1 = a2 & 0x7FFFFFFF;
    if (!v15)
    {
      return;
    }
  }

  if (v15 == 2)
  {
    *(a1 + v14) = v17;
  }

  else
  {
    *(a1 + v14) = v17;
  }
}

int *sub_18E6D7C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v25 = a6;
  v18 = *(*(a10 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  if (a4)
  {
    v22 = a2;
  }

  else
  {
    v22 = a3;
  }

  return sub_18E6D7D6C(v20, a2, v22, a7, a8, v25, a5, a10, a9, a11);
}

int *sub_18E6D7D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v34 = a6;
  v35 = a7;
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v14 = type metadata accessor for CombinerElement.State();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v31 - v17;
  v19 = *(a8 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CombinerElement();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v31 - v25;
  (*(v19 + 16))(v22, a1, a8);
  sub_18E6E7300(a8, a10);
  sub_18E6E7304(v22, v18, a8, v26);
  sub_18E6C1510(v26, a2, v23, a9);
  (*(v19 + 8))(a1, a8);
  result = type metadata accessor for DynamicCombinerComponent();
  *(a9 + result[10]) = a2;
  v28 = v32;
  *(a9 + result[11]) = v31;
  v29 = (a9 + result[9]);
  v30 = v33;
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v30) = v35;
  *(a9 + result[12]) = v34;
  *(a9 + result[13]) = v30;
  return result;
}

uint64_t sub_18E6D7F98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v87 = a2;
  v9 = type metadata accessor for CombinerElement();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v66 - v15;
  v68 = v8;
  v69 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for GestureOutput();
  v84 = *(v17 - 8);
  v18 = *(v84 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v70 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v66 - v24;
  v26 = *a1;
  v81 = a1[1];
  v82 = v26;
  v27 = a1[2];
  v79 = a1[3];
  v80 = v27;
  v28 = a1[5];
  v75 = a1[4];
  v77 = a1[6];
  v78 = v28;
  v86 = v9;
  v29 = type metadata accessor for ReplicatingList();
  swift_getWitnessTable();
  result = sub_18E72B378();
  if (result)
  {
    v31 = MEMORY[0x1E69E7CC0];
    *a3 = 1;
    *(a3 + 8) = v31;
    *(a3 + 16) = v31;
    *(a3 + 24) = xmmword_18E72ED90;
    *(a3 + 40) = 0;
    return result;
  }

  v95 = sub_18E72AEB8();
  result = sub_18E6C1B4C(v29);
  v73 = result;
  if (result < 0)
  {
    goto LABEL_45;
  }

  v66 = AssociatedTypeWitness;
  v67 = a3;
  v32 = 0;
  v33 = 0;
  v76 = (v84 + 16);
  v34 = (v84 + 8);
  do
  {
    if (v73 == v32)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_43;
    }

    v84 = v33;
    v88 = v82;
    v89 = v81;
    v90 = v80;
    v91 = v79;
    v92 = v75;
    v93 = v78;
    v94 = v77;
    v35 = v25;
    v36 = v74;
    sub_18E6C17B8(v32, v29, v74);
    v37 = v86;
    WitnessTable = swift_getWitnessTable();
    v39 = v83;
    GestureComponent.tracingUpdate(context:)(&v88, v37, WitnessTable, v35);
    v83 = v39;
    if (v39)
    {
      v49 = v85;
      (*(v71 + 32))(v85, v36, v86);
      v50 = v49;
      v51 = v32;
LABEL_26:
      sub_18E6C190C(v50, v51, v29);
    }

    sub_18E6C190C(v36, v32, v29);
    (*v76)(v23, v35, v17);
    sub_18E72B278();
    sub_18E72B238();
    sub_18E6FF240(v17, &v88);
    result = (*v34)(v35, v17);
    v40 = v88 != 3 && v88 == 0;
    ++v32;
    v33 = v84 + v40;
    v25 = v35;
  }

  while (!__OFADD__(v84, v40));
  __break(1u);
LABEL_14:
  if (!(v33 | v75))
  {
    v84 = *(v4 + v87[11]);
    for (i = v70; ; (*v34)(i, v17))
    {
      v42 = sub_18E6C1B4C(v29);
      if (v42 >= v84 && *(v4 + v87[12]) != 1)
      {
        break;
      }

      sub_18E6C1E54(1, v29);
      result = sub_18E6C1B4C(v29);
      v43 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_44;
      }

      v88 = v82;
      v89 = v81;
      v90 = v80;
      v91 = v79;
      v92 = 0;
      v93 = v78;
      v94 = v77;
      v44 = v72;
      sub_18E6C17B8(result - 1, v29, v72);
      v45 = v86;
      v46 = swift_getWitnessTable();
      v47 = v83;
      GestureComponent.tracingUpdate(context:)(&v88, v45, v46, i);
      v83 = v47;
      if (v47)
      {
        v52 = v85;
        (*(v71 + 32))(v85, v44, v86);
        v50 = v52;
        v51 = v43;
        goto LABEL_26;
      }

      sub_18E6C190C(v44, v43, v29);
      sub_18E6FF240(v17, &v88);
      if (!v88)
      {
        sub_18E6C2328(1, v29);
        (*v34)(i, v17);
        break;
      }

      if (*(v4 + v87[12]) == 1)
      {
        v48 = sub_18E6C1B4C(v29);
        if (v84 < v48)
        {
          type metadata accessor for DynamicCombinerComponent.Failure();
          swift_getWitnessTable();
          swift_allocError();
          swift_willThrow();
          (*v34)(i, v17);
        }
      }

      (*v76)(v23, i, v17);
      sub_18E72B278();
      sub_18E72B238();
    }
  }

  if (*(v4 + v87[13]) != 1)
  {
    goto LABEL_39;
  }

  v53 = v95;
  result = sub_18E72B228();
  if (result < 0)
  {
    goto LABEL_46;
  }

  v54 = result;
  if (!result)
  {
LABEL_39:
    sub_18E70155C(v95, *(v4 + v87[9]), *(v4 + v87[9] + 8), v66, v67);
  }

  v55 = result;
  v84 = result;
  while (v54 >= v55)
  {
    --v55;
    sub_18E72B298();
    v64 = GestureOutput.isFinal.getter(v17);
    result = (*v34)(v23, v17);
    if (v64)
    {
      v65 = sub_18E6C1B4C(v29);
      if (*(v4 + v87[10]) >= v65)
      {
        v56 = v53;
        v57 = v23;
        v58 = v17;
        v59 = v34;
        v60 = v4;
        v61 = v29;
        v62 = v85;
        sub_18E6C17B8(v55, v61, v85);
        sub_18E6E73D4(v86);
        v63 = v62;
        v29 = v61;
        v4 = v60;
        v34 = v59;
        v17 = v58;
        v23 = v57;
        v53 = v56;
        v54 = v84;
        result = sub_18E6C190C(v63, v55, v29);
      }

      else
      {
        result = sub_18E6C1B50(v55, v29);
      }
    }

    if (!v55)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_18E6D8820(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for CombinerElement();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = *(v2 + *(a1 + 40));
  v11 = type metadata accessor for ReplicatingList();
  sub_18E6C270C(v10, v11);
  result = sub_18E6C1B4C(v11);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (result)
    {
      v14 = 0;
      do
      {
        sub_18E6C17B8(v14, v11, v9);
        sub_18E6E73D4(v6);
        result = sub_18E6C190C(v9, v14++, v11);
      }

      while (v13 != v14);
    }
  }

  return result;
}

uint64_t sub_18E6D893C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for CombinerElement();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = type metadata accessor for ReplicatingList();
  sub_18E6C130C(v8, v7);
  sub_18E6E749C(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_18E6D8A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v45 = a4;
  v43 = a1;
  v7 = *(a2 + 16);
  v38 = a2;
  v8 = *(a2 + 24);
  v9 = type metadata accessor for CombinerElement();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v46 = v15;
  v16 = type metadata accessor for ReplicatingList();
  swift_getWitnessTable();
  v17 = sub_18E72AF18();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  swift_getWitnessTable();
  v22 = sub_18E72B6D8();
  v39 = *(v22 - 8);
  v23 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  sub_18E72B398();
  (*(v18 + 16))(v25, v21, v17);
  v40 = v22;
  v26 = *(v22 + 36);
  sub_18E72AEE8();
  (*(v18 + 8))(v21, v17);
  v27 = 0;
  while (1)
  {
    sub_18E72AEF8();
    v28 = *&v25[v26];
    if (v28 == v47)
    {
      break;
    }

    sub_18E72AF08();
    sub_18E6C17B8(v28, v16, v14);
    v29 = sub_18E6E7520(v43, v46, v44, v45);
    sub_18E6C190C(v14, v28, v16);
    v30 = __OFADD__(v27, v29);
    v27 += v29;
    if (v30)
    {
      __break(1u);
      break;
    }
  }

  (*(v39 + 8))(v25, v40);
  v31 = v41;
  sub_18E6C130C(v16, v41);
  v32 = v46;
  v33 = sub_18E6E7520(v43, v46, v44, v45);
  if (v33 < 1)
  {
    (*(v42 + 8))(v31, v32);
    return v27;
  }

  v34 = v33;
  v35 = sub_18E6C1B4C(v16);
  result = (*(v42 + 8))(v31, v32);
  v37 = *(v5 + *(v38 + 44));
  if (v35 >= v37 && *(v5 + *(v38 + 48)) != 1)
  {
    return v27;
  }

  if (!__OFADD__(v27, v34))
  {
    if (v37 < v27 + v34)
    {
      return *(v5 + *(v38 + 44));
    }

    v27 += v34;
    return v27;
  }

  __break(1u);
  return result;
}