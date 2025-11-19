uint64_t sub_1E68718EC(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1E68B3750();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1E68B32D0();
  v63 = sub_1E68B38E0();
  v58 = sub_1E68B38F0();
  sub_1E68B38C0();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1E68B32C0();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1E68B3780();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1E68B38D0();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1E68B3780();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1E68B38D0();
      sub_1E68B3780();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1E6871FE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  v4[16] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E68720B8, a4, 0);
}

uint64_t sub_1E68720B8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedConformanceWitness();
  *(v0 + 16) = AssociatedTypeWitness;
  *(v0 + 24) = AssociatedConformanceWitness;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  type metadata accessor for CanvasItemPlaceholder();
  swift_getWitnessTable();
  sub_1E68B3630();
  if (sub_1E68B3380())
  {
    v5 = 0;
    v27 = **(v0 + 104);
    v26 = *(v0 + 112) + 32;
    do
    {
      v8 = sub_1E68B3370();
      sub_1E68B3340();
      if (v8)
      {
        v9 = *(v26 + 8 * v5);

        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = sub_1E68B3840();
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      v28 = v10;
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v13 = *(v0 + 120);
      v14 = sub_1E68B3460();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v11, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      v16[5] = v9;
      sub_1E678271C(v11, v12);
      LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);

      v18 = *(v0 + 136);
      if (v11 == 1)
      {
        sub_1E6744A10(*(v0 + 136), &qword_1ED097A10);
        if (!*v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1E68B3450();
        (*(v15 + 8))(v18, v14);
        if (!*v17)
        {
LABEL_11:
          v19 = 0;
          v21 = 0;
          goto LABEL_12;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_1E68B3400();
      v21 = v20;
      swift_unknownObjectRelease();
LABEL_12:

      if (v21 | v19)
      {
        v6 = v0 + 48;
        *(v0 + 48) = 0;
        *(v0 + 56) = 0;
        *(v0 + 64) = v19;
        *(v0 + 72) = v21;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 144);
      *(v0 + 80) = 1;
      *(v0 + 88) = v6;
      *(v0 + 96) = v27;
      swift_task_create();

      sub_1E6744A10(v7, &qword_1ED097A10);
      ++v5;
    }

    while (v28 != sub_1E68B3380());
  }

  v22 = *(v0 + 120);
  type metadata accessor for LazyCanvasItemPlaceholderFetcher();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_1E68782B4;

  return sub_1E687269C(v22, WitnessTable);
}

uint64_t sub_1E687254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E687256C, 0, 0);
}

uint64_t sub_1E687256C()
{
  v1 = v0[2];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 120) + **(v3 + 120));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E6878294;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1E687269C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1E68B3400();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6872730, v4, v6);
}

uint64_t sub_1E6872730()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0);
  if (sub_1E68B3530())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D18);
    *v3 = v0;
    v3[1] = sub_1E6872868;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_1E6872868()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1E6872AB4;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1E6872984;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E6872984()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_1E68B3530())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D18);
  *v4 = v0;
  v4[1] = sub_1E6872868;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v7, v6, v5);
}

uint64_t sub_1E6872AB4()
{
  v1 = v0[11];
  if (v0[9])
  {
    MEMORY[0x1E6952810](v0[11]);
    v1 = v0[9];
  }

  if (sub_1E68B3530())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D18);
    *v4 = v0;
    v4[1] = sub_1E6872868;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_1E6872BF0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6872C38, v1, 0);
}

uint64_t sub_1E6872C38()
{
  v1 = v0[14];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 136) + **(v3 + 136));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E6872D68;
  v5 = v0[13];

  return v7(v5, v2, v3);
}

uint64_t sub_1E6872D68()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1E6872EB0, v6, 0);
  }
}

uint64_t sub_1E6872EB0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  swift_beginAccess();
  v0[12] = *(v1 + 112);
  v4 = swift_task_alloc();
  v4[2] = *(v2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = v3;
  sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();

  v0[2] = AssociatedTypeWitness;
  v0[3] = AssociatedConformanceWitness;
  v0[4] = v7;
  v0[5] = v8;
  type metadata accessor for CanvasItemPlaceholder();
  sub_1E68B33B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_1E68B3300();

  v10 = sub_1E68B3380();
  v11 = *(v1 + 120);
  if (v11)
  {
    v12 = v0[14];
    v22 = v12;
    v0[9] = 0;
    v0[10] = v10;
    v0[11] = v11;
    v13 = swift_task_alloc();
    *(v13 + 16) = v9;
    *(v13 + 24) = v12;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099CF0);
    swift_getWitnessTable();
    v15 = sub_1E68B3630();
    v16 = sub_1E673F530(&qword_1ED099CF8, &qword_1ED099CF0);
    v18 = sub_1E68718EC(sub_1E68776CC, v13, v14, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
    v0[18] = v18;

    type metadata accessor for LazyCanvasItemPlaceholderFetcher();
    swift_getWitnessTable();
    v19 = swift_task_alloc();
    v0[19] = v19;
    *(v19 + 16) = v18;
    *(v19 + 24) = v22;
    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_1E6873288;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1E6873288()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_1E68733D0;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1E68733B8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E68733D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E687343C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  (*(a2 + 128))(a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LazyCanvasItemDescriptor();
  sub_1E68B33B0();
  type metadata accessor for CanvasItemPlaceholder();
  swift_getWitnessTable();
  v3 = sub_1E68B32E0();

  *a3 = v3;
  return result;
}

uint64_t sub_1E6873764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a2;
  v32 = a1;
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedConformanceWitness();
  v36 = AssociatedTypeWitness;
  v37 = AssociatedConformanceWitness;
  v38 = v30;
  v39 = v29;
  v4 = type metadata accessor for CanvasItemPlaceholder();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v24[0] = v24 - v5;
  v27 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v36 = v27;
  v37 = v25;
  v38 = v6;
  v39 = AssociatedTypeWitness;
  v40 = v7;
  v41 = v8;
  v42 = v28;
  v43 = v26;
  v44 = v9;
  v45 = AssociatedConformanceWitness;
  v46 = v30;
  v47 = v29;
  v48 = v10;
  v49 = v11;
  v12 = type metadata accessor for LazyCanvasItemDescriptor();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  (*(v13 + 16))(v24 - v15, v32, v12, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v33;
    v18 = *(v33 + 32);
    v19 = v24[0];
    v20 = v16;
    v21 = v34;
    v22 = v35;
    v18(v24[0], v20, v34);
    if (sub_1E68B35E0())
    {
      v18(v22, v19, v21);
      return (*(v17 + 56))(v22, 0, 1, v21);
    }

    else
    {
      (*(v17 + 8))(v19, v21);
      return (*(v17 + 56))(v22, 1, 1, v21);
    }
  }

  else
  {
    (*(v33 + 56))(v35, 1, 1, v34);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t *sub_1E6873C0C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t **a3@<X8>)
{
  v3 = *result;
  v4 = *(a2 + 120);
  v5 = *result + v4;
  if (__OFADD__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for CanvasItemPlaceholder();
    result = sub_1E68B3380();
    if (result >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = result;
    }

    if (v6 >= v3)
    {
      sub_1E68B33E0();
      sub_1E68B3790();
      swift_getWitnessTable();
      swift_getWitnessTable();
      result = sub_1E68B3640();
      *a3 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6873DD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  v4[16] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6873EB0, a4, 0);
}

uint64_t sub_1E6873EB0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedConformanceWitness();
  *(v0 + 16) = AssociatedTypeWitness;
  *(v0 + 24) = AssociatedConformanceWitness;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  type metadata accessor for CanvasItemPlaceholder();
  swift_getWitnessTable();
  sub_1E68B3630();
  if (sub_1E68B3380())
  {
    v5 = 0;
    v27 = **(v0 + 104);
    v26 = *(v0 + 112) + 32;
    do
    {
      v8 = sub_1E68B3370();
      sub_1E68B3340();
      if (v8)
      {
        v9 = *(v26 + 8 * v5);

        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = sub_1E68B3840();
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      v28 = v10;
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v13 = *(v0 + 120);
      v14 = sub_1E68B3460();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v11, 1, 1, v14);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      v16[5] = v9;
      sub_1E678271C(v11, v12);
      LODWORD(v11) = (*(v15 + 48))(v12, 1, v14);

      v18 = *(v0 + 136);
      if (v11 == 1)
      {
        sub_1E6744A10(*(v0 + 136), &qword_1ED097A10);
        if (!*v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1E68B3450();
        (*(v15 + 8))(v18, v14);
        if (!*v17)
        {
LABEL_11:
          v19 = 0;
          v21 = 0;
          goto LABEL_12;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_1E68B3400();
      v21 = v20;
      swift_unknownObjectRelease();
LABEL_12:

      if (v21 | v19)
      {
        v6 = v0 + 48;
        *(v0 + 48) = 0;
        *(v0 + 56) = 0;
        *(v0 + 64) = v19;
        *(v0 + 72) = v21;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 144);
      *(v0 + 80) = 1;
      *(v0 + 88) = v6;
      *(v0 + 96) = v27;
      swift_task_create();

      sub_1E6744A10(v7, &qword_1ED097A10);
      ++v5;
    }

    while (v28 != sub_1E68B3380());
  }

  v22 = *(v0 + 120);
  type metadata accessor for LazyCanvasItemPlaceholderFetcher();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_1E6874344;

  return sub_1E687269C(v22, WitnessTable);
}

uint64_t sub_1E6874344()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6874478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E6874498, 0, 0);
}

uint64_t sub_1E6874498()
{
  v1 = v0[2];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 120) + **(v3 + 120));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E68745C8;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_1E68745C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E68746BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E68746E4, v4, 0);
}

uint64_t sub_1E68746E4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = v1[19];
  v4 = v1[20];
  v10 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v10;
  *(v5 + 40) = v1;
  v11 = (*(v4 + 144) + **(v4 + 144));
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1E6874868;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return v11(v8, sub_1E68777A0, v5, v7, v3, v4);
}

uint64_t sub_1E6874868()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1E68749A4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E68749A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6874A08(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();

  a3(v6, a1, a2);
}

uint64_t sub_1E6874AAC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6874AF4, v1, 0);
}

uint64_t sub_1E6874AF4()
{
  v1 = v0[9];
  swift_beginAccess();

  v2 = sub_1E68B33D0();

  if ((v2 & 1) == 0)
  {
    v3 = v0[8];

    swift_beginAccess();
    *(v1 + 112) = v3;
  }

  sub_1E6874BE4();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6874BE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  swift_beginAccess();
  v15 = *(v0 + 112);
  sub_1E68B33B0();
  swift_getWitnessTable();
  result = sub_1E68B36E0();
  if ((result & 1) == 0)
  {
    result = swift_beginAccess();
    if (*(*(v0 + 168) + 16))
    {
      swift_beginAccess();
      v19 = *(v0 + 168);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D00);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v8 = swift_getAssociatedConformanceWitness();
      v9 = swift_getAssociatedConformanceWitness();
      v15 = AssociatedTypeWitness;
      v16 = AssociatedConformanceWitness;
      v17 = v8;
      v18 = v9;
      type metadata accessor for CanvasItemPlaceholder();
      sub_1E673F530(&qword_1ED099D08, &qword_1ED099D00);
      v10 = sub_1E68B32E0();

      swift_beginAccess();
      *(v1 + 168) = MEMORY[0x1E69E7CD0];

      v11 = sub_1E68B3460();
      (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      type metadata accessor for LazyCanvasItemPlaceholderFetcher();
      WitnessTable = swift_getWitnessTable();
      v13 = swift_allocObject();
      v13[2] = v1;
      v13[3] = WitnessTable;
      v13[4] = v10;
      v13[5] = v1;
      swift_retain_n();
      sub_1E67877E0(0, 0, v4, &unk_1E68C5450, v13);
    }
  }

  return result;
}

uint64_t sub_1E6874F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v34 = a3;
  v30 = a2;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v50 = swift_getAssociatedConformanceWitness();
  v36 = AssociatedTypeWitness;
  v37 = v29;
  v38 = v27;
  v39 = v5;
  AssociatedTypeWitness = v5;
  v40 = v6;
  v41 = v7;
  v42 = AssociatedConformanceWitness;
  v43 = v31;
  v44 = v28;
  v45 = v50;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = AssociatedConformanceWitness;
  v47 = swift_getAssociatedConformanceWitness();
  v31 = v47;
  v48 = swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedConformanceWitness();
  v29 = type metadata accessor for LazyCanvasItemDescriptor();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - v8;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = sub_1E68B1990();
  swift_beginAccess();

  v14 = sub_1E68B3380();

  if (v13 >= v14)
  {
    goto LABEL_6;
  }

  sub_1E68B1990();
  swift_beginAccess();

  sub_1E68B33F0();

  v15 = sub_1E68B1970();
  v16 = *(v3 + 128);
  v16(v4, v3);
  v17 = sub_1E68B3380();

  if (v15 >= v17)
  {
    (*(v9 + 8))(v12, v4);
LABEL_6:
    v36 = AssociatedTypeWitness;
    v37 = v50;
    v38 = AssociatedConformanceWitness;
    v39 = v31;
    v24 = type metadata accessor for CanvasItemPlaceholder();
    return (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  }

  v16(v4, v3);
  sub_1E68B1970();
  v18 = v28;
  sub_1E68B33F0();

  (*(v9 + 8))(v12, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = v34;
  v36 = AssociatedTypeWitness;
  v37 = v50;
  v38 = AssociatedConformanceWitness;
  v39 = v31;
  if (EnumCaseMultiPayload == 1)
  {
    v21 = type metadata accessor for CanvasItemPlaceholder();
    v22 = *(v21 - 8);
    (*(v22 + 32))(v20, v18, v21);
    return (*(v22 + 56))(v20, 0, 1, v21);
  }

  else
  {
    v25 = type metadata accessor for CanvasItemPlaceholder();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    return (*(v27 + 8))(v18, v29);
  }
}

uint64_t sub_1E687563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = *a5;
  return MEMORY[0x1EEE6DFA0](sub_1E6875684, a5, 0);
}

uint64_t sub_1E6875684()
{
  v29 = v0;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v1 = sub_1E68B1AE0();
  v0[14] = __swift_project_value_buffer(v1, qword_1EE2F8440);

  v2 = sub_1E68B1AC0();
  v3 = sub_1E68B3710();
  if (os_log_type_enabled(v2, v3))
  {
    v25 = v0[11];
    v4 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v4 = 136315138;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_getAssociatedConformanceWitness();
    v8 = swift_getAssociatedConformanceWitness();
    v0[6] = AssociatedTypeWitness;
    v0[7] = AssociatedConformanceWitness;
    v0[8] = v7;
    v0[9] = v8;
    v9 = type metadata accessor for CanvasItemPlaceholder();
    v10 = MEMORY[0x1E6951B80](v25, v9);
    v12 = v11;

    v13 = sub_1E683B478(v10, v12, &v28);

    *(v4 + 4) = v13;
    _os_log_impl(&dword_1E6725000, v2, v3, "Retrying placeholders: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E6952A70](v26, -1, -1);
    MEMORY[0x1E6952A70](v4, -1, -1);
  }

  else
  {
  }

  v14 = v0[12];
  v15 = v0[11];
  v16 = v14[20];
  v27 = v14[19];
  __swift_project_boxed_opaque_existential_1(v14 + 16, v27);
  v0[10] = v15;
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();

  v0[2] = v17;
  v0[3] = v18;
  v0[4] = v19;
  v0[5] = v20;
  type metadata accessor for CanvasItemPlaceholder();
  sub_1E68B33B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v21 = sub_1E68B3640();
  v0[15] = v21;
  v24 = (*(v16 + 120) + **(v16 + 120));
  v22 = swift_task_alloc();
  v0[16] = v22;
  *v22 = v0;
  v22[1] = sub_1E6875AE8;

  return v24(v21, v27, v16);
}

uint64_t sub_1E6875AE8()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[12];

    return MEMORY[0x1EEE6DFA0](sub_1E6875C24, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E6875C24()
{
  v1 = *(v0 + 136);

  MEMORY[0x1E6952820](v1);
  v2 = sub_1E68B1AC0();
  v3 = sub_1E68B3720();
  MEMORY[0x1E6952810](v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1E6952820](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1E6725000, v2, v3, "Failed to fetch previous placeholder: %@", v6, 0xCu);
    sub_1E6744A10(v7, &qword_1ED099D10);
    MEMORY[0x1E6952A70](v7, -1, -1);
    MEMORY[0x1E6952A70](v6, -1, -1);
    MEMORY[0x1E6952810](v5);
  }

  else
  {

    MEMORY[0x1E6952810](v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t LazyCanvasItemPlaceholderFetcher.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LazyCanvasItemPlaceholderFetcher.__deallocating_deinit()
{
  LazyCanvasItemPlaceholderFetcher.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E6875E14(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E68B19A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1E6878250(&qword_1ED099D20);
  v33 = a2;
  v11 = sub_1E68B3130();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1E6878250(&qword_1ED099D28);
      v21 = sub_1E68B3190();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1E687673C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1E68760CC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D38);
  result = sub_1E68B37E0();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_1E68B3B70();
      MEMORY[0x1E69523D0](0);
      result = sub_1E68B3BB0();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v3 + 16);
    }

    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = v5[v12];
      ++v4;
      if (v8)
      {
        v4 = v12;
        goto LABEL_13;
      }
    }

    v20 = 1 << *(v1 + 32);
    if (v20 >= 64)
    {
      bzero((v1 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v20;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1E68762E4()
{
  v1 = v0;
  v35 = sub_1E68B19A0();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D30);
  result = sub_1E68B37E0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1E6878250(&qword_1ED099D20);
      result = sub_1E68B3130();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_1E687662C(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1E68760CC();
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1E6876CFC();
LABEL_8:
      v6 = *v2;
      sub_1E68B3B70();
      MEMORY[0x1E69523D0](0);
      result = sub_1E68B3BB0() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1E68769B8();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1E68B3B10();
  __break(1u);
  return result;
}

uint64_t sub_1E687673C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1E68B19A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E68762E4();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E6876AC4();
      goto LABEL_12;
    }

    sub_1E6876ED8();
  }

  v13 = *v3;
  sub_1E6878250(&qword_1ED099D20);
  v14 = sub_1E68B3130();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1E6878250(&qword_1ED099D28);
      v22 = sub_1E68B3190();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E68B3B10();
  __break(1u);
  return result;
}

void *sub_1E68769B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D38);
  v2 = *v0;
  v3 = sub_1E68B37D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_1E6876AC4()
{
  v1 = v0;
  v2 = sub_1E68B19A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D30);
  v6 = *v0;
  v7 = sub_1E68B37D0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1E6876CFC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D38);
  result = sub_1E68B37E0();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
LABEL_13:
      sub_1E68B3B70();
      MEMORY[0x1E69523D0](0);
      result = sub_1E68B3BB0();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v9 + 8 * (v13 >> 6))) == 0)
      {
        v15 = 0;
        v16 = (63 - v12) >> 6;
        while (++v14 != v16 || (v15 & 1) == 0)
        {
          v17 = v14 == v16;
          if (v14 == v16)
          {
            v14 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v14);
          if (v18 != -1)
          {
            v10 = __clz(__rbit64(~v18)) + (v14 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v10 = __clz(__rbit64((-1 << v13) & ~*(v9 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v7 &= v7 - 1;
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++*(v3 + 16);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_22;
      }

      v7 = *(v1 + 56 + 8 * v11);
      ++v4;
      if (v7)
      {
        v4 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_1E6876ED8()
{
  v1 = v0;
  v32 = sub_1E68B19A0();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D30);
  v6 = sub_1E68B37E0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1E6878250(&qword_1ED099D20);
      result = sub_1E68B3130();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

void *sub_1E6877214(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  v8 = sub_1E68B3350();
  v5[21] = MEMORY[0x1E69E7CD0];
  v5[14] = v8;
  v5[15] = a1;
  v28 = a2;
  v9 = a2[4];
  v25 = v9;
  v26 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v27 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v27(v31, a3, a4, AssociatedTypeWitness, v22, v21, v10, v11, v19, AssociatedConformanceWitness, v20, v18, v12, v13, v14, v15, v16, v26, v25);
  sub_1E6739D3C(v31, (v5 + 16));
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v5;
}

unint64_t sub_1E6877538()
{
  result = qword_1EE2EA4B0;
  if (!qword_1EE2EA4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983A8);
    sub_1E67D6FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4B0);
  }

  return result;
}

uint64_t sub_1E68775F8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E6782994;

  return sub_1E6871FE0(a1, a2, v7, v6);
}

uint64_t sub_1E68776EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E6782994;

  return sub_1E6873DD8(a1, a2, v7, v6);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.fetchItems(at:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E6782994;

  return v6(a1);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.onItemAppeared(at:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E67825C0;

  return v6(a1);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.invalidateAllPlaceholders()()
{
  v4 = (*(*v0 + 208) + **(*v0 + 208));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E6782994;

  return v4();
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.invalidatePlaceholders(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E6782994;

  return v6(a1);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.transformDescriptors<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 224) + **(*v4 + 224));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1E6782994;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LazyCanvasItemPlaceholderFetcher.updateLazySectionDescriptors(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E67825C0;

  return v6(a1);
}

uint64_t sub_1E6877F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E687563C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E687802C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E6874478(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_9(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t sub_1E6878174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E6782994;

  return sub_1E687254C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E6878250(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E68B19A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E68782B8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *a1;
  v21 = *(a1 + 1);
  v22 = *(a1 + 2);
  v23 = *(a1 + 3);
  v24 = a1[32];
  v25 = *(a1 + 5);
  v26 = *(a1 + 6);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for StandardVerticalStackView();
  v28 = a9 + v27[9];
  *v28 = v20;
  *(v28 + 1) = v21;
  *(v28 + 2) = v22;
  *(v28 + 3) = v23;
  v28[32] = v24;
  *(v28 + 5) = v25;
  *(v28 + 6) = v26;
  (*(*(a17 - 8) + 32))(a9 + v27[10], a2, a17);
  v29 = (a9 + v27[11]);
  *v29 = a3;
  v29[1] = a4;
  v29[2] = a5;
  v29[3] = a6;
  v30 = (a9 + v27[12]);
  *v30 = a7;
  v30[1] = a8;
  v30[2] = a10;
  v30[3] = a11;
  v31 = a9 + v27[13];
  *v31 = a12;
  *(v31 + 2) = a13;
  *(v31 + 3) = a14;
  v32 = (a9 + v27[14]);
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v32 = sub_1E673F5E0;
  v32[1] = result;
  return result;
}

double static StandardVerticalStackViewLayout.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EAB80 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EE2EABA0;
  v2 = byte_1EE2EABA8;
  result = *&qword_1EE2EABB0;
  v4 = qword_1EE2EABB8;
  *a1 = byte_1EE2EAB88;
  *(a1 + 8) = *&algn_1EE2EAB89[7];
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  return result;
}

_BYTE *StandardVerticalStackViewLayout.init(alignment:artworkAspectRatio:artworkClipShape:artworkToCaptionSpacing:titleLineLimit:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  *a5 = *result;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3 & 1;
  *(a5 + 40) = a8;
  *(a5 + 48) = a4;
  return result;
}

unint64_t sub_1E6878588()
{
  v1 = *v0;
  v2 = 0x6E656D6E67696C61;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 0x6E694C656C746974;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1E6878638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E687B978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6878660(uint64_t a1)
{
  v2 = sub_1E687ABA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E687869C(uint64_t a1)
{
  v2 = sub_1E687ABA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E68786D8()
{
  v0 = 8.0;
  if (sub_1E68B2DF0())
  {
    sub_1E68B1A40();
    v0 = v1;
  }

  byte_1EE2EAB88 = 0;
  result = 16.0;
  *&algn_1EE2EAB89[7] = xmmword_1E68BE010;
  qword_1EE2EABA0 = *&v0;
  byte_1EE2EABA8 = 0;
  qword_1EE2EABB0 = 0x4024000000000000;
  qword_1EE2EABB8 = 2;
  return result;
}

uint64_t StandardVerticalStackViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v16 = *(v1 + 3);
  v15 = v1[32];
  v14 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E687ABA8();
  sub_1E68B3BD0();
  LOBYTE(v17) = v8;
  v19 = 0;
  sub_1E687ABFC();
  sub_1E68B3AB0();
  if (!v2)
  {
    v11 = v15;
    v12 = v16;
    v17 = v9;
    v18 = v10;
    v19 = 1;
    type metadata accessor for CGSize(0);
    sub_1E687B81C(&qword_1EE2EA448, type metadata accessor for CGSize);
    sub_1E68B3AB0();
    v17 = v12;
    LOBYTE(v18) = v11;
    v19 = 2;
    sub_1E680421C();
    sub_1E68B3AB0();
    LOBYTE(v17) = 3;
    sub_1E68B3A90();
    LOBYTE(v17) = 4;
    sub_1E68B3AA0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StandardVerticalStackViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E687ABA8();
  sub_1E68B3BC0();
  if (!v2)
  {
    v19 = 0;
    sub_1E687AC50();
    sub_1E68B3A00();
    v20 = v17;
    type metadata accessor for CGSize(0);
    v19 = 1;
    sub_1E687B81C(&qword_1ED096DC0, type metadata accessor for CGSize);
    sub_1E68B3A00();
    v9 = v17;
    v10 = v18;
    v19 = 2;
    sub_1E68042C4();
    sub_1E68B3A00();
    v11 = v17;
    v12 = v18;
    LOBYTE(v17) = 3;
    sub_1E68B39E0();
    v15 = v14;
    LOBYTE(v17) = 4;
    v16 = sub_1E68B39F0();
    (*(v6 + 8))(v8, v5);
    *a2 = v20;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StandardVerticalStackViewLayout.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 32);
  v5 = v0[5];
  v6 = *(v0 + 6);
  MEMORY[0x1E69523D0](*v0);
  sub_1E673E7F4(v1, v2);
  if (v4)
  {
    MEMORY[0x1E69523D0](1);
  }

  else
  {
    MEMORY[0x1E69523D0](0);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1E69523F0](v7);
  }

  v8 = 0.0;
  if (v5 != 0.0)
  {
    v8 = v5;
  }

  MEMORY[0x1E69523F0](*&v8);
  return MEMORY[0x1E69523D0](v6);
}

uint64_t StandardVerticalStackViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  StandardVerticalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6878DE4()
{
  sub_1E68B3B70();
  StandardVerticalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6878E5C()
{
  sub_1E68B3B70();
  StandardVerticalStackViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6878ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = sub_1E68B1EB0();
  v42 = v4;
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 - 8);
  v50 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a1 + 16);
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v61 = sub_1E68B2C50();
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978B0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D70);
  v65 = v64;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  v10 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v60 = MEMORY[0x1E697E040];
  v11 = swift_getWitnessTable();
  v12 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  v57 = v11;
  v58 = v12;
  v47 = v10;
  v46 = swift_getWitnessTable();
  v13 = sub_1E68B2C30();
  v48 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v38 - v14;
  v15 = swift_getWitnessTable();
  v41 = v15;
  v40 = sub_1E687B81C(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v61 = v13;
  v62 = v4;
  v63 = v15;
  v64 = v40;
  v44 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v39 = &v38 - v21;
  v22 = v9;
  (*(v6 + 16))(v9, v2, a1, v20);
  v23 = v6;
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v26 = a1;
  v27 = *(a1 + 24);
  v28 = v49;
  *(v25 + 16) = v49;
  *(v25 + 24) = v27;
  (*(v23 + 32))(v25 + v24, v22, v26);
  v54 = v28;
  v55 = v27;
  v56 = v2;
  v29 = v43;
  sub_1E68B2C20();
  v30 = v51;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v31 = v42;
  v32 = v41;
  v33 = v40;
  sub_1E68B2790();
  (*(v52 + 8))(v30, v31);
  (*(v48 + 8))(v29, v13);
  v61 = v13;
  v62 = v31;
  v63 = v32;
  v64 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v39;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v36 = *(v45 + 8);
  v36(v18, OpaqueTypeMetadata2);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v35, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v36)(v35, OpaqueTypeMetadata2);
}

uint64_t sub_1E68795C4(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for StandardVerticalStackView() + 56);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

uint64_t sub_1E6879644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v34 = a4;
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v39 = sub_1E68B2C50();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978B0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D70);
  v43 = v42;
  swift_getTupleTypeMetadata();
  v6 = sub_1E68B2F00();
  v28[1] = swift_getWitnessTable();
  v28[2] = v6;
  v7 = sub_1E68B2CC0();
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  v10 = sub_1E68B1E40();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08);
  v13 = sub_1E68B1E40();
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v30 = v28 - v17;
  v18 = type metadata accessor for StandardVerticalStackView();
  v19 = v33;
  if (*(v33 + *(v18 + 36)))
  {
    v20 = sub_1E68B21C0();
  }

  else
  {
    v20 = sub_1E68B21D0();
  }

  MEMORY[0x1EEE9AC00](v20);
  v28[-4] = a2;
  v28[-3] = a3;
  v28[-2] = v19;
  sub_1E68B2CB0();
  sub_1E68B2E60();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B29F0();
  (*(v29 + 8))(v9, v7);
  v37 = WitnessTable;
  v38 = MEMORY[0x1E697E040];
  v22 = swift_getWitnessTable();
  sub_1E673F180();
  sub_1E68B2800();
  (*(v31 + 8))(v12, v10);
  v23 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08);
  v35 = v22;
  v36 = v23;
  v24 = swift_getWitnessTable();
  v25 = v30;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v15, v13, v24);
  v26 = *(v32 + 8);
  v26(v15, v13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v25, v13, v24);
  return (v26)(v25, v13);
}

uint64_t sub_1E6879B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a1;
  v82 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978A8);
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v63 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978B0);
  MEMORY[0x1EEE9AC00](v80);
  v88 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v63 - v11;
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E68B2C50();
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  sub_1E68B2120();
  v18 = a3;
  v19 = type metadata accessor for StandardVerticalStackView();
  v20 = v84;
  v72 = v84 + *(v19 + 36);
  v89 = a2;
  v90 = v18;
  v91 = v84;
  sub_1E68B2C40();
  v21 = swift_getWitnessTable();
  WitnessTable = v17;
  v75 = v21;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v12, v21);
  v22 = *(v85 + 8);
  v87 = v14;
  v81 = v12;
  v78 = v22;
  v79 = v85 + 8;
  v22(v14, v12);
  sub_1E68B2E80();
  v23 = 1;
  sub_1E68B1C50();
  v68 = v130;
  v70 = v132;
  v69 = v133;
  v139 = 1;
  v137 = v129;
  v135 = v131;
  v73 = v19;
  v24 = (v20 + *(v19 + 52));
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  v71 = v26;
  v66 = v128;
  v67 = v28;
  v65 = v27;
  v83 = v25;
  if (v28)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D0);
    v30 = v64;
    v31 = &v64[*(v29 + 36)];
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8) + 28);
    v33 = *MEMORY[0x1E6980FD8];
    v34 = sub_1E68B2690();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v31 + v32, v33, v34);
    (*(v35 + 56))(v31 + v32, 0, 1, v34);
    *v31 = swift_getKeyPath();
    *v30 = v83;
    *(v30 + 8) = v26;
    *(v30 + 16) = v27 & 1;
    *(v30 + 24) = v28;
    *(v30 + 32) = 256;
    KeyPath = swift_getKeyPath();
    v37 = v76;
    v38 = v30 + *(v76 + 36);
    *v38 = KeyPath;
    *(v38 + 8) = 2;
    *(v38 + 16) = 0;
    v39 = v74;
    sub_1E687B7AC(v30, v74);
    v23 = 0;
    v40 = v37;
  }

  else
  {
    v39 = v74;
    v40 = v76;
  }

  (*(v77 + 56))(v39, v23, 1, v40);
  v41 = v73;
  v42 = v84;
  v43 = (v84 + *(v73 + 44));
  v44 = *v43;
  v76 = v43[1];
  v45 = v76;
  v77 = v44;
  v47 = v43[2];
  v46 = v43[3];
  v48 = v39;
  v49 = *(v72 + 48);
  v50 = swift_getKeyPath();
  LOBYTE(v106) = 0;
  *&v118 = v44;
  *(&v118 + 1) = v45;
  *&v119 = v47;
  *(&v119 + 1) = v46;
  LOWORD(v120[0]) = 256;
  *(&v120[0] + 1) = v50;
  *&v120[1] = v49;
  BYTE8(v120[1]) = 0;
  v51 = (v42 + *(v41 + 48));
  v52 = *v51;
  v53 = v51[1];
  v54 = v51[2];
  v55 = v51[3];
  v56 = swift_getKeyPath();
  LOBYTE(v106) = 0;
  *&v121 = v52;
  *(&v121 + 1) = v53;
  *&v122 = v54;
  *(&v122 + 1) = v55;
  LOWORD(v123[0]) = 256;
  *(&v123[0] + 1) = v56;
  *&v123[1] = 2;
  BYTE8(v123[1]) = 0;
  v57 = v87;
  v58 = v81;
  (*(v85 + 16))();
  v106 = 0;
  v107 = v139;
  *v108 = *v138;
  *&v108[3] = *&v138[3];
  v109 = v66;
  v110 = v137;
  *v111 = *v136;
  *&v111[3] = *&v136[3];
  v112 = v68;
  v113 = v135;
  *v114 = *v134;
  *&v114[3] = *&v134[3];
  v115 = v70;
  v116 = v69;
  v117[0] = v57;
  v117[1] = &v106;
  v59 = v88;
  sub_1E67612FC(v48, v88, &qword_1ED0978B0);
  v103 = v118;
  v104 = v119;
  v105[0] = v120[0];
  *(v105 + 9) = *(v120 + 9);
  v117[2] = v59;
  v117[3] = &v103;
  v100 = v121;
  v101 = v122;
  v102[0] = v123[0];
  *(v102 + 9) = *(v123 + 9);
  v117[4] = &v100;
  sub_1E673F228(v83, v71, v65, v67);
  sub_1E673F228(v77, v76, v47, v46);
  sub_1E673F228(v52, v53, v54, v55);
  sub_1E67612FC(&v118, v126, &qword_1ED099D70);
  sub_1E67612FC(&v121, v126, &qword_1ED099D70);
  v60 = v58;
  v97[0] = v58;
  v97[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096DF8);
  v97[2] = v80;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D70);
  v99 = v98;
  v92 = v75;
  v93 = sub_1E687B908(&qword_1EE2EA7A0, &qword_1ED096DF8);
  v94 = sub_1E687B508();
  v95 = sub_1E687B670(&qword_1EE2EA760, &qword_1ED099D70, &unk_1E68C5768, sub_1E687B720);
  v96 = v95;
  sub_1E6848F14(v117, 5uLL, v97);
  sub_1E6744A10(&v121, &qword_1ED099D70);
  sub_1E6744A10(&v118, &qword_1ED099D70);
  sub_1E6744A10(v48, &qword_1ED0978B0);
  v61 = v78;
  v78(WitnessTable, v60);
  v124[0] = v100;
  v124[1] = v101;
  v125[0] = v102[0];
  *(v125 + 9) = *(v102 + 9);
  sub_1E6744A10(v124, &qword_1ED099D70);
  v126[0] = v103;
  v126[1] = v104;
  v127[0] = v105[0];
  *(v127 + 9) = *(v105 + 9);
  sub_1E6744A10(v126, &qword_1ED099D70);
  sub_1E6744A10(v88, &qword_1ED0978B0);
  return v61(v87, v60);
}

uint64_t sub_1E687A460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = sub_1E68B1DE0();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v40 - v8;
  v9 = sub_1E68B1E40();
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = sub_1E68B1E40();
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v41 = sub_1E68B1E40();
  v51 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v40 - v18;
  v19 = *(type metadata accessor for StandardVerticalStackView() + 36);
  v42 = a1;
  v20 = a1 + v19;
  sub_1E68B2780();
  v21 = *(v20 + 24);
  v22 = *(v20 + 32);
  v63 = a2;
  v64 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  View.artworkClipShape(_:)(v21, v22, v9);
  v24 = v9;
  v25 = v16;
  (*(v43 + 8))(v11, v24);
  v26 = v41;
  sub_1E68B2E80();
  v27 = sub_1E67979F0();
  v61 = WitnessTable;
  v62 = v27;
  v39 = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v45 + 8))(v14, v12);
  v59 = v39;
  v60 = MEMORY[0x1E697EBF8];
  v43 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v25, v26, v43);
  v45 = *(v51 + 8);
  (v45)(v25, v26);
  v28 = v44;
  sub_1E677A200(v44);
  v30 = v46;
  v29 = v47;
  v31 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x1E697E6C0], v48);
  sub_1E687B81C(&qword_1EE2EA848, MEMORY[0x1E697E730]);
  v32 = v31;
  LOBYTE(v31) = sub_1E68B3160();
  v33 = *(v29 + 8);
  v33(v30, v32);
  v33(v28, v32);
  if (v31)
  {
    v34.n128_f64[0] = sub_1E677C8D0(&v72);
  }

  else
  {
    sub_1E68B2E80();
    sub_1E68B1F30();
    *&v58[71] = v69;
    *&v58[55] = v68;
    *&v58[103] = v71;
    *&v58[87] = v70;
    *&v58[23] = v66;
    *&v58[7] = v65;
    LOBYTE(v55[0]) = 1;
    *&v58[39] = v67;
    *&v56[0] = 0;
    BYTE8(v56[0]) = 1;
    *(&v56[4] + 9) = *&v58[64];
    *(&v56[5] + 9) = *&v58[80];
    *(&v56[6] + 9) = *&v58[96];
    *(&v56[7] + 1) = *(&v71 + 1);
    *(v56 + 9) = *v58;
    *(&v56[1] + 9) = *&v58[16];
    *(&v56[2] + 9) = *&v58[32];
    *(&v56[3] + 9) = *&v58[48];
    sub_1E677C8C8(v56);
    v78 = v56[6];
    v79 = v56[7];
    v80 = v57;
    v74 = v56[2];
    v75 = v56[3];
    v76 = v56[4];
    v77 = v56[5];
    v34 = v56[1];
    v72 = v56[0];
    v73 = v56[1];
  }

  v35 = v50;
  (*(v51 + 16))(v25, v50, v26, v34);
  v56[6] = v78;
  v56[7] = v79;
  v57 = v80;
  v56[2] = v74;
  v56[3] = v75;
  v56[4] = v76;
  v56[5] = v77;
  v56[0] = v72;
  v56[1] = v73;
  v55[0] = v25;
  v55[1] = v56;
  v54[0] = v26;
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D68);
  v52 = v43;
  v53 = sub_1E687B864();
  sub_1E6848F14(v55, 2uLL, v54);
  v36 = v35;
  v37 = v45;
  (v45)(v36, v26);
  return v37(v25, v26);
}

BOOL _s15FitnessCanvasUI31StandardVerticalStackViewLayoutV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v5 = a1[5];
    v6 = *(a1 + 6);
    v7 = a2[5];
    if (a1[4])
    {
      if (v5 == v7)
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = 0;
      }

      if (v8 != 1)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (a2[4])
      {
        return result;
      }

      if (a1[3] != a2[3] || v5 != v7)
      {
        return result;
      }
    }

    return v6 == *(a2 + 6);
  }

  return result;
}

unint64_t sub_1E687ABA8()
{
  result = qword_1EE2EABD0;
  if (!qword_1EE2EABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EABD0);
  }

  return result;
}

unint64_t sub_1E687ABFC()
{
  result = qword_1EE2EAB30;
  if (!qword_1EE2EAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB30);
  }

  return result;
}

unint64_t sub_1E687AC50()
{
  result = qword_1ED099D50;
  if (!qword_1ED099D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D50);
  }

  return result;
}

unint64_t sub_1E687ACA8()
{
  result = qword_1ED099D58;
  if (!qword_1ED099D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D58);
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

uint64_t sub_1E687AD18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E687AD5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1E687ADCC()
{
  sub_1E674828C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1E673ED38();
      if (v2 <= 0x3F)
      {
        sub_1E673ED88();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E687AE94(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((v12 + (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 64) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
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
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v11 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v22 = (((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 56) & ~v9;
  if (v8 < 0x7FFFFFFF)
  {
    v24 = *((((((((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  else
  {
    v23 = *(*(*(a3 + 16) - 8) + 48);

    return v23(v22);
  }
}

void sub_1E687B0A4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1DE0() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 64) + 7;
  v15 = ((((((((v14 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 64) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 64) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12;
      if (v11 < 0x7FFFFFFF)
      {
        v24 = ((((((((v14 + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v24 = a2 & 0x7FFFFFFF;
          v24[1] = 0;
        }

        else
        {
          *v24 = (a2 - 1);
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 64) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 64) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_1E687B318()
{
  result = qword_1ED099D60;
  if (!qword_1ED099D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D60);
  }

  return result;
}

unint64_t sub_1E687B370()
{
  result = qword_1EE2EABC0;
  if (!qword_1EE2EABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EABC0);
  }

  return result;
}

unint64_t sub_1E687B3C8()
{
  result = qword_1EE2EABC8;
  if (!qword_1EE2EABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EABC8);
  }

  return result;
}

uint64_t sub_1E687B460()
{
  v1 = *(type metadata accessor for StandardVerticalStackView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E68795C4(v2);
}

unint64_t sub_1E687B508()
{
  result = qword_1EE2EA6F0;
  if (!qword_1EE2EA6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978B0);
    sub_1E687B670(&qword_1EE2EA6F8, &qword_1ED0978A8, &unk_1E68C5770, sub_1E687B5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6F0);
  }

  return result;
}

unint64_t sub_1E687B5B8()
{
  result = qword_1EE2EA770;
  if (!qword_1EE2EA770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978D0);
    sub_1E673F4AC();
    sub_1E673F530(&qword_1EE2EA5A0, &qword_1ED0978D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA770);
  }

  return result;
}

uint64_t sub_1E687B670(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E687B720()
{
  result = qword_1EE2EA7F8;
  if (!qword_1EE2EA7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D78);
    sub_1E67688F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7F8);
  }

  return result;
}

uint64_t sub_1E687B7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E687B81C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E687B864()
{
  result = qword_1EE2EA790;
  if (!qword_1EE2EA790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68);
    sub_1E687B908(&qword_1EE2EA798, &qword_1ED098168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA790);
  }

  return result;
}

uint64_t sub_1E687B908(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E687B978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2CC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E68E3080 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E687BB94@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = *a2;
  v26 = type metadata accessor for FullWidthStageView();
  v27 = a9 + v26[34];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  v28 = a9 + v26[35];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  v29 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v29;
  v30 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v30;
  v31 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v31;
  v32 = a1[9];
  *(a9 + 128) = a1[8];
  *(a9 + 144) = v32;
  v33 = a1[7];
  *(a9 + 96) = a1[6];
  *(a9 + 112) = v33;
  v34 = a1[13];
  *(a9 + 192) = a1[12];
  *(a9 + 208) = v34;
  v35 = a1[11];
  *(a9 + 160) = a1[10];
  *(a9 + 176) = v35;
  *(a9 + 224) = v25;
  *(a9 + 232) = a3;
  *(a9 + 240) = a4;
  *(a9 + 248) = a5;
  *(a9 + 256) = a6;
  *(a9 + 264) = a7;
  *(a9 + 272) = a8;
  *(a9 + 280) = a10;
  *(a9 + 296) = a11;
  *(a9 + 312) = a12;
  *(a9 + 320) = a13;
  (*(*(a19 - 8) + 32))(a9 + v26[29], a14, a19);
  v36 = v26[30];
  v37 = sub_1E68B3750();
  (*(*(v37 - 8) + 32))(a9 + v36, a15, v37);
  v38 = v26[31];
  v39 = sub_1E68B3750();
  (*(*(v39 - 8) + 32))(a9 + v38, a16, v39);
  v40 = v26[32];
  v41 = sub_1E68B3750();
  (*(*(v41 - 8) + 32))(a9 + v40, a17, v41);
  return (*(*(a23 - 8) + 32))(a9 + v26[33], a18, a23);
}

double static FullWidthStageViewLayout.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EE2EAF60 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1EE2EB018;
  a1[10] = xmmword_1EE2EB008;
  a1[11] = v1;
  v2 = unk_1EE2EB038;
  a1[12] = xmmword_1EE2EB028;
  a1[13] = v2;
  v3 = *&qword_1EE2EAFD8;
  a1[6] = xmmword_1EE2EAFC8;
  a1[7] = v3;
  v4 = unk_1EE2EAFF8;
  a1[8] = xmmword_1EE2EAFE8;
  a1[9] = v4;
  v5 = *&qword_1EE2EAF98;
  a1[2] = xmmword_1EE2EAF88;
  a1[3] = v5;
  v6 = unk_1EE2EAFB8;
  a1[4] = xmmword_1EE2EAFA8;
  a1[5] = v6;
  result = *&xmmword_1EE2EAF68;
  v8 = xmmword_1EE2EAF78;
  *a1 = xmmword_1EE2EAF68;
  a1[1] = v8;
  return result;
}

__n128 FullWidthStageViewLayout.titlePadding.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 FullWidthStageViewLayout.subtitlePadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 FullWidthStageViewLayout.captionPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 FullWidthStageViewLayout.primaryButtonPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 160);
  v3 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 FullWidthStageViewLayout.secondaryButtonPadding.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 192);
  v3 = *(v1 + 208);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 FullWidthStageViewLayout.init(titlePadding:subtitlePadding:captionPadding:titleLineLimit:subtitleLineLimit:captionLineLimit:bottomPadding:leadingPadding:topPadding:actionButtonMaxWidth:actionButtonMinWidth:primaryButtonPadding:secondaryButtonPadding:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v14 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v14;
  v15 = a2[1];
  *(a9 + 32) = *a2;
  *(a9 + 48) = v15;
  v16 = a3[1];
  *(a9 + 64) = *a3;
  *(a9 + 80) = v16;
  *(a9 + 96) = a4;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = a10;
  *(a9 + 128) = a11;
  *(a9 + 136) = a12;
  *(a9 + 144) = a13;
  *(a9 + 152) = a14;
  v17 = a7[1];
  *(a9 + 160) = *a7;
  *(a9 + 176) = v17;
  result = *a8;
  v19 = *(a8 + 16);
  *(a9 + 192) = *a8;
  *(a9 + 208) = v19;
  return result;
}

unint64_t sub_1E687BFB4(char a1)
{
  result = 0x646150656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x506E6F6974706163;
      break;
    case 3:
      result = 0x6E694C656C746974;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x61506D6F74746F62;
      break;
    case 7:
      result = 0x50676E696461656CLL;
      break;
    case 8:
      result = 0x6964646150706F74;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E687C164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68855D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E687C18C(uint64_t a1)
{
  v2 = sub_1E68840F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E687C1C8(uint64_t a1)
{
  v2 = sub_1E68840F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E687C204()
{
  result = 0.0;
  xmmword_1EE2EAF78 = 0u;
  xmmword_1EE2EAF88 = 0u;
  xmmword_1EE2EAF68 = 0u;
  qword_1EE2EAF98 = 0x4014000000000000;
  unk_1EE2EAFA0 = 0u;
  *(&xmmword_1EE2EAFA8 + 8) = 0u;
  qword_1EE2EAFC0 = 0;
  xmmword_1EE2EAFC8 = vdupq_n_s64(3uLL);
  qword_1EE2EAFD8 = 1;
  unk_1EE2EAFE0 = xmmword_1E68C5840;
  *(&xmmword_1EE2EAFE8 + 8) = 0u;
  unk_1EE2EB000 = 0u;
  *(&xmmword_1EE2EB008 + 8) = 0u;
  unk_1EE2EB020 = 0u;
  *(&xmmword_1EE2EB028 + 8) = 0u;
  qword_1EE2EB040 = 0;
  return result;
}

uint64_t FullWidthStageViewLayout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = v3[2];
  v29 = v3[3];
  v30 = v9;
  v10 = v3[4];
  v25 = v3[5];
  v26 = v10;
  v11 = *(v3 + 12);
  v27 = *(v3 + 13);
  v28 = v11;
  v13 = *(v3 + 15);
  v12 = *(v3 + 16);
  v15 = *(v3 + 17);
  v14 = *(v3 + 18);
  v16 = *(v3 + 19);
  v17 = v3[10];
  v23 = v3[11];
  v24 = v17;
  v18 = v3[12];
  v21 = v3[13];
  v22 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68840F4();
  sub_1E68B3BD0();
  v19 = *v3;
  v33 = v3[1];
  v32 = v19;
  v31 = 0;
  sub_1E67F4B08();
  sub_1E68B3AB0();
  if (!v2)
  {
    v33 = v29;
    v32 = v30;
    v31 = 1;
    sub_1E68B3AB0();
    v33 = v25;
    v32 = v26;
    v31 = 2;
    sub_1E68B3AB0();
    LOBYTE(v32) = 3;
    sub_1E68B3AA0();
    LOBYTE(v32) = 4;
    sub_1E68B3AA0();
    LOBYTE(v32) = 5;
    sub_1E68B3AA0();
    *&v32 = v13;
    v31 = 6;
    sub_1E67621E8();
    sub_1E68B3AB0();
    *&v32 = v12;
    v31 = 7;
    sub_1E68B3AB0();
    *&v32 = v15;
    v31 = 8;
    sub_1E68B3AB0();
    *&v32 = v14;
    v31 = 9;
    sub_1E68B3AB0();
    *&v32 = v16;
    v31 = 10;
    sub_1E68B3AB0();
    v33 = v23;
    v32 = v24;
    v31 = 11;
    sub_1E68B3AB0();
    v33 = v21;
    v32 = v22;
    v31 = 12;
    sub_1E68B3AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FullWidthStageViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099D90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68840F4();
  sub_1E68B3BC0();
  if (!v2)
  {
    v32 = 0;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v30 = v33;
    v31 = v34;
    v32 = 1;
    sub_1E68B3A00();
    v28 = v33;
    v29 = v34;
    v32 = 2;
    sub_1E68B3A00();
    v27 = v34;
    v26 = v33;
    LOBYTE(v33) = 3;
    v9 = sub_1E68B39F0();
    LOBYTE(v33) = 4;
    v25 = sub_1E68B39F0();
    LOBYTE(v33) = 5;
    v23 = sub_1E68B39F0();
    v32 = 6;
    *&v24 = sub_1E6762A60();
    sub_1E68B3A00();
    v10 = v33;
    v32 = 7;
    sub_1E68B3A00();
    v11 = v33;
    v32 = 8;
    sub_1E68B3A00();
    v12 = v33;
    v32 = 9;
    sub_1E68B3A00();
    v13 = v33;
    v32 = 10;
    sub_1E68B3A00();
    v14 = v33;
    v32 = 11;
    sub_1E68B3A00();
    v24 = v34;
    v22 = v33;
    v32 = 12;
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    v16 = v31;
    *a2 = v30;
    *(a2 + 16) = v16;
    v17 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v17;
    v18 = v27;
    *(a2 + 64) = v26;
    *(a2 + 80) = v18;
    v19 = v25;
    *(a2 + 96) = v9;
    *(a2 + 104) = v19;
    *(a2 + 112) = v23;
    *(a2 + 120) = v10;
    *(a2 + 128) = v11;
    *(a2 + 136) = v12;
    *(a2 + 144) = v13;
    *(a2 + 152) = v14;
    v20 = v24;
    *(a2 + 160) = v22;
    *(a2 + 176) = v20;
    v21 = v34;
    *(a2 + 192) = v33;
    *(a2 + 208) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FullWidthStageViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v37 = *(v0 + 64);
  v38 = *(v0 + 72);
  v39 = *(v0 + 80);
  v40 = *(v0 + 88);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v41 = *(v0 + 120);
  v42 = *(v0 + 128);
  v43 = *(v0 + 136);
  v44 = *(v0 + 144);
  v45 = *(v0 + 152);
  v46 = *(v0 + 160);
  v47 = *(v0 + 168);
  v48 = *(v0 + 176);
  v49 = *(v0 + 184);
  v50 = *(v0 + 192);
  v51 = *(v0 + 200);
  v52 = *(v0 + 208);
  v53 = *(v0 + 216);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  v11 = *(v0 + 112);
  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v2;
  }

  MEMORY[0x1E69523F0](*&v12);
  if (v3 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v3;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v4 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v4;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v5 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v5;
  }

  MEMORY[0x1E69523F0](*&v15);
  if (v6 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v6;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v8 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v8;
  }

  MEMORY[0x1E69523F0](*&v17);
  if (v7 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v7;
  }

  MEMORY[0x1E69523F0](*&v18);
  v19 = v37;
  if (v37 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v19);
  v20 = v38;
  if (v38 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v20);
  v21 = v39;
  if (v39 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v21);
  v22 = v40;
  if (v40 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v22);
  MEMORY[0x1E69523D0](v10);
  MEMORY[0x1E69523D0](v9);
  MEMORY[0x1E69523D0](v11);
  v23 = v41;
  if (v41 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v23);
  v24 = v42;
  if (v42 == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v24);
  v25 = v43;
  if (v43 == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v25);
  v26 = v44;
  if (v44 == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v26);
  v27 = v45;
  if (v45 == 0.0)
  {
    v27 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v27);
  v28 = v46;
  if (v46 == 0.0)
  {
    v28 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v28);
  v29 = v47;
  if (v47 == 0.0)
  {
    v29 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v29);
  v30 = v48;
  if (v48 == 0.0)
  {
    v30 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v30);
  v31 = v49;
  if (v49 == 0.0)
  {
    v31 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v31);
  v32 = v50;
  if (v50 == 0.0)
  {
    v32 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v32);
  v33 = v51;
  if (v51 == 0.0)
  {
    v33 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v33);
  v34 = v52;
  if (v52 == 0.0)
  {
    v34 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v34);
  v35 = v53;
  if (v53 == 0.0)
  {
    v35 = 0.0;
  }

  return MEMORY[0x1E69523F0](*&v35);
}

uint64_t FullWidthStageViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  FullWidthStageViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E687CEFC()
{
  sub_1E68B3B70();
  FullWidthStageViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E687CF40()
{
  sub_1E68B3B70();
  FullWidthStageViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E687CF80()
{
  sub_1E68B21D0();
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  sub_1E68B3750();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  return sub_1E68B2CB0();
}

uint64_t sub_1E687D120@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v99 = a7;
  v95 = a6;
  *&v93 = a5;
  *&v92 = a2;
  v106 = a9;
  v91 = a10;
  v101 = sub_1E68B3750();
  v133[6] = a8;
  WitnessTable = swift_getWitnessTable();
  *&v145 = v101;
  *(&v145 + 1) = WitnessTable;
  v102 = MEMORY[0x1E697D318];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = *(OpaqueTypeMetadata2 - 8);
  v104 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v111 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v90 - v18;
  *&v97 = sub_1E68B21B0();
  *&v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v90 - v22;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC0);
  MEMORY[0x1EEE9AC00](v114);
  v110 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90 - v25;
  v27 = sub_1E68B3750();
  v116 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v109 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v90 - v30;
  *&v145 = v92;
  *(&v145 + 1) = a3;
  *&v146 = a4;
  *(&v146 + 1) = v93;
  *&v147 = v95;
  *(&v147 + 1) = v99;
  *&v148[8] = v91;
  *v148 = a8;
  *&v148[24] = a11;
  v95 = type metadata accessor for FullWidthStageView();
  v31 = *(v95 + 124);
  v98 = v27;
  v99 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(a1 + v31, v27, v99);
  v32 = *(a1 + 38);
  *&v93 = *(a1 + 37);
  v33 = *(a1 + 39);
  *&v92 = *(a1 + 40);
  v34 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF8) + 36)];
  v35 = v26;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8) + 28);
  v37 = *MEMORY[0x1E6980FD8];
  v38 = sub_1E68B2690();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v34 + v36, v37, v38);
  (*(v39 + 56))(v34 + v36, 0, 1, v38);
  *v34 = swift_getKeyPath();
  v40 = v35;
  v41 = v93;
  *v40 = v93;
  v40[1] = v32;
  v42 = v92;
  v40[2] = v33;
  v40[3] = v42;
  v43 = v40;
  v44 = *(a1 + 14);
  KeyPath = swift_getKeyPath();
  v46 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E00) + 36);
  v108 = v43;
  *v46 = KeyPath;
  *(v46 + 8) = v44;
  *(v46 + 16) = 0;
  v47 = a1[5];
  v90 = a1[4];
  v91 = v47;
  sub_1E673F228(v41, v32, v33, v42);
  v48 = sub_1E68B2500();
  v49 = v43 + *(v114 + 36);
  *v49 = v48;
  *(&v50 + 1) = *(&v90 + 1);
  *&v51 = v90;
  *(&v51 + 1) = *(&v91 + 1);
  *&v50 = v91;
  *(v49 + 24) = v51;
  *(v49 + 8) = v50;
  *(v49 + 40) = 0;
  v52 = *(a1 + 29);
  v53 = *(a1 + 30);
  v54 = *(a1 + 31);
  v55 = *(a1 + 32);
  v56 = *(a1 + 12);
  v57 = swift_getKeyPath();
  v58 = a1[1];
  v92 = *a1;
  v93 = v58;
  sub_1E673F228(v52, v53, v54, v55);
  v59 = sub_1E68B2500();
  LOBYTE(v138) = 0;
  LOBYTE(v124) = 0;
  *&v145 = v52;
  *(&v145 + 1) = v53;
  *&v146 = v54;
  *(&v146 + 1) = v55;
  *&v147 = v57;
  *(&v147 + 1) = v56;
  v148[0] = 0;
  *&v148[1] = *v135;
  *&v148[4] = *&v135[3];
  v148[8] = v59;
  *&v148[9] = *v134;
  *(&v60 + 1) = *(&v92 + 1);
  *&v61 = v92;
  *&v60 = v93;
  *&v148[12] = *&v134[3];
  *(&v61 + 1) = *(&v93 + 1);
  *&v148[16] = v60;
  v149 = v61;
  v150 = 0;
  v62 = v94;
  sub_1E68B21A0();
  *&v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD0);
  *&v93 = sub_1E6885168(&qword_1EE2EA740, &qword_1ED099DD0, &unk_1E68C5B48, sub_1E67C6144);
  v63 = v107;
  sub_1E68B2950();
  (*(v96 + 8))(v62, v97);
  v136[4] = *&v148[16];
  v136[5] = v149;
  v137 = v150;
  v136[0] = v145;
  v136[1] = v146;
  v136[2] = v147;
  v136[3] = *v148;
  sub_1E6744A10(v136, &qword_1ED099DD0);
  v64 = swift_getKeyPath();
  v65 = (v63 + *(v115 + 36));
  *v65 = v64;
  v65[1] = 0x3FE6666666666666;
  v66 = *(a1 + 33);
  v67 = *(a1 + 34);
  v68 = *(a1 + 35);
  v69 = *(a1 + 36);
  v70 = *(a1 + 13);
  v71 = swift_getKeyPath();
  v72 = a1[3];
  v96 = a1[2];
  v97 = v72;
  sub_1E673F228(v66, v67, v68, v69);
  v73 = sub_1E68B2500();
  LOBYTE(v145) = 0;
  LOBYTE(v124) = 0;
  *&v138 = v66;
  *(&v138 + 1) = v67;
  *&v139 = v68;
  *(&v139 + 1) = v69;
  *&v140 = v71;
  *(&v140 + 1) = v70;
  LOBYTE(v141) = 0;
  BYTE8(v141) = v73;
  *(&v74 + 1) = *(&v96 + 1);
  *&v75 = v96;
  *(&v75 + 1) = *(&v97 + 1);
  *&v74 = v97;
  v143 = v75;
  v142 = v74;
  v144 = 0;
  sub_1E68B24B0();
  sub_1E68B2E90();
  v76 = swift_checkMetadataState();
  v77 = v111;
  v78 = WitnessTable;
  sub_1E68B2960();
  *&v145 = v76;
  *(&v145 + 1) = v78;
  WitnessTable = swift_getOpaqueTypeConformance2();
  v79 = v100;
  v80 = v77;
  v81 = v104;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v77, v104, WitnessTable);
  v82 = v103;
  v83 = *(v103 + 8);
  v83(v77, v81);
  v84 = v109;
  v85 = v98;
  (*(v116 + 16))(v109, v113, v98);
  v131 = 0;
  v132 = 1;
  v133[0] = v84;
  v133[1] = &v131;
  v86 = v110;
  sub_1E67612FC(v108, v110, &qword_1ED099DC0);
  v133[2] = v86;
  v87 = v112;
  sub_1E67612FC(v63, v112, &qword_1ED099DD8);
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v127 = v141;
  v133[3] = v87;
  v133[4] = &v124;
  (*(v82 + 16))(v80, v79, v81);
  v133[5] = v80;
  sub_1E67612FC(&v138, &v145, &qword_1ED099DD0);
  v123[0] = v85;
  v123[1] = MEMORY[0x1E6981840];
  v123[2] = v114;
  v123[3] = v115;
  v123[4] = v92;
  v123[5] = v81;
  v117 = v99;
  v118 = MEMORY[0x1E6981838];
  v119 = sub_1E6885168(&qword_1EE2EA6D8, &qword_1ED099DC0, &unk_1E68C5B38, sub_1E68851EC);
  v120 = sub_1E688545C();
  v121 = v93;
  v122 = WitnessTable;
  sub_1E6848F14(v133, 6uLL, v123);
  sub_1E6744A10(&v138, &qword_1ED099DD0);
  v83(v79, v81);
  sub_1E6744A10(v107, &qword_1ED099DD8);
  sub_1E6744A10(v108, &qword_1ED099DC0);
  v88 = *(v116 + 8);
  v88(v113, v85);
  v83(v111, v81);
  *&v148[16] = v128;
  v149 = v129;
  v150 = v130;
  v145 = v124;
  v146 = v125;
  v147 = v126;
  *v148 = v127;
  sub_1E6744A10(&v145, &qword_1ED099DD0);
  sub_1E6744A10(v112, &qword_1ED099DD8);
  sub_1E6744A10(v110, &qword_1ED099DC0);
  return (v88)(v109, v85);
}

uint64_t sub_1E687DBE0(uint64_t a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  v3 = *(a1 + 24);
  sub_1E68B1E40();
  v22 = sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v4 = sub_1E68B2CC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  v12 = *(a1 + 16);
  v13 = v3;
  v8 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v9;
  v18 = v1;
  sub_1E68B21C0();
  sub_1E68B2CB0();
  swift_getWitnessTable();
  sub_1E68B2990();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E687DDFC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v101 = a8;
  v102 = a2;
  *&v104 = a6;
  *(&v104 + 1) = a7;
  *&v103 = a4;
  *(&v103 + 1) = a5;
  v113 = a9;
  v100 = a11;
  v99 = a10;
  v94 = a3;
  v12 = sub_1E68B3750();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v88 - v13;
  v106 = sub_1E68B1E40();
  v112 = sub_1E68B3750();
  v108 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v110 = &v88 - v18;
  *&v91 = sub_1E68B21B0();
  *&v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC8);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v116 = &v88 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC0);
  MEMORY[0x1EEE9AC00](v23);
  v115 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v88 - v26);
  v28 = *(a1 + 38);
  v114 = *(a1 + 37);
  v105 = v28;
  v29 = *(a1 + 39);
  *&v93 = *(a1 + 40);
  v30 = (&v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF8) + 36) - v26);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8) + 28);
  v32 = *MEMORY[0x1E6980FD8];
  v33 = sub_1E68B2690();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v30 + v31, v32, v33);
  (*(v34 + 56))(v30 + v31, 0, 1, v33);
  *v30 = swift_getKeyPath();
  v35 = v114;
  v36 = v105;
  *v27 = v114;
  v27[1] = v36;
  v37 = v93;
  v27[2] = v29;
  v27[3] = v37;
  v38 = *(a1 + 14);
  KeyPath = swift_getKeyPath();
  v40 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E00) + 36);
  *v40 = KeyPath;
  *(v40 + 1) = v38;
  v40[16] = 0;
  v41 = a1[4];
  v92 = a1[5];
  v88 = v41;
  sub_1E673F228(v35, v36, v29, v37);
  v42 = sub_1E68B2500();
  v105 = v23;
  v43 = *(v23 + 36);
  v114 = v27;
  v44 = v27 + v43;
  *v44 = v42;
  *(&v45 + 1) = *(&v88 + 1);
  *&v46 = v88;
  *(&v46 + 1) = *(&v92 + 1);
  *&v45 = v92;
  *(v44 + 24) = v46;
  *(v44 + 8) = v45;
  v44[40] = 0;
  v47 = *(a1 + 29);
  v48 = *(a1 + 30);
  v49 = *(a1 + 31);
  v50 = *(a1 + 32);
  v51 = *(a1 + 12);
  v52 = swift_getKeyPath();
  v53 = a1[1];
  v92 = *a1;
  v93 = v53;
  sub_1E673F228(v47, v48, v49, v50);
  v54 = sub_1E68B2500();
  LOBYTE(v130) = 0;
  LOBYTE(v122) = 0;
  *&v139 = v47;
  *(&v139 + 1) = v48;
  *&v140 = v49;
  *(&v140 + 1) = v50;
  *&v141 = v52;
  *(&v141 + 1) = v51;
  LOBYTE(v142) = 0;
  *(&v142 + 1) = *v136;
  DWORD1(v142) = *&v136[3];
  BYTE8(v142) = v54;
  *(&v142 + 9) = *v135;
  *(&v55 + 1) = *(&v92 + 1);
  *&v56 = v92;
  *&v55 = v93;
  HIDWORD(v142) = *&v135[3];
  *(&v56 + 1) = *(&v93 + 1);
  v143 = v55;
  v144 = v56;
  v145 = 0;
  v57 = v89;
  sub_1E68B21A0();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD0);
  v59 = sub_1E6885168(&qword_1EE2EA740, &qword_1ED099DD0, &unk_1E68C5B48, sub_1E67C6144);
  *&v92 = v58;
  *&v93 = v59;
  sub_1E68B2950();
  (*(v90 + 8))(v57, v91);
  v137[4] = v143;
  v137[5] = v144;
  v138 = v145;
  v137[0] = v139;
  v137[1] = v140;
  v137[2] = v141;
  v137[3] = v142;
  sub_1E6744A10(v137, &qword_1ED099DD0);
  v60 = *(a1 + 33);
  v61 = *(a1 + 34);
  v62 = *(a1 + 35);
  v63 = *(a1 + 36);
  v64 = *(a1 + 13);
  v65 = swift_getKeyPath();
  v66 = a1[3];
  v90 = a1[2];
  v91 = v66;
  sub_1E673F228(v60, v61, v62, v63);
  v67 = sub_1E68B2500();
  LOBYTE(v122) = 0;
  *&v139 = v60;
  *(&v139 + 1) = v61;
  v69 = v94;
  v68 = v95;
  *&v140 = v62;
  *(&v140 + 1) = v63;
  *&v141 = v65;
  *(&v141 + 1) = v64;
  v70 = v96;
  v71 = v97;
  v72 = v101;
  LOBYTE(v142) = 0;
  BYTE8(v142) = v67;
  *(&v73 + 1) = *(&v90 + 1);
  *&v74 = v90;
  *(&v74 + 1) = *(&v91 + 1);
  *&v73 = v91;
  v143 = v73;
  v144 = v74;
  v145 = 0;
  *&v130 = v102;
  *(&v130 + 1) = v94;
  v131 = v103;
  v132 = v104;
  *(v133 + 8) = v99;
  *&v133[0] = v101;
  *(&v133[1] + 1) = v100;
  v75 = type metadata accessor for FullWidthStageView();
  (*(v70 + 16))(v68, a1 + *(v75 + 120), v71);
  v76 = *(v69 - 8);
  if ((*(v76 + 48))(v68, 1, v69) == 1)
  {
    v69 = v71;
    v77 = v98;
    v78 = 1;
  }

  else
  {
    v77 = v98;
    sub_1E68B2A60();
    v78 = 0;
    v70 = v76;
  }

  (*(v70 + 8))(v68, v69);
  (*(*(v106 - 8) + 56))(v77, v78, 1, v106);
  v129[5] = v72;
  v129[6] = MEMORY[0x1E697E5D8];
  v129[4] = swift_getWitnessTable();
  v79 = v112;
  WitnessTable = swift_getWitnessTable();
  v81 = v110;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v77, v79, WitnessTable);
  v82 = v108;
  v83 = *(v108 + 8);
  v83(v77, v79);
  v84 = v115;
  sub_1E67612FC(v114, v115, &qword_1ED099DC0);
  v129[0] = v84;
  v85 = v109;
  sub_1E67612FC(v116, v109, &qword_1ED099DC8);
  v126 = v143;
  v127 = v144;
  v128 = v145;
  v122 = v139;
  v123 = v140;
  v124 = v141;
  v125 = v142;
  v129[1] = v85;
  v129[2] = &v122;
  v86 = v111;
  (*(v82 + 16))(v111, v81, v79);
  v129[3] = v86;
  sub_1E67612FC(&v139, &v130, &qword_1ED099DD0);
  v121[0] = v105;
  v121[1] = v107;
  v121[2] = v92;
  v121[3] = v79;
  v117 = sub_1E6885168(&qword_1EE2EA6D8, &qword_1ED099DC0, &unk_1E68C5B38, sub_1E68851EC);
  v118 = sub_1E688535C();
  v119 = v93;
  v120 = WitnessTable;
  sub_1E6848F14(v129, 4uLL, v121);
  sub_1E6744A10(&v139, &qword_1ED099DD0);
  v83(v81, v79);
  sub_1E6744A10(v116, &qword_1ED099DC8);
  sub_1E6744A10(v114, &qword_1ED099DC0);
  v83(v86, v79);
  v133[1] = v126;
  v133[2] = v127;
  v134 = v128;
  v130 = v122;
  v131 = v123;
  v132 = v124;
  v133[0] = v125;
  sub_1E6744A10(&v130, &qword_1ED099DD0);
  sub_1E6744A10(v85, &qword_1ED099DC8);
  return sub_1E6744A10(v115, &qword_1ED099DC0);
}

uint64_t sub_1E687E84C()
{
  sub_1E68B21C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  sub_1E68B3750();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  return sub_1E68B2CB0();
}

uint64_t sub_1E687EA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v65 = a8;
  v64 = a7;
  v61 = a6;
  v60 = a5;
  v58 = a4;
  v51 = a3;
  v56 = a2;
  v62 = a1;
  v70 = a9;
  v59 = a11;
  v57 = a10;
  v68 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v68);
  v69 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1E68B2DE0();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  sub_1E68B3750();
  v95 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  v50[1] = swift_getWitnessTable();
  v13 = sub_1E68B2CC0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v50 - v15;
  v17 = sub_1E68B1E40();
  v52 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v50 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  v20 = sub_1E68B1E40();
  v54 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v50[0] = v50 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v22 = sub_1E68B1E40();
  v55 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v53 = v50 - v26;
  sub_1E68B21D0();
  v71 = v56;
  v72 = v51;
  v73 = v58;
  v74 = v60;
  v75 = v61;
  v76 = v64;
  v77 = v65;
  v78 = v57;
  v79 = v59;
  v80 = v62;
  sub_1E68B2CB0();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A50();
  (*(v14 + 8))(v16, v13);
  v28 = v63;
  sub_1E68B2DD0();
  sub_1E68B2500();
  v90 = WitnessTable;
  v91 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v30 = v28;
  v31 = v66;
  sub_1E68B2750();
  (*(v67 + 8))(v30, v31);
  (*(v52 + 8))(v19, v17);
  v32 = *(v68 + 20);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_1E68B2160();
  v35 = v69;
  (*(*(v34 - 8) + 104))(&v69[v32], v33, v34);
  __asm { FMOV            V0.2D, #14.0 }

  *v35 = _Q0;
  v41 = sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8);
  v88 = v29;
  v89 = v41;
  v42 = swift_getWitnessTable();
  sub_1E688558C(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  v43 = v50[0];
  sub_1E68B2AE0();
  sub_1E6768D04(v35);
  (*(v54 + 8))(v43, v20);
  v44 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v86 = v42;
  v87 = v44;
  v45 = swift_getWitnessTable();
  v46 = v53;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v24, v22, v45);
  v47 = v55;
  v48 = *(v55 + 8);
  v48(v24, v22);
  v84 = 0;
  v85 = 1;
  v92 = &v84;
  (*(v47 + 16))(v24, v46, v22);
  v93 = v24;
  v83[0] = MEMORY[0x1E6981840];
  v83[1] = v22;
  v81 = MEMORY[0x1E6981838];
  v82 = v45;
  sub_1E6848F14(&v92, 2uLL, v83);
  v48(v46, v22);
  return (v48)(v24, v22);
}

uint64_t sub_1E687F30C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v103 = a8;
  *&v102 = a7;
  *(&v100 + 1) = a5;
  *&v101 = a6;
  v99 = a2;
  *&v100 = a4;
  v96 = a3;
  v109 = a9;
  v98 = a11;
  v97 = a10;
  v105 = sub_1E68B3750();
  v12 = sub_1E68B1E40();
  v13 = *(v12 - 8);
  v107 = v12;
  v108 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v87 - v16;
  v17 = sub_1E68B21B0();
  v93 = *(v17 - 8);
  v94 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v90 = &v87 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v115 = &v87 - v25;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DC0);
  MEMORY[0x1EEE9AC00](v113);
  v110 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v87 - v28);
  v30 = *(a1 + 38);
  *&v92 = *(a1 + 37);
  v31 = *(a1 + 39);
  *&v91 = *(a1 + 40);
  v32 = (&v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF8) + 36) - v28);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8) + 28);
  v34 = *MEMORY[0x1E6980FD8];
  v35 = sub_1E68B2690();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v32 + v33, v34, v35);
  (*(v36 + 56))(v32 + v33, 0, 1, v35);
  *v32 = swift_getKeyPath();
  v37 = v92;
  *v29 = v92;
  v29[1] = v30;
  v38 = v91;
  v29[2] = v31;
  v29[3] = v38;
  v39 = *(a1 + 14);
  KeyPath = swift_getKeyPath();
  v41 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E00) + 36);
  v111 = v29;
  *v41 = KeyPath;
  *(v41 + 1) = v39;
  v41[16] = 0;
  v42 = a1[5];
  v87 = a1[4];
  v88 = v42;
  sub_1E673F228(v37, v30, v31, v38);
  v43 = sub_1E68B2500();
  v44 = v29 + *(v113 + 36);
  *v44 = v43;
  *(&v45 + 1) = *(&v87 + 1);
  *&v46 = v87;
  *(&v46 + 1) = *(&v88 + 1);
  *&v45 = v88;
  *(v44 + 24) = v46;
  *(v44 + 8) = v45;
  v44[40] = 0;
  v47 = *(a1 + 29);
  v48 = *(a1 + 30);
  v49 = *(a1 + 31);
  v50 = *(a1 + 32);
  v51 = *(a1 + 12);
  v52 = swift_getKeyPath();
  v53 = a1[1];
  v91 = *a1;
  v92 = v53;
  sub_1E673F228(v47, v48, v49, v50);
  v54 = sub_1E68B2500();
  LOBYTE(v129) = 0;
  LOBYTE(v121) = 0;
  *&v136 = v47;
  *(&v136 + 1) = v48;
  *&v137 = v49;
  *(&v137 + 1) = v50;
  *&v138 = v52;
  *(&v138 + 1) = v51;
  LOBYTE(v139) = 0;
  *(&v139 + 1) = *v144;
  DWORD1(v139) = *&v144[3];
  BYTE8(v139) = v54;
  *(&v139 + 9) = *v143;
  *(&v55 + 1) = *(&v91 + 1);
  *&v56 = v91;
  *&v55 = v92;
  HIDWORD(v139) = *&v143[3];
  *(&v56 + 1) = *(&v92 + 1);
  v140 = v55;
  v141 = v56;
  v142 = 0;
  v57 = v89;
  sub_1E68B21A0();
  *&v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DD0);
  *&v92 = sub_1E6885168(&qword_1EE2EA740, &qword_1ED099DD0, &unk_1E68C5B48, sub_1E67C6144);
  v58 = v90;
  sub_1E68B2950();
  (*(v93 + 8))(v57, v94);
  v145[4] = v140;
  v145[5] = v141;
  v146 = v142;
  v145[0] = v136;
  v145[1] = v137;
  v145[2] = v138;
  v145[3] = v139;
  sub_1E6744A10(v145, &qword_1ED099DD0);
  v59 = *(&v98 + 1);
  *&v136 = v99;
  *(&v136 + 1) = v96;
  v137 = v100;
  v60 = v101;
  *&v138 = v101;
  *(&v138 + 1) = v102;
  v61 = v103;
  *&v139 = v103;
  *(&v139 + 1) = v97;
  v140 = v98;
  type metadata accessor for FullWidthStageView();
  if ((*(v59 + 40))(v60, v59))
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.7;
  }

  v63 = swift_getKeyPath();
  v64 = v95;
  sub_1E6761420(v58, v95, &qword_1ED099DC8);
  v65 = v115;
  v66 = v64 + *(v114 + 36);
  *v66 = v63;
  *(v66 + 8) = v62;
  sub_1E6761420(v64, v65, &qword_1ED099DD8);
  v67 = *(a1 + 33);
  v68 = *(a1 + 34);
  v69 = *(a1 + 35);
  v70 = *(a1 + 36);
  v71 = *(a1 + 13);
  v72 = swift_getKeyPath();
  v73 = a1[3];
  v101 = a1[2];
  v102 = v73;
  sub_1E673F228(v67, v68, v69, v70);
  v74 = sub_1E68B2500();
  LOBYTE(v136) = 0;
  LOBYTE(v121) = 0;
  *&v129 = v67;
  *(&v129 + 1) = v68;
  *&v130 = v69;
  *(&v130 + 1) = v70;
  *&v131 = v72;
  *(&v131 + 1) = v71;
  LOBYTE(v132) = 0;
  *(&v75 + 1) = *(&v101 + 1);
  *&v76 = v101;
  *&v75 = v102;
  BYTE8(v132) = v74;
  *(&v76 + 1) = *(&v102 + 1);
  v133 = v75;
  v134 = v76;
  v135 = 0;
  v128[6] = v61;
  WitnessTable = swift_getWitnessTable();
  v78 = v104;
  sub_1E68B2A60();
  v128[4] = WitnessTable;
  v128[5] = MEMORY[0x1E697E5D8];
  v79 = v107;
  v80 = swift_getWitnessTable();
  v81 = v106;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v78, v79, v80);
  v82 = v108;
  v83 = *(v108 + 8);
  v83(v78, v79);
  v84 = v110;
  sub_1E67612FC(v111, v110, &qword_1ED099DC0);
  v128[0] = v84;
  v85 = v112;
  sub_1E67612FC(v115, v112, &qword_1ED099DD8);
  v125 = v133;
  v126 = v134;
  v127 = v135;
  v121 = v129;
  v122 = v130;
  v123 = v131;
  v124 = v132;
  v128[1] = v85;
  v128[2] = &v121;
  (*(v82 + 16))(v78, v81, v79);
  v128[3] = v78;
  sub_1E67612FC(&v129, &v136, &qword_1ED099DD0);
  v120[0] = v113;
  v120[1] = v114;
  v120[2] = v91;
  v120[3] = v79;
  v116 = sub_1E6885168(&qword_1EE2EA6D8, &qword_1ED099DC0, &unk_1E68C5B38, sub_1E68851EC);
  v117 = sub_1E688545C();
  v118 = v92;
  v119 = v80;
  sub_1E6848F14(v128, 4uLL, v120);
  sub_1E6744A10(&v129, &qword_1ED099DD0);
  v83(v81, v79);
  sub_1E6744A10(v115, &qword_1ED099DD8);
  sub_1E6744A10(v111, &qword_1ED099DC0);
  v83(v78, v79);
  v140 = v125;
  v141 = v126;
  v142 = v127;
  v136 = v121;
  v137 = v122;
  v138 = v123;
  v139 = v124;
  sub_1E6744A10(&v136, &qword_1ED099DD0);
  sub_1E6744A10(v112, &qword_1ED099DD8);
  return sub_1E6744A10(v110, &qword_1ED099DC0);
}

__n128 sub_1E687FD28@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 224) - 2 >= 2)
  {
    if (*(v1 + 224))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1E68B77B0;
      *(v8 + 32) = sub_1E68B2B20();
      v9 = [objc_opt_self() systemBackgroundColor];
      sub_1E68B2B70();
      v10 = sub_1E68B2B40();

      *(v8 + 40) = v10;
      sub_1E68B2F40();
      MEMORY[0x1E69515E0](v8);
      sub_1E68B1D90();
      v28 = 1;
      *v35 = *v19;
      *&v35[8] = *&v19[8];
      *&v35[24] = *&v19[24];
      LOBYTE(v39) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF0);
      sub_1E673F530(&qword_1EE2EA4F0, &qword_1ED099DF0);
      sub_1E68355DC();
      sub_1E68B2210();
      v31 = v25;
      v32 = v26;
      v33 = v27;
      *v29 = *v23;
      *&v29[16] = *&v23[16];
      *&v29[32] = *&v23[32];
      v30 = v24;
      LOBYTE(v14) = 0;
    }

    else
    {
      v5 = sub_1E68B2E80();
      v7 = v6;
      sub_1E6880194(v35);
      v16 = *&v35[32];
      v17 = v36;
      v14 = *v35;
      v15 = *&v35[16];
      *&v19[32] = *&v35[32];
      v20 = v36;
      v21 = v37;
      *&v19[16] = *&v35[16];
      v18 = v37;
      *v19 = *v35;
      sub_1E67612FC(&v14, v29, &qword_1ED099E20);
      sub_1E6744A10(v19, &qword_1ED099E20);
      v36 = v16;
      v37 = v17;
      v38 = v18;
      *&v35[16] = v14;
      *&v35[32] = v15;
      v22 = 0;
      *v35 = v5;
      *&v35[8] = v7;
      LOBYTE(v39) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DF0);
      sub_1E673F530(&qword_1EE2EA4F0, &qword_1ED099DF0);
      sub_1E68355DC();
      sub_1E68B2210();
      v31 = v25;
      v32 = v26;
      v33 = v27;
      *v29 = *v23;
      *&v29[16] = *&v23[16];
      *&v29[32] = *&v23[32];
      v30 = v24;
      v28 = 0;
    }

    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DE8);
    sub_1E6885098();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E68B77B0;
    v4 = [objc_opt_self() systemBackgroundColor];
    *(v3 + 32) = sub_1E68B2B70();
    *(v3 + 40) = sub_1E68B2B20();
    sub_1E68B2F40();
    sub_1E68B2F50();
    MEMORY[0x1E69515E0](v3);
    sub_1E68B1D90();
    v19[0] = 1;
    *v29 = *v23;
    *&v29[8] = *&v23[8];
    *&v29[24] = *&v23[24];
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DE8);
    sub_1E6885098();
    sub_1E68355DC();
  }

  sub_1E68B2210();
  v11 = v38;
  *(a1 + 64) = v37;
  *(a1 + 80) = v11;
  *(a1 + 96) = v39;
  v12 = *&v35[16];
  *a1 = *v35;
  *(a1 + 16) = v12;
  result = v36;
  *(a1 + 32) = *&v35[32];
  *(a1 + 48) = result;
  return result;
}

double sub_1E6880194@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E68B77B0;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  *(v2 + 32) = sub_1E68B2B70();
  *(v2 + 40) = sub_1E68B2B20();
  sub_1E68B2F40();
  MEMORY[0x1E69515E0](v2);
  sub_1E68B1D90();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E68B77B0;
  *(v5 + 32) = sub_1E68B2B20();
  v6 = [v3 systemBackgroundColor];
  sub_1E68B2B70();
  v7 = sub_1E68B2B40();

  *(v5 + 40) = v7;
  sub_1E68B2F30();
  sub_1E68B2F20();
  MEMORY[0x1E69515E0](v5);
  sub_1E68B1D90();
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  result = *&v13;
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  return result;
}

double sub_1E6880334(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(a1 + 136);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = sub_1E677ADA4(*v4, v6, v7);
  v9 = (*(*(a1 + 88) + 56))(*(a1 + 48), v8);
  v10 = 0.0;
  if (v9)
  {
    v11 = sub_1E677ADA4(v5, v6, v7);
    v12 = v1 + *(a1 + 140);
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_1E677ADA4(*v12, v14, v15);
    v10 = v11 * (v16 / sub_1E677ADA4(v13, v14, v15)) * 0.2;
  }

  return *(v2 + 120) + v10;
}

uint64_t sub_1E688041C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_1E68B2440();
  v49 = a1[2];
  v48 = sub_1E68B1E40();
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DB8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  v40 = a1[3];
  sub_1E68B1E40();
  v81 = sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  v3 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097260);
  sub_1E68B1E40();
  v27 = sub_1E68B2390();
  v4 = sub_1E68B1E40();
  v26 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v88 = sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260);
  v38 = MEMORY[0x1E697E858];
  v5 = swift_getWitnessTable();
  v39 = sub_1E688558C(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v85 = v5;
  v86 = v39;
  v37 = v4;
  v36 = swift_getWitnessTable();
  v78 = v4;
  v79 = v36;
  swift_getOpaqueTypeMetadata2();
  v33 = sub_1E68B1E40();
  *(&v43 + 1) = a1[5];
  v6 = sub_1E68B3750();
  v45 = a1 + 11;
  v46 = a1 + 9;
  v44 = a1[10];
  v84 = v44;
  v35 = v6;
  v34 = swift_getWitnessTable();
  v78 = v6;
  v79 = v34;
  swift_getOpaqueTypeMetadata2();
  v31 = sub_1E68B2220();
  *&v43 = a1[4];
  v41 = a1;
  v78 = sub_1E68B3750();
  v79 = MEMORY[0x1E6981840];
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  v7 = sub_1E68B3750();
  v42 = a1[8];
  v77 = v42;
  v75 = v7;
  v76 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v30 = sub_1E68B2CC0();
  v29 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v28 = sub_1E68B1E40();
  v25[1] = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  v32 = v3;
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v25[2] = sub_1E68B1E40();
  v25[3] = sub_1E68B2220();
  v25[4] = sub_1E68B2220();
  v26 = sub_1E68B2B90();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097228);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = MEMORY[0x1E697E5D8];
  v73 = OpaqueTypeConformance2;
  v74 = MEMORY[0x1E697E5D8];
  v71 = swift_getWitnessTable();
  v72 = swift_getOpaqueTypeConformance2();
  v10 = swift_getWitnessTable();
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v39;
  v67 = swift_getWitnessTable();
  v68 = v9;
  v11 = swift_getWitnessTable();
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v39;
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x1E697E5D8];
  v61 = v11;
  v62 = swift_getWitnessTable();
  v59 = v10;
  v60 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v81 = sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228);
  v78 = swift_getOpaqueTypeMetadata2();
  v79 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v12 = sub_1E68B2CE0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - v17;
  sub_1E68B2E50();
  *&v19 = v49;
  *(&v19 + 1) = v40;
  v52 = v19;
  v53 = v43;
  v20 = *(v41 + 3);
  *&v21 = v44;
  *(&v21 + 1) = *v45;
  v56 = v21;
  *&v21 = v42;
  *(&v21 + 1) = *v46;
  v54 = v20;
  v55 = v21;
  v57 = v50;
  sub_1E68B2CD0();
  v22 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v15, v12, v22);
  v23 = *(v13 + 8);
  v23(v15, v12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v18, v12, v22);
  return (v23)(v18, v12);
}

uint64_t sub_1E6880E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v114 = a4;
  v115 = a8;
  v101 = a2;
  v102 = a7;
  v112 = a6;
  v110 = a5;
  v103 = a1;
  v86 = a9;
  v111 = a11;
  v113 = a10;
  v12 = sub_1E68B2400();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v83 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097228);
  MEMORY[0x1EEE9AC00](v106);
  v104 = v78 - v14;
  *&v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  *(&v145 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8);
  *&v146 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  v109 = a3;
  sub_1E68B1E40();
  *(&v146 + 1) = sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097260);
  sub_1E68B1E40();
  v108 = sub_1E68B2390();
  v15 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260);
  v197 = WitnessTable;
  v198 = v17;
  v107 = MEMORY[0x1E697E858];
  v18 = swift_getWitnessTable();
  v105 = sub_1E688558C(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v195 = v18;
  v196 = v105;
  v99 = v15;
  v98 = swift_getWitnessTable();
  *&v145 = v15;
  *(&v145 + 1) = v98;
  swift_getOpaqueTypeMetadata2();
  v95 = sub_1E68B1E40();
  v19 = sub_1E68B3750();
  v97 = v19;
  v96 = swift_getWitnessTable();
  *&v145 = v19;
  *(&v145 + 1) = v96;
  swift_getOpaqueTypeMetadata2();
  v94 = sub_1E68B2220();
  *&v145 = sub_1E68B3750();
  *(&v145 + 1) = MEMORY[0x1E6981840];
  *&v146 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  *(&v146 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  *&v147 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  v20 = sub_1E68B3750();
  v194 = v115;
  v21 = swift_getWitnessTable();
  *&v130 = v20;
  *(&v130 + 1) = v21;
  *(&v147 + 1) = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v22 = sub_1E68B2CC0();
  v93 = v22;
  v92 = swift_getWitnessTable();
  *&v145 = v22;
  *(&v145 + 1) = v92;
  swift_getOpaqueTypeMetadata2();
  v91 = sub_1E68B1E40();
  sub_1E68B1E40();
  *&v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  *(&v145 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  *&v146 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  *(&v146 + 1) = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v23 = sub_1E68B2CC0();
  v88 = swift_getWitnessTable();
  *&v145 = v23;
  *(&v145 + 1) = v88;
  swift_getOpaqueTypeMetadata2();
  v87 = sub_1E68B1E40();
  v89 = sub_1E68B1E40();
  v90 = sub_1E68B2220();
  v108 = sub_1E68B2220();
  v24 = sub_1E68B2B90();
  v82 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v100 = v78 - v25;
  *&v145 = v99;
  *(&v145 + 1) = v98;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x1E697E5D8];
  v192 = OpaqueTypeConformance2;
  v193 = MEMORY[0x1E697E5D8];
  v28 = swift_getWitnessTable();
  *&v145 = v97;
  *(&v145 + 1) = v96;
  v29 = swift_getOpaqueTypeConformance2();
  v190 = v28;
  v191 = v29;
  v30 = swift_getWitnessTable();
  *&v145 = v93;
  *(&v145 + 1) = v92;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v105;
  v188 = v31;
  v189 = v105;
  v186 = swift_getWitnessTable();
  v187 = v27;
  v33 = swift_getWitnessTable();
  *&v145 = v23;
  *(&v145 + 1) = v88;
  v184 = swift_getOpaqueTypeConformance2();
  v185 = v32;
  v182 = swift_getWitnessTable();
  v183 = v27;
  v34 = swift_getWitnessTable();
  v180 = v33;
  v181 = v34;
  v35 = swift_getWitnessTable();
  v178 = v30;
  v179 = v35;
  v99 = swift_getWitnessTable();
  v177 = v99;
  v36 = swift_getWitnessTable();
  v37 = sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228);
  *&v145 = v24;
  v38 = v106;
  *(&v145 + 1) = v106;
  *&v146 = v36;
  *(&v146 + 1) = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v88 = v78 - v40;
  v89 = v36;
  v98 = v24;
  *&v145 = v24;
  *(&v145 + 1) = v38;
  *&v146 = v36;
  v87 = v37;
  *(&v146 + 1) = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v91 = OpaqueTypeMetadata2;
  *&v145 = OpaqueTypeMetadata2;
  v81 = v41;
  *(&v145 + 1) = v41;
  v96 = swift_getOpaqueTypeMetadata2();
  v93 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v78 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v94 = v78 - v44;
  sub_1E68B2440();
  v45 = v101;
  v46 = sub_1E68B1E40();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = v78 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = v78 - v51;
  *&v145 = v45;
  *(&v145 + 1) = v109;
  *&v146 = v114;
  *(&v146 + 1) = v110;
  *&v147 = v112;
  v53 = v102;
  *(&v147 + 1) = v102;
  *&v148 = v115;
  *(&v148 + 1) = v113;
  v149 = v111;
  type metadata accessor for FullWidthStageView();
  v54 = v103;
  sub_1E68B2900();
  v55 = sub_1E688558C(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v175 = v53;
  v176 = v55;
  v56 = swift_getWitnessTable();
  v107 = v52;
  v79 = v56;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v49, v46, v56);
  v80 = v47;
  v57 = *(v47 + 8);
  v105 = v49;
  v97 = v46;
  v92 = v57;
  v78[1] = v47 + 8;
  v57(v49, v46);
  sub_1E687FD28(v159);
  v165 = v159[4];
  v166 = v159[5];
  LOWORD(v167) = v160;
  v161 = v159[0];
  v162 = v159[1];
  v164 = v159[3];
  v163 = v159[2];
  sub_1E68B2E80();
  sub_1E68B1F30();
  v116 = v45;
  v117 = v109;
  v118 = v114;
  v119 = v110;
  v120 = v112;
  v121 = v53;
  v58 = v100;
  v122 = v115;
  v123 = v113;
  v124 = v111;
  v125 = v54;
  sub_1E68B2B80();
  v59 = *MEMORY[0x1E697E728];
  v60 = sub_1E68B1DE0();
  v61 = v104;
  (*(*(v60 - 8) + 104))(v104, v59, v60);
  sub_1E688558C(&qword_1EE2EA840, MEMORY[0x1E697E730]);
  result = sub_1E68B3190();
  if (result)
  {
    v63 = v88;
    v64 = v61;
    v65 = v98;
    sub_1E68B2870();
    sub_1E6744A10(v64, &qword_1ED097228);
    (*(v82 + 8))(v58, v65);
    v66 = v83;
    sub_1E68B23F0();
    v67 = v95;
    v68 = v91;
    v69 = v81;
    sub_1E68B2920();
    (*(v84 + 8))(v66, v85);
    (*(v90 + 8))(v63, v68);
    *&v145 = v68;
    *(&v145 + 1) = v69;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = v94;
    v72 = v96;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v67, v96, v70);
    v73 = v93;
    v74 = *(v93 + 8);
    v74(v67, v72);
    v75 = v105;
    v76 = v97;
    (*(v80 + 16))(v105, v107, v97);
    v140 = v171;
    v141 = v172;
    v142 = v173;
    v143 = v174;
    v136 = v167;
    v137 = v168;
    v138 = v169;
    v139 = v170;
    v132 = v163;
    v133 = v164;
    v134 = v165;
    v135 = v166;
    v130 = v161;
    v131 = v162;
    v144[0] = v75;
    v144[1] = &v130;
    (*(v73 + 16))(v67, v71, v72);
    v144[2] = v67;
    v129[0] = v76;
    v129[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099DB8);
    v129[2] = v72;
    v126 = v79;
    v127 = sub_1E6884F80();
    v128 = v70;
    sub_1E6848F14(v144, 3uLL, v129);
    v74(v71, v72);
    v77 = v92;
    v92(v107, v76);
    v74(v67, v72);
    v155 = v140;
    v156 = v141;
    v157 = v142;
    v158 = v143;
    v151 = v136;
    v152 = v137;
    v153 = v138;
    v154 = v139;
    v147 = v132;
    v148 = v133;
    v149 = v134;
    v150 = v135;
    v145 = v130;
    v146 = v131;
    sub_1E6744A10(&v145, &qword_1ED099DB8);
    return v77(v105, v76);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6881F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v217 = a7;
  v215 = a6;
  v230 = a3;
  v231 = a5;
  v212 = a1;
  v213 = a2;
  v227 = a9;
  v220 = a12;
  v218 = a11;
  v216 = a10;
  v315 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  v316 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  v317 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  v14 = sub_1E68B3750();
  v318 = sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v15 = sub_1E68B2CC0();
  v192 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v191 = &v177 - v16;
  v233 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v242 = v15;
  v315 = v15;
  v316 = WitnessTable;
  v241 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v193 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v204 = &v177 - v19;
  v20 = sub_1E68B2390();
  v195 = OpaqueTypeMetadata2;
  v232 = v20;
  v21 = sub_1E68B1E40();
  v196 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v194 = &v177 - v22;
  v240 = v23;
  v24 = sub_1E68B1E40();
  v197 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v207 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v206 = &v177 - v27;
  v214 = a4;
  v315 = sub_1E68B3750();
  v316 = MEMORY[0x1E6981840];
  v317 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  v318 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
  v319 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  v219 = a8;
  v331 = a8;
  v28 = swift_getWitnessTable();
  v329 = v14;
  v330 = v28;
  v320 = swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v29 = sub_1E68B2CC0();
  v30 = swift_getWitnessTable();
  v315 = v29;
  v316 = v30;
  v238 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_1E68B1E40();
  v33 = sub_1E68B1E40();
  v239 = v24;
  v34 = sub_1E68B2220();
  v209 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v208 = &v177 - v35;
  v236 = swift_checkMetadataState();
  v184 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v183 = &v177 - v36;
  v189 = v31;
  v185 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v200 = &v177 - v38;
  v237 = v32;
  v188 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v187 = &v177 - v40;
  v228 = v33;
  v190 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v203 = &v177 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v202 = &v177 - v44;
  v45 = sub_1E68B3750();
  v234 = swift_getWitnessTable();
  v235 = v45;
  v315 = v45;
  v316 = v234;
  v46 = swift_getOpaqueTypeMetadata2();
  v210 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v186 = &v177 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v201 = &v177 - v49;
  v315 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0);
  v316 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8);
  v317 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0);
  sub_1E68B1E40();
  v318 = sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097260);
  sub_1E68B1E40();
  v50 = sub_1E68B1E40();
  v51 = swift_getWitnessTable();
  v52 = sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260);
  v327 = v51;
  v328 = v52;
  v53 = swift_getWitnessTable();
  v54 = sub_1E688558C(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v181 = v53;
  v325 = v53;
  v326 = v54;
  v233 = v54;
  v55 = swift_getWitnessTable();
  v315 = v50;
  v316 = v55;
  v229 = v55;
  v56 = v34;
  v57 = swift_getOpaqueTypeMetadata2();
  v58 = sub_1E68B1E40();
  v205 = v46;
  v59 = sub_1E68B2220();
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v211 = &v177 - v61;
  v62 = swift_checkMetadataState();
  v178 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v177 - v63;
  v232 = swift_checkMetadataState();
  v179 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v66 = &v177 - v65;
  v180 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v177 - v68;
  v223 = v58;
  v182 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v199 = &v177 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v198 = &v177 - v73;
  v225 = v59;
  v224 = sub_1E68B2220();
  v222 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v221 = &v177 - v74;
  v75 = v212;
  v76 = *(v212 + 224);
  v77 = MEMORY[0x1E697E5D8];
  v226 = v56;
  if (v76 > 1)
  {
    if (v76 == 2)
    {
      v315 = v213;
      v316 = v230;
      v317 = v214;
      v318 = v231;
      v319 = v215;
      v320 = v217;
      v321 = v219;
      v322 = v216;
      v323 = v218;
      v324 = v220;
      type metadata accessor for FullWidthStageView();
      sub_1E68B24B0();
      v80 = *(v75 + 224);
      v177 = v60;
      if (v80 == 1)
      {
        sub_1E68B2E80();
      }

      else
      {
        sub_1E68B2E90();
      }

      v111 = swift_checkMetadataState();
      v112 = v186;
      v113 = v234;
      sub_1E68B2960();
      v315 = v111;
      v316 = v113;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v115 = v201;
      v116 = v205;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v112, v205, OpaqueTypeConformance2);
      v117 = *(v210 + 8);
      v210 += 8;
      v231 = v117;
      v117(v112, v116);
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v115, v116, OpaqueTypeConformance2);
      v315 = v232;
      v316 = v229;
      v269 = swift_getOpaqueTypeConformance2();
      v118 = MEMORY[0x1E697E5D8];
      v270 = MEMORY[0x1E697E5D8];
      v119 = v223;
      v120 = swift_getWitnessTable();
      sub_1E6744DB8(v112, v119, v116);
      v267 = v120;
      v268 = OpaqueTypeConformance2;
      v220 = MEMORY[0x1E697F968];
      v121 = v225;
      v230 = swift_getWitnessTable();
      v315 = v236;
      v316 = v238;
      v265 = swift_getOpaqueTypeConformance2();
      v122 = v233;
      v266 = v233;
      v263 = swift_getWitnessTable();
      v264 = v118;
      v123 = swift_getWitnessTable();
      v315 = v242;
      v316 = v241;
      v261 = swift_getOpaqueTypeConformance2();
      v262 = v122;
      v259 = swift_getWitnessTable();
      v260 = MEMORY[0x1E697E5D8];
      v124 = swift_getWitnessTable();
      v257 = v123;
      v258 = v124;
      swift_getWitnessTable();
      v125 = v221;
      v126 = v211;
      sub_1E6744CC0(v211, v121);
      (*(v177 + 8))(v126, v121);
      v127 = v112;
      v104 = v229;
      v128 = v231;
      v231(v127, v116);
      v128(v201, v116);
      v109 = v125;
    }

    else
    {
      v315 = v213;
      v316 = v230;
      v317 = v214;
      v318 = v231;
      v319 = v215;
      v320 = v217;
      v321 = v219;
      v322 = v216;
      v323 = v218;
      v324 = v220;
      v83 = type metadata accessor for FullWidthStageView();
      v84 = v191;
      sub_1E687E84C();
      sub_1E68B24B0();
      v85 = v242;
      v86 = v241;
      v87 = v233;
      if (*(v75 + 224) == 1)
      {
        sub_1E68B2E80();
      }

      else
      {
        sub_1E68B2E90();
      }

      v144 = 0.0;
      sub_1E68B2960();
      (*(v192 + 8))(v84, v85);
      v145 = 0.0;
      if (*(v75 + 224) != 2)
      {
        v145 = *(v75 + 128);
        v144 = *(v75 + 136) + 100.0;
      }

      v315 = v85;
      v316 = v86;
      v230 = MEMORY[0x1E697D318];
      v146 = swift_getOpaqueTypeConformance2();
      v147 = v194;
      v148 = v195;
      v149 = v204;
      sub_1E6883E9C(v195, v146, v144, v145, 0.0, v145);
      (*(v193 + 8))(v149, v148);
      sub_1E68B2520();
      sub_1E6880334(v83);
      v313 = v146;
      v314 = v87;
      v150 = v87;
      v151 = v240;
      v152 = swift_getWitnessTable();
      v153 = v207;
      sub_1E68B2A70();
      (*(v196 + 8))(v147, v151);
      v311 = v152;
      v312 = MEMORY[0x1E697E5D8];
      v154 = MEMORY[0x1E697E5D8];
      v155 = v239;
      v156 = swift_getWitnessTable();
      v157 = v206;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v153, v155, v156);
      v231 = *(v197 + 8);
      v231(v153, v155);
      v220 = v156;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v157, v155, v156);
      v315 = v236;
      v316 = v238;
      v309 = swift_getOpaqueTypeConformance2();
      v310 = v150;
      v307 = swift_getWitnessTable();
      v308 = v154;
      v158 = v228;
      v159 = swift_getWitnessTable();
      v160 = v208;
      sub_1E6744DB8(v153, v158, v155);
      v104 = v229;
      v315 = v232;
      v316 = v229;
      v305 = swift_getOpaqueTypeConformance2();
      v306 = MEMORY[0x1E697E5D8];
      v161 = swift_getWitnessTable();
      v315 = v235;
      v316 = v234;
      v162 = swift_getOpaqueTypeConformance2();
      v303 = v161;
      v304 = v162;
      v163 = v225;
      swift_getWitnessTable();
      v301 = v159;
      v302 = v220;
      v164 = v226;
      swift_getWitnessTable();
      v109 = v221;
      sub_1E6744DB8(v160, v163, v164);
      (*(v209 + 8))(v160, v164);
      v165 = v231;
      v231(v207, v155);
      v165(v206, v155);
    }
  }

  else if (v76)
  {
    v177 = v60;
    v315 = v213;
    v316 = v230;
    v317 = v214;
    v318 = v231;
    v319 = v215;
    v320 = v217;
    v321 = v219;
    v322 = v216;
    v323 = v218;
    v324 = v220;
    v231 = type metadata accessor for FullWidthStageView();
    sub_1E687DBE0(v231);
    v81 = 0.0;
    v82 = 0.0;
    if (*(v75 + 224) != 2)
    {
      v82 = *(v75 + 128);
      v81 = *(v75 + 136) + 100.0;
    }

    sub_1E6883E9C(v62, v181, v81, v82, 0.0, v82);
    (*(v178 + 8))(v64, v62);
    sub_1E68B24B0();
    if (*(v75 + 224) == 1)
    {
      sub_1E68B2E80();
    }

    else
    {
      sub_1E68B2E90();
    }

    v129 = v229;
    v130 = v232;
    sub_1E68B2960();
    (*(v179 + 8))(v66, v130);
    sub_1E68B2520();
    sub_1E6880334(v231);
    v315 = v130;
    v316 = v129;
    v131 = swift_getOpaqueTypeConformance2();
    v132 = v199;
    sub_1E68B2A70();
    (*(v180 + 8))(v69, v57);
    v255 = v131;
    v256 = v77;
    v133 = v223;
    v134 = swift_getWitnessTable();
    v135 = v198;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v132, v133, v134);
    v231 = *(v182 + 8);
    v231(v132, v133);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v135, v133, v134);
    v315 = v235;
    v316 = v234;
    v136 = swift_getOpaqueTypeConformance2();
    sub_1E6744CC0(v132, v133);
    v253 = v134;
    v254 = v136;
    v220 = MEMORY[0x1E697F968];
    v137 = v225;
    v230 = swift_getWitnessTable();
    v315 = v236;
    v316 = v238;
    v251 = swift_getOpaqueTypeConformance2();
    v138 = v233;
    v252 = v233;
    v249 = swift_getWitnessTable();
    v250 = v77;
    v139 = swift_getWitnessTable();
    v315 = v242;
    v316 = v241;
    v247 = swift_getOpaqueTypeConformance2();
    v248 = v138;
    v245 = swift_getWitnessTable();
    v246 = v77;
    v140 = swift_getWitnessTable();
    v243 = v139;
    v244 = v140;
    v141 = v133;
    v104 = v229;
    swift_getWitnessTable();
    v109 = v221;
    v142 = v211;
    sub_1E6744CC0(v211, v137);
    (*(v177 + 8))(v142, v137);
    v143 = v231;
    v231(v199, v141);
    v143(v198, v141);
  }

  else
  {
    v315 = v213;
    v316 = v230;
    v317 = v214;
    v318 = v231;
    v319 = v215;
    v320 = v217;
    v321 = v219;
    v322 = v216;
    v323 = v218;
    v324 = v220;
    v78 = type metadata accessor for FullWidthStageView();
    v79 = v183;
    sub_1E687CF80();
    sub_1E68B24B0();
    if (*(v75 + 224) == 1)
    {
      sub_1E68B2E80();
    }

    else
    {
      sub_1E68B2E90();
    }

    v88 = v228;
    v89 = v236;
    v90 = 0.0;
    v91 = v238;
    sub_1E68B2960();
    (*(v184 + 8))(v79, v89);
    v92 = 0.0;
    if (*(v75 + 224) != 2)
    {
      v92 = *(v75 + 128);
      v90 = *(v75 + 136) + 100.0;
    }

    v315 = v89;
    v316 = v91;
    v230 = MEMORY[0x1E697D318];
    v93 = swift_getOpaqueTypeConformance2();
    v94 = v187;
    v95 = v189;
    v96 = v200;
    sub_1E6883E9C(v189, v93, v90, v92, 0.0, v92);
    (*(v185 + 8))(v96, v95);
    sub_1E68B2520();
    sub_1E6880334(v78);
    v283 = v93;
    v97 = v233;
    v284 = v233;
    v98 = v237;
    v99 = swift_getWitnessTable();
    v100 = v203;
    sub_1E68B2A70();
    (*(v188 + 8))(v94, v98);
    v281 = v99;
    v282 = MEMORY[0x1E697E5D8];
    v101 = swift_getWitnessTable();
    v102 = v202;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v100, v88, v101);
    v231 = *(v190 + 8);
    v231(v100, v88);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v102, v88, v101);
    v315 = v242;
    v316 = v241;
    v279 = swift_getOpaqueTypeConformance2();
    v280 = v97;
    v277 = swift_getWitnessTable();
    v278 = MEMORY[0x1E697E5D8];
    v220 = swift_getWitnessTable();
    v103 = v208;
    sub_1E6744CC0(v100, v88);
    v104 = v229;
    v315 = v232;
    v316 = v229;
    v275 = swift_getOpaqueTypeConformance2();
    v276 = MEMORY[0x1E697E5D8];
    v105 = swift_getWitnessTable();
    v315 = v235;
    v316 = v234;
    v106 = swift_getOpaqueTypeConformance2();
    v273 = v105;
    v274 = v106;
    v107 = v225;
    swift_getWitnessTable();
    v271 = v101;
    v272 = v220;
    v108 = v226;
    swift_getWitnessTable();
    v109 = v221;
    sub_1E6744DB8(v103, v107, v108);
    (*(v209 + 8))(v103, v108);
    v110 = v231;
    v231(v203, v88);
    v110(v202, v88);
  }

  v315 = v232;
  v316 = v104;
  v299 = swift_getOpaqueTypeConformance2();
  v166 = MEMORY[0x1E697E5D8];
  v300 = MEMORY[0x1E697E5D8];
  v167 = swift_getWitnessTable();
  v315 = v235;
  v316 = v234;
  v168 = swift_getOpaqueTypeConformance2();
  v297 = v167;
  v298 = v168;
  v169 = swift_getWitnessTable();
  v315 = v236;
  v316 = v238;
  v295 = swift_getOpaqueTypeConformance2();
  v170 = v233;
  v296 = v233;
  v293 = swift_getWitnessTable();
  v294 = v166;
  v171 = swift_getWitnessTable();
  v315 = v242;
  v316 = v241;
  v291 = swift_getOpaqueTypeConformance2();
  v292 = v170;
  v289 = swift_getWitnessTable();
  v290 = v166;
  v172 = swift_getWitnessTable();
  v287 = v171;
  v288 = v172;
  v173 = swift_getWitnessTable();
  v285 = v169;
  v286 = v173;
  v174 = v224;
  v175 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v109, v174, v175);
  return (*(v222 + 8))(v109, v174);
}

uint64_t sub_1E6883E9C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_1E68B2390();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B2500();
  *&v17[1] = a3;
  *&v17[2] = a4;
  *&v17[3] = a5;
  *&v17[4] = a6;
  v18 = 0;
  sub_1E68B2380();
  MEMORY[0x1E69512E0](v15, a1, v12, a2);
  return (*(v13 + 8))(v15, v12);
}

uint64_t _s15FitnessCanvasUI24FullWidthStageViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))), vuzp1q_s32(vceqq_f64(*(a1 + 120), *(a2 + 120)), vceqq_f64(*(a1 + 136), *(a2 + 136)))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 152), *(a2 + 152)), vceqq_f64(*(a1 + 168), *(a2 + 168))), xmmword_1E68BC1D0)) & 0xF) == 0 && *(a1 + 184) == *(a2 + 184) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 192), *(a2 + 192)), vceqq_f64(*(a1 + 208), *(a2 + 208)))));
  }

  return v2 & 1;
}

unint64_t sub_1E68840F4()
{
  result = qword_1ED099D88;
  if (!qword_1ED099D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D88);
  }

  return result;
}

unint64_t sub_1E688414C()
{
  result = qword_1ED099D98;
  if (!qword_1ED099D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099D98);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1E68841DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E68841FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
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

  *(result + 224) = v3;
  return result;
}

void sub_1E6884288()
{
  sub_1E673ED38();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1E68B3750();
      if (v2 <= 0x3F)
      {
        sub_1E68B3750();
        if (v3 <= 0x3F)
        {
          sub_1E68B3750();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v5 <= 0x3F)
            {
              sub_1E67E2354();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E68843B8(unint64_t a1, unsigned int a2, void *a3)
{
  v52 = a3[3];
  v53 = a3[2];
  v5 = *(v53 - 8);
  v6 = *(v5 + 84);
  v7 = *(v52 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(a3[4] - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v10 <= v13)
  {
    v10 = v13;
  }

  v50 = a3[5];
  v14 = *(v50 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v10 <= v17)
  {
    v10 = v17;
  }

  v51 = a3[6];
  v18 = *(v51 - 8);
  v19 = *(*(a3[4] - 8) + 64);
  v20 = *(v5 + 80);
  v54 = *(*(v53 - 8) + 64);
  v21 = *(v7 + 80);
  v22 = *(v11 + 80);
  v23 = *(v14 + 80);
  v24 = *(v18 + 80);
  if (v10 <= *(v18 + 84))
  {
    v25 = *(v18 + 84);
  }

  else
  {
    v25 = v10;
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = v25;
  }

  if (v8)
  {
    v27 = *(*(v52 - 8) + 64);
  }

  else
  {
    v27 = *(*(v52 - 8) + 64) + 1;
  }

  if (!v12)
  {
    ++v19;
  }

  if (v16)
  {
    v28 = *(v14 + 64);
  }

  else
  {
    v28 = *(v14 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = v27 + v22;
  v30 = v19 + v23;
  v31 = v28 + v24;
  if (v26 < a2)
  {
    v32 = ((*(*(v51 - 8) + 64) + ((v31 + ((v30 + ((v29 + ((v54 + v21 + ((v20 + 328) & ~v20)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v32 <= 3)
    {
      v33 = ((a2 - v26 + 255) >> 8) + 1;
    }

    else
    {
      v33 = 2;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v36 = *(a1 + v32);
        if (*(a1 + v32))
        {
          goto LABEL_47;
        }
      }

      else
      {
        v36 = *(a1 + v32);
        if (v36)
        {
          goto LABEL_47;
        }
      }
    }

    else if (v35)
    {
      v36 = *(a1 + v32);
      if (*(a1 + v32))
      {
LABEL_47:
        v37 = (v36 - 1) << (8 * v32);
        if (v32 <= 3)
        {
          v38 = *a1;
        }

        else
        {
          v37 = 0;
          v38 = *a1;
        }

        return v26 + (v38 | v37) + 1;
      }
    }
  }

  v39 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v25 > 0x7FFFFFFE)
  {
    v42 = (((((v39 + 271) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v20 + 32) & ~v20;
    if (v6 == v26)
    {
      v43 = *(v5 + 48);
      v44 = *(v5 + 84);
      v45 = v53;

      return v43(v42, v44, v45);
    }

    v46 = (v42 + v54 + v21) & ~v21;
    if (v9 == v26)
    {
      if (v8 >= 2)
      {
        v47 = (*(v7 + 48))(v46, v8, v52);
        goto LABEL_78;
      }

      return 0;
    }

    v48 = (v29 + v46) & ~v22;
    if (v13 == v26)
    {
      if (v12 < 2)
      {
        return 0;
      }

      v47 = (*(v11 + 48))(v48);
    }

    else
    {
      v49 = (v30 + v48) & ~v23;
      if (v17 != v26)
      {
        v43 = *(v18 + 48);
        v42 = (v31 + v49) & ~v24;
        v44 = *(v18 + 84);
        v45 = v51;

        return v43(v42, v44, v45);
      }

      if (v16 < 2)
      {
        return 0;
      }

      v47 = (*(v15 + 48))(v49, v16, v50);
    }

LABEL_78:
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v40 = *(v39 + 256);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  if ((v40 + 1) >= 2)
  {
    return v40;
  }

  else
  {
    return 0;
  }
}

void sub_1E688488C(unint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v54 = v10;
  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = a4[5];
  v52 = a4[4];
  v13 = *(v52 - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v11 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  v49 = a4[5];
  v17 = *(v12 - 8);
  v18 = *(v17 + 84);
  if (v18)
  {
    v19 = v18 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v50 = a4[6];
  v21 = *(v50 - 8);
  v22 = *(*(a4[3] - 8) + 64);
  v23 = *(*(v52 - 8) + 64);
  v24 = *(v6 + 80);
  v25 = *(*(a4[2] - 8) + 64);
  v53 = *(a4[3] - 8);
  v26 = *(v8 + 80);
  v27 = *(v8 + 84);
  v51 = *(v52 - 8);
  v28 = *(v13 + 80);
  v29 = *(v12 - 8);
  v30 = *(v17 + 80);
  v31 = *(v21 + 80);
  if (v20 <= *(v21 + 84))
  {
    v32 = *(v21 + 84);
  }

  else
  {
    v32 = v20;
  }

  if (v32 <= 0x7FFFFFFE)
  {
    v33 = 2147483646;
  }

  else
  {
    v33 = v32;
  }

  if (!v27)
  {
    ++v22;
  }

  if (!v14)
  {
    ++v23;
  }

  v34 = v22 + v28;
  v35 = v23 + v30;
  v36 = (v23 + v30 + ((v22 + v28 + ((v25 + v26 + ((v24 + 328) & ~v24)) & ~v26)) & ~v28)) & ~v30;
  if (v18)
  {
    v37 = *(v29 + 64);
  }

  else
  {
    v37 = *(v29 + 64) + 1;
  }

  v38 = v37 + v31;
  v39 = ((*(*(v50 - 8) + 64) + ((v37 + v31 + v36) & ~v31) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v33 < a3)
  {
    if (v39 <= 3)
    {
      v40 = ((a3 - v33 + 255) >> 8) + 1;
    }

    else
    {
      v40 = 2;
    }

    if (v40 >= 0x10000)
    {
      v41 = 4;
    }

    else
    {
      v41 = 2;
    }

    if (v40 < 0x100)
    {
      v41 = 1;
    }

    if (v40 >= 2)
    {
      v5 = v41;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v33 >= a2)
  {
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        *(a1 + v39) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_62;
      }

      *(a1 + v39) = 0;
    }

    else if (v5)
    {
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_62;
    }

    if (!a2)
    {
      return;
    }

LABEL_62:
    v44 = a1 & 0xFFFFFFFFFFFFFFF8;
    if (v32 <= 0x7FFFFFFE)
    {
      if (a2 > 0x7FFFFFFE)
      {
        *(v44 + 232) = 0u;
        *(v44 + 248) = 0u;
        *(v44 + 232) = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(v44 + 256) = a2;
      }

      return;
    }

    v45 = (((((v44 + 271) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v24 + 32) & ~v24;
    if (v7 == v33)
    {
      v46 = *(v6 + 56);
    }

    else
    {
      v45 = (v45 + v25 + v26) & ~v26;
      if (v54 == v33)
      {
        if (v27 < 2)
        {
          return;
        }

        v46 = *(v53 + 56);
      }

      else
      {
        v45 = (v34 + v45) & ~v28;
        if (v15 != v33)
        {
          v47 = (v35 + v45) & ~v30;
          if (v19 == v33)
          {
            if (v18 >= 2)
            {
              v48 = *(v29 + 56);

              v48(v47, a2 + 1, v18, v49);
            }

            return;
          }

          v46 = *(v21 + 56);
          v45 = (v38 + v47) & ~v31;

LABEL_88:
          v46(v45);
          return;
        }

        if (v14 < 2)
        {
          return;
        }

        v46 = *(v51 + 56);
      }
    }

    goto LABEL_88;
  }

  v42 = ~v33 + a2;
  bzero(a1, v39);
  if (v39 <= 3)
  {
    v43 = (v42 >> 8) + 1;
  }

  else
  {
    v43 = 1;
  }

  if (v39 <= 3)
  {
    *a1 = v42;
    if (v5 > 1)
    {
LABEL_50:
      if (v5 == 2)
      {
        *(a1 + v39) = v43;
      }

      else
      {
        *(a1 + v39) = v43;
      }

      return;
    }
  }

  else
  {
    *a1 = v42;
    if (v5 > 1)
    {
      goto LABEL_50;
    }
  }

  if (v5)
  {
    *(a1 + v39) = v43;
  }
}

unint64_t sub_1E6884DF8()
{
  result = qword_1ED099DA0;
  if (!qword_1ED099DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099DA0);
  }

  return result;
}

unint64_t sub_1E6884E50()
{
  result = qword_1ED099DA8;
  if (!qword_1ED099DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099DA8);
  }

  return result;
}

unint64_t sub_1E6884EA8()
{
  result = qword_1ED099DB0;
  if (!qword_1ED099DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099DB0);
  }

  return result;
}

unint64_t sub_1E6884F80()
{
  result = qword_1EE2EA828;
  if (!qword_1EE2EA828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DB8);
    sub_1E688500C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA828);
  }

  return result;
}

unint64_t sub_1E688500C()
{
  result = qword_1EE2EA610;
  if (!qword_1EE2EA610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DE0);
    sub_1E6885098();
    sub_1E68355DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA610);
  }

  return result;
}

unint64_t sub_1E6885098()
{
  result = qword_1EE2EA628;
  if (!qword_1EE2EA628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DE8);
    sub_1E673F530(&qword_1EE2EA4F0, &qword_1ED099DF0);
    sub_1E68355DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA628);
  }

  return result;
}

uint64_t sub_1E6885168(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E68851EC()
{
  result = qword_1EE2EA748;
  if (!qword_1EE2EA748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099E00);
    sub_1E68852A4();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA748);
  }

  return result;
}

unint64_t sub_1E68852A4()
{
  result = qword_1EE2EA7E0;
  if (!qword_1EE2EA7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DF8);
    sub_1E67688F0();
    sub_1E673F530(&qword_1EE2EA5A0, &qword_1ED0978D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7E0);
  }

  return result;
}

unint64_t sub_1E688535C()
{
  result = qword_1EE2EA6D0;
  if (!qword_1EE2EA6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8);
    sub_1E6885168(&qword_1EE2EA740, &qword_1ED099DD0, &unk_1E68C5B48, sub_1E67C6144);
    sub_1E688558C(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6D0);
  }

  return result;
}

unint64_t sub_1E688545C()
{
  result = qword_1ED099E08;
  if (!qword_1ED099E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8);
    sub_1E688535C();
    sub_1E673F530(&qword_1ED099E10, &qword_1ED099E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099E08);
  }

  return result;
}

uint64_t sub_1E688558C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E68855D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646150656C746974 && a2 == 0xEC000000676E6964;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEF676E6964646150 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x506E6F6974706163 && a2 == 0xEE00676E69646461 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61506D6F74746F62 && a2 == 0xED0000676E696464 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x50676E696461656CLL && a2 == 0xEE00676E69646461 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6964646150706F74 && a2 == 0xEA0000000000676ELL || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E30A0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E30C0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E3000 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E3020 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t DynamicLayoutProvider.transform(currentLayout:updatingBounds:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = a1[1];
  v41 = *a1;
  v42 = v12;
  v13 = a1[5];
  v45 = a1[4];
  v46 = v13;
  v47 = *(a1 + 96);
  v14 = a1[3];
  v43 = a1[2];
  v44 = v14;
  *&v13 = *(&v41 + 1);
  *&v14 = v41;
  v16 = *(&v42 + 1);
  v15 = v42;
  v49.origin.x = a3;
  v49.origin.y = a4;
  v49.size.width = a5;
  v49.size.height = a6;
  if (CGRectEqualToRect(*(&v13 - 8), v49))
  {
    v17 = a1[5];
    *(a2 + 64) = a1[4];
    *(a2 + 80) = v17;
    *(a2 + 96) = *(a1 + 96);
    v18 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v18;
    v19 = a1[3];
    *(a2 + 32) = a1[2];
    *(a2 + 48) = v19;
    return sub_1E688615C(&v41, &v34);
  }

  v48.origin.x = a3;
  v48.origin.y = a4;
  v48.size.width = a5;
  v48.size.height = a6;
  Width = CGRectGetWidth(v48);
  DynamicSizeClass.init(width:)(&v40, Width);
  if (v40 <= 2u)
  {
    if (v40)
    {
      *&v34 = a3;
      *(&v34 + 1) = a4;
      *&v35 = a5;
      *(&v35 + 1) = a6;
      *v36 = v43;
      if (v40 == 1)
      {
        *&v36[8] = xmmword_1E68C5CC0;
        *&v36[24] = xmmword_1E68C5CC0;
        v37 = BYTE8(v45);
        v38 = v46;
        v39 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1E68BFB70;
        *(v22 + 32) = 0;
        *(v22 + 40) = 1;
        *(v22 + 48) = 0x4024000000000000;
        *(v22 + 56) = 1;
        *(v22 + 64) = 1;
        *(v22 + 72) = 2;
        *(v22 + 80) = 0x4024000000000000;
        *(v22 + 88) = 1;
        *(v22 + 96) = 2;
        *(v22 + 104) = 3;
        *(v22 + 112) = 0x4024000000000000;
        *(v22 + 120) = 1;
        *(v22 + 128) = 3;
        *(v22 + 136) = 5;
        *(v22 + 144) = 0x4024000000000000;
        *(v22 + 152) = 4;
        *(v22 + 160) = 4;
        *(v22 + 168) = 10;
        *(v22 + 176) = 0x4024000000000000;
        *(v22 + 184) = 3;
        *(v22 + 192) = 5;
        *(v22 + 200) = 3;
        *(v22 + 208) = 0x4024000000000000;
      }

      else
      {
        *&v36[8] = xmmword_1E68C5CB0;
        *&v36[24] = xmmword_1E68C5CB0;
        v37 = BYTE8(v45);
        v38 = v46;
        v39 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1E68BFB70;
        *(v22 + 32) = 0;
        *(v22 + 40) = 3;
        *(v22 + 48) = 0x4034000000000000;
        *(v22 + 56) = 2;
        *(v22 + 64) = 1;
        *(v22 + 72) = 3;
        *(v22 + 80) = 0x4034000000000000;
        *(v22 + 88) = 1;
        *(v22 + 96) = 2;
        *(v22 + 104) = 4;
        *(v22 + 112) = 0x4034000000000000;
        *(v22 + 120) = 1;
        *(v22 + 128) = 3;
        *(v22 + 136) = 2;
        *(v22 + 144) = 0x4034000000000000;
        *(v22 + 152) = 1;
        *(v22 + 160) = 4;
        *(v22 + 168) = 5;
        *(v22 + 176) = 0x4034000000000000;
        *(v22 + 184) = 1;
        *(v22 + 192) = 5;
        *(v22 + 200) = 5;
        *(v22 + 208) = 0x4034000000000000;
      }

      *(v22 + 216) = 2;
      goto LABEL_17;
    }

    *&v34 = a3;
    *(&v34 + 1) = a4;
    *&v35 = a5;
    *(&v35 + 1) = a6;
    *v36 = v43;
    *&v36[8] = xmmword_1E68C35D0;
    *&v36[24] = xmmword_1E68C35D0;
    v37 = BYTE8(v45);
    v38 = v46;
    v39 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E68BFB70;
    *(v22 + 32) = 0;
    v28 = 0x4020000000000000;
    *(v22 + 40) = 1;
    *(v22 + 48) = 0x4020000000000000;
    *(v22 + 56) = 1;
    *(v22 + 64) = 1;
    v29 = 2;
    *(v22 + 72) = 2;
    *(v22 + 80) = 0x4020000000000000;
    *(v22 + 88) = 1;
    *(v22 + 96) = 2;
    *(v22 + 104) = 3;
    *(v22 + 112) = 0x4020000000000000;
    *(v22 + 120) = 1;
    *(v22 + 128) = 3;
    *(v22 + 136) = 3;
    *(v22 + 144) = 0x4020000000000000;
    *(v22 + 152) = 2;
    *(v22 + 160) = 4;
    *(v22 + 168) = 10;
    *(v22 + 176) = 0x4020000000000000;
    *(v22 + 184) = 3;
    *(v22 + 192) = 5;
    *(v22 + 200) = 3;
LABEL_16:
    *(v22 + 208) = v28;
    *(v22 + 216) = v29;
LABEL_17:
    v24 = sub_1E67FA670(v22);
    swift_setDeallocating();
    swift_deallocClassInstance();
    sub_1E688615C(&v41, v33);
    result = sub_1E68861CC(&v34);
    v25 = *&v36[32];
    v26 = v37;
    v27 = v38;
    *(a2 + 96) = v39;
    goto LABEL_18;
  }

  if (v40 == 3)
  {
    *&v34 = a3;
    *(&v34 + 1) = a4;
    *&v35 = a5;
    *(&v35 + 1) = a6;
    *v36 = v43;
    *&v36[8] = xmmword_1E68C5CB0;
    *&v36[24] = xmmword_1E68C5CB0;
    v37 = BYTE8(v45);
    v38 = v46;
    v30 = 3;
    v39 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E68BFB70;
    *(v22 + 32) = 0;
    v28 = 0x4034000000000000;
    *(v22 + 40) = 2;
    *(v22 + 48) = 0x4034000000000000;
    v29 = 1;
    *(v22 + 56) = 1;
    *(v22 + 64) = 1;
    *(v22 + 72) = 4;
    *(v22 + 80) = 0x4034000000000000;
    *(v22 + 88) = 1;
    *(v22 + 96) = 2;
    *(v22 + 104) = 5;
    *(v22 + 112) = 0x4034000000000000;
    *(v22 + 120) = 1;
    *(v22 + 128) = 3;
    *(v22 + 136) = 11;
    *(v22 + 144) = 0x4034000000000000;
    *(v22 + 152) = 4;
    *(v22 + 160) = 4;
    *(v22 + 168) = 6;
    *(v22 + 176) = 0x4034000000000000;
    *(v22 + 184) = 1;
    *(v22 + 192) = 5;
LABEL_15:
    *(v22 + 200) = v30;
    goto LABEL_16;
  }

  if (v40 != 4)
  {
    *&v34 = a3;
    *(&v34 + 1) = a4;
    *&v35 = a5;
    *(&v35 + 1) = a6;
    *v36 = v43;
    *&v36[8] = xmmword_1E68C5CA0;
    *&v36[24] = xmmword_1E68C5CA0;
    v37 = BYTE8(v45);
    v38 = v46;
    v30 = 5;
    v39 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E68BFB70;
    *(v22 + 32) = 0;
    v28 = 0x4038000000000000;
    *(v22 + 40) = 3;
    *(v22 + 48) = 0x4038000000000000;
    v29 = 1;
    *(v22 + 56) = 1;
    *(v22 + 64) = 1;
    *(v22 + 72) = 6;
    *(v22 + 80) = 0x4038000000000000;
    *(v22 + 88) = 1;
    *(v22 + 96) = 2;
    *(v22 + 104) = 7;
    *(v22 + 112) = 0x4038000000000000;
    *(v22 + 120) = 1;
    *(v22 + 128) = 3;
    *(v22 + 136) = 4;
    *(v22 + 144) = 0x4038000000000000;
    *(v22 + 152) = 1;
    *(v22 + 160) = 4;
    *(v22 + 168) = 9;
    *(v22 + 176) = 0x4038000000000000;
    *(v22 + 184) = 1;
    *(v22 + 192) = 5;
    goto LABEL_15;
  }

  *&v34 = a3;
  *(&v34 + 1) = a4;
  *&v35 = a5;
  *(&v35 + 1) = a6;
  *v36 = v43;
  *&v36[8] = xmmword_1E68C5CA0;
  *&v36[24] = xmmword_1E68C5CA0;
  v37 = BYTE8(v45);
  v38 = v46;
  v39 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E28);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E68BFB70;
  *(v23 + 32) = 0;
  *(v23 + 40) = 5;
  *(v23 + 48) = 0x4038000000000000;
  *(v23 + 56) = 2;
  *(v23 + 64) = 1;
  *(v23 + 72) = 5;
  *(v23 + 80) = 0x4038000000000000;
  *(v23 + 88) = 1;
  *(v23 + 96) = 2;
  *(v23 + 104) = 6;
  *(v23 + 112) = 0x4038000000000000;
  *(v23 + 120) = 1;
  *(v23 + 128) = 3;
  *(v23 + 136) = 13;
  *(v23 + 144) = 0x4038000000000000;
  *(v23 + 152) = 4;
  *(v23 + 160) = 4;
  *(v23 + 168) = 7;
  *(v23 + 176) = 0x4038000000000000;
  *(v23 + 184) = 1;
  *(v23 + 192) = 5;
  *(v23 + 200) = 4;
  *(v23 + 208) = 0x4038000000000000;
  *(v23 + 216) = 1;
  v24 = sub_1E67FA670(v23);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1E688615C(&v41, v33);
  result = sub_1E68861CC(&v34);
  v25 = *&v36[32];
  v26 = v37;
  v27 = v38;
  *(a2 + 96) = 4;
LABEL_18:
  v31 = v35;
  *a2 = v34;
  *(a2 + 16) = v31;
  v32 = *&v36[16];
  *(a2 + 32) = *v36;
  *(a2 + 48) = v32;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  *(a2 + 80) = v27;
  *(a2 + 88) = v24;
  return result;
}

uint64_t DynamicLayoutProvider.transform(currentLayout:updatingDynamicTypeSize:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *(a3 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  *(a3 + 64) = v3;
  *(a3 + 72) = a2;
  *(a3 + 80) = v4;
  *(a3 + 88) = v5;
}

uint64_t sub_1E6886120@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *(a3 + 96) = *(a1 + 96);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  *(a3 + 64) = v3;
  *(a3 + 72) = a2;
  *(a3 + 80) = v4;
  *(a3 + 88) = v5;
}

uint64_t sub_1E688615C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E68861CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6886238()
{
  result = qword_1ED099E38;
  if (!qword_1ED099E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099E38);
  }

  return result;
}

unint64_t sub_1E6886290()
{
  result = qword_1ED099E40;
  if (!qword_1ED099E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099E40);
  }

  return result;
}

uint64_t sub_1E688635C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for StandardCardView();
  v24 = a9 + v23[9];
  v25 = *(a1 + 16);
  *v24 = *a1;
  *(v24 + 1) = v25;
  *(v24 + 12) = *(a1 + 96);
  v26 = *(a1 + 80);
  *(v24 + 4) = *(a1 + 64);
  *(v24 + 5) = v26;
  v27 = *(a1 + 48);
  *(v24 + 2) = *(a1 + 32);
  *(v24 + 3) = v27;
  (*(*(a17 - 8) + 32))(a9 + v23[10], a2, a17);
  v28 = (a9 + v23[11]);
  *v28 = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a6;
  v29 = (a9 + v23[12]);
  *v29 = a7;
  v29[1] = a8;
  v29[2] = a10;
  v29[3] = a11;
  v30 = a9 + v23[13];
  *v30 = a12;
  *(v30 + 2) = a13;
  *(v30 + 3) = a14;
  v31 = (a9 + v23[14]);
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v31 = sub_1E673F5E0;
  v31[1] = result;
  return result;
}

__n128 static StandardCardViewLayout.default.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1ED096D70 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1ED099E98;
  *(a1 + 64) = xmmword_1ED099E88;
  *(a1 + 80) = v1;
  *(a1 + 96) = qword_1ED099EA8;
  v2 = *&qword_1ED099E58;
  *a1 = xmmword_1ED099E48;
  *(a1 + 16) = v2;
  result = unk_1ED099E78;
  *(a1 + 32) = xmmword_1ED099E68;
  *(a1 + 48) = result;
  return result;
}

__n128 StandardCardViewLayout.contentInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  v3 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 StandardCardViewLayout.init(artworkAspectRatio:artworkCornerRadius:titleEdgePadding:titleLineLimit:subtitleLineLimit:captionLineLimit:contentInsets:titleSpacing:subtitleSpacing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = a8;
  *(a5 + 24) = a9;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 56) = *a4;
  *(a5 + 72) = v12;
  *(a5 + 88) = a10;
  *(a5 + 96) = a11;
  return result;
}

uint64_t sub_1E688660C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E694C656C746974;
    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    v6 = 0xD000000000000013;
    if (!a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x49746E65746E6F63;
    v2 = 0x617053656C746974;
    if (a1 != 7)
    {
      v2 = 0x656C746974627573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E688676C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6889DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6886794(uint64_t a1)
{
  v2 = sub_1E68892E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68867D0(uint64_t a1)
{
  v2 = sub_1E68892E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E688680C()
{
  v0 = 8.0;
  if (sub_1E68B2DF0())
  {
    sub_1E68B1A40();
    v0 = v1;
  }

  xmmword_1ED099E48 = xmmword_1E68BE010;
  qword_1ED099E58 = *&v0;
  qword_1ED099E60 = 0x4024000000000000;
  *&xmmword_1ED099E68 = 2;
  result = 0.0;
  *(&xmmword_1ED099E68 + 8) = 0u;
  unk_1ED099E80 = 0u;
  *(&xmmword_1ED099E88 + 8) = 0u;
  unk_1ED099EA0 = 0u;
  return result;
}

uint64_t StandardCardViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099EB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v20 = v1[5];
  v21 = v12;
  v19 = v1[6];
  v13 = *(v1 + 7);
  v17 = *(v1 + 9);
  v18 = v13;
  v15 = v1[11];
  v14 = v1[12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68892E4();
  sub_1E68B3BD0();
  *&v22 = v8;
  *(&v22 + 1) = v9;
  v24 = 0;
  type metadata accessor for CGSize(0);
  sub_1E6889AD4(&qword_1EE2EA448, type metadata accessor for CGSize);
  sub_1E68B3AB0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  *&v22 = v11;
  v24 = 1;
  sub_1E67621E8();
  sub_1E68B3AB0();
  *&v22 = v10;
  v24 = 2;
  sub_1E68B3AB0();
  LOBYTE(v22) = 3;
  sub_1E68B3AA0();
  LOBYTE(v22) = 4;
  sub_1E68B3AA0();
  LOBYTE(v22) = 5;
  sub_1E68B3AA0();
  v22 = v18;
  v23 = v17;
  v24 = 6;
  sub_1E67F4B08();
  sub_1E68B3AB0();
  *&v22 = v15;
  v24 = 7;
  sub_1E68B3AB0();
  *&v22 = v14;
  v24 = 8;
  sub_1E68B3AB0();
  return (*(v5 + 8))(v7, 0);
}

uint64_t StandardCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099EC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68892E4();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v25 = 0;
    sub_1E6889AD4(&qword_1ED096DC0, type metadata accessor for CGSize);
    sub_1E68B3A00();
    v9 = v23;
    v25 = 1;
    sub_1E6762A60();
    sub_1E68B3A00();
    v10 = v23;
    v25 = 2;
    sub_1E68B3A00();
    v11 = v23;
    LOBYTE(v23) = 3;
    v12 = sub_1E68B39F0();
    LOBYTE(v23) = 4;
    v22 = sub_1E68B39F0();
    LOBYTE(v23) = 5;
    v21 = sub_1E68B39F0();
    v25 = 6;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    v19 = v23;
    v20 = v24;
    v25 = 7;
    sub_1E68B3A00();
    v14 = v23;
    v25 = 8;
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    v15 = v23;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    v16 = v21;
    v17 = v22;
    *(a2 + 32) = v12;
    *(a2 + 40) = v17;
    *(a2 + 48) = v16;
    v18 = v20;
    *(a2 + 56) = v19;
    *(a2 + 72) = v18;
    *(a2 + 88) = v14;
    *(a2 + 96) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StandardCardViewLayout.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v20 = *(v0 + 96);
  sub_1E673E7F4(*v0, *(v0 + 8));
  if (v1 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v1;
  }

  MEMORY[0x1E69523F0](*&v11);
  if (v2 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v2;
  }

  MEMORY[0x1E69523F0](*&v12);
  MEMORY[0x1E69523D0](v3);
  MEMORY[0x1E69523D0](v4);
  MEMORY[0x1E69523D0](v5);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1E69523F0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1E69523F0](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1E69523F0](*&v15);
  if (v9 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x1E69523F0](*&v16);
  if (v10 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v10;
  }

  MEMORY[0x1E69523F0](*&v17);
  v18 = v20;
  if (v20 == 0.0)
  {
    v18 = 0.0;
  }

  return MEMORY[0x1E69523F0](*&v18);
}

uint64_t StandardCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  StandardCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6887150()
{
  sub_1E68B3B70();
  StandardCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6887194()
{
  sub_1E68B3B70();
  StandardCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E68871D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1E68B1EB0();
  v47 = v3;
  v63 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 - 8);
  v60 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(a1 + 16);
  v55 = a1;
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v7 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EE8);
  sub_1E68B1E40();
  v8 = sub_1E68B1E10();
  v56 = *(a1 + 24);
  v78 = v56;
  v79 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v76 = WitnessTable;
  v77 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1E6889AD4(&qword_1EE2EA838, MEMORY[0x1E697C168]);
  v72 = v7;
  v73 = v8;
  v74 = v11;
  v75 = v12;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EF0);
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  v13 = sub_1E68B2220();
  v14 = sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8);
  v70 = v11;
  v71 = v14;
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v68 = v15;
  v69 = v16;
  v53 = v13;
  v52 = swift_getWitnessTable();
  v17 = sub_1E68B2C30();
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v43 - v18;
  v19 = swift_getWitnessTable();
  v46 = v19;
  v45 = sub_1E6889AD4(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v72 = v17;
  v73 = v3;
  v74 = v19;
  v75 = v45;
  v49 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v44 = &v43 - v24;
  v25 = v58;
  v26 = v57;
  v27 = v61;
  v28 = v55;
  (*(v58 + 16))(v57, v61, v55, v23);
  v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v31 = v59;
  v32 = v56;
  *(v30 + 16) = v59;
  *(v30 + 24) = v32;
  (*(v25 + 32))(v30 + v29, v26, v28);
  v65 = v31;
  v66 = v32;
  v67 = v27;
  v33 = v48;
  sub_1E68B2C20();
  v34 = v62;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v35 = v47;
  v36 = v46;
  v37 = v45;
  sub_1E68B2790();
  (*(v63 + 8))(v34, v35);
  (*(v54 + 8))(v33, v17);
  v72 = v17;
  v73 = v35;
  v74 = v36;
  v75 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v44;
  v40 = OpaqueTypeMetadata2;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v41 = *(v51 + 8);
  v41(v21, v40);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v39, v40, OpaqueTypeConformance2);
  return (v41)(v39, v40);
}

uint64_t sub_1E6887978(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for StandardCardView() + 56);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

uint64_t sub_1E68879F8@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a1;
  v78 = a4;
  v74 = a2;
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v5 = sub_1E68B1E40();
  v6 = sub_1E68B1E10();
  v75 = a3;
  v93 = a3;
  v94 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v91 = WitnessTable;
  v92 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v87 = v5;
  v88 = v6;
  v77 = swift_getWitnessTable();
  v89 = v77;
  v90 = sub_1E6889AD4(&qword_1EE2EA838, MEMORY[0x1E697C168]);
  swift_getOpaqueTypeMetadata2();
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EF0);
  swift_getTupleTypeMetadata3();
  v63 = sub_1E68B2F00();
  v61 = swift_getWitnessTable();
  v7 = sub_1E68B2CC0();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v56 - v11;
  v58 = swift_checkMetadataState();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v56 - v12;
  v13 = swift_checkMetadataState();
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v56 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EE8);
  v62 = v13;
  v15 = sub_1E68B1E40();
  v65 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v56 - v19;
  v20 = sub_1E68B1DE0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  v76 = v7;
  v73 = sub_1E68B2220();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v56 - v27;
  v28 = v70;
  sub_1E677A200(v26);
  (*(v21 + 104))(v23, *MEMORY[0x1E697E6C0], v20);
  LOBYTE(v13) = sub_1E68B1DD0();
  v29 = *(v21 + 8);
  v29(v23, v20);
  v29(v26, v20);
  if (v13)
  {
    v31 = v74;
    v30 = v75;
    type metadata accessor for StandardCardView();
    v32 = v56;
    sub_1E68B2780();
    v33 = v59;
    v34 = v58;
    sub_1E68B2810();
    (*(v57 + 8))(v32, v34);
    v35 = sub_1E68B2E50();
    MEMORY[0x1EEE9AC00](v35);
    *(&v56 - 4) = v31;
    *(&v56 - 3) = v30;
    *(&v56 - 2) = v28;
    sub_1E6889BF0();
    v36 = v62;
    v37 = v77;
    sub_1E68B2A40();
    (*(v60 + 8))(v33, v36);
    v38 = sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8);
    v79 = v37;
    v80 = v38;
    v39 = swift_getWitnessTable();
    v40 = v64;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v17, v15, v39);
    v41 = *(v65 + 8);
    v41(v17, v15);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v40, v15, v39);
    swift_getWitnessTable();
    v42 = v71;
    sub_1E6744CC0(v17, v15);
    v41(v17, v15);
    v41(v40, v15);
  }

  else
  {
    v43 = sub_1E68B21D0();
    MEMORY[0x1EEE9AC00](v43);
    v44 = v75;
    *(&v56 - 4) = v74;
    *(&v56 - 3) = v44;
    *(&v56 - 2) = v28;
    sub_1E68B2CB0();
    v45 = v76;
    v46 = swift_getWitnessTable();
    v47 = v66;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v9, v45, v46);
    v48 = *(v67 + 8);
    v48(v9, v45);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v47, v45, v46);
    v49 = sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8);
    v37 = v77;
    v85 = v77;
    v86 = v49;
    swift_getWitnessTable();
    v42 = v71;
    sub_1E6744DB8(v9, v15, v45);
    v48(v9, v45);
    v48(v47, v45);
  }

  v50 = sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8);
  v83 = v37;
  v84 = v50;
  v51 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v81 = v51;
  v82 = v52;
  v53 = v73;
  v54 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v42, v53, v54);
  return (*(v72 + 8))(v42, v53);
}

double sub_1E68884D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E68B21D0();
  v6 = v2 + *(a1 + 36);
  v7 = *(v6 + 88);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F18);
  sub_1E6888C2C(v2, a2 + *(v8 + 44));
  v13 = *(v6 + 56);
  v14 = *(v6 + 72);
  LOBYTE(a1) = sub_1E68B2500();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099EF0) + 36);
  *(&v11 + 1) = *(&v13 + 1);
  *&v10 = v13;
  *&v11 = v14;
  *v9 = a1;
  *(&v10 + 1) = *(&v14 + 1);
  *(v9 + 24) = v10;
  *(v9 + 8) = v11;
  *(v9 + 40) = 0;
  return *&v11;
}

uint64_t sub_1E6888594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v56 = a3;
  v57 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099EF0);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v39 - v6;
  v7 = sub_1E68B1E10();
  v43 = v7;
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E68B1E40();
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v39 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v46 = v9;
  v11 = sub_1E68B1E40();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v39 - v12;
  v70 = a2;
  v71 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v68 = WitnessTable;
  v69 = v14;
  v15 = swift_getWitnessTable();
  v42 = v15;
  v41 = sub_1E6889AD4(&qword_1EE2EA838, MEMORY[0x1E697C168]);
  v64 = v11;
  v65 = v7;
  v66 = v15;
  v67 = v41;
  v44 = MEMORY[0x1E697CDE0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v40 = &v39 - v20;
  v21 = type metadata accessor for StandardCardView();
  v22 = v48;
  sub_1E68B2780();
  v23 = v47;
  v24 = v46;
  sub_1E68B2810();
  (*(v50 + 8))(v22, v24);
  v25 = v51;
  sub_1E68B1F70();
  v26 = v43;
  v27 = v42;
  v28 = v41;
  sub_1E68B27C0();
  (*(v52 + 8))(v25, v26);
  (*(v49 + 8))(v23, v11);
  v64 = v11;
  v65 = v26;
  v66 = v27;
  v67 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v40;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v31 = v45;
  v32 = *(v45 + 8);
  v32(v18, OpaqueTypeMetadata2);
  v33 = v53;
  v34 = sub_1E68884D0(v21, v53);
  (*(v31 + 16))(v18, v30, OpaqueTypeMetadata2, v34);
  v62 = 0x4014000000000000;
  v63 = 0;
  v64 = v18;
  v65 = &v62;
  v35 = v33;
  v36 = v33;
  v37 = v54;
  sub_1E67612FC(v35, v54, &qword_1ED099EF0);
  v66 = v37;
  v61[0] = OpaqueTypeMetadata2;
  v61[1] = MEMORY[0x1E6981840];
  v61[2] = v55;
  v58 = OpaqueTypeConformance2;
  v59 = MEMORY[0x1E6981838];
  v60 = sub_1E6889BF0();
  sub_1E6848F14(&v64, 3uLL, v61);
  sub_1E6744A10(v36, &qword_1ED099EF0);
  v32(v30, OpaqueTypeMetadata2);
  sub_1E6744A10(v37, &qword_1ED099EF0);
  return (v32)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_1E6888C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = sub_1E68B21B0();
  *&v85 = *(v3 - 8);
  *(&v85 + 1) = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73[-v9];
  v78 = type metadata accessor for StandardCardView();
  v79 = a1;
  v11 = (a1 + v78[11]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = (a1 + v78[9]);
  v86 = v16[4];
  KeyPath = swift_getKeyPath();
  LOBYTE(v118[0]) = 0;
  sub_1E673F228(v12, v13, v14, v15);
  LOBYTE(a1) = sub_1E68B2500();
  sub_1E68B1B30();
  LOBYTE(v102[0]) = 0;
  *&v111 = v12;
  *(&v111 + 1) = v13;
  *&v112 = v14;
  *(&v112 + 1) = v15;
  *&v113 = KeyPath;
  *(&v113 + 1) = v86;
  LOBYTE(v114) = 0;
  *(&v114 + 1) = 256;
  BYTE8(v114) = a1;
  *&v115 = v18;
  *(&v115 + 1) = v19;
  *&v116 = v20;
  *(&v116 + 1) = v21;
  v117 = 0;
  sub_1E68B21A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F28);
  sub_1E6889CA8();
  v86 = v10;
  v22 = v16;
  sub_1E68B2950();
  (*(v85 + 8))(v5, *(&v85 + 1));
  v118[4] = v115;
  v118[5] = v116;
  v119 = v117;
  v118[0] = v111;
  v118[1] = v112;
  v118[2] = v113;
  v118[3] = v114;
  sub_1E6744A10(v118, &qword_1ED099F28);
  v23 = v78;
  v24 = v79;
  v25 = (v79 + v78[12]);
  v27 = *v25;
  v26 = v25[1];
  v28 = v25[2];
  v29 = v25[3];
  *(&v85 + 1) = v22[5];
  *&v85 = swift_getKeyPath();
  LOBYTE(v111) = 0;
  v82 = v28;
  v83 = v26;
  v30 = v29;
  sub_1E673F228(v27, v26, v28, v29);
  v84 = sub_1E68B2500();
  sub_1E68B1B30();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = (v24 + v23[13]);
  v40 = *v39;
  v41 = v39[1];
  v43 = v39[2];
  v42 = v39[3];
  if (v42)
  {
    v77 = v22[12];
  }

  else
  {
    v77 = 0;
  }

  v76 = v42 == 0;
  v78 = v22[6];
  v75 = swift_getKeyPath();
  LOBYTE(v111) = 0;
  sub_1E673F228(v40, v41, v43, v42);
  v74 = sub_1E68B2500();
  sub_1E68B1B30();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v87;
  sub_1E67612FC(v86, v87, &qword_1ED099F20);
  v53 = v52;
  v54 = v81;
  sub_1E67612FC(v53, v81, &qword_1ED099F20);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099F48);
  v56 = v54 + v55[12];
  *&v88 = v27;
  *(&v88 + 1) = v83;
  *&v89 = v82;
  *(&v89 + 1) = v30;
  v79 = v27;
  v80 = v30;
  v90 = v85;
  LOWORD(v91) = 0;
  BYTE2(v91) = 1;
  *(&v91 + 3) = v121;
  BYTE7(v91) = v122;
  BYTE8(v91) = v84;
  *(&v91 + 9) = *v120;
  HIDWORD(v91) = *&v120[3];
  *&v92 = v32;
  *(&v92 + 1) = v34;
  *&v93 = v36;
  *(&v93 + 1) = v38;
  v94 = 0;
  v57 = v92;
  v58 = v93;
  *(v56 + 96) = 0;
  *(v56 + 64) = v57;
  *(v56 + 80) = v58;
  v59 = v88;
  v60 = v89;
  v61 = v91;
  *(v56 + 32) = v90;
  *(v56 + 48) = v61;
  *v56 = v59;
  *(v56 + 16) = v60;
  v62 = v54 + v55[16];
  *v62 = v77;
  *(v62 + 8) = 0;
  *(v62 + 9) = v76;
  v63 = v54 + v55[20];
  *&v95 = v40;
  *(&v95 + 1) = v41;
  v64 = v40;
  v65 = v41;
  *&v96 = v43;
  *(&v96 + 1) = v42;
  v66 = v75;
  v67 = v78;
  *&v97 = v75;
  *(&v97 + 1) = v78;
  LOBYTE(v98) = 0;
  *(&v98 + 1) = 256;
  v68 = v74;
  BYTE8(v98) = v74;
  *&v99 = v45;
  *(&v99 + 1) = v47;
  *&v100 = v49;
  *(&v100 + 1) = v51;
  v101 = 0;
  *(v63 + 96) = 0;
  v69 = v96;
  *v63 = v95;
  *(v63 + 16) = v69;
  v70 = v98;
  *(v63 + 32) = v97;
  *(v63 + 48) = v70;
  v71 = v100;
  *(v63 + 64) = v99;
  *(v63 + 80) = v71;
  sub_1E67612FC(&v88, &v111, &qword_1ED099F28);
  sub_1E67612FC(&v95, &v111, &qword_1ED099F28);
  sub_1E6744A10(v86, &qword_1ED099F20);
  v102[0] = v64;
  v102[1] = v65;
  v102[2] = v43;
  v102[3] = v42;
  v102[4] = v66;
  v102[5] = v67;
  v103 = 0;
  v104 = 256;
  v105 = v68;
  v106 = v45;
  v107 = v47;
  v108 = v49;
  v109 = v51;
  v110 = 0;
  sub_1E6744A10(v102, &qword_1ED099F28);
  *&v111 = v79;
  *(&v111 + 1) = v83;
  *&v112 = v82;
  *(&v112 + 1) = v80;
  v113 = v85;
  LOWORD(v114) = 0;
  BYTE2(v114) = 1;
  *(&v114 + 3) = v121;
  BYTE7(v114) = v122;
  BYTE8(v114) = v84;
  *(&v114 + 9) = *v120;
  HIDWORD(v114) = *&v120[3];
  *&v115 = v32;
  *(&v115 + 1) = v34;
  *&v116 = v36;
  *(&v116 + 1) = v38;
  v117 = 0;
  sub_1E6744A10(&v111, &qword_1ED099F28);
  return sub_1E6744A10(v87, &qword_1ED099F20);
}

BOOL _s15FitnessCanvasUI22StandardCardViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 56)), vceqq_f64(*(a1 + 72), *(a2 + 72)))))) & 1) != 0 && *(a1 + 88) == *(a2 + 88) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  return result;
}

unint64_t sub_1E68892E4()
{
  result = qword_1ED099EB8;
  if (!qword_1ED099EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099EB8);
  }

  return result;
}

unint64_t sub_1E688933C()
{
  result = qword_1ED099EC8;
  if (!qword_1ED099EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099EC8);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E68893BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E68893DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
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

  *(result + 104) = v3;
  return result;
}

void sub_1E6889440()
{
  sub_1E674828C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1E673ED38();
      if (v2 <= 0x3F)
      {
        sub_1E673ED88();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E6889508(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((v12 + (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 112) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
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
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v11 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v22 = (((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 104) & ~v9;
  if (v8 < 0x7FFFFFFF)
  {
    v24 = *((((((((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  else
  {
    v23 = *(*(*(a3 + 16) - 8) + 48);

    return v23(v22);
  }
}

void sub_1E6889718(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1DE0() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 64) + 7;
  v15 = ((((((((v14 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 112) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 112) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 104) & ~v12;
      if (v11 < 0x7FFFFFFF)
      {
        v24 = ((((((((v14 + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v24 = a2 & 0x7FFFFFFF;
          v24[1] = 0;
        }

        else
        {
          *v24 = (a2 - 1);
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 112) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 112) & ~v12)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_1E688998C()
{
  result = qword_1ED099ED0;
  if (!qword_1ED099ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099ED0);
  }

  return result;
}

unint64_t sub_1E68899E4()
{
  result = qword_1ED099ED8;
  if (!qword_1ED099ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099ED8);
  }

  return result;
}

unint64_t sub_1E6889A3C()
{
  result = qword_1ED099EE0;
  if (!qword_1ED099EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099EE0);
  }

  return result;
}

uint64_t sub_1E6889AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6889B1C()
{
  v1 = *(type metadata accessor for StandardCardView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E6887978(v2);
}

unint64_t sub_1E6889BF0()
{
  result = qword_1ED099F00;
  if (!qword_1ED099F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EF0);
    sub_1E673F530(&qword_1ED099F08, &qword_1ED099F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099F00);
  }

  return result;
}

unint64_t sub_1E6889CA8()
{
  result = qword_1ED099F30;
  if (!qword_1ED099F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099F28);
    sub_1E6889D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099F30);
  }

  return result;
}

unint64_t sub_1E6889D34()
{
  result = qword_1ED099F38;
  if (!qword_1ED099F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099F40);
    sub_1E67C6144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099F38);
  }

  return result;
}

uint64_t sub_1E6889DC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2B40 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E30E0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E694C656C746974 && a2 == 0xEE0074696D694C65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2BA0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2BC0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xED0000737465736ELL || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617053656C746974 && a2 == 0xEC000000676E6963 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEF676E6963617053)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t CanvasLayout.withBounds(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = *(a1 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 32);
  v16 = *(v6 + 56);
  v23[0] = *(v6 + 40);
  v23[1] = v16;
  v17 = *(v6 + 80);
  v18 = *(v6 + 88);
  v21 = *(v6 + 72);
  (*(v20 + 16))(v14, v6 + *(v19 + 72), v12);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v23, v21, v18, v14, v12, a2, a3, a4, a5, a6, v15, v17);
}

uint64_t CanvasLayout.withCarouselPageControlSpacing(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(a1 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 56);
  v20[0] = *(v3 + 40);
  v20[1] = v13;
  v14 = *(v3 + 80);
  v15 = *(v3 + 88);
  v18 = *(v3 + 72);
  (*(v17 + 16))(v8, v3 + *(v16 + 72), v6);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v20, v18, v15, v8, v6, a2, v9, v10, v11, v12, a3, v14);
}

uint64_t CanvasSectionDensityFactor.columnCount.getter()
{
  v1 = ceil(*v0 / v0[2]);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E688A3D8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v12;
  v13 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v13;
  *(a9 + 64) = a2;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  v14 = *(type metadata accessor for InfoActionCardView() + 44);
  v15 = sub_1E68B3750();
  v16 = *(*(v15 - 8) + 32);

  return v16(a9 + v14, a11, v15);
}

double static InfoActionCardViewLayout.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED096D78 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1ED099F60;
  *a1 = xmmword_1ED099F50;
  a1[1] = v1;
  result = *&xmmword_1ED099F70;
  v3 = unk_1ED099F80;
  a1[2] = xmmword_1ED099F70;
  a1[3] = v3;
  return result;
}

__n128 InfoActionCardViewLayout.cardBackgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 InfoActionCardViewLayout.init(cornerRadius:descriptionButtonSpacing:buttonTopBottomPadding:buttonLeadingTrailingPadding:cardBackgroundColor:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  result = *a1;
  v7 = *(a1 + 16);
  *(a2 + 32) = *a1;
  *(a2 + 48) = v7;
  return result;
}

unint64_t sub_1E688A53C()
{
  v1 = *v0;
  v2 = 0x615272656E726F63;
  v3 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
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