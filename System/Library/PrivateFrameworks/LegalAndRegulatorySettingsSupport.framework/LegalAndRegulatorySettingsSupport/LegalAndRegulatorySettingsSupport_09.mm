uint64_t sub_255CDC454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C4BB60](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_255D07058();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_255CDC4C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x259C4BB60](v4);
  if (v4)
  {
    v6 = 0;
    v7 = a2 + 32;
    do
    {
      v8 = *(v7 + 16 * v6 + 8);
      sub_255D07748();
      result = MEMORY[0x259C4BB60](*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {

        v10 = 32;
        do
        {
          v11 = *(v8 + v10);
          v12 = *(v8 + v10 + 16);
          v15 = *(v8 + v10 + 32);
          v14[0] = v11;
          v14[1] = v12;
          sub_255C76B38(v14, v13);
          sub_255CD5C50(a1);
          sub_255C76BF4(v14);
          v10 += 40;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t sub_255CDC5AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x259C4BB60](v4);
  if (v4)
  {
    v6 = 0;
    v7 = a2 + 32;
    do
    {
      v8 = *(v7 + 8 * v6);
      result = MEMORY[0x259C4BB60](*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {

        v10 = 32;
        do
        {
          v11 = *(v8 + v10);
          v12 = *(v8 + v10 + 16);
          v15 = *(v8 + v10 + 32);
          v14[0] = v11;
          v14[1] = v12;
          sub_255C76B38(v14, v13);
          sub_255CD5C50(a1);
          sub_255C76BF4(v14);
          v10 += 40;
          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t sub_255CDC68C(uint64_t a1, uint64_t a2)
{
  if (!a1 && a2 == 0xE100000000000000 || (sub_255D076D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 108 && a2 == 0xE100000000000000 || (sub_255D076D8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 99 && a2 == 0xE100000000000000 || (sub_255D076D8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 114 && a2 == 0xE100000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_255D076D8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_255CDC7D4()
{
  result = qword_27F7DF5D0;
  if (!qword_27F7DF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5D0);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_255CDC84C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CDC894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255CDC918@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF5D8);
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = sub_255D063E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 48);
  v29 = *(v1 + 32);
  v30 = v11;
  v31 = *(v1 + 64);
  v12 = *(v1 + 16);
  v28[0] = *v1;
  v28[1] = v12;
  v32 = *(v1 + 80);
  v33 = v28[0];
  v34 = *(v1 + 16);
  if (v34 == 1)
  {
    v22 = *&v28[0];
    v27 = __PAIR128__(*(&v33 + 1), *&v28[0]);
    v13 = sub_255CDD068(&v33, v26);
  }

  else
  {
    sub_255CDD068(&v33, v26);
    sub_255D07438();
    v14 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v33, &qword_27F7DF5E0);
    v13 = (*(v8 + 8))(v10, v7);
    v22 = v27;
  }

  MEMORY[0x28223BE20](v13);
  *(&v21 - 2) = v28;
  MEMORY[0x28223BE20](v15);
  *(&v21 - 2) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF5E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF5F0);
  sub_255C810A8(&qword_27F7DF5F8, &qword_27F7DF5E8);
  sub_255CDD0E8();
  sub_255D06D88();
  v17 = v24;
  (*(v2 + 16))(v23, v6, v24);
  sub_255C810A8(&qword_27F7DF638, &qword_27F7DF5D8);
  v18 = sub_255D06E78();
  (*(v2 + 8))(v6, v17);
  v26[0] = v18;
  v26[1] = *(&v29 + 1);

  v19 = v22(v26);

  *v25 = v19;
  return result;
}

uint64_t sub_255CDCD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  sub_255CD474C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE698);
  sub_255D06D98();
  result = sub_255CAA848(0, v3);
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = result;
  *(a2 + 56) = sub_255CB255C;
  *(a2 + 64) = 0;
  return result;
}

double sub_255CDCE44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_255D063E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 32);
  v9 = *(a1 + 24);
  v21 = v9;
  if ((v22 & 1) == 0)
  {

    sub_255D07438();
    v10 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v21, &qword_27F7DF640);
    (*(v5 + 8))(v8, v4);
    v9 = *&v19[0];
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 48);
  *&v19[0] = v9;
  *(&v19[0] + 1) = v12;
  v13 = v11(v19, v6);
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CDD258;
  *(a2 + 56) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = sub_255D06F58();
  *(a2 + 64) = sub_255CDD298;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  sub_255D06F78();
  sub_255D06018();
  v17 = v19[1];
  *(a2 + 96) = v19[0];
  *(a2 + 112) = v17;
  result = *&v20;
  *(a2 + 128) = v20;
  return result;
}

uint64_t sub_255CDD068(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF5E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CDD0E8()
{
  result = qword_27F7DF600;
  if (!qword_27F7DF600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF5F0);
    sub_255CDD174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF600);
  }

  return result;
}

unint64_t sub_255CDD174()
{
  result = qword_27F7DF608;
  if (!qword_27F7DF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF610);
    sub_255C810A8(&qword_27F7DF618, &qword_27F7DF620);
    sub_255C810A8(&qword_27F7DF628, &qword_27F7DF630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF608);
  }

  return result;
}

uint64_t sub_255CDD2BC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_255D073A8();
  if (!v19)
  {
    return sub_255D072A8();
  }

  v41 = v19;
  v45 = sub_255D075F8();
  v32 = sub_255D07608();
  sub_255D075D8();
  result = sub_255D07398();
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
      v22 = sub_255D073D8();
      v23 = v13;
      v24 = v13;
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
      sub_255D075E8();
      result = sub_255D073C8();
      ++v21;
      v13 = v24;
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

uint64_t TextTable._markdownContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 8;
  *a1 = v5;
}

double TextTable.init<A>(columns:rows:)@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X4>, _OWORD *a4@<X8>)
{
  *&v16 = a2();
  KeyPath = swift_getKeyPath();
  type metadata accessor for TextTableRow();
  v8 = sub_255D072C8();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_255CDD2BC(sub_255CDD8BC, KeyPath, v8, a3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v15 = v11;
  v12 = sub_255D072C8();
  v13 = swift_getWitnessTable();
  TextTable.init<A>(_:columns:)(&v15, a1, v12, v13, &v16);
  result = *&v16;
  *a4 = v16;
  return result;
}

uint64_t TextTable.init<A>(_:columns:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char **a5@<X8>)
{
  v48 = a1;
  v49 = a5;
  v7 = a2();
  v58 = v7;
  v56 = a3;
  v57 = a4;
  v53 = a3;
  v54 = a4;
  KeyPath = swift_getKeyPath();
  v51 = a4;
  v47 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for TextTableColumn();
  v8 = sub_255D072C8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF648);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_255CDD2BC(sub_255CDDDFC, v52, v8, v9, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v46 = 0;

  v13 = *(v12 + 16);
  v50 = v7;
  if (v13)
  {
    v44 = WitnessTable;
    v45 = v8;
    v14 = a3;
    v58 = MEMORY[0x277D84F90];
    sub_255C97938(0, v13, 0);
    v15 = 32;
    v16 = v58;
    do
    {
      v17 = *(v12 + v15);
      v58 = v16;
      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_255C97938((v18 > 1), v19 + 1, 1);
        v16 = v58;
      }

      *(v16 + 2) = v19 + 1;
      v16[v19 + 32] = 0x30201u >> (8 * v17);
      ++v15;
      --v13;
    }

    while (v13);

    a3 = v14;
    v7 = v50;
    WitnessTable = v44;
    v8 = v45;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v58 = v7;
  MEMORY[0x28223BE20](v20);
  v43 = v51;
  v21 = swift_getKeyPath();
  MEMORY[0x28223BE20](v21);
  v40 = a3;
  v41 = v51;
  v42 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF650);
  v25 = sub_255CDD2BC(sub_255CDDDFC, v39, v8, v23, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);

  v26 = *(v25 + 16);
  if (v26)
  {
    v46 = a3;
    v58 = MEMORY[0x277D84F90];
    sub_255C97900(0, v26, 0);
    v27 = 32;
    v28 = v58;
    do
    {
      v29 = *(v25 + v27);
      v58 = v28;
      v31 = *(v28 + 16);
      v30 = *(v28 + 24);

      if (v31 >= v30 >> 1)
      {
        sub_255C97900((v30 > 1), v31 + 1, 1);
        v28 = v58;
      }

      *(v28 + 16) = v31 + 1;
      *(v28 + 8 * v31 + 32) = v29;
      v27 += 8;
      --v26;
    }

    while (v26);

    a3 = v46;
    v7 = v50;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v32);
  v40 = a3;
  v41 = v51;
  v42 = v7;
  v33 = v48;
  v35 = sub_255CDD2BC(sub_255CDE308, v39, a3, &type metadata for RawTableRow, MEMORY[0x277D84A98], v47, MEMORY[0x277D84AC0], v34);

  v58 = sub_255C97670(0, *(v35 + 16) + 1, 0, MEMORY[0x277D84F90]);
  sub_255CDE25C(v28);
  sub_255CDE168(v35);
  result = (*(*(a3 - 8) + 8))(v33, a3);
  v37 = v58;
  v38 = v49;
  *v49 = v16;
  v38[1] = v37;
  return result;
}

uint64_t sub_255CDDD74()
{

  swift_getAtKeyPath();
}

uint64_t sub_255CDDE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10[4] = a1;
  v10[5] = a2;
  v10[2] = a3;
  v10[3] = a4;
  swift_getAssociatedTypeWitness();
  type metadata accessor for TextTableColumn();
  v6 = sub_255D072C8();
  WitnessTable = swift_getWitnessTable();
  result = sub_255CDD2BC(sub_255CDE33C, v10, v6, &type metadata for RawTableCell, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
  *a5 = result;
  return result;
}

uint64_t sub_255CDDF00@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255D0AA80;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 8;
  *a1 = v5;
}

uint64_t sub_255CDDF88(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_255C96444(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_255CDE07C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_255C96550(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_255CDE168(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_255C97670(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_255CDE25C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v6 = *(v3 + 24) >> 1, v6 <= v4))
  {
    result = sub_255C97670(result, v4 + 1, 1, v3);
    v3 = result;
    v6 = *(result + 24) >> 1;
  }

  v7 = *(v3 + 16);
  v8 = v6 - v7;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (v8 < 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v3 + 32 + 8 * v7) = a1;
  *(v3 + 16) = v7 + 1;
  if (v8 != 1)
  {
  }

  *v1 = v3;
  return result;
}

void *sub_255CDE33C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(a1 + 16))(&v5, *(v2 + 32));
  *a2 = v5;
  return result;
}

uint64_t sub_255CDE3AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF658);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3B8);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v29 - v11);
  sub_255D06CE8();
  sub_255D064F8();
  v13 = sub_255D06508();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  v14 = sub_255D06D18();

  sub_255CDE750(v4);
  v15 = (v12 + *(v6 + 44));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3C0) + 28);
  v17 = *MEMORY[0x277CE1050];
  v18 = sub_255D06D48();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v12 = v14;
  v19 = sub_255D06F78();
  v21 = v20;
  sub_255CDE7C0(v12, v10);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v22 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_255CDE7C0(v10, v25 + v22);
  v26 = v25 + v23;
  *v26 = 0x3FF8000000000000;
  *(v26 + 8) = 0;
  v27 = (v25 + v24);
  *v27 = v19;
  v27[1] = v21;
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255CDE954;
  *(a1 + 56) = v25;
  return result;
}

uint64_t getEnumTagSinglePayload for TaskListMarkerConfiguration(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_255CDE750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CDE7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CDE830()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3B8) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[11];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3C0) + 28);
  v8 = sub_255D06D48();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

double sub_255CDE954@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3B8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_255CFAF68(v1 + v4, v7, a1, v6);
}

uint64_t View.markdownCodeSyntaxHighlighter(_:)()
{
  swift_getKeyPath();
  sub_255D06A78();
}

uint64_t sub_255CDEAA0()
{
  sub_255CDECA8();

  return sub_255D063F8();
}

uint64_t sub_255CDEB68(uint64_t a1)
{
  sub_255C98A24(a1, v3);
  sub_255C98A24(v3, &v2);
  sub_255CDECA8();
  sub_255D06408();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_255CDEBCC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF688);
  sub_255D061D8();
  sub_255CDEC44();
  return swift_getWitnessTable();
}

unint64_t sub_255CDEC44()
{
  result = qword_27F7DF690;
  if (!qword_27F7DF690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF690);
  }

  return result;
}

unint64_t sub_255CDECA8()
{
  result = qword_27F7DF698;
  if (!qword_27F7DF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF698);
  }

  return result;
}

uint64_t sub_255CDED2C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F7DD828 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_255C98A24(&unk_27F7DF660, v2);
}

uint64_t sub_255CDED9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255D059D8();
  v7 = *(v6 - 8);
  v110 = v6;
  v111 = v7;
  MEMORY[0x28223BE20](v6);
  v108 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedStringInlineRenderer();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = (&v96 - v13);
  v14 = sub_255D05988();
  v109 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v106 = (&v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v101 = &v96 - v18;
  MEMORY[0x28223BE20](v17);
  v107 = &v96 - v19;
  if (qword_27F7DD898 != -1)
  {
    swift_once();
  }

  v20 = qword_27F7E0168;
  v21 = sub_255D070C8();
  v113 = a2;
  v114 = 15;
  v112 = a1;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDEA8);
  v23 = sub_255C86714();
  v24 = sub_255C8407C();
  v103 = v23;
  v104 = v22;
  v102 = v24;
  v25 = sub_255D07498();
  v105 = v20;
  v27 = [v20 firstMatchInString:v21 options:0 range:{v25, v26}];

  v28 = v14;
  if (v27)
  {
    [v27 rangeAtIndex_];
    sub_255D073F8();
    if (v29)
    {

      goto LABEL_6;
    }

    v99 = v14;
    v45 = sub_255D07228();
    MEMORY[0x259C4B570](v45);

    v46 = sub_255D07128();
    v48 = v47;

    if (v46 == 29282 && v48 == 0xE200000000000000)
    {

      v28 = v99;
LABEL_17:
      v55 = *v3;
      v54 = v3[1];
      LODWORD(v103) = *(v3 + 16);
      v56 = v3[3];
      v104 = v54;
      v105 = v56;
      v106 = type metadata accessor for TextInlineRenderer();
      v57 = v106[6];
      v58 = v28;
      v59 = v106[9];
      v60 = *(v3 + v106[8]);
      v61 = v100;
      sub_255C867BC(v3 + v106[5], v100 + v9[5]);
      sub_255CA1EB0(v3 + v57, v61 + v9[6]);
      v62 = v9[8];
      v63 = *(v111 + 16);
      v64 = v3 + v59;
      v65 = v110;
      v63(v61 + v62, v64, v110);
      sub_255D05978();
      *(v61 + v9[9]) = 0;
      *(v61 + v9[7]) = v60;
      v63(v108, (v61 + v62), v65);
      v66 = v101;
      sub_255D05998();
      sub_255D05908();
      (*(v109 + 8))(v66, v58);
      sub_255CF0FCC(v107);
      sub_255CDF6A4(v61);
      v67 = sub_255D06998();
      v69 = v68;
      v71 = v70;
      v72 = v104;
      LOBYTE(v66) = v103;
      v73 = sub_255D06938();
      v109 = v74;
      v110 = v73;
      v76 = v75;
      v111 = v77;
      sub_255C8A038(v67, v69, v71 & 1);

      sub_255C8A038(v55, v72, v66);

      v79 = v109;
      *v3 = v110;
      v3[1] = v79;
      *(v3 + 16) = v76 & 1;
      v3[3] = v111;
      *(v3 + v106[10]) = 1;
      return result;
    }

    v53 = sub_255D076D8();

    v28 = v99;
    if (v53)
    {
      goto LABEL_17;
    }
  }

LABEL_6:
  v30 = v3[1];
  v101 = *v3;
  v98 = v30;
  v97 = *(v3 + 16);
  v99 = v3[3];
  v31 = type metadata accessor for TextInlineRenderer();
  v32 = v31[6];
  v33 = v31[9];
  v34 = *(v3 + v31[8]);
  sub_255C867BC(v3 + v31[5], &v12[v9[5]]);
  sub_255CA1EB0(v3 + v32, &v12[v9[6]]);
  v35 = v9[8];
  v36 = *(v111 + 16);
  v100 = v3;
  v37 = v3 + v33;
  v38 = v36;
  v111 += 16;
  v36(&v12[v35], v37, v110);
  sub_255D05978();
  v96 = v9[9];
  v12[v96] = 0;
  v12[v9[7]] = v34;
  v39 = sub_255D070C8();
  v113 = a2;
  v114 = 15;
  v112 = a1;

  v40 = sub_255D07498();
  v42 = [v105 firstMatchInString:v39 options:0 range:{v40, v41}];

  if (v42)
  {
    [v42 rangeAtIndex_];
    sub_255D073F8();
    if ((v43 & 1) == 0)
    {
      v49 = sub_255D07228();
      MEMORY[0x259C4B570](v49);

      v50 = sub_255D07128();
      v52 = v51;

      if (v50 == 29282 && v52 == 0xE200000000000000)
      {
      }

      else
      {
        v80 = sub_255D076D8();

        if ((v80 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v38(v108, &v12[v35], v110);
      v81 = v107;
      sub_255D05998();
      sub_255D05908();
      (*(v109 + 8))(v81, v28);
      v12[v96] = 1;
      goto LABEL_20;
    }
  }

LABEL_9:
  v38(v108, &v12[v35], v110);

  v44 = v107;
  sub_255D05998();
  sub_255D05908();
  (*(v109 + 8))(v44, v28);
LABEL_20:
  sub_255CF0FCC(v106);
  sub_255CDF6A4(v12);
  v82 = sub_255D06998();
  v84 = v83;
  v86 = v85;
  v87 = v101;
  v88 = v98;
  v89 = v97;
  v110 = sub_255D06938();
  v111 = v90;
  v92 = v91;
  v94 = v93;
  sub_255C8A038(v82, v84, v86 & 1);

  sub_255C8A038(v87, v88, v89);

  v95 = v100;
  *v100 = v110;
  v95[1] = v92;
  *(v95 + 16) = v94 & 1;
  v95[3] = v111;
  return result;
}

uint64_t type metadata accessor for TextInlineRenderer()
{
  result = qword_27F7DF6A0;
  if (!qword_27F7DF6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255CDF6A4(uint64_t a1)
{
  v2 = type metadata accessor for AttributedStringInlineRenderer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CDF714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_255D059D8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_255CDF858(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_255D059D8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_255CDF988()
{
  sub_255C86CD4();
  if (v0 <= 0x3F)
  {
    sub_255CDFA4C();
    if (v1 <= 0x3F)
    {
      sub_255D059D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255CDFA4C()
{
  if (!qword_27F7DF6B0)
  {
    v0 = sub_255D07018();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DF6B0);
    }
  }
}

uint64_t View.markdownTextStyle<A>(textStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  sub_255D06B58();
}

uint64_t sub_255CDFB88()
{
  sub_255CE09C4();

  return sub_255D063F8();
}

uint64_t sub_255CDFC50(uint64_t a1)
{
  sub_255C98A24(a1, v3);
  sub_255C98A24(v3, &v2);
  sub_255CE09C4();
  sub_255D06408();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_255CDFD00(uint64_t a1)
{
  sub_255CAC668(a1, v6);
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v5 = 1;
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(&v5, v2, &type metadata for FontStyle, boxed_opaque_existential_1);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_255CDFDF0(uint64_t a1)
{
  sub_255CAC668(a1, v11);
  v2 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_255D06868();
  if (qword_27F7DD850 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v8[0] = v3;
  v8[1] = 0x3FEB333333333333;
  v9 = 0x80;
  v10 = qword_27F7DFBF0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF6E0);
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

  sub_255CE04B4(v8, v2, v7, boxed_opaque_existential_1);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_255CDFF30(uint64_t a1)
{
  sub_255CAC668(a1, v6);
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  if (qword_27F7DD848 != -1)
  {
    swift_once();
  }

  v5 = qword_27F7DFBE8;
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

  sub_255CE04B4(&v5, v2, &type metadata for ForegroundColor, boxed_opaque_existential_1);

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_255CE0064(uint64_t a1, uint64_t a2, char a3)
{
  sub_255CAC668(a1, v13);
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10[0] = 1;
  v11 = a2;
  v12 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE470);
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(v10, v6, v9, boxed_opaque_existential_1);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_255CE0188(uint64_t a1, uint64_t a2)
{
  sub_255CAC668(a1, v11);
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_255D06868();
  v9[0] = v5;
  v9[1] = a2;
  v10 = 0x80;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF6E8);
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(v9, v4, v8, boxed_opaque_existential_1);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_255CE025C(uint64_t a1)
{
  sub_255CAC668(a1, v7);
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_255D06868();
  v6 = v3;
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(&v6, v2, &type metadata for FontWeight, boxed_opaque_existential_1);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_255CE0318(uint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255CAC668(v14, v20);
  v15 = v21;
  v16 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  a2();
  v19[1] = v15;
  v19[2] = a5;
  v19[3] = v16;
  v19[4] = a7;
  a1[3] = type metadata accessor for TextStyleBuilder.Pair();
  a1[4] = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(v13, v15, a5, boxed_opaque_existential_1);
  (*(v11 + 8))(v13, a5);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_255CE046C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255CE04B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TextStyleBuilder.buildPartialBlock<A>(first:)(v4);
  static TextStyleBuilder.buildPartialBlock<A, B>(accumulated:next:)(v11, a1, a2, a3, a4);
  return (*(v9 + 8))(v11, a2);
}

uint64_t sub_255CE05C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE4E8);
  sub_255D061D8();
  sub_255CE063C();
  return swift_getWitnessTable();
}

unint64_t sub_255CE063C()
{
  result = qword_27F7DE4E0;
  if (!qword_27F7DE4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DE4E0);
  }

  return result;
}

uint64_t sub_255CE06A0(uint64_t a1, uint64_t a2)
{
  sub_255CAC668(a1, v11);
  v9.val[0] = v12;
  v4 = *&v12.f64[0];
  __swift_project_boxed_opaque_existential_1(v11, *&v12.f64[0]);
  v9.val[1] = *(a2 + 24);
  v5 = __swift_project_boxed_opaque_existential_1(a2, *&v9.val[1].f64[0]);
  v6 = &v10;
  v13 = v9;
  vst2q_f64(v6, v13);
  *(a1 + 24) = type metadata accessor for TextStyleBuilder.Pair();
  *(a1 + 32) = &off_2867D69C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_255CE04B4(v5, v4, *&v9.val[1].f64[0], boxed_opaque_existential_1);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_255CE078C()
{
  v0 = type metadata accessor for FontProperties.Family(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *MEMORY[0x277CE0990];
  v4 = sub_255D06808();
  v5 = *(*(v4 - 8) + 104);
  v5(v2, v3, v4);
  swift_storeEnumTagMultiPayload();
  _s33LegalAndRegulatorySettingsSupport14FontPropertiesV13defaultWeight7SwiftUI0F0V0I0VvgZ_0();
  v7 = v6;
  v8 = type metadata accessor for FontProperties(0);
  qword_27F7DF6D0 = v8;
  unk_27F7DF6D8 = &protocol witness table for FontProperties;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(qword_27F7DF6B8);
  v5(boxed_opaque_existential_1, v3, v4);
  swift_storeEnumTagMultiPayload();
  v10 = v8[5];
  *(boxed_opaque_existential_1 + v10) = 0;
  v11 = v8[6];
  *(boxed_opaque_existential_1 + v11) = 0;
  v12 = v8[7];
  *(boxed_opaque_existential_1 + v12) = 0;
  v13 = v8[8];
  *(boxed_opaque_existential_1 + v13) = 0;
  v14 = v8[9];
  _s33LegalAndRegulatorySettingsSupport14FontPropertiesV13defaultWeight7SwiftUI0F0V0I0VvgZ_0();
  *(boxed_opaque_existential_1 + v14) = v15;
  v16 = boxed_opaque_existential_1 + v8[10];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = v8[11];
  *(boxed_opaque_existential_1 + v17) = 0x4031000000000000;
  v18 = v8[12];
  *(boxed_opaque_existential_1 + v18) = 0x3FF0000000000000;
  result = sub_255C92E40(v2, boxed_opaque_existential_1);
  *(boxed_opaque_existential_1 + v10) = 0;
  *(boxed_opaque_existential_1 + v11) = 0;
  *(boxed_opaque_existential_1 + v12) = 0;
  *(boxed_opaque_existential_1 + v13) = 0;
  *(boxed_opaque_existential_1 + v14) = v7;
  *(boxed_opaque_existential_1 + v17) = 0x4031000000000000;
  *(boxed_opaque_existential_1 + v18) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_255CE0954@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F7DD830 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_255C98A24(qword_27F7DF6B8, v2);
}

unint64_t sub_255CE09C4()
{
  result = qword_27F7DF6F0;
  if (!qword_27F7DF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF6F0);
  }

  return result;
}

uint64_t sub_255CE0A94@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  sub_255C73C84();
  sub_255D059E8();
  v10 = type metadata accessor for FontProperties(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_255C76B94(v9, &qword_27F7DD9E0);
  }

  else
  {
    sub_255C8A2D0(v9);
  }

  v11 = sub_255D06808();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);

  v12 = sub_255D06898();
  sub_255C76B94(v6, &qword_27F7DF2D8);
  result = swift_getKeyPath();
  *a2 = a1;
  a2[1] = result;
  a2[2] = v12;
  return result;
}

uint64_t sub_255CE0CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255CE0D08;
  *(a1 + 56) = v3;
}

unint64_t sub_255CE0D24()
{
  result = qword_27F7DF6F8;
  if (!qword_27F7DF6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF6F8);
  }

  return result;
}

uint64_t InlineLink._inlineContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;
  *(v6 + 56) = 6;
  *a1 = v6;
}

uint64_t InlineLink.init(_:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_255D05AC8();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_255D0AA80;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v12 = sub_255D05B78();
  result = (*(*(v12 - 8) + 8))(a3, v12);
  *a4 = v8;
  a4[1] = v10;
  a4[2] = v11;
  return result;
}

uint64_t InlineLink.init(destination:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_255D05AC8();
  v8 = v7;
  a2(&v12);
  v9 = sub_255D05B78();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  v11 = v12;
  *a3 = v6;
  a3[1] = v8;
  a3[2] = v11;
  return result;
}

uint64_t sub_255CE0F90@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = v5;
  *(v6 + 56) = 6;
  *a1 = v6;
}

uint64_t sub_255CE1038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CE1080(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

__n128 sub_255CE10F8@<Q0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, double *)@<X1>, unint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_255D06058();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15, a1, v13);

  sub_255C9BA74(a3, a4, a5, v15, v25);
  a2(&v20, v25);
  v27 = v25[4];
  sub_255C76B94(&v27, &qword_27F7DF7A0);
  v26 = v25[5];
  sub_255C76B94(&v26, &qword_27F7DF7A8);
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v28 = v20;
  v29 = v21;
  v33[2] = v22;
  v33[3] = v23;
  v34 = v24;
  v33[0] = v20;
  v33[1] = v21;
  sub_255CE26FC(&v28, v19);
  sub_255CE2758(v33);
  v17 = v31;
  *(a6 + 32) = v30;
  *(a6 + 48) = v17;
  *(a6 + 64) = v32;
  result = v29;
  *a6 = v28;
  *(a6 + 16) = result;
  return result;
}

double sub_255CE12B8@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, double *)@<X1>, unint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_255D06058();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15, a1, v13);

  sub_255C9BA74(a3, a4, a5, v15, v30);
  a2(&v22, v30);
  v32 = v30[4];
  sub_255C76B94(&v32, &qword_27F7DF7A0);
  v31 = v30[5];
  sub_255C76B94(&v31, &qword_27F7DF7A8);
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v42 = v29;
  v41[5] = v27;
  v41[6] = v28;
  v41[3] = v25;
  v41[4] = v26;
  v41[1] = v23;
  v41[2] = v24;
  v41[0] = v22;
  sub_255CE25F8(&v33, v21);
  sub_255CE2654(v41);
  v17 = v38;
  *(a6 + 64) = v37;
  *(a6 + 80) = v17;
  *(a6 + 96) = v39;
  *(a6 + 112) = v40;
  v18 = v34;
  *a6 = v33;
  *(a6 + 16) = v18;
  result = *&v35;
  v20 = v36;
  *(a6 + 32) = v35;
  *(a6 + 48) = v20;
  return result;
}

uint64_t sub_255CE1498@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF708);
  MEMORY[0x28223BE20](v32);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = sub_255D063E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v29 = *(v1 + 32);
  v16 = *(v1 + 48);
  v30 = *(v1 + 40);
  v31 = v16;
  if (v14 == 1)
  {
    v41 = v12;
    v42 = v13;
    sub_255C74DCC();
    v17 = v12;
  }

  else
  {
    v28 = v9;
    sub_255C74DCC();
    sub_255D07438();
    v18 = v3;
    v19 = v15;
    v20 = sub_255D066C8();
    sub_255D05D88();

    v15 = v19;
    v3 = v18;
    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74DD0();
    (*(v8 + 8))(v11, v28);
    v17 = v41;
  }

  v34 = v12;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v38 = v29;
  v22 = v30;
  v21 = v31;
  v39 = v30;
  v40 = v31;
  sub_255CE17B4(v6);
  sub_255C7299C(v6, v3, &qword_27F7DF708);
  sub_255CE210C();
  v23 = sub_255D06E78();
  sub_255C76B94(v6, &qword_27F7DF708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_255D0AA80;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = 0;
  *(v24 + 56) = 0;
  *(v24 + 64) = 8;
  v34 = v23;
  v35 = v24;

  v25 = v17(&v34);

  *v33 = v25;
  return result;
}

uint64_t sub_255CE17B4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_255D063E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF730);
  MEMORY[0x28223BE20](v47);
  v7 = &v42 - v6;
  v8 = v1[1];
  v50 = *v1;
  v51 = v8;
  v52 = v1[2];
  v9 = *(v1 + 6);
  v55 = *(v1 + 32);
  v10 = *(v1 + 3);
  v53 = v9;
  v54 = v10;
  v46 = v55;
  v44 = v2;
  v43 = v3;
  v42 = v5;
  if (v55 == 1)
  {
    v15 = v10;
    v13 = v10;
  }

  else
  {

    sub_255D07438();
    v11 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v54, &qword_27F7DF768);
    v12 = *(v3 + 8);
    v12(v5, v2);
    v13 = v49[0];

    sub_255D07438();
    v14 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v54, &qword_27F7DF768);
    v12(v5, v2);
    v15 = v49[0];
  }

  *v7 = sub_255D06F58();
  *(v7 + 1) = v16;
  *(v7 + 2) = v13;
  v7[24] = 0;
  *(v7 + 4) = v15;
  v7[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF770);
  v45 = v53;
  v17 = *(v53 + 16);
  v49[7] = 0;
  v49[8] = v17;
  swift_getKeyPath();
  v18 = swift_allocObject();
  v19 = v51;
  *(v18 + 16) = v50;
  *(v18 + 32) = v19;
  *(v18 + 48) = v52;
  *(v18 + 64) = v53;
  sub_255CE2394(&v50, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF780);
  sub_255CE23CC();
  sub_255C810A8(&qword_27F7DF798, &qword_27F7DF780);
  sub_255D06EA8();
  if (!v46)
  {

    sub_255D07438();
    v20 = sub_255D066C8();
    sub_255D05D88();

    v21 = v42;
    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v54, &qword_27F7DF768);
    (*(v43 + 8))(v21, v44);
  }

  v22 = sub_255D06718();
  sub_255D05EF8();
  v23 = &v7[*(v47 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = *(v45 + 16);
  v29 = *(*(&v52 + 1) + 16);
  v30 = swift_allocObject();
  v30[2] = sub_255CE1FDC;
  v30[3] = 0;
  v30[4] = v28;
  v30[5] = v29;
  v31 = sub_255D06F58();
  v33 = v32;
  v34 = v48;
  sub_255C7299C(v7, v48, &qword_27F7DF730);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF720) + 36));
  *v35 = sub_255CE24E4;
  v35[1] = v30;
  v35[2] = v31;
  v35[3] = v33;
  v36 = swift_allocObject();
  v36[2] = sub_255CE2070;
  v36[3] = 0;
  v36[4] = v28;
  v36[5] = v29;
  v37 = sub_255D06F58();
  v39 = v38;
  sub_255C76B94(v7, &qword_27F7DF730);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF708);
  v41 = (v34 + *(result + 36));
  *v41 = sub_255CE25AC;
  v41[1] = v36;
  v41[2] = v37;
  v41[3] = v39;
  return result;
}

uint64_t sub_255CE1DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  *a3 = 0;
  *(a3 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF780);
  v5 = *(*(a2 + 40) + 16);
  v10 = 0;
  v11 = v5;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 72) = *(a2 + 48);
  sub_255CE2394(a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF7B0);
  sub_255CE23CC();
  sub_255CE2820();
  return sub_255D06EA8();
}

unint64_t *sub_255CE1EF0@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(a3 + 48);
  if (*(v7 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v7 + 8 * a2 + 32);
  if (v8 >= *(v9 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(v9 + 8 * v8 + 32);
  result = swift_getKeyPath();
  v11 = *(a3 + 40);
  if (v8 >= *(v11 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = *(v11 + v8 + 32);
  if (v13 >= 2)
  {
    if (v13 == 2)
    {

      result = sub_255D064C8();
    }

    else
    {

      result = sub_255D064E8();
    }
  }

  else
  {

    result = sub_255D064D8();
  }

  *a4 = v12;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a2;
  *(a4 + 32) = v8;
  *(a4 + 40) = v10;
  *(a4 + 48) = result;
  return result;
}

uint64_t sub_255CE1FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v4;
  v5 = *(a1 + 16);
  *(a2 + 24) = *a1;
  *(a2 + 40) = v5;
  *(a2 + 56) = *(a1 + 32);
  sub_255C7299C(&v9, v7, &qword_27F7DF7A0);
  return sub_255C7299C(&v8, v7, &qword_27F7DF7A8);
}

uint64_t sub_255CE2070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 64) = 0;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v4;
  v5 = *(a1 + 16);
  *(a2 + 72) = *a1;
  *(a2 + 88) = v5;
  *(a2 + 104) = *(a1 + 32);
  sub_255C7299C(&v9, &v7, &qword_27F7DF7A0);
  return sub_255C7299C(&v8, &v7, &qword_27F7DF7A8);
}

unint64_t sub_255CE210C()
{
  result = qword_27F7DF710;
  if (!qword_27F7DF710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF708);
    sub_255CE21C4();
    sub_255C810A8(&qword_27F7DF758, &qword_27F7DF760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF710);
  }

  return result;
}

unint64_t sub_255CE21C4()
{
  result = qword_27F7DF718;
  if (!qword_27F7DF718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF720);
    sub_255CE227C();
    sub_255C810A8(&qword_27F7DF748, &qword_27F7DF750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF718);
  }

  return result;
}

unint64_t sub_255CE227C()
{
  result = qword_27F7DF728;
  if (!qword_27F7DF728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF730);
    sub_255C810A8(&qword_27F7DF738, &qword_27F7DF740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF728);
  }

  return result;
}

uint64_t sub_255CE2334()
{
  sub_255C74DD0();
  sub_255C74DA4(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_255CE23CC()
{
  result = qword_27F7DF788;
  if (!qword_27F7DF788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF778);
    sub_255CE2458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF788);
  }

  return result;
}

unint64_t sub_255CE2458()
{
  result = qword_27F7DF790;
  if (!qword_27F7DF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF790);
  }

  return result;
}

uint64_t sub_255CE24AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255CE2520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v13 = *a1;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = v13;
  *a7 = a6;
  a7[1] = v14;
}

uint64_t objectdestroy_8Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255CE27BC()
{
  sub_255C74DD0();
  sub_255C74DA4(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_255CE2820()
{
  result = qword_27F7DF7B8;
  if (!qword_27F7DF7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF7B0);
    sub_255CE28AC();
    sub_255CE2900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF7B8);
  }

  return result;
}

unint64_t sub_255CE28AC()
{
  result = qword_27F7DF7C0;
  if (!qword_27F7DF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF7C0);
  }

  return result;
}

unint64_t sub_255CE2900()
{
  result = qword_27F7DF7C8;
  if (!qword_27F7DF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF7C8);
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

uint64_t sub_255CE2994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CE29DC(uint64_t result, int a2, int a3)
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
      *(result + 104) = (a2 - 1);
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

uint64_t sub_255CE2A64@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = sub_255D063E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 33);
  v10 = *(v1 + 65);
  v48 = *(v1 + 49);
  v49[0] = v10;
  *(v49 + 15) = *(v1 + 80);
  v46 = *(v1 + 17);
  v47 = v9;
  v21 = *(v1 + 88);
  v45[0] = *(v1 + 89);
  *(v45 + 3) = *(v1 + 92);
  v11 = *(v1 + 104);
  v22 = *(v1 + 96);
  v23 = v11;
  if (v8)
  {
    v43 = v7;
    v44 = v6;
    sub_255C74DCC();
    v12 = v7;
  }

  else
  {
    sub_255C74DCC();
    sub_255D07438();
    v13 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74BA0();
    (*(v3 + 8))(v5, v2);
    v12 = v43;
  }

  v36 = v47;
  v37 = v48;
  *v38 = v49[0];
  v32 = v7;
  v33 = v6;
  v34 = v8;
  *&v38[15] = *(v49 + 15);
  v35 = v46;
  v14 = v21;
  v15 = v22;
  v39 = v21;
  *v40 = v45[0];
  *&v40[3] = *(v45 + 3);
  v16 = v23;
  v41 = v22;
  v42 = v23;
  sub_255CE2D58(v31);
  v27 = v31[2];
  v28 = v31[3];
  v29 = v31[4];
  v30 = v31[5];
  v25 = v31[0];
  v26 = v31[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF7D0);
  sub_255CE3208();
  v17 = sub_255D06E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_255D0AA80;
  *(v18 + 32) = v14 & 1;
  *(v18 + 40) = v15;
  *(v18 + 48) = v16;
  *(v18 + 56) = 0;
  *(v18 + 64) = 2;
  v32 = v17;
  v33 = v18;

  v19 = v12(&v32);

  *v24 = v19;
  return result;
}

uint64_t sub_255CE2D58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_255D063E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[6];
  v50 = v1[5];
  v51 = v7;
  v8 = v1[4];
  v48 = v1[3];
  v49 = v8;
  v9 = v1[1];
  v45 = *v1;
  v46 = v9;
  v47 = v1[2];
  v52 = *(&v7 + 1);
  v10 = *(v1 + 24);
  v54 = *(v1 + 40);
  v53 = v10;
  v35 = v11;
  if (v54 == 1)
  {
    v12 = *(&v53 + 1);
    v38 = v10;
    v43 = __PAIR128__(*(&v53 + 1), v10);
    sub_255C7299C(&v52, &v39, &qword_27F7DF7F0);
    sub_255C7299C(&v53, &v39, &qword_27F7DF7F8);
  }

  else
  {
    sub_255C7299C(&v52, &v39, &qword_27F7DF7F0);
    sub_255C7299C(&v53, &v39, &qword_27F7DF7F8);
    sub_255D07438();
    v13 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v53, &qword_27F7DF7F8);
    (*(v4 + 8))(v6, v3);
    v12 = *(&v43 + 1);
    v38 = v43;
  }

  v39 = v49;
  v14 = v51;
  v40 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7DF800);
  sub_255D06DA8();
  v15 = v41;
  LODWORD(v16) = v42;
  v36 = v52;
  result = swift_getKeyPath();
  v37 = result;
  v18 = v48;
  *&v43 = v48;
  BYTE8(v43) = BYTE8(v48);
  if (BYTE8(v48) == 1)
  {
    v41 = v48;
  }

  else
  {

    sub_255D07438();
    v19 = sub_255D066C8();
    v34 = v16;
    v16 = v15;
    v20 = v14;
    v21 = v12;
    v22 = v19;
    sub_255D05D88();

    v12 = v21;
    v14 = v20;
    v15 = v16;
    LOBYTE(v16) = v34;
    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C76B94(&v43, &qword_27F7DF640);
    result = (*(v4 + 8))(v6, v35);
    v18 = v41;
  }

  v23 = __OFADD__(v18, 1);
  v24 = v18 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v44 = v16;
    KeyPath = swift_getKeyPath();
    v26 = BYTE8(v50);
    v27 = swift_allocObject();
    v28 = v50;
    v27[5] = v49;
    v27[6] = v28;
    v27[7] = v51;
    v29 = v46;
    v27[1] = v45;
    v27[2] = v29;
    v30 = v48;
    v27[3] = v47;
    v27[4] = v30;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_255CE3334;
    *(v31 + 24) = v27;
    *a1 = v36;
    *(a1 + 8) = v14;
    v32 = v37;
    *(a1 + 16) = v38;
    *(a1 + 24) = v12;
    *(a1 + 32) = v15;
    *(a1 + 40) = v16;
    *(a1 + 48) = v32;
    *(a1 + 56) = v24;
    *(a1 + 64) = KeyPath;
    *(a1 + 72) = v26;
    *(a1 + 80) = sub_255CE3374;
    *(a1 + 88) = v31;
    return sub_255C76DA8(&v45, &v39);
  }

  return result;
}

uint64_t sub_255CE3170(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_255C7B780(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7DF800);
  return sub_255D06DB8();
}

unint64_t sub_255CE3208()
{
  result = qword_27F7DF7D8;
  if (!qword_27F7DF7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF7D0);
    sub_255C74BAC();
    sub_255C810A8(&qword_27F7DF7E0, &qword_27F7DF7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF7D8);
  }

  return result;
}

uint64_t sub_255CE32D0()
{
  sub_255C74BA0();
  sub_255C74BA0();
  sub_255C74DA4(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_255CE333C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_255CE33B4()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_255CE343C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_255CE359C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 16] & ~v8;

  v18(v19);
}

uint64_t sub_255CE381C@<X0>(uint64_t a1@<X8>)
{
  sub_255D06158();
  sub_255CE57C4(&qword_27F7DE9C0, MEMORY[0x277CDF7F8]);
  sub_255D07398();
  sub_255D073B8();
  if (v9[4] == v9[0])
  {
    v2 = sub_255D060A8();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_255D073D8();
    v6 = v5;
    v7 = sub_255D060A8();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_255CE39B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF888);
  v5 = *(a1 + 16);
  sub_255C810A8(&qword_27F7DF890, &qword_27F7DF888);
  v6 = sub_255D060F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = *(a1 + 24);
  type metadata accessor for ResizeToFit1();
  v14 = sub_255D06538();
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = v13;
  v32 = v5;
  v33 = v13;
  v34 = v3;
  v19 = sub_255CE4044();
  sub_255CE3D6C(sub_255CE4028, v31, &type metadata for ResizeToFit2, v5, v19, v13, v9);

  v37[1] = sub_255C810A8(&qword_27F7DF898, &qword_27F7DF888);
  v37[2] = v13;
  WitnessTable = swift_getWitnessTable();
  sub_255C818BC(v9, v6, WitnessTable);
  v21 = *(v7 + 8);
  v21(v9, v6);
  sub_255C818BC(v12, v6, WitnessTable);
  v37[0] = sub_255C7E96C(v9);
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x277CE11C0];
  sub_255C7E77C(v37, MEMORY[0x277CE11C8]);

  v21(v9, v6);
  v21(v12, v6);
  v35 = v23;
  v36 = v22;
  v24 = v28;
  v25 = swift_getWitnessTable();
  sub_255C818BC(v17, v24, v25);
  return (*(v29 + 8))(v17, v24);
}

uint64_t sub_255CE3D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_255D05F98();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_255D05FA8();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_255D06108();
}

uint64_t sub_255CE3F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResizeToFit();
  sub_255C818BC(a1 + *(v9 + 36), a2, a3);
  sub_255C818BC(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

unint64_t sub_255CE4044()
{
  result = qword_27F7DF8A0[0];
  if (!qword_27F7DF8A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7DF8A0);
  }

  return result;
}

uint64_t sub_255CE4098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v47 = v6;
  v48 = v4 + 16;
  v49 = v8;
  v40 = v7;
  (v8)(v7, v2, a1, v5);
  v46 = *(v4 + 80);
  v9 = (v46 + 32) & ~v46;
  v43 = v9;
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v41 = a1;
  v42 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  v39 = v12;
  v13 = *(v4 + 32);
  v44 = v4 + 32;
  v45 = v13;
  v13(v10 + v9, v7, a1);
  sub_255D061D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF940);
  sub_255D061D8();
  v67 = v12;
  v68 = MEMORY[0x277CDF678];
  v38 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v15 = sub_255C810A8(&qword_27F7DF948, &qword_27F7DF940);
  v65 = WitnessTable;
  v66 = v15;
  swift_getWitnessTable();
  v16 = sub_255D06138();
  v36[1] = v17;
  v37 = v2;
  v63 = v16;
  v64 = v17;
  v18 = *v2;
  v19 = v2[1];
  v20 = *(v2 + 16);
  v21 = v2[3];
  *&v78 = *v2;
  *(&v78 + 1) = v19;
  LOBYTE(v79) = v20;
  *(&v79 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF950);
  sub_255D06DA8();
  v22 = v73;
  if (v74)
  {
    v22 = 0;
  }

  v36[0] = v22;
  *&v78 = v18;
  *(&v78 + 1) = v19;
  LOBYTE(v79) = v20;
  *(&v79 + 1) = v21;
  sub_255D06DA8();
  sub_255D06F58();
  sub_255D06148();
  v23 = swift_getWitnessTable();
  sub_255D06BC8();

  v56[0] = v69;
  v56[1] = v70;
  v56[2] = v71;
  v56[3] = v72;
  v78 = v69;
  v79 = v70;
  v80 = v71;
  v81 = v72;
  v24 = v40;
  v25 = v41;
  v49(v40, v37, v41);
  v26 = v43;
  v27 = swift_allocObject();
  v28 = v39;
  *(v27 + 16) = v42;
  *(v27 + 24) = v28;
  v45(v27 + v26, v24, v25);
  v29 = sub_255D061D8();
  v54 = v23;
  v55 = MEMORY[0x277CDF678];
  v30 = swift_getWitnessTable();
  sub_255CE5654();
  sub_255CE56A8();
  sub_255D06B18();

  v31 = *(*(v29 - 8) + 8);
  v31(v56, v29);
  v57[3] = v76;
  v57[4] = v77;
  v57[1] = v74;
  v57[2] = v75;
  v57[0] = v73;
  v60 = v75;
  v61 = v76;
  v62 = v77;
  v58 = v73;
  v59 = v74;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF970);
  v32 = sub_255D061D8();
  v33 = sub_255C810A8(&qword_27F7DF978, &qword_27F7DF970);
  v52 = v30;
  v53 = v33;
  v34 = swift_getWitnessTable();
  sub_255C818BC(&v58, v32, v34);
  v31(v57, v29);

  v61 = v81;
  v62 = v82;
  v59 = v79;
  v60 = v80;
  v58 = v78;
  v51[2] = v80;
  v51[3] = v81;
  v51[4] = v82;
  v51[0] = v78;
  v51[1] = v79;
  sub_255C818BC(v51, v32, v34);
  v31(&v58, v29);
}

uint64_t sub_255CE4628@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = sub_255D061D8();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF940);
  v10 = sub_255D061D8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  sub_255D06038();
  v17 = v16;
  v25[1] = a2;
  type metadata accessor for ResizeToFit1();
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  if (v19 > v17)
  {
    v18 = v17 / (v19 / v18);
    v19 = v17;
  }

  sub_255D06F58();
  sub_255D06BC8();
  v33 = v19;
  v34 = v18;
  v35 = 0;
  v31 = a3;
  v32 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_255CE5654();
  sub_255D06A48();
  (*(v26 + 8))(v9, v7);
  v21 = sub_255C810A8(&qword_27F7DF948, &qword_27F7DF940);
  v29 = WitnessTable;
  v30 = v21;
  v22 = swift_getWitnessTable();
  sub_255C818BC(v12, v10, v22);
  v23 = *(v27 + 8);
  v23(v12, v10);
  sub_255C818BC(v15, v10, v22);
  return (v23)(v15, v10);
}

void sub_255CE49D0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void *sub_255CE49E0(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  if (*(result + 16) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_255CE4A50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF980);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8[-v1];
  v3 = sub_255D060A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_255CE381C(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_255CE575C(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_255D06F88();
  v8[8] = 0;
  v8[0] = 0;
  sub_255D06088();
  return (*(v4 + 8))(v6, v3);
}

void (*sub_255CE4C1C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_255D05ED8();
  return sub_255CAE4E4;
}

uint64_t sub_255CE4CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  v12();
  sub_255C818BC(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_255C818BC(v14, a4, a6);
  return (v15)(v14, a4);
}

void sub_255CE4DF8()
{
  sub_255CE52A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_255CE4E98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      v16 = v15 - 1;
      if (v16 < 0)
      {
        v16 = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_255CE5038(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 3) = a2;
  }
}

void sub_255CE52A4()
{
  if (!qword_27F7DF928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF930);
    v0 = sub_255D06DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DF928);
    }
  }
}

uint64_t sub_255CE5308()
{
  type metadata accessor for ResizeToFit1();
  sub_255D06538();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_255CE53A0()
{
  result = qword_27F7DF938;
  if (!qword_27F7DF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF938);
  }

  return result;
}

uint64_t sub_255CE5438@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for ResizeToFit1() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_255CE4628(v6, v3, v4, a1);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ResizeToFit1() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[12], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255CE55C8()
{
  type metadata accessor for ResizeToFit1();

  return sub_255CE495C();
}

unint64_t sub_255CE5654()
{
  result = qword_27F7DF958;
  if (!qword_27F7DF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF958);
  }

  return result;
}

unint64_t sub_255CE56A8()
{
  result = qword_27F7DF960;
  if (!qword_27F7DF960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF930);
    sub_255CE57C4(&qword_27F7DF968, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF960);
  }

  return result;
}

uint64_t sub_255CE575C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CE57C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255CE580C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF980);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10[-v1];
  v3 = sub_255D060A8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_255CE381C(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_255CE575C(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_255D06218();
  v10[8] = v8 & 1;
  v10[0] = v9 & 1;
  sub_255D06078();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_255CE5A04()
{
  sub_255D061D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF940);
  sub_255D061D8();
  swift_getWitnessTable();
  sub_255C810A8(&qword_27F7DF948, &qword_27F7DF940);
  swift_getWitnessTable();
  sub_255D06148();
  sub_255D061D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF970);
  sub_255D061D8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_255C810A8(&qword_27F7DF978, &qword_27F7DF970);
  return swift_getWitnessTable();
}

uint64_t FontSize.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8) | 0x80;
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t FontSize._collectAttributes(in:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 < 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    if (v2)
    {
      v10 = sub_255C739EC(v21);
      v15 = v14;
      v16 = type metadata accessor for FontProperties(0);
      if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
      {
        *(v15 + *(v16 + 48)) = v1;
      }
    }

    else
    {
      v10 = sub_255C739EC(v21);
      v18 = v17;
      v19 = type metadata accessor for FontProperties(0);
      if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
      {
        *(v18 + *(v19 + 48)) = *(v18 + *(v19 + 48)) * v1;
      }
    }
  }

  else
  {
    v3 = swift_getKeyPath();
    MEMORY[0x28223BE20](v3);
    swift_getKeyPath();
    v4 = sub_255C739EC(v21);
    v6 = v5;
    v7 = type metadata accessor for FontProperties(0);
    v8 = *(*(v7 - 8) + 48);
    if (!v8(v6, 1, v7))
    {
      *(v6 + *(v7 + 44)) = v1;
    }

    (v4)(v21, 0);

    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    swift_getKeyPath();
    v10 = sub_255C739EC(v21);
    v12 = v11;
    if (!v8(v11, 1, v7))
    {
      *(v12 + *(v7 + 48)) = 0x3FF0000000000000;
    }
  }

  (v10)(v21, 0);
}

uint64_t sub_255CE5F1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255CE5F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t View.markdownSoftBreakMode(_:)()
{
  swift_getKeyPath();
  sub_255D06A78();
}

uint64_t sub_255CE6080()
{
  sub_255CE62DC();

  return sub_255D063F8();
}

uint64_t sub_255CE60C8@<X0>(_BYTE *a1@<X8>)
{
  sub_255CE62DC();
  result = sub_255D063F8();
  *a1 = v3;
  return result;
}

uint64_t sub_255CE6118@<X0>(_BYTE *a1@<X8>)
{
  sub_255CE62DC();
  result = sub_255D063F8();
  *a1 = v3;
  return result;
}

uint64_t sub_255CE6200()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF988);
  sub_255D061D8();
  sub_255CE6278();
  return swift_getWitnessTable();
}

unint64_t sub_255CE6278()
{
  result = qword_27F7DF990;
  if (!qword_27F7DF990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF990);
  }

  return result;
}

unint64_t sub_255CE62DC()
{
  result = qword_27F7DF998[0];
  if (!qword_27F7DF998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7DF998);
  }

  return result;
}

uint64_t sub_255CE6348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_255C881F0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_255CE63F4()
{
  sub_255D07728();
  MEMORY[0x259C4BB60](*v0);
  sub_255D07038();
  return sub_255D07768();
}

uint64_t sub_255CE6464(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Indexed();
  return sub_255D07078() & 1;
}

uint64_t sub_255CE6554()
{
  sub_255D07728();
  sub_255CE64D8();
  return sub_255D07768();
}

uint64_t sub_255CE65C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255CE6640(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_255CE67A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t static InlineContentBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *a3 = v6;
}

char *static InlineContentBuilder.buildArray(_:)@<X0>(char **a1@<X8>)
{

  return sub_255CFCE4C(v2, a1);
}

uint64_t static InlineContentBuilder.buildOptional(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_255CE6B14(a1, v8);
  v3 = v9;
  if (v9)
  {
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 8))(&v7, v3, v4);
    v5 = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    result = sub_255CE6B84(v8);
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255CE6B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CE6B84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CE6BF0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t FontFamilyVariant._collectAttributes(in:)()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 20)) = v1;
  }

  (v2)(v7, 0);
}

uint64_t sub_255CE6D8C()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    *(v4 + *(v5 + 20)) = v1;
  }

  (v2)(v7, 0);
}

double sub_255CE6E80@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v19 = a6;
  v20 = a1;
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - v14;
  if (v12 != 2)
  {
    *&v21 = a2;
    BYTE8(v21) = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    *&v21 = a4;
    BYTE8(v21) = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  sub_255D06018();
  sub_255C7299C(v20, a7, &qword_27F7DFDB8);
  v16 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFDD8) + 36));
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;
  result = *&v23;
  v16[2] = v23;
  return result;
}

double sub_255CE7080@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v20 = a6;
  v21 = a1;
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  if (v12 != 2)
  {
    *&v22 = a2;
    BYTE8(v22) = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    *&v22 = a4;
    BYTE8(v22) = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  sub_255D06018();
  v16 = sub_255D06E98();
  (*(*(v16 - 8) + 16))(a7, v21, v16);
  v17 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFC80) + 36));
  v18 = v23;
  *v17 = v22;
  v17[1] = v18;
  result = *&v24;
  v17[2] = v24;
  return result;
}

__n128 sub_255CE72B4@<Q0>(double a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, char a5@<W5>, char a6@<W6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25[-v17];
  v30 = a8;
  LOBYTE(v31) = a6 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v18);
  sub_255C76B94(v18, &qword_27F7DD9E0);
  sub_255D05EF8();
  v25[80] = 0;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v27.n128_u64[0] = a3;
  v27.n128_u64[1] = a4;
  LOBYTE(v28) = a5;
  *(&v28 + 1) = v19;
  *v29 = v20;
  *&v29[8] = v21;
  *&v29[16] = v22;
  v29[24] = 0;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v39 = 0;

  sub_255C7299C(&v26, v25, &qword_27F7DFDD0);
  sub_255C76B94(&v30, &qword_27F7DFDD0);
  v23 = *v29;
  *(a7 + 32) = v28;
  *(a7 + 48) = v23;
  *(a7 + 57) = *&v29[9];
  result = v27;
  *a7 = v26;
  *(a7 + 16) = result;
  return result;
}

uint64_t sub_255CE7494@<X0>(uint64_t a1@<X1>, char a2@<W2>, char a3@<W3>, uint64_t *a4@<X4>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v24 = a6;
  v25 = a3 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v14);
  sub_255C76B94(v14, &qword_27F7DD9E0);
  sub_255D05EF8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = sub_255C7299C(a1, a5, a4);
  *(a5 + 64) = a2;
  *(a5 + 72) = v16;
  *(a5 + 80) = v18;
  *(a5 + 88) = v20;
  *(a5 + 96) = v22;
  *(a5 + 104) = 0;
  return result;
}

uint64_t sub_255CE760C@<X0>(uint64_t a1@<X1>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v18 = a5;
  v19 = a3 & 1;
  sub_255C73C84();
  sub_255D059E8();
  sub_255C9129C(v12);
  sub_255C76B94(v12, &qword_27F7DD9E0);
  sub_255D05EF8();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  *(a4 + 40) = v16;
  *(a4 + 48) = 0;
}

uint64_t sub_255CE772C@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v16 = a5;
  v17 = a3 & 1;
  sub_255C73C84();
  sub_255D059E8();
  v13 = sub_255C9129C(v12);
  sub_255C76B94(v12, &qword_27F7DD9E0);
  KeyPath = swift_getKeyPath();

  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  *(a4 + 9) = HIBYTE(a2) & 1;
  *(a4 + 16) = KeyPath;
  *(a4 + 24) = v13;
  return result;
}

double sub_255CE785C@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9 - 8];
  *v25 = a4;
  BYTE8(v25[0]) = a2 & 1;
  sub_255C73C84();
  sub_255D059E8();
  v11 = sub_255C9129C(v10);
  sub_255C76B94(v10, &qword_27F7DD9E0);
  KeyPath = swift_getKeyPath();
  LOWORD(v20) = *(a1 + 32);
  v13 = *(a1 + 16);
  v18 = *a1;
  v19 = v13;
  v21 = v18;
  v22 = v13;
  *&v23 = v20;
  *(&v23 + 1) = KeyPath;
  v24 = v11;
  v25[0] = v18;
  v25[1] = v13;
  v26 = v20;
  v27 = KeyPath;
  v28 = v11;
  sub_255C7299C(a1, v17, &qword_27F7DFE78);
  sub_255C7299C(&v21, v17, &qword_27F7DFE80);
  sub_255C76B94(v25, &qword_27F7DFE80);
  v14 = v22;
  *a3 = v21;
  *(a3 + 16) = v14;
  result = *&v23;
  *(a3 + 32) = v23;
  *(a3 + 48) = v24;
  return result;
}

uint64_t sub_255CE7A08@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v14 = a4;
  v15 = a2 & 1;
  sub_255C73C84();
  sub_255D059E8();
  v11 = sub_255C9129C(v10);
  sub_255C76B94(v10, &qword_27F7DD9E0);
  KeyPath = swift_getKeyPath();
  result = sub_255C7299C(a1, a3, &qword_27F7DFE60);
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = v11;
  return result;
}

uint64_t sub_255CE7B34@<X0>(uint64_t a1@<X1>, char a2@<W2>, double *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v14 = a4;
  v15 = a2 & 1;
  sub_255C73C84();
  sub_255D059E8();
  v11 = sub_255C9129C(v10);
  sub_255C76B94(v10, &qword_27F7DD9E0);
  KeyPath = swift_getKeyPath();

  *a3 = a1;
  *(a3 + 1) = KeyPath;
  a3[2] = v11;
  return result;
}

double sub_255CE7C4C@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-v9 - 8];
  *v43 = a4;
  BYTE8(v43[0]) = a2 & 1;
  sub_255C73C84();
  sub_255D059E8();
  v11 = sub_255C9129C(v10);
  sub_255C76B94(v10, &qword_27F7DD9E0);
  KeyPath = swift_getKeyPath();
  v13 = *(a1 + 112);
  v30 = *(a1 + 96);
  v31 = v13;
  LOBYTE(v32) = *(a1 + 128);
  v14 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v14;
  v15 = *(a1 + 80);
  v28 = *(a1 + 64);
  v29 = v15;
  v16 = *(a1 + 16);
  v24 = *a1;
  v25 = v16;
  v39 = v30;
  v40 = v31;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v15;
  v43[2] = v26;
  v43[3] = v27;
  v33 = v24;
  v34 = v16;
  *&v41 = v32;
  *(&v41 + 1) = KeyPath;
  v42 = v11;
  v43[0] = v24;
  v43[1] = v16;
  v43[6] = v30;
  v43[7] = v31;
  v43[4] = v28;
  v43[5] = v15;
  v44 = v32;
  v45 = KeyPath;
  v46 = v11;
  sub_255C7299C(a1, v23, &qword_27F7DFC98);
  sub_255C7299C(&v33, v23, &qword_27F7DFCA0);
  sub_255C76B94(v43, &qword_27F7DFCA0);
  v17 = v40;
  *(a3 + 96) = v39;
  *(a3 + 112) = v17;
  *(a3 + 128) = v41;
  *(a3 + 144) = v42;
  v18 = v36;
  *(a3 + 32) = v35;
  *(a3 + 48) = v18;
  v19 = v38;
  *(a3 + 64) = v37;
  *(a3 + 80) = v19;
  result = *&v33;
  v21 = v34;
  *a3 = v33;
  *(a3 + 16) = v21;
  return result;
}

uint64_t sub_255CE7E4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, void *a6@<X8>)
{
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  v16 = 0.0;
  v17 = 0.0;
  if (v12 != 2)
  {
    v20 = a2;
    v21 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v17 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    v20 = a4;
    v21 = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v16 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3 == 2;
  *(v18 + 32) = v16;
  *(v18 + 40) = a5 == 2;

  *a6 = a1;
  a6[1] = sub_255CED82C;
  a6[2] = v18;
  return result;
}

uint64_t sub_255CE8070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = 0.0;
  v17 = 0.0;
  if (v12 != 2)
  {
    v22 = a2;
    v23 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v17 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    v22 = a4;
    v23 = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v16 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3 == 2;
  *(v18 + 32) = v16;
  *(v18 + 40) = a5 == 2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE4B8);
  (*(*(v19 - 8) + 16))(a6, a1, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFED0);
  v21 = (a6 + *(result + 36));
  *v21 = sub_255CED82C;
  v21[1] = v18;
  return result;
}

uint64_t sub_255CE82A0@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X3>, unsigned __int8 a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>)
{
  v14 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v22 - v16;
  v18 = 0.0;
  v19 = 0.0;
  if (v14 != 2)
  {
    v22 = a3;
    v23 = a4 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v19 = sub_255C9129C(v17);
    sub_255C76B94(v17, &qword_27F7DD9E0);
  }

  if (a6 != 2)
  {
    v22 = a5;
    v23 = a6 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v18 = sub_255C9129C(v17);
    sub_255C76B94(v17, &qword_27F7DD9E0);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a4 == 2;
  *(v20 + 32) = v18;
  *(v20 + 40) = a6 == 2;

  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  *(a7 + 9) = HIBYTE(a2) & 1;
  *(a7 + 16) = sub_255CED82C;
  *(a7 + 24) = v20;
  return result;
}

uint64_t sub_255CE848C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = 0.0;
  v17 = 0.0;
  if (v12 != 2)
  {
    v22 = a2;
    v23 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v17 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    v22 = a4;
    v23 = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v16 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3 == 2;
  *(v18 + 32) = v16;
  *(v18 + 40) = a5 == 2;
  v19 = sub_255D06E98();
  (*(*(v19 - 8) + 16))(a6, a1, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEC0);
  v21 = (a6 + *(result + 36));
  *v21 = sub_255CED82C;
  v21[1] = v18;
  return result;
}

uint64_t sub_255CE86FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t *a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v23 = a1;
  v24 = a6;
  v22[1] = a8;
  v14 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v22 - v16;
  v18 = 0.0;
  v19 = 0.0;
  if (v14 != 2)
  {
    v25 = a2;
    v26 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v19 = sub_255C9129C(v17);
    sub_255C76B94(v17, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    v25 = a4;
    v26 = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v18 = sub_255C9129C(v17);
    sub_255C76B94(v17, &qword_27F7DD9E0);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3 == 2;
  *(v20 + 32) = v18;
  *(v20 + 40) = a5 == 2;
  result = sub_255C7299C(v23, a7, v24);
  *(a7 + 64) = a9;
  *(a7 + 72) = v20;
  return result;
}

uint64_t sub_255CE88D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = 0.0;
  v17 = 0.0;
  if (v12 != 2)
  {
    v21 = a2;
    v22 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v17 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    v21 = a4;
    v22 = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v16 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3 == 2;
  *(v18 + 32) = v16;
  *(v18 + 40) = a5 == 2;
  sub_255CED710(a1, a6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEB8);
  v20 = (a6 + *(result + 36));
  *v20 = sub_255CED82C;
  v20[1] = v18;
  return result;
}

uint64_t sub_255CE8AC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = 0.0;
  v17 = 0.0;
  if (v12 != 2)
  {
    v21 = a2;
    v22 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v17 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    v21 = a4;
    v22 = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v16 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3 == 2;
  *(v18 + 32) = v16;
  *(v18 + 40) = a5 == 2;
  sub_255C7299C(a1, a6, &qword_27F7DFEA0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEA8);
  v20 = (a6 + *(result + 36));
  *v20 = sub_255CED82C;
  v20[1] = v18;
  return result;
}

__n128 sub_255CE8CCC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v31 = a4;
  v11 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32[-v13 - 8];
  v15 = 0.0;
  v16 = 0.0;
  if (v11 != 2)
  {
    *&v42[0] = a2;
    BYTE8(v42[0]) = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v16 = sub_255C9129C(v14);
    sub_255C76B94(v14, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    *&v42[0] = v31;
    BYTE8(v42[0]) = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v15 = sub_255C9129C(v14);
    sub_255C76B94(v14, &qword_27F7DD9E0);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 32) = v15;
  v18 = *(a1 + 80);
  v19 = *(a1 + 48);
  v45 = *(a1 + 64);
  v46 = v18;
  v20 = *(a1 + 80);
  v47 = *(a1 + 96);
  v21 = *(a1 + 16);
  v42[0] = *a1;
  v42[1] = v21;
  v22 = *(a1 + 48);
  v24 = *a1;
  v23 = *(a1 + 16);
  v43 = *(a1 + 32);
  v25 = v43;
  v44 = v22;
  v37 = v45;
  v38 = v20;
  v39 = *(a1 + 96);
  v33 = v24;
  v34 = v23;
  *(v17 + 24) = a3 == 2;
  *(v17 + 40) = a5 == 2;
  v26 = *(a1 + 112);
  v35 = v25;
  v36 = v19;
  *&v40 = v26;
  *(&v40 + 1) = sub_255CED82C;
  v41 = v17;
  v48 = v26;
  v49 = sub_255CED82C;
  v50 = v17;
  sub_255C7299C(a1, v32, &qword_27F7DFE90);
  sub_255C7299C(&v33, v32, &qword_27F7DFE98);
  sub_255C76B94(v42, &qword_27F7DFE98);
  v27 = v40;
  *(a6 + 96) = v39;
  *(a6 + 112) = v27;
  *(a6 + 128) = v41;
  v28 = v36;
  *(a6 + 32) = v35;
  *(a6 + 48) = v28;
  v29 = v38;
  *(a6 + 64) = v37;
  *(a6 + 80) = v29;
  result = v34;
  *a6 = v33;
  *(a6 + 16) = result;
  return result;
}

__n128 sub_255CE8F6C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v24 = a4;
  v11 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25[-v13 - 8];
  v15 = 0.0;
  v16 = 0.0;
  if (v11 != 2)
  {
    *&v33[0] = a2;
    BYTE8(v33[0]) = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v16 = sub_255C9129C(v14);
    sub_255C76B94(v14, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    *&v33[0] = v24;
    BYTE8(v33[0]) = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v15 = sub_255C9129C(v14);
    sub_255C76B94(v14, &qword_27F7DD9E0);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a3 == 2;
  *(v17 + 32) = v15;
  *(v17 + 40) = a5 == 2;
  v18 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v18;
  v36 = *(a1 + 64);
  v19 = *(a1 + 80);
  v20 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v20;
  v26 = v33[0];
  v27 = v20;
  v29 = v18;
  v30 = v36;
  v28 = v34;
  *&v31 = v19;
  *(&v31 + 1) = sub_255CED82C;
  v32 = v17;
  v37 = v19;
  v38 = sub_255CED82C;
  v39 = v17;
  sub_255C7299C(a1, v25, &qword_27F7DFCD0);
  sub_255C7299C(&v26, v25, &qword_27F7DFE88);
  sub_255C76B94(v33, &qword_27F7DFE88);
  v21 = v31;
  *(a6 + 64) = v30;
  *(a6 + 80) = v21;
  *(a6 + 96) = v32;
  v22 = v27;
  *a6 = v26;
  *(a6 + 16) = v22;
  result = v29;
  *(a6 + 32) = v28;
  *(a6 + 48) = result;
  return result;
}

uint64_t sub_255CE91E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned __int8 a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v12 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = 0.0;
  v17 = 0.0;
  if (v12 != 2)
  {
    v21 = a2;
    v22 = a3 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v17 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  if (a5 != 2)
  {
    v21 = a4;
    v22 = a5 & 1;
    sub_255C73C84();
    sub_255D059E8();
    v16 = sub_255C9129C(v15);
    sub_255C76B94(v15, &qword_27F7DD9E0);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a3 == 2;
  *(v18 + 32) = v16;
  *(v18 + 40) = a5 == 2;
  sub_255C7299C(a1, a6, &qword_27F7DFE48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE68);
  v20 = (a6 + *(result + 36));
  *v20 = sub_255CED82C;
  v20[1] = v18;
  return result;
}

uint64_t sub_255CE93E8()
{
  Theme.init()(v13);
  sub_255C99DF4(v13, v23);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFC30);
  v12 = &off_2867D69C0;
  v0 = swift_allocObject();
  *&v10 = v0;
  if (qword_27F7DD840 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7DFBE0;
  v2 = qword_27F7DD858;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_27F7DFBF8;
  *(v0 + 16) = v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = 0x4030000000000000;
  *(v0 + 40) = 0;

  sub_255C99E50(v13);
  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_255CAC668(&v10, v23);
  sub_255C99DF4(v23, v13);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFC38);
  v12 = &off_2867D69C0;
  v4 = swift_allocObject();
  *&v10 = v4;
  if (qword_27F7DD860 != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = qword_27F7DFC00;
  *(v4 + 16) = 1;
  *(v4 + 24) = 0x3FEB333333333333;
  *(v4 + 32) = 0x80;
  *(v4 + 40) = v5;

  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_255CAC668(&v10, v14);
  sub_255C99E50(v23);
  sub_255C99DF4(v13, v23);
  v11 = &type metadata for FontWeight;
  v12 = &protocol witness table for FontWeight;
  sub_255D06868();
  *&v10 = v6;
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_255CAC668(&v10, v24);
  sub_255C99E50(v13);
  sub_255C99DF4(v23, v13);
  v11 = &type metadata for ForegroundColor;
  v12 = &protocol witness table for ForegroundColor;
  if (qword_27F7DD868 != -1)
  {
    swift_once();
  }

  *&v10 = qword_27F7DFC08;

  __swift_destroy_boxed_opaque_existential_1(v15);
  sub_255CAC668(&v10, v15);
  sub_255C99E50(v23);
  sub_255C99DF4(v13, v23);
  v7 = v25;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v7[2])
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = sub_255CF4310(v7);
    if (v7[2])
    {
LABEL_11:
      v7[4] = sub_255CEBFDC;
      v7[5] = 0;

      v25 = v7;
      sub_255C99E50(v13);
      sub_255C99DF4(v23, v13);
      v7 = v16;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:
  v7 = sub_255CF4310(v7);
LABEL_12:
  if (v7[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v7[6] = sub_255CEBFF4;
    v7[7] = 0;

    v16 = v7;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);
    v7 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }
  }

  v7 = sub_255CF4310(v7);
LABEL_14:
  if (v7[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v7[8] = sub_255CEBF14;
    v7[9] = 0;

    v25 = v7;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);
    v7 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }
  }

  v7 = sub_255CF4310(v7);
LABEL_16:
  if (v7[2] < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v7[10] = sub_255CEBF2C;
    v7[11] = 0;

    v16 = v7;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);
    v7 = v25;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_18;
    }
  }

  v7 = sub_255CF4310(v7);
LABEL_18:
  if (v7[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v7[12] = sub_255CEBFAC;
    v7[13] = 0;

    v25 = v7;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);
    v7 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_20;
    }
  }

  result = sub_255CF4310(v7);
  v7 = result;
LABEL_20:
  if (v7[2] < 6uLL)
  {
    __break(1u);
  }

  else
  {
    v7[14] = sub_255CEBFC4;
    v7[15] = 0;

    v16 = v7;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);

    v26 = sub_255CEBEB0;
    v27 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);

    v17 = sub_255CEBE34;
    v18 = 0;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);

    v28 = sub_255CEBBDC;
    v29 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);

    v19 = sub_255CEB958;
    v20 = 0;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);

    v30 = sub_255CEBB44;
    v31 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, v13);

    v21 = sub_255CEBAE0;
    v22 = 0;
    sub_255C99E50(v23);
    sub_255C99DF4(v13, v23);

    v32 = sub_255CEBA48;
    v33 = 0;
    sub_255C99E50(v13);
    sub_255C99DF4(v23, &unk_27F7DFA28);
    qword_27F7DFBD0 = sub_255CEB9F0;
    qword_27F7DFBD8 = 0;

    return sub_255C99E50(v23);
  }

  return result;
}

uint64_t sub_255CE9A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE48);
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-v8];
  v10 = sub_255D06738();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0x3FD3333333333333;
  *(v11 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v20[0] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = KeyPath;
  *(v13 + 56) = 0;
  *(v13 + 64) = sub_255CED834;
  *(v13 + 72) = v11;
  *(v13 + 80) = 0x3FC0000000000000;
  *(v13 + 88) = 0;
  v21[0] = swift_getKeyPath();
  v22 = 0;
  v23 = sub_255CED83C;
  v24 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4038000000000000;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0x4030000000000000;
  *(v14 + 40) = 0;
  v25 = sub_255CED82C;
  v26 = v14;
  v27 = swift_getKeyPath();
  v28 = sub_255CE0A28;
  v29 = 0;

  sub_255D06E88();
  if (qword_27F7DD878 != -1)
  {
    swift_once();
  }

  v15 = qword_27F7DFC18;
  v16 = sub_255D06718();
  v17 = &v9[*(v4 + 36)];
  *v17 = v15;
  v17[8] = v16;
  sub_255C7299C(v21, v20, &qword_27F7DFE50);
  sub_255C7299C(v9, v6, &qword_27F7DFE48);
  sub_255C7299C(v20, a2, &qword_27F7DFE50);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE58);
  sub_255C7299C(v6, a2 + *(v18 + 48), &qword_27F7DFE48);

  sub_255C76B94(v9, &qword_27F7DFE48);
  sub_255C76B94(v21, &qword_27F7DFE50);
  sub_255C76B94(v6, &qword_27F7DFE48);
  return sub_255C76B94(v20, &qword_27F7DFE50);
}

uint64_t sub_255CE9D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE48);
  MEMORY[0x28223BE20](v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-v8];
  v10 = sub_255D06738();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0x3FD3333333333333;
  *(v11 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v20[0] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = KeyPath;
  *(v13 + 56) = 0;
  *(v13 + 64) = sub_255CED690;
  *(v13 + 72) = v11;
  *(v13 + 80) = 0x3FC0000000000000;
  *(v13 + 88) = 0;
  v21[0] = swift_getKeyPath();
  v22 = 0;
  v23 = sub_255CED698;
  v24 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4038000000000000;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0x4030000000000000;
  *(v14 + 40) = 0;
  v25 = sub_255CED82C;
  v26 = v14;
  v27 = swift_getKeyPath();
  v28 = sub_255CE0A2C;
  v29 = 0;

  sub_255D06E88();
  if (qword_27F7DD878 != -1)
  {
    swift_once();
  }

  v15 = qword_27F7DFC18;
  v16 = sub_255D06718();
  v17 = &v9[*(v4 + 36)];
  *v17 = v15;
  v17[8] = v16;
  sub_255C7299C(v21, v20, &qword_27F7DFE50);
  sub_255C7299C(v9, v6, &qword_27F7DFE48);
  sub_255C7299C(v20, a2, &qword_27F7DFE50);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE58);
  sub_255C7299C(v6, a2 + *(v18 + 48), &qword_27F7DFE48);

  sub_255C76B94(v9, &qword_27F7DFE48);
  sub_255C76B94(v21, &qword_27F7DFE50);
  sub_255C76B94(v6, &qword_27F7DFE48);
  return sub_255C76B94(v20, &qword_27F7DFE50);
}

uint64_t sub_255CEA0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FC0000000000000;
  *(v4 + 32) = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CED838;
  *(a2 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0x4038000000000000;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x4030000000000000;
  *(v5 + 40) = 0;
  *(a2 + 64) = sub_255CED82C;
  *(a2 + 72) = v5;
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = sub_255CDFDDC;
  *(a2 + 96) = 0;
}

uint64_t sub_255CEA194@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FC0000000000000;
  *(v4 + 32) = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CED838;
  *(a2 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0x4038000000000000;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x4030000000000000;
  *(v5 + 40) = 0;
  *(a2 + 64) = sub_255CED82C;
  *(a2 + 72) = v5;
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = sub_255CE0A30;
  *(a2 + 96) = 0;
}

uint64_t sub_255CEA284@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FC0000000000000;
  *(v4 + 32) = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CED838;
  *(a2 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0x4038000000000000;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x4030000000000000;
  *(v5 + 40) = 0;
  *(a2 + 64) = sub_255CED82C;
  *(a2 + 72) = v5;
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = sub_255CDFDE4;
  *(a2 + 96) = 0;
}

uint64_t sub_255CEA374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FC0000000000000;
  *(v4 + 32) = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CED600;
  *(a2 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0x4038000000000000;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x4030000000000000;
  *(v5 + 40) = 0;
  *(a2 + 64) = sub_255CED82C;
  *(a2 + 72) = v5;
  *(a2 + 80) = swift_getKeyPath();
  *(a2 + 88) = sub_255CDFDF0;
  *(a2 + 96) = 0;
}

uint64_t sub_255CEA464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 256;
  *(v4 + 32) = 0x3FD0000000000000;
  *(v4 + 40) = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CED424;
  *(a2 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x4030000000000000;
  *(v5 + 40) = 0;
  *(a2 + 64) = sub_255CED82C;
  *(a2 + 72) = v5;
}

uint64_t sub_255CEA538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFDB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = *(sub_255D06258() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_255D06498();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #6.0 }

  *v8 = _Q0;
  if (qword_27F7DD870 != -1)
  {
    swift_once();
  }

  *&v8[*(v2 + 52)] = qword_27F7DFC10;
  *&v8[*(v2 + 56)] = 256;

  v17 = sub_255D06F58();
  v19 = v18;
  sub_255CC1068(v8, v5, &qword_27F7DFDB8);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  sub_255CC1068(v5, v21 + v20, &qword_27F7DFDB8);
  v22 = v21 + ((v20 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = 0x3FC999999999999ALL;
  *(v22 + 8) = 0;
  v23 = v21 + ((v20 + v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v23 = 0;
  *(v23 + 8) = 2;
  v24 = (v21 + ((v20 + v4 + 39) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v17;
  v24[1] = v19;
  v39[0] = swift_getKeyPath();
  v40 = 0;
  v41 = sub_255CED1E8;
  v42 = v21;
  KeyPath = swift_getKeyPath();
  v26 = v31;

  LOBYTE(v21) = sub_255D06708();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = KeyPath;
  *(v27 + 32) = sub_255CDFF30;
  *(v27 + 40) = 0;
  *(v27 + 48) = v21;
  *(v27 + 56) = 0x3FF0000000000000;
  *(v27 + 64) = 0;
  v35[0] = swift_getKeyPath();
  v36 = 0;
  v37 = sub_255CED328;
  v38 = v27;
  sub_255C7299C(v39, v34, &qword_27F7DFDC0);
  sub_255C7299C(v35, v33, &qword_27F7DFDC8);
  v28 = v32;
  sub_255C7299C(v34, v32, &qword_27F7DFDC0);
  sub_255C7299C(v33, v28 + 64, &qword_27F7DFDC8);
  sub_255C76B94(v35, &qword_27F7DFDC8);
  sub_255C76B94(v39, &qword_27F7DFDC0);
  sub_255C76B94(v33, &qword_27F7DFDC8);
  return sub_255C76B94(v34, &qword_27F7DFDC0);
}

uint64_t sub_255CEA8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v10;
  *(v3 + 24) = 256;
  *(v3 + 32) = 0x3FCCCCCCCCCCCCCDLL;
  *(v3 + 40) = 0;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CED830;
  *(a2 + 56) = v3;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 72) = sub_255CE003C;
  *(a2 + 80) = 0;
  sub_255C9A8A4(&v10, &v9);
  LOBYTE(v3) = sub_255D06718();
  result = sub_255D05EF8();
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  *(a2 + 120) = v8;
  *(a2 + 128) = 0;
  return result;
}

uint64_t sub_255CEA9D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0x3FD0000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 2;
  *a2 = swift_getKeyPath();
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CECC44;
  *(a2 + 56) = v4;
}

uint64_t sub_255CEAA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF658);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD00);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v29 - v9);
  sub_255D06CE8();
  sub_255D064F8();
  v11 = sub_255D06508();
  (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  v12 = sub_255D06D18();

  sub_255C76B94(v4, &qword_27F7DF658);
  if (qword_27F7DD880 != -1)
  {
    swift_once();
  }

  v13 = qword_27F7DFC20;
  if (qword_27F7DD888 != -1)
  {
    swift_once();
  }

  v14 = qword_27F7DFC28;
  v15 = (v10 + *(v5 + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3C0) + 28);
  v17 = *MEMORY[0x277CE1050];
  v18 = sub_255D06D48();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v10 = v12;
  v10[1] = v13;
  v10[2] = v14;

  v19 = sub_255D06F78();
  v21 = v20;
  sub_255CC1068(v10, v7, &qword_27F7DFD00);
  v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v23 = (v22 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_255CC1068(v7, v25 + v22, &qword_27F7DFD00);
  v26 = v25 + v23;
  *v26 = 0x3FF8000000000000;
  *(v26 + 8) = 0;
  v27 = (v25 + v24);
  *v27 = v19;
  v27[1] = v21;
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255CECB3C;
  *(a1 + 56) = v25;
  return result;
}

double sub_255CEAE20@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F7DD870;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27F7DFC10;

  sub_255D05F68();
  *&v19 = swift_getKeyPath();
  *(&v19 + 1) = sub_255C87678;
  *&v20 = 0;
  *(&v20 + 1) = v5;
  v21 = v15;
  v22 = v16;
  *&v18[38] = v15;
  *&v18[54] = v16;
  *&v18[22] = v20;
  *&v18[6] = v19;
  v23 = v17;
  *&v18[70] = v17;
  v24[0] = v19;
  v24[1] = sub_255C87678;
  v24[2] = 0;
  v24[3] = v5;
  v27 = v17;
  v26 = v16;
  v25 = v15;
  sub_255C7299C(&v19, &v14, &qword_27F7DDF28);
  sub_255C76B94(v24, &qword_27F7DDF28);
  if (qword_27F7DD858 != -1)
  {
    swift_once();
  }

  v6 = qword_27F7DFBF8;
  if (qword_27F7DD860 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7DFC00;
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = v6;
  v8[4] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_255CEC97C;
  *(v9 + 24) = v8;
  KeyPath = swift_getKeyPath();

  v11 = swift_allocObject();
  v12 = *&v18[32];
  *(a2 + 26) = *&v18[16];
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0x4030000000000000;
  *(v11 + 40) = 0;
  *a2 = v3;
  *(a2 + 8) = 256;
  *(a2 + 42) = v12;
  *(a2 + 58) = *&v18[48];
  *(a2 + 72) = *&v18[62];
  result = *v18;
  *(a2 + 10) = *v18;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = sub_255CEC98C;
  *(a2 + 104) = v9;
  *(a2 + 112) = sub_255CED82C;
  *(a2 + 120) = v11;
  return result;
}

uint64_t sub_255CEB0D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v6;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_255CEC488;
  *(v9 + 24) = v7;
  swift_retain_n();

  LOBYTE(v6) = sub_255D06778();
  sub_255D05EF8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  LOBYTE(v7) = sub_255D06708();
  sub_255D05EF8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = KeyPath;
  *(v26 + 32) = sub_255CEC504;
  *(v26 + 40) = v9;
  *(v26 + 48) = 256;
  *(v26 + 56) = v6;
  *(v26 + 64) = v11;
  *(v26 + 72) = v13;
  *(v26 + 80) = v15;
  *(v26 + 88) = v17;
  *(v26 + 96) = 0;
  *(v26 + 104) = v7;
  *(v26 + 112) = v19;
  *(v26 + 120) = v21;
  *(v26 + 128) = v23;
  *(v26 + 136) = v25;
  *(v26 + 144) = 0;
  *(v26 + 152) = 0x3FD0000000000000;
  *(v26 + 160) = 0;
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = sub_255CEC57C;
  *(a2 + 56) = v26;
  return result;
}

uint64_t sub_255CEB284@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_255D06E98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  sub_255D06E88();
  v9 = sub_255D06F58();
  v25 = v10;
  v26 = v9;
  v11 = *(v3 + 32);
  v11(v5, v8, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v12 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v11((v16 + v12), v5, v2);
  v17 = v16 + v13;
  *v17 = 0;
  *(v17 + 8) = 2;
  v18 = v16 + v14;
  *v18 = 0x3FD0000000000000;
  *(v18 + 8) = 0;
  v19 = (v16 + v15);
  v20 = v25;
  *v19 = v26;
  v19[1] = v20;
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255CEC34C;
  *(a1 + 56) = v16;
  if (qword_27F7DD870 != -1)
  {
    swift_once();
  }

  v21 = qword_27F7DFC10;
  v22 = sub_255D06718();
  *(a1 + 64) = v21;
  *(a1 + 72) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4038000000000000;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0x4038000000000000;
  *(v23 + 40) = 0;
  *(a1 + 80) = sub_255CEC42C;
  *(a1 + 88) = v23;
}

uint64_t static Theme.gitHub.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F7DD838 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_255C99DF4(&unk_27F7DFA28, v2);
}

uint64_t sub_255CEB674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x277D75348]);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_255CFAD34;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  [v7 initWithDynamicProvider_];
  _Block_release(v8);

  result = sub_255D06C48();
  *a4 = result;
  return result;
}

uint64_t sub_255CEB73C()
{
  result = Color.init(rgba:)();
  qword_27F7DFC20 = result;
  return result;
}

uint64_t sub_255CEB764()
{
  result = Color.init(rgba:)();
  qword_27F7DFC28 = result;
  return result;
}

uint64_t sub_255CEB78C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255CEB7CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255CEB828(uint64_t a1)
{
  v2 = sub_255D06D48();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_255D06298();
}

uint64_t sub_255CEB918@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (*(a1 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_255CE772C(*a1, v4 | *(a1 + 8), a2 & 1, a3, a4);
}

uint64_t sub_255CEB958(__int128 *a1)
{
  v3 = *a1;
  sub_255CEA9D4(&v3, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F7DE528);
  sub_255C810A8(&qword_27F7DE520, qword_27F7DE528);
  return sub_255D06E78();
}

uint64_t sub_255CEB9F0()
{
  sub_255CEB284(&v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFC40);
  sub_255CEC11C();
  return sub_255D06E78();
}

uint64_t sub_255CEBA48(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  sub_255CEB0D8(v4, &v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFC88);
  sub_255C810A8(&qword_27F7DFC90, &qword_27F7DFC88);
  return sub_255D06E78();
}

uint64_t sub_255CEBAE0(__int128 *a1)
{
  v3 = *a1;
  sub_255CEAE20(&v3, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFCA8);
  sub_255CEC624();
  return sub_255D06E78();
}

uint64_t sub_255CEBB44(_BYTE *a1)
{
  v2[71] = *a1;
  sub_255CEAA6C(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFCF0);
  sub_255C810A8(&qword_27F7DFCF8, &qword_27F7DFCF0);
  return sub_255D06E78();
}

uint64_t sub_255CEBBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD08);
  MEMORY[0x28223BE20](v2);
  v4 = &v21[-v3];
  v5 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v5;
  v24 = *(a1 + 32);
  sub_255D066D8();
  v22 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD10);
  sub_255CECC60();
  sub_255D05F08();
  if (qword_27F7DD860 != -1)
  {
    swift_once();
  }

  v6 = qword_27F7DFC00;
  v7 = sub_255D06718();
  v8 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD40) + 36)];
  *v8 = v6;
  v8[8] = v7;
  v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD48) + 36)];
  v10 = *(sub_255D06258() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_255D06498();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #6.0 }

  *v9 = _Q0;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD50) + 36)] = 256;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0x4030000000000000;
  *(v18 + 40) = 0;
  v19 = &v4[*(v2 + 36)];
  *v19 = sub_255CED82C;
  v19[1] = v18;
  sub_255CECDD0();

  return sub_255D06E78();
}

uint64_t sub_255CEBE34(uint64_t *a1)
{
  v1 = *a1;
  sub_255D06428();
  sub_255CEA538(v1, v3);
  v3[64] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD98);
  sub_255CED024();
  return sub_255D06E78();
}

uint64_t sub_255CEBEB0(__int128 *a1)
{
  v3 = *a1;
  sub_255CEA464(&v3, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFDE0);
  sub_255CED340();
  return sub_255D06E78();
}

uint64_t sub_255CEBF44(__int128 *a1, void (*a2)(void *__return_ptr, __int128 *))
{
  v4 = *a1;
  a2(v3, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE00);
  sub_255CED464();
  return sub_255D06E78();
}

uint64_t sub_255CEC00C(uint64_t *a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE30);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v8 = *a1;
  v7 = a1[1];
  *v6 = sub_255D064D8();
  *(v6 + 1) = 0;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFE38);
  a2(v8, v7);
  sub_255C810A8(&qword_27F7DFE40, &qword_27F7DFE30);
  return sub_255D06E78();
}

unint64_t sub_255CEC11C()
{
  result = qword_27F7DFC48;
  if (!qword_27F7DFC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFC40);
    sub_255CEC1D4();
    sub_255C810A8(&qword_27F7DE178, &qword_27F7DE170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFC48);
  }

  return result;
}

unint64_t sub_255CEC1D4()
{
  result = qword_27F7DFC50;
  if (!qword_27F7DFC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFC58);
    sub_255C810A8(&qword_27F7DFC60, &qword_27F7DFC68);
    sub_255C810A8(&qword_27F7DFC70, &qword_27F7DFC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFC50);
  }

  return result;
}

uint64_t sub_255CEC2B8()
{
  v1 = sub_255D06E98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

double sub_255CEC34C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_255D06E98() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = *(v8 + 8);
  v12 = *(v6 + 8);

  return sub_255CE7080(v1 + v4, v7, v12, v9, v11, v10, a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_255CEC448()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255CEC488@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = 0;
  if (!v3)
  {
    result = sub_255D06868();
  }

  *a1 = v4;
  *(a1 + 8) = v3 != 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_255CEC4CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255CEC524@<X0>(uint64_t *a1@<X8>)
{

  *a1 = result;
  return result;
}

double sub_255CEC57C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 128);
  v9[6] = *(v1 + 112);
  v9[7] = v4;
  v10 = *(v1 + 144);
  v5 = *(v1 + 64);
  v9[2] = *(v1 + 48);
  v9[3] = v5;
  v6 = *(v1 + 96);
  v9[4] = *(v1 + 80);
  v9[5] = v6;
  v7 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v9[1] = v7;
  return sub_255CE7C4C(v9, v3, a1, v2);
}

uint64_t sub_255CEC5D0@<X0>(void *a1@<X8>)
{
  result = sub_255D062C8();
  *a1 = v3;
  return result;
}

unint64_t sub_255CEC624()
{
  result = qword_27F7DFCB0;
  if (!qword_27F7DFCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFCA8);
    sub_255CEC6DC();
    sub_255C810A8(&qword_27F7DE178, &qword_27F7DE170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFCB0);
  }

  return result;
}

unint64_t sub_255CEC6DC()
{
  result = qword_27F7DFCB8;
  if (!qword_27F7DFCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFCC0);
    sub_255CEC794();
    sub_255C810A8(&qword_27F7DDF40, &qword_27F7DDF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFCB8);
  }

  return result;
}

unint64_t sub_255CEC794()
{
  result = qword_27F7DFCC8;
  if (!qword_27F7DFCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFCD0);
    sub_255CEC84C();
    sub_255C810A8(&qword_27F7DDF30, &qword_27F7DDF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFCC8);
  }

  return result;
}

unint64_t sub_255CEC84C()
{
  result = qword_27F7DFCD8;
  if (!qword_27F7DFCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFCE0);
    sub_255CEC8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFCD8);
  }

  return result;
}

unint64_t sub_255CEC8D8()
{
  result = qword_27F7DFCE8;
  if (!qword_27F7DFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFCE8);
  }

  return result;
}

uint64_t sub_255CEC934()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255CECA08()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD00) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[11];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3C0) + 28);
  v8 = sub_255D06D48();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

double sub_255CECB3C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFD00) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_255CFAFAC(v1 + v4, v7, a1, v6);
}

uint64_t sub_255CECC0C()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

unint64_t sub_255CECC60()
{
  result = qword_27F7DFD18;
  if (!qword_27F7DFD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFD10);
    sub_255CECCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFD18);
  }

  return result;
}

unint64_t sub_255CECCEC()
{
  result = qword_27F7DFD20;
  if (!qword_27F7DFD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFD28);
    sub_255C810A8(&qword_27F7DFD30, &qword_27F7DFD38);
    sub_255C810A8(&qword_27F7DE4E0, &qword_27F7DE4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFD20);
  }

  return result;
}

unint64_t sub_255CECDD0()
{
  result = qword_27F7DFD58;
  if (!qword_27F7DFD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFD08);
    sub_255CECE88();
    sub_255C810A8(&qword_27F7DE178, &qword_27F7DE170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFD58);
  }

  return result;
}

unint64_t sub_255CECE88()
{
  result = qword_27F7DFD60;
  if (!qword_27F7DFD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFD48);
    sub_255CECF40();
    sub_255C810A8(&qword_27F7DFD90, &qword_27F7DFD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFD60);
  }

  return result;
}

unint64_t sub_255CECF40()
{
  result = qword_27F7DFD68;
  if (!qword_27F7DFD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFD40);
    sub_255C810A8(&qword_27F7DFD70, &qword_27F7DFD78);
    sub_255C810A8(&qword_27F7DFD80, &qword_27F7DFD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFD68);
  }

  return result;
}

unint64_t sub_255CED024()
{
  result = qword_27F7DFDA0;
  if (!qword_27F7DFDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFD98);
    sub_255C810A8(&qword_27F7DFDA8, &qword_27F7DFDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFDA0);
  }

  return result;
}

uint64_t sub_255CED0DC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFDB8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(sub_255D06258() + 20);
  v7 = sub_255D06498();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

double sub_255CED1E8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFDB8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v1 + ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = *(v8 + 8);
  v12 = *(v6 + 8);

  return sub_255CE6E80(v1 + v4, v7, v12, v9, v11, v10, a1);
}

uint64_t objectdestroy_17Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_255CED340()
{
  result = qword_27F7DFDE8;
  if (!qword_27F7DFDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFDE0);
    sub_255C810A8(&qword_27F7DFDF0, &qword_27F7DFDF8);
    sub_255C810A8(&qword_27F7DE178, &qword_27F7DE170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFDE8);
  }

  return result;
}

uint64_t sub_255CED428@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_255CE772C(*(v1 + 16), v2 | *(v1 + 24), *(v1 + 40), a1, *(v1 + 32));
}

unint64_t sub_255CED464()
{
  result = qword_27F7DFE08;
  if (!qword_27F7DFE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFE00);
    sub_255CED51C();
    sub_255C810A8(&qword_27F7DE4E0, &qword_27F7DE4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFE08);
  }

  return result;
}

unint64_t sub_255CED51C()
{
  result = qword_27F7DFE10;
  if (!qword_27F7DFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFE18);
    sub_255C810A8(&qword_27F7DFE20, &qword_27F7DFE28);
    sub_255C810A8(&qword_27F7DE178, &qword_27F7DE170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFE10);
  }

  return result;
}

uint64_t sub_255CED620()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_255CED658()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t objectdestroy_116Tm()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_255CED710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double TableBorderStyle.init(_:color:width:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_255D05F68();
  *a3 = *a1;
  *(a3 + 16) = a2;
  result = *&v7;
  *(a3 + 24) = v7;
  *(a3 + 40) = v8;
  *(a3 + 56) = v9;
  return result;
}

uint64_t TableBorderStyle.visibleBorders.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 TableBorderStyle.visibleBorders.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t TableBorderStyle.color.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TableBorderStyle.strokeStyle.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v1[3];
  a1[1] = v3;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v5;
}

__n128 TableBorderStyle.strokeStyle.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  *(v1 + 56) = *(a1 + 32);
  return result;
}

__n128 TableBorderStyle.init(_:color:strokeStyle:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 16) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 24) = *a3;
  *(a4 + 40) = v5;
  *(a4 + 56) = *(a3 + 32);
  return result;
}

uint64_t sub_255CEDA10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_255CEDA58(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t Emphasis._inlineContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v3;
  *(v4 + 56) = 3;
  *a1 = v4;
}

LegalAndRegulatorySettingsSupport::Emphasis __swiftcall Emphasis.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  result.content.inlines._rawValue = swift_allocObject();
  *(result.content.inlines._rawValue + 1) = xmmword_255D0AA80;
  *(result.content.inlines._rawValue + 4) = countAndFlagsBits;
  *(result.content.inlines._rawValue + 5) = object;
  *(result.content.inlines._rawValue + 6) = 0;
  *(result.content.inlines._rawValue + 56) = 0;
  v4->content.inlines._rawValue = result.content.inlines._rawValue;
  return result;
}

void *Emphasis.init(content:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_255CEDBDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDB40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255D0AA80;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v3;
  *(v4 + 56) = 3;
  *a1 = v4;
}

uint64_t sub_255CEDD14(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255CEDD70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_255CEDDD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontProperties.Family(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FontFamily._collectAttributes(in:)()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_255CEDF54(v1, v4);
  }

  (v2)(v7, 0);
}

uint64_t sub_255CEDF54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontProperties.Family(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CEDFB8()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_255C739EC(v7);
  v4 = v3;
  v5 = type metadata accessor for FontProperties(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_255CEDF54(v1, v4);
  }

  (v2)(v7, 0);
}

uint64_t sub_255CEE0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontProperties.Family(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255CEE12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FontProperties.Family(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FontFamily()
{
  result = qword_27F7DFED8;
  if (!qword_27F7DFED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255CEE1E8()
{
  result = type metadata accessor for FontProperties.Family(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255CEE280@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFEE8);
  MEMORY[0x28223BE20](v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = sub_255D063E8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v11 = *(v1 + 8);
  v13 = *(v1 + 16);
  v22 = *(v1 + 24);
  if (v13 == 1)
  {
    v29 = v12;
    v30 = v11;
    sub_255C74DCC();
    v14 = v12;
  }

  else
  {
    sub_255C74DCC();
    sub_255D07438();
    v15 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255C74DD0();
    (*(v8 + 8))(v10, v7);
    v14 = v29;
  }

  v25 = v12;
  v26 = v11;
  v27 = v13;
  v16 = v22;
  v28 = v22;
  sub_255CEE56C(v6);
  sub_255C7299C(v6, v3, &qword_27F7DFEE8);
  sub_255CEEC50();
  v17 = sub_255D06E78();
  sub_255C76B94(v6, &qword_27F7DFEE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_255D0AA80;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 6;
  v25 = v17;
  v26 = v18;

  v19 = v14(&v25);

  *v24 = v19;
  return result;
}

uint64_t sub_255CEE56C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v37 = type metadata accessor for InlineText();
  MEMORY[0x28223BE20](v37);
  v36 = (v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF10);
  MEMORY[0x28223BE20](v38);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF18);
  MEMORY[0x28223BE20](v5);
  v7 = (v34 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF00);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v34 - v12;
  v14 = type metadata accessor for ImageView(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 24);

  sub_255D027B0(v19, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v34[1] = v8;
    v35 = v4;
    v20 = v37;
    sub_255C76B94(v13, &qword_27F7DFF20);

    v22 = sub_255CF0400(v21);
    if (v22)
    {
      v41 = v22;
      sub_255CAF964();
      *v7 = sub_255D06E78();
      swift_storeEnumTagMultiPayload();
      sub_255CEEDC8(&qword_27F7DFF08, type metadata accessor for ImageView);

      sub_255D06528();
      sub_255C7299C(v10, v35, &qword_27F7DFF00);
      swift_storeEnumTagMultiPayload();
      sub_255CEED0C();
      sub_255CEEDC8(&qword_27F7DE818, type metadata accessor for InlineText);
      sub_255D06528();

      return sub_255C76B94(v10, &qword_27F7DFF00);
    }

    KeyPath = swift_getKeyPath();
    v27 = v36;
    *v36 = KeyPath;
    *(v27 + 40) = 0;
    v28 = v20[5];
    *(v27 + v28) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8);
    swift_storeEnumTagMultiPayload();
    v29 = v20[6];
    *(v27 + v29) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v30 = v27 + v20[7];
    *v30 = swift_getKeyPath();
    *(v30 + 8) = 0;
    v31 = v27 + v20[8];
    *v31 = swift_getKeyPath();
    *(v31 + 440) = 0;
    v32 = (v27 + v20[9]);

    v40 = sub_255CD484C(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6E8);
    sub_255D06D98();
    v33 = v42;
    *v32 = v41;
    v32[1] = v33;
    *(v27 + v20[10]) = v18;
    v24 = type metadata accessor for InlineText;
    sub_255CEEE9C(v27, v35, type metadata accessor for InlineText);
    swift_storeEnumTagMultiPayload();
    sub_255CEED0C();
    sub_255CEEDC8(&qword_27F7DE818, type metadata accessor for InlineText);
    sub_255D06528();
    v25 = v27;
  }

  else
  {
    sub_255CEEE38(v13, v17);
    v24 = type metadata accessor for ImageView;
    sub_255CEEE9C(v17, v7, type metadata accessor for ImageView);
    swift_storeEnumTagMultiPayload();
    sub_255CEEDC8(&qword_27F7DFF08, type metadata accessor for ImageView);
    sub_255D06528();
    sub_255C7299C(v10, v4, &qword_27F7DFF00);
    swift_storeEnumTagMultiPayload();
    sub_255CEED0C();
    sub_255CEEDC8(&qword_27F7DE818, type metadata accessor for InlineText);
    sub_255D06528();
    sub_255C76B94(v10, &qword_27F7DFF00);
    v25 = v17;
  }

  return sub_255CEEF04(v25, v24);
}

unint64_t sub_255CEEC50()
{
  result = qword_27F7DFEF0;
  if (!qword_27F7DFEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFEE8);
    sub_255CEED0C();
    sub_255CEEDC8(&qword_27F7DE818, type metadata accessor for InlineText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFEF0);
  }

  return result;
}

unint64_t sub_255CEED0C()
{
  result = qword_27F7DFEF8;
  if (!qword_27F7DFEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFF00);
    sub_255CEEDC8(&qword_27F7DFF08, type metadata accessor for ImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFEF8);
  }

  return result;
}

uint64_t sub_255CEEDC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255CEEE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CEEE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255CEEF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255CEEF7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255CEEFC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255CEF040(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*(a2 + 64) + 16);
  v11 = 0;
  v12 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v6;
  v7 = *(a2 + 64);
  v8 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v8;
  *(v5 + 80) = v7;
  *(v5 + 88) = v3;
  sub_255CE26FC(a2, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF48);
  sub_255CE23CC();
  sub_255CEF5E8();
  return sub_255D06EA8();
}

void sub_255CEF154(unint64_t *a1@<X0>, __int128 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_255D063E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = *(a2 + 8);
  if (v12 >= *(v13 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a2 + 7);
  if (*(v14 + 16) <= a3)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = v13 + 16 * v12;
  v16 = *(v15 + 32);
  v17 = *(v15 + 40);
  v18 = v14 + 16 * a3;
  v20 = *(v18 + 32);
  v19 = *(v18 + 40);
  v29 = *a2;
  v30 = *(a2 + 16);
  v21 = v29;
  if (v30 == 1)
  {
    v28 = v29;
    sub_255CEF798(&v29, v27);
  }

  else
  {
    sub_255CEF798(&v29, v27);
    sub_255D07438();
    v22 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();
    sub_255CEF808(&v29);
    (*(v9 + 8))(v11, v8);
    v21 = v28;
  }

  v23 = v21(a3, v12);

  v31.origin.x = v16;
  v31.origin.y = v20;
  v31.size.width = v17;
  v31.size.height = v19;
  MinX = CGRectGetMinX(v31);
  v32.origin.x = v16;
  v32.origin.y = v20;
  v32.size.width = v17;
  v32.size.height = v19;
  MinY = CGRectGetMinY(v32);
  v33.origin.x = v16;
  v33.origin.y = v20;
  v33.size.width = v17;
  v33.size.height = v19;
  CGRectGetWidth(v33);
  v34.origin.x = v16;
  v34.origin.y = v20;
  v34.size.width = v17;
  v34.size.height = v19;
  CGRectGetHeight(v34);
  sub_255D06F58();
  sub_255D06018();
  *a4 = v23;
  *(a4 + 8) = 256;
  *(a4 + 16) = MinX;
  *(a4 + 24) = MinY;
  v26 = v27[1];
  *(a4 + 32) = v27[0];
  *(a4 + 48) = v26;
  *(a4 + 64) = v27[2];
}

uint64_t sub_255CEF408@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v15 = v3;
  v16 = *(v1 + 64);
  v4 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v4;
  *a1 = sub_255D06F48();
  a1[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF28);
  v6 = *(*(&v15 + 1) + 16);
  v12 = 0;
  v13 = v6;
  swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = *(v1 + 48);
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v1 + 64);
  v9 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v9;
  sub_255CE26FC(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF30);
  sub_255CE23CC();
  sub_255CEF564();
  return sub_255D06EA8();
}

unint64_t sub_255CEF564()
{
  result = qword_27F7DFF38;
  if (!qword_27F7DFF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFF30);
    sub_255CEF5E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFF38);
  }

  return result;
}

unint64_t sub_255CEF5E8()
{
  result = qword_27F7DFF40;
  if (!qword_27F7DFF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFF48);
    sub_255CEF674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFF40);
  }

  return result;
}

unint64_t sub_255CEF674()
{
  result = qword_27F7DFF50;
  if (!qword_27F7DFF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFF58);
    sub_255C810A8(&qword_27F7DFF60, &qword_27F7DFF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFF50);
  }

  return result;
}

uint64_t objectdestroyTm_3(uint64_t a1)
{
  sub_255C74BA0();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_255CEF798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CEF808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TextTableColumnAlignment.hashValue.getter(unsigned __int8 a1)
{
  sub_255D07728();
  MEMORY[0x259C4BB60](a1);
  return sub_255D07768();
}

unint64_t sub_255CEF938()
{
  result = qword_27F7DFF88;
  if (!qword_27F7DFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFF88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextTableColumnAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TextTableColumnAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_255CEFADC(uint64_t a1, uint64_t a2)
{
  v20 = MEMORY[0x277D84F90];
  result = sub_255C979B8(0, 0, 0);
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 16) + 1;
    v7 = (a2 + 40);
    while (--v6)
    {
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v11 = v7[4];
      v18 = *(v7 - 1);
      v19 = a1;
      v17 = *v7;
      result = sub_255CF08BC(v18, *v7);
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        result = sub_255C979B8((v12 > 1), v13 + 1, 1);
        v14 = v13 + 1;
      }

      v7 += 6;
      *(v20 + 16) = v14;
      v15 = (v20 + 56 * v13);
      v15[4] = v19;
      v15[5] = v18;
      v15[6] = v17;
      v15[7] = v8;
      v15[8] = v9;
      v15[9] = v10;
      v15[10] = v11;
      a1 = v5;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_10;
      }
    }

    return v20;
  }

  return result;
}

uint64_t sub_255CEFC14()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  sub_255D07728();
  if (v1)
  {
    MEMORY[0x259C4BB60](0);
    sub_255D07058();
    sub_255D07058();
    sub_255D07748();
    if (v2)
    {
      sub_255D07058();
    }
  }

  else
  {
    MEMORY[0x259C4BB60](1);
  }

  return sub_255D07768();
}

uint64_t sub_255CEFCD8()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x259C4BB60](1);
  }

  v1 = *(v0 + 40);
  MEMORY[0x259C4BB60](0);
  sub_255D07058();
  sub_255D07058();
  if (!v1)
  {
    return sub_255D07748();
  }

  sub_255D07748();

  return sub_255D07058();
}

uint64_t sub_255CEFDB0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  sub_255D07728();
  if (v1)
  {
    MEMORY[0x259C4BB60](0);
    sub_255D07058();
    sub_255D07058();
    sub_255D07748();
    if (v2)
    {
      sub_255D07058();
    }
  }

  else
  {
    MEMORY[0x259C4BB60](1);
  }

  return sub_255D07768();
}

BOOL sub_255CEFE70(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  if (*a1 == *a2 && v3 == v4 || (sub_255D076D8()) && (v5 == v9 && v6 == v10 || (sub_255D076D8()))
  {
    if (v7)
    {
      if (v11 && (v8 == v12 && v7 == v11 || (sub_255D076D8() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_255CEFF78@<X0>(uint64_t a1@<X1>, double *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v9 = 0x3FD0000000000000;
  v10 = 1;
  sub_255C73C84();
  sub_255D059E8();
  v7 = sub_255C9129C(v6);
  sub_255C76B94(v6, &qword_27F7DD9E0);
  *a2 = v7;
  a2[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFF98);
  v9 = a1;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFFA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFFA8);
  sub_255C810A8(&qword_27F7DFFB0, &qword_27F7DFFA0);
  sub_255CF0ADC();
  sub_255CF0BB4();
  return sub_255D06EA8();
}

uint64_t sub_255CF0150@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DFFD0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = type metadata accessor for ImageView(0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[2];
  if (v10)
  {
    v11 = a1[6];
    v18[0] = a1[5];
    v18[1] = a2;
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[1];
    *v9 = swift_getKeyPath();
    *(v9 + 1) = 0;
    v9[16] = 0;
    *(v9 + 3) = swift_getKeyPath();
    *(v9 + 4) = 0;
    v9[40] = 0;
    v15 = *(v7 + 24);
    *&v9[v15] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE6F8);
    swift_storeEnumTagMultiPayload();
    v16 = &v9[*(v7 + 28)];
    *v16 = v14;
    *(v16 + 1) = v10;
    *(v16 + 2) = v12;
    *(v16 + 3) = v13;
    *(v16 + 4) = v18[0];
    *(v16 + 5) = v11;
    sub_255CF0CB0(v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_255CF0C40();

    sub_255D06528();
    return sub_255CF0D14(v9);
  }

  else
  {
    *v6 = 0;
    v6[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_255CF0C40();
    return sub_255D06528();
  }
}

uint64_t sub_255CF037C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  *(a1 + 48) = sub_255CF0ACC;
  *(a1 + 56) = v4;
}

uint64_t sub_255CF0400(uint64_t a1)
{
  v4 = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 56;
    v8 = -v5;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *(a1 + 16);
      if (v6 > v10)
      {
        v10 = v6;
      }

      v11 = -v10;
      v12 = (v7 + 32 * v6++);
      while (1)
      {
        if (v11 + v6 == 1)
        {
          __break(1u);
LABEL_46:

          sub_255C7429C(v3, v1, v2, 6u);
          goto LABEL_43;
        }

        v3 = *(v12 - 3);
        v1 = *(v12 - 2);
        v2 = *(v12 - 1);
        v13 = *v12;
        if (v13 > 6)
        {
          break;
        }

        if (*v12)
        {
          if (v13 != 6 || *(v2 + 16) != 1)
          {
            goto LABEL_42;
          }

          v39 = v4;
          v41 = v7;
          v17 = v9;
          v42 = a1;
          v18 = *(v2 + 32);
          v19 = *(v2 + 40);
          v20 = *(v2 + 48);
          v21 = *(v2 + 56);
          sub_255C74200(v3, v1, v2, 6u);

          sub_255C74200(v18, v19, v20, v21);
          sub_255C7407C(v18, v19, v20, v21, &v44);
          sub_255C7429C(v18, v19, v20, v21);
          v22 = v45;
          if (v45)
          {
            v23 = v44;
            v36 = v47;
            v37 = v46;
            v49 = v48;
            sub_255C76B94(&v49, &qword_27F7DD9F8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_255C97040(0, *(v17 + 2) + 1, 1, v17);
            }

            v25 = *(v17 + 2);
            v24 = *(v17 + 3);
            if (v25 >= v24 >> 1)
            {
              v17 = sub_255C97040((v24 > 1), v25 + 1, 1, v17);
            }

            sub_255C7429C(v3, v1, v2, 6u);
            *(v17 + 2) = v25 + 1;
            v26 = &v17[48 * v25];
            *(v26 + 4) = v23;
            *(v26 + 5) = v22;
            v9 = v17;
            *(v26 + 6) = v37;
            *(v26 + 7) = v36;
            *(v26 + 8) = v3;
            *(v26 + 9) = v1;
            a1 = v42;
            v4 = v39;
            goto LABEL_38;
          }

          goto LABEL_46;
        }

        v14 = HIBYTE(v1) & 0xF;
        if ((v1 & 0x2000000000000000) == 0)
        {
          v14 = v3 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          goto LABEL_42;
        }

LABEL_6:
        ++v6;
        v12 += 32;
        if (v8 + v6 == 1)
        {
          goto LABEL_41;
        }
      }

      if (v13 != 8)
      {
        if (v13 == 7)
        {
          v41 = v7;
          v43 = a1;
          sub_255C74200(v3, v1, v2, 7u);

          sub_255CB2770(v2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00);
          sub_255C810A8(&qword_27F7DDA08, &qword_27F7DDA00);
          v27 = sub_255D07068();
          v38 = v28;
          v40 = v27;

          v29 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_255C97040(0, *(v9 + 2) + 1, 1, v9);
          }

          v31 = *(v9 + 2);
          v30 = *(v9 + 3);
          v32 = v9;
          if (v31 >= v30 >> 1)
          {
            v32 = sub_255C97040((v30 > 1), v31 + 1, 1, v9);
          }

          sub_255C7429C(v3, v1, v2, 7u);
          *(v32 + 2) = v31 + 1;
          v9 = v32;
          v33 = &v32[48 * v31];
          *(v33 + 4) = v3;
          *(v33 + 5) = v1;
          *(v33 + 6) = v40;
          *(v33 + 7) = v38;
          *(v33 + 8) = 0;
          *(v33 + 9) = 0;
          a1 = v43;
          v4 = v29;
LABEL_38:
          v7 = v41;
          if (v8 + v6)
          {
            continue;
          }

          goto LABEL_41;
        }

LABEL_42:

LABEL_43:

        return 0;
      }

      if (!(v2 | v1 | v3))
      {
        goto LABEL_6;
      }

      if (v3 != 1 || v2 | v1)
      {
        goto LABEL_42;
      }

      v2 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_255C97040(0, *(v9 + 2) + 1, 1, v9);
      }

      a1 = v2;
      v1 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v1 >= v15 >> 1)
      {
        v9 = sub_255C97040((v15 > 1), v1 + 1, 1, v9);
        a1 = v2;
      }

      *(v9 + 2) = v1 + 1;
      v16 = &v9[48 * v1];
      *(v16 + 2) = 0u;
      *(v16 + 3) = 0u;
      *(v16 + 4) = 0u;
      if (!(v8 + v6))
      {
        goto LABEL_41;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_41:

  v34 = sub_255CEFADC(0, v9);

  return v34;
}

uint64_t sub_255CF08BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_33LegalAndRegulatorySettingsSupport9ImageFlowV4Item33_F133E119A618557D1760DC6E065FF070LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255CF0924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_255CF0974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_255CF09D0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_255CF0A24()
{
  result = qword_27F7DFF90;
  if (!qword_27F7DFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFF90);
  }

  return result;
}

uint64_t sub_255CF0A94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_255CF0ADC()
{
  result = qword_27F7DFFB8;
  if (!qword_27F7DFFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DE278);
    sub_255CF0B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFFB8);
  }

  return result;
}

unint64_t sub_255CF0B60()
{
  result = qword_27F7DFFC0;
  if (!qword_27F7DFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFFC0);
  }

  return result;
}

unint64_t sub_255CF0BB4()
{
  result = qword_27F7DFFC8;
  if (!qword_27F7DFFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DFFA8);
    sub_255CF0C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFFC8);
  }

  return result;
}

unint64_t sub_255CF0C40()
{
  result = qword_27F7DFF08;
  if (!qword_27F7DFF08)
  {
    type metadata accessor for ImageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DFF08);
  }

  return result;
}

uint64_t sub_255CF0CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CF0D14(uint64_t a1)
{
  v2 = type metadata accessor for ImageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255CF0DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D058F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255CF0E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_255D058F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s20MarkdownUIAttributesVMa()
{
  result = qword_27F7DFFE8;
  if (!qword_27F7DFFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255CF0F14()
{
  result = sub_255D058F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255CF0FCC@<X0>(uint64_t a1@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0018);
  MEMORY[0x28223BE20](v53);
  v52 = v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = v46 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = v46 - v8;
  v62 = type metadata accessor for FontProperties(0);
  v46[0] = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_255D05948();
  v63 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v66 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255D05928();
  v55 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v60 = v46 - v17;
  v18 = sub_255D05958();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E0020);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = v46 - v24;
  v26 = sub_255D05988();
  (*(*(v26 - 8) + 16))(a1, v65, v26);
  v54 = a1;
  sub_255D05968();
  (*(v19 + 16))(v25, v21, v18);
  v27 = *(v23 + 44);
  v28 = v16;
  v29 = sub_255CF1A40(&qword_27F7E0028, MEMORY[0x277CC8C08]);
  v64 = v27;
  v65 = v25;
  sub_255D07398();
  (*(v19 + 8))(v21, v18);
  ++v63;
  v57 = (v55 + 4);
  v58 = (v55 + 2);
  v56 = (v46[0] + 48);
  v46[0] += 56;
  ++v55;
  v49 = v9;
  v48 = v11;
  v47 = v13;
  v59 = v18;
  v46[1] = v29;
  while (1)
  {
    v31 = v65;
    v30 = v66;
    sub_255D073B8();
    sub_255CF1A40(&qword_27F7E0030, MEMORY[0x277CC8BF8]);
    v32 = sub_255D07078();
    (*v63)(v30, v11);
    if (v32)
    {
      break;
    }

    v33 = sub_255D073D8();
    v34 = v60;
    (*v58)(v60);
    v33(v68, 0);
    sub_255D073C8();
    (*v57)(v28, v34, v13);
    sub_255C73C84();
    sub_255D05938();
    v35 = v28;
    v36 = v62;
    if ((*v56)(v9, 1, v62) == 1)
    {
      (*v55)(v35, v13);
      sub_255C76B94(v9, &qword_27F7DD9E0);
    }

    else
    {
      v37 = v61;
      sub_255C8A26C(v9, v61);
      v38 = v52;
      sub_255D05918();
      v39 = sub_255D0083C(v37);
      sub_255CF1A88();
      v40 = sub_255D059A8();
      v67 = v39;
      sub_255CF1AEC();
      sub_255D05A38();
      v40(v68, 0);
      sub_255C76B94(v38, &qword_27F7E0018);
      sub_255D05918();
      v41 = v50;
      (*v46[0])(v50, 1, 1, v36);
      v42 = sub_255D059A8();
      sub_255C73CD8(v41, v51);
      v9 = v49;
      sub_255D05A38();
      v43 = v41;
      v13 = v47;
      sub_255C76B94(v43, &qword_27F7DD9E0);
      v42(v68, 0);
      v44 = v38;
      v11 = v48;
      sub_255C76B94(v44, &qword_27F7E0018);
      sub_255C8A2D0(v61);
      (*v55)(v35, v13);
    }

    v28 = v35;
  }

  return sub_255C76B94(v31, &qword_27F7E0020);
}

uint64_t sub_255CF1870()
{
  sub_255CF1A40(&qword_27F7E0010, _s20MarkdownUIAttributesVMa);

  return sub_255D058D8();
}

uint64_t sub_255CF18EC()
{
  sub_255CF1A40(&qword_27F7E0010, _s20MarkdownUIAttributesVMa);

  return sub_255D058D8();
}

uint64_t sub_255CF1A40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255CF1A88()
{
  result = qword_27F7E0038;
  if (!qword_27F7E0038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E0018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0038);
  }

  return result;
}

unint64_t sub_255CF1AEC()
{
  result = qword_27F7E0040;
  if (!qword_27F7E0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E0040);
  }

  return result;
}

void *Theme.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for EmptyTextStyle;
  *(a1 + 32) = &protocol witness table for EmptyTextStyle;
  *(a1 + 64) = &type metadata for FontFamilyVariant;
  *(a1 + 72) = &protocol witness table for FontFamilyVariant;
  *(a1 + 40) = 1;
  *(a1 + 104) = &type metadata for FontStyle;
  *(a1 + 112) = &protocol witness table for FontStyle;
  *(a1 + 80) = 1;
  sub_255D06868();
  *(a1 + 144) = &type metadata for FontWeight;
  *(a1 + 152) = &protocol witness table for FontWeight;
  *(a1 + 120) = v2;
  *(a1 + 184) = type metadata accessor for StrikethroughStyle();
  *(a1 + 192) = &protocol witness table for StrikethroughStyle;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a1 + 160));
  sub_255D06968();
  v4 = sub_255D06978();
  (*(*(v4 - 8) + 56))(boxed_opaque_existential_1, 0, 1, v4);
  *(a1 + 224) = &type metadata for EmptyTextStyle;
  *(a1 + 232) = &protocol witness table for EmptyTextStyle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE238);
  result = sub_255D072B8();
  result[2] = 6;
  result[4] = sub_255CF4928;
  result[5] = 0;
  result[6] = sub_255CF4928;
  result[7] = 0;
  result[8] = sub_255CF4928;
  result[9] = 0;
  result[10] = sub_255CF4928;
  result[11] = 0;
  result[12] = sub_255CF4928;
  result[13] = 0;
  result[14] = sub_255CF4928;
  result[15] = 0;
  *(a1 + 240) = result;
  *(a1 + 248) = sub_255CF4928;
  *(a1 + 256) = 0;
  *(a1 + 264) = sub_255CF4928;
  *(a1 + 272) = 0;
  *(a1 + 280) = sub_255CF454C;
  *(a1 + 288) = 0;
  *(a1 + 296) = sub_255CF4928;
  *(a1 + 304) = 0;
  *(a1 + 312) = sub_255CF4928;
  *(a1 + 320) = 0;
  *(a1 + 328) = sub_255CF4928;
  *(a1 + 336) = 0;
  *(a1 + 344) = sub_255CF4324;
  *(a1 + 352) = 0;
  *(a1 + 360) = sub_255CF43A8;
  *(a1 + 368) = 0;
  *(a1 + 376) = sub_255CF43F0;
  *(a1 + 384) = 0;
  *(a1 + 392) = sub_255CF4928;
  *(a1 + 400) = 0;
  *(a1 + 408) = sub_255CF44FC;
  *(a1 + 416) = 0;
  *(a1 + 424) = sub_255CF4474;
  *(a1 + 432) = 0;
  return result;
}

uint64_t Theme.code<A>(code:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_255C99DF4(v4, a4);
  v11 = a2;
  v12 = a3;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  a1();
  __swift_destroy_boxed_opaque_existential_1(a4 + 40);
  return sub_255CAC668(&v10, a4 + 40);
}

uint64_t Theme.heading1<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v14);
  v13 = v14;
  v11 = *(a5 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v11 + 16))
    {
LABEL_3:
      *(v11 + 32) = v13;

      *(a5 + 240) = v11;
      return result;
    }
  }

  else
  {
    result = sub_255CF4310(v11);
    v11 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Theme.heading2<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v14);
  v13 = v14;
  v11 = *(a5 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v11);
    v11 = result;
  }

  if (*(v11 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 48) = v13;

    *(a5 + 240) = v11;
  }

  return result;
}

uint64_t Theme.heading3<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v14);
  v13 = v14;
  v11 = *(a5 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v11);
    v11 = result;
  }

  if (*(v11 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 64) = v13;

    *(a5 + 240) = v11;
  }

  return result;
}

uint64_t Theme.heading4<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v14);
  v13 = v14;
  v11 = *(a5 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v11);
    v11 = result;
  }

  if (*(v11 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 80) = v13;

    *(a5 + 240) = v11;
  }

  return result;
}

uint64_t Theme.heading5<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v14);
  v13 = v14;
  v11 = *(a5 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v11);
    v11 = result;
  }

  if (*(v11 + 16) < 5uLL)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 96) = v13;

    *(a5 + 240) = v11;
  }

  return result;
}

uint64_t Theme.heading6<A>(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v14);
  v13 = v14;
  v11 = *(a5 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v11);
    v11 = result;
  }

  if (*(v11 + 16) < 6uLL)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 112) = v13;

    *(a5 + 240) = v11;
  }

  return result;
}

double Theme.paragraph<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 248) = v12;
  return result;
}

double Theme.blockquote<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 264) = v12;
  return result;
}

double Theme.codeBlock<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for CodeBlockConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 280) = v12;
  return result;
}

double Theme.table<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 392) = v12;
  return result;
}

double Theme.tableCell<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for TableCellConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 408) = v12;
  return result;
}

double Theme.thematicBreak<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle<A>.init<A>(body:)(a1, a2, a3, a4, &v12);

  result = *&v12;
  *(a5 + 424) = v12;
  return result;
}

uint64_t Theme.text<A>(text:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_255C99DF4(v4, a4);
  v11 = a2;
  v12 = a3;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  a1();
  __swift_destroy_boxed_opaque_existential_1(a4);
  return sub_255CAC668(&v10, a4);
}

uint64_t Theme.strong<A>(strong:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_255C99DF4(v4, a4);
  v11 = a2;
  v12 = a3;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  a1();
  __swift_destroy_boxed_opaque_existential_1(a4 + 120);
  return sub_255CAC668(&v10, a4 + 120);
}

uint64_t Theme.link<A>(link:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_255C99DF4(v4, a4);
  v11 = a2;
  v12 = a3;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  a1();
  __swift_destroy_boxed_opaque_existential_1(a4 + 200);
  return sub_255CAC668(&v10, a4 + 200);
}

double Theme.listItem<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for BlockConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 328) = v12;
  return result;
}

double Theme.taskListMarker<A>(body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_255C99DF4(v5, a5);

  BlockStyle.init<A>(body:)(a1, a2, &type metadata for TaskListMarkerConfiguration, a3, a4, &v12);

  result = *&v12;
  *(a5 + 344) = v12;
  return result;
}

uint64_t Theme.text.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_255CAC668(a1, v1);
}

uint64_t Theme.code.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_255CAC668(a1, v1 + 40);
}

uint64_t Theme.emphasis.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_255CAC668(a1, v1 + 80);
}

uint64_t Theme.strong.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_255CAC668(a1, v1 + 120);
}

uint64_t Theme.strikethrough.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_255CAC668(a1, v1 + 160);
}

uint64_t Theme.link.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_255CAC668(a1, v1 + 200);
}

uint64_t Theme.heading1.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2[2])
  {
    v3 = v2[5];
    *a1 = v2[4];
    a1[1] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255CF2B54(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 240);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (v5[2])
    {
LABEL_3:
      v5[4] = v4;
      v5[5] = v3;

      *(a2 + 240) = v5;
      return result;
    }
  }

  else
  {
    result = sub_255CF4310(v5);
    v5 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t Theme.heading1.setter(__int128 *a1)
{
  v4 = *a1;
  v2 = *(v1 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v2 + 16))
    {
LABEL_3:
      *(v2 + 32) = v4;

      *(v1 + 240) = v2;
      return result;
    }
  }

  else
  {
    result = sub_255CF4310(v2);
    v2 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*Theme.heading1.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 240);
  *(result + 2) = v1;
  *(result + 3) = v2;
  if (v2[2])
  {
    v3 = result;
    v4 = v2[5];
    *v3 = v2[4];
    *(v3 + 1) = v4;

    return sub_255CF2C98;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255CF2C98(uint64_t *a1, char a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  if ((a2 & 1) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if (!v5[2])
      {
LABEL_13:
        __break(1u);
        return result;
      }

LABEL_9:
      v8 = a1[2];
      v5[4] = v4;
      v5[5] = v3;

      *(v8 + 240) = v5;
      return result;
    }

LABEL_12:
    result = sub_255CF4310(v5);
    v5 = result;
    if (!*(result + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_255CF4310(v5);
    if (v5[2])
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (!v5[2])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_4:
  v6 = a1[2];
  v5[4] = v4;
  v5[5] = v3;

  *(v6 + 240) = v5;
}

uint64_t Theme.heading2.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[7];
    *a1 = v2[6];
    a1[1] = v3;
  }

  return result;
}

uint64_t sub_255CF2D98(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 240);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v5);
    v5 = result;
  }

  if (v5[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v5[6] = v4;
    v5[7] = v3;

    *(a2 + 240) = v5;
  }

  return result;
}

uint64_t Theme.heading2.setter(__int128 *a1)
{
  v4 = *a1;
  v2 = *(v1 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v2);
    v2 = result;
  }

  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 48) = v4;

    *(v1 + 240) = v2;
  }

  return result;
}

uint64_t (*Theme.heading2.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 240);
  *(result + 2) = v1;
  *(result + 3) = v2;
  if (v2[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = v2[7];
    *v3 = v2[6];
    *(v3 + 1) = v4;

    return sub_255CF2EE0;
  }

  return result;
}

uint64_t sub_255CF2EE0(uint64_t *a1, char a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  if ((a2 & 1) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_255CF4310(v5);
  }

  if (v5[2] < 2uLL)
  {
    __break(1u);
LABEL_12:
    result = sub_255CF4310(v5);
    v5 = result;
LABEL_9:
    if (v5[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v8 = a1[2];
      v5[6] = v4;
      v5[7] = v3;

      *(v8 + 240) = v5;
    }

    return result;
  }

  v6 = a1[2];
  v5[6] = v4;
  v5[7] = v3;

  *(v6 + 240) = v5;
}

uint64_t Theme.heading3.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[9];
    *a1 = v2[8];
    a1[1] = v3;
  }

  return result;
}

uint64_t sub_255CF2FE0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 240);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v5);
    v5 = result;
  }

  if (v5[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v5[8] = v4;
    v5[9] = v3;

    *(a2 + 240) = v5;
  }

  return result;
}

uint64_t Theme.heading3.setter(__int128 *a1)
{
  v4 = *a1;
  v2 = *(v1 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v2);
    v2 = result;
  }

  if (*(v2 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 64) = v4;

    *(v1 + 240) = v2;
  }

  return result;
}

uint64_t (*Theme.heading3.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 240);
  *(result + 2) = v1;
  *(result + 3) = v2;
  if (v2[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = v2[9];
    *v3 = v2[8];
    *(v3 + 1) = v4;

    return sub_255CF3128;
  }

  return result;
}

uint64_t sub_255CF3128(uint64_t *a1, char a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  if ((a2 & 1) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_255CF4310(v5);
  }

  if (v5[2] < 3uLL)
  {
    __break(1u);
LABEL_12:
    result = sub_255CF4310(v5);
    v5 = result;
LABEL_9:
    if (v5[2] < 3uLL)
    {
      __break(1u);
    }

    else
    {
      v8 = a1[2];
      v5[8] = v4;
      v5[9] = v3;

      *(v8 + 240) = v5;
    }

    return result;
  }

  v6 = a1[2];
  v5[8] = v4;
  v5[9] = v3;

  *(v6 + 240) = v5;
}

uint64_t Theme.heading4.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 240);
  if (v2[2] < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = v2[11];
    *a1 = v2[10];
    a1[1] = v3;
  }

  return result;
}

uint64_t sub_255CF3228(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 240);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v5);
    v5 = result;
  }

  if (v5[2] < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v5[10] = v4;
    v5[11] = v3;

    *(a2 + 240) = v5;
  }

  return result;
}

uint64_t Theme.heading4.setter(__int128 *a1)
{
  v4 = *a1;
  v2 = *(v1 + 240);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_255CF4310(v2);
    v2 = result;
  }

  if (*(v2 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 80) = v4;

    *(v1 + 240) = v2;
  }

  return result;
}