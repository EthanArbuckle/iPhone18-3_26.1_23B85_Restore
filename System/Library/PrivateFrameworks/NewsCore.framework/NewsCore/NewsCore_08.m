void sub_1B64E22A0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_1B67D877C() - 8);
  v13 = *(v12 + 64);
  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (v10 <= 0xFA)
  {
    v14 = 250;
  }

  else
  {
    v14 = v10;
  }

  if (v9)
  {
    v15 = *(v8 + 64);
  }

  else
  {
    v15 = *(v8 + 64) + 1;
  }

  v16 = *(v12 + 80) & 0xF8 | 7;
  v17 = v13 + ((v15 + v16) & ~v16) + 1;
  if (a3 <= v14)
  {
LABEL_26:
    if (v14 < a2)
    {
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  if (v17 > 3)
  {
    v11 = 1;
    if (v14 >= a2)
    {
      goto LABEL_15;
    }

LABEL_27:
    v20 = ~v14 + a2;
    if (v17 >= 4)
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
      if (v11 > 1)
      {
        goto LABEL_29;
      }

LABEL_73:
      if (v11)
      {
        a1[v17] = v21;
      }

      return;
    }

    v21 = (v20 >> (8 * v17)) + 1;
    if (v13 + ((v15 + v16) & ~v16) != -1)
    {
      v25 = v20 & ~(-1 << (8 * v17));
      bzero(a1, v17);
      if (v17 != 3)
      {
        if (v17 == 2)
        {
          *a1 = v25;
          if (v11 <= 1)
          {
            goto LABEL_73;
          }
        }

        else
        {
          *a1 = v20;
          if (v11 <= 1)
          {
            goto LABEL_73;
          }
        }

LABEL_29:
        if (v11 == 2)
        {
          *&a1[v17] = v21;
        }

        else
        {
          *&a1[v17] = v21;
        }

        return;
      }

      *a1 = v25;
      a1[2] = BYTE2(v25);
    }

    if (v11 <= 1)
    {
      goto LABEL_73;
    }

    goto LABEL_29;
  }

  v18 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
  if (!HIWORD(v18))
  {
    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_26;
  }

  v11 = 4;
  if (v14 < a2)
  {
    goto LABEL_27;
  }

LABEL_15:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v11)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 < 0xFA)
  {
    a1 = (&a1[v15 + v16] & ~v16);
    if (a2 <= 0xFA)
    {
      a1[v13] = -a2;
      return;
    }

    v27 = (v13 + 1);
    v28 = -1 << (8 * (v13 + 1));
    if (v27 <= 3)
    {
      v29 = ~v28;
    }

    else
    {
      v29 = -1;
    }

    if (v27)
    {
      v23 = v29 & (a2 - 251);
      if (v27 <= 3)
      {
        v24 = v27;
      }

      else
      {
        v24 = 4;
      }

      bzero(a1, v27);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
          goto LABEL_45;
        }

        goto LABEL_70;
      }

      goto LABEL_78;
    }
  }

  else if (v10 >= a2)
  {
    v26 = *(v30 + 56);

    v26(a1, a2 + 1, v9, v7);
  }

  else
  {
    if (v15 <= 3)
    {
      v22 = ~(-1 << (8 * v15));
    }

    else
    {
      v22 = -1;
    }

    if (v15)
    {
      v23 = v22 & (~v10 + a2);
      if (v15 <= 3)
      {
        v24 = v15;
      }

      else
      {
        v24 = 4;
      }

      bzero(a1, v15);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
LABEL_45:
          *a1 = v23;
          return;
        }

LABEL_70:
        *a1 = v23;
        return;
      }

LABEL_78:
      if (v24 == 3)
      {
        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      else
      {
        *a1 = v23;
      }
    }
  }
}

uint64_t sub_1B64E2664(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B64E26B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B64E2708(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B64E2720(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of RecipeItemServiceType.fetchRecipeItems(cursor:controlFlow:recipeItemHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 24);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1B642694C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of RecipeItemServiceType.shouldRefresh(cursor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B64D0F34;

  return v11(a1, a2, a3);
}

uint64_t *sub_1B64E29D4()
{
  if (qword_1EDB25A10 != -1)
  {
    swift_once();
  }

  return &qword_1EDB20598;
}

uint64_t RecipeBoxItem.identifier.getter()
{
  v1 = *v0;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t RecipeBoxItem.recipeID.getter()
{
  v1 = *(*(v0 + 8) + 32);

  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t RecipeBoxItem.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(*(v1 + 16) + 32);

  sub_1B67D8DCC();

  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64E2C48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B64E2C74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v5 = a2[3];

  sub_1B67D8B5C();
}

uint64_t RecipeBoxItem.init(recipeID:dateAdded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v70 = a3;
  v67 = a1;
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  v22(v18, 1, 1, v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v65 = sub_1B67D8B3C();
  *a4 = v65;
  v22(v20, 1, 1, v21);
  v22(v18, 1, 1, v21);
  v29 = *(v23 + 48);
  v30 = *(v23 + 52);
  swift_allocObject();
  v31 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB25A10 != -1)
  {
    swift_once();
  }

  v32 = qword_1EDB20598;
  v33 = unk_1EDB205A0;

  v34 = sub_1B6421E80();
  v64 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v31, v32, v33, v34 & 1);
  a4[1] = v64;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v36 = *(v35 - 8);
  v63 = a4;
  v37 = *(v36 + 56);
  v37(v71, 1, 1, v35);
  v37(v12, 1, 1, v35);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v66 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  v41 = v12;
  if (qword_1EDB25A08 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDB20588;
  v43 = unk_1EDB20590;
  v44 = sub_1B67D877C();
  sub_1B6421ED0();

  v45 = sub_1B6421E80();
  v46 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v66, v42, v43, v45 & 1);
  v47 = v63;
  v63[2] = v46;
  v37(v71, 1, 1, v35);
  v37(v41, 1, 1, v35);
  v48 = *(v38 + 48);
  v49 = *(v38 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v47[3] = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v54 = v67;
  v53 = v68;
  v72 = v67;
  v73 = v68;

  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v55 = v69;
  sub_1B67D876C();
  v56 = *(v44 - 8);
  v57 = *(v56 + 56);
  v57(v55, 0, 1, v44);
  sub_1B67D8DDC();

  v58 = *(v64 + 32);
  v72 = v54;
  v73 = v53;

  sub_1B67D8DDC();

  v59 = *(v46 + 32);
  v60 = v70;
  (*(v56 + 16))(v55, v70, v44);
  v57(v55, 0, 1, v44);

  sub_1B67D8DDC();

  return (*(v56 + 8))(v60, v44);
}

uint64_t RecipeBoxItem.fastEntity.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  v5 = sub_1B67D8B8C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1B67D8BDC();
}

uint64_t sub_1B64E3488()
{
  v1 = 25705;
  v2 = 0x646441657461645FLL;
  if (*v0 != 2)
  {
    v2 = 0x6465696669646F6DLL;
  }

  if (*v0)
  {
    v1 = 0x496570696365725FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B64E3500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B64E4514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B64E3528(uint64_t a1)
{
  v2 = sub_1B64E38D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64E3564(uint64_t a1)
{
  v2 = sub_1B64E38D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecipeBoxItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B720, &qword_1B6817D18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v17 = v1[2];
  v18 = v9;
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64E38D4();

  sub_1B67DA47C();
  v20 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();

  if (!v2)
  {
    v13 = v16;
    v14 = v17;
    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
    sub_1B6413CCC(&qword_1EB94A6E8, &qword_1EB94A6B0, &qword_1B6812380);
    sub_1B67DA24C();
    v20 = v14;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
    sub_1B6413CCC(&qword_1EB94A5F0, &qword_1EB94A5B8, &unk_1B6812390);
    sub_1B67DA24C();
    v20 = v13;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA24C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B64E38D4()
{
  result = qword_1EB958600[0];
  if (!qword_1EB958600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958600);
  }

  return result;
}

uint64_t RecipeBoxItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a1;
  v58 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B728, &qword_1B6817D20);
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v19(v15, 1, 1, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v60 = v23;
  swift_allocObject();
  v65 = sub_1B67D8B3C();
  v19(v17, 1, 1, v18);
  v19(v15, 1, 1, v18);
  v26 = *(v20 + 48);
  v27 = *(v20 + 52);
  swift_allocObject();
  v28 = sub_1B67D8DBC();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB25A10 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDB20598;
  v31 = unk_1EDB205A0;

  v32 = sub_1B6421E80();
  v59 = v29;
  v64 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v28, v30, v31, v32 & 1);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v34 = *(*(v33 - 8) + 56);
  v34(v10, 1, 1, v33);
  v34(v69, 1, 1, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v68 = sub_1B67D8DBC();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  if (qword_1EDB25A08 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDB20588;
  v39 = unk_1EDB20590;
  sub_1B67D877C();
  sub_1B6421ED0();

  v41 = sub_1B6421E80();
  v68 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v68, v40, v39, v41 & 1);
  v34(v10, 1, 1, v33);
  v34(v69, 1, 1, v33);
  v42 = *(v35 + 48);
  v43 = *(v35 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v47 = v67;
  v48 = v67[4];
  __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  sub_1B64E38D4();
  v49 = v66;
  v50 = v63;
  sub_1B67DA46C();
  if (!v50)
  {
    v69 = v38;
    v70 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    v51 = v62;
    sub_1B67DA1CC();

    v52 = v71;
    v70 = 1;
    sub_1B6413CCC(&qword_1EB94A708, &qword_1EB94A6B0, &qword_1B6812380);
    sub_1B67DA1CC();

    v53 = v71;
    v70 = 2;
    sub_1B6413CCC(&qword_1EB94A620, &qword_1EB94A5B8, &unk_1B6812390);
    sub_1B67DA1CC();

    v68 = v71;
    v70 = 3;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA1CC();
    (*(v61 + 8))(v49, v51);

    v55 = v71;
    v56 = v58;
    *v58 = v52;
    v56[1] = v53;
    v56[2] = v68;
    v56[3] = v55;
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1B64E41EC(uint64_t a1)
{
  v2 = sub_1B6417710();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64E4238(uint64_t a1)
{
  v2 = sub_1B6417710();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64E4284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6417710();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64E42E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6417710();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64E4334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6417710();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64E4388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6417710();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1B64E4410()
{
  result = qword_1EB958710[0];
  if (!qword_1EB958710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958710);
  }

  return result;
}

unint64_t sub_1B64E4468()
{
  result = qword_1EB958820;
  if (!qword_1EB958820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958820);
  }

  return result;
}

unint64_t sub_1B64E44C0()
{
  result = qword_1EB958828[0];
  if (!qword_1EB958828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958828);
  }

  return result;
}

uint64_t sub_1B64E4514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496570696365725FLL && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646441657461645FLL && a2 == 0xEA00000000006465 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B67DA2DC();

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

uint64_t sub_1B64E4684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v56 = a1;
  v57 = a2;
  v9 = sub_1B67D87BC();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = [v16 sharedAccount];
  v18 = [v17 currentStoreFrontID];

  if (v18)
  {
    v55 = a4;
    v19 = sub_1B67D964C();
    v53 = v20;
    v54 = v19;

    v21 = *(v6 + 80);
    v22 = *(v6 + 88);
    __swift_project_boxed_opaque_existential_1((v6 + 56), v21);
    v23 = (*(v22 + 8))(v21, v22);
    if (v5)
    {

      v51 = 0xF000000000000000;
      v52 = 0;
    }

    else
    {
      v51 = v24;
      v52 = v23;
    }

    sub_1B64E4EC4(v56, v58);
    if (a3)
    {
      v56 = a3;
    }

    else
    {
      sub_1B67D87AC();
      v27 = sub_1B67D879C();
      v56 = v28;
      v57 = v27;
      (*(v50 + 8))(v12, v9);
    }

    v29 = [v16 sharedAccount];
    v30 = [v29 preferredLanguageCodes];

    v47 = v30;
    v50 = sub_1B67D97BC();
    v31 = [*(v6 + 24) cachedSubscription];
    v49 = [v31 subscriptionState];

    v32 = *(v6 + 40);
    v33 = [v32 rankedAllSubscribedTagIDs];
    v48 = sub_1B67D97BC();
    v34 = [v32 autoFavoriteTagIDs];
    v46 = sub_1B67D9AFC();
    v35 = [v32 mutedTagIDs];
    v45 = sub_1B67D9AFC();
    v36 = [*(v6 + 32) purchasedTagIDs];
    v44 = sub_1B67D9AFC();
    v37 = [*(v6 + 48) requiredArticleKeys];
    v38 = sub_1B67D97BC();
    v39 = [*(v6 + 16) possiblyUnfetchedAppConfiguration];
    result = [v39 respondsToSelector_];
    if (result)
    {

      v40 = [v39 smarterFetchStrategy];
      swift_unknownObjectRelease();
      if (v40)
      {
        v41 = sub_1B67D964C();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      return sub_1B650C918(v58, v57, v56, v54, v53, v50, v49, v48, v55, v46, v45, v44, v38, v41, v43, v52, v51);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1B64E4E70();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B64E4B20(uint64_t a1)
{
  v2 = type metadata accessor for SmarterFetchRequest.DataType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B64E4B7C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[6];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return swift_deallocClassInstance();
}

uint64_t sub_1B64E4C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a4;
  v10 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0) + 48);
  v16 = sub_1B67D877C();
  (*(*(v16 - 8) + 16))(v13, a1, v16);
  sub_1B6403FD4(a2, &v13[v15]);
  swift_storeEnumTagMultiPayload();
  sub_1B64E4684(v13, a3, v19, a5);
  return sub_1B64E4B20(v13);
}

uint64_t sub_1B64E4DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  swift_storeEnumTagMultiPayload();
  sub_1B64E4684(v6, 0, 0, a1);
  return sub_1B64E4B20(v6);
}

unint64_t sub_1B64E4E70()
{
  result = qword_1EB9588B0;
  if (!qword_1EB9588B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9588B0);
  }

  return result;
}

uint64_t sub_1B64E4EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmarterFetchRequest.DataType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B64E4F3C()
{
  result = qword_1EB9588B8[0];
  if (!qword_1EB9588B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9588B8);
  }

  return result;
}

id sub_1B64E504C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10 = sub_1B67D86DC();
  (*(v6 + 8))(v9, v5);

  return v10;
}

uint64_t sub_1B64E5164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1B67D877C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id ItemExposure.__allocating_init(itemID:firstExposedAt:lastExposedAt:maxExposedVersion:maxExposedVersionFirstExposedAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  v14 = &v13[OBJC_IVAR___FCItemExposure_itemID];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v16 = sub_1B67D877C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v13[v15], a3, v16);
  v18(&v13[OBJC_IVAR___FCItemExposure_lastExposedAt], a4, v16);
  v18(&v13[OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt], a6, v16);
  *&v13[OBJC_IVAR___FCItemExposure_maxExposedVersion] = a5;
  v23.receiver = v13;
  v23.super_class = v7;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  v20 = *(v17 + 8);
  v20(a6, v16);
  v20(a4, v16);
  v20(a3, v16);
  return v19;
}

id ItemExposure.init(itemID:firstExposedAt:lastExposedAt:maxExposedVersion:maxExposedVersionFirstExposedAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v14 = &v7[OBJC_IVAR___FCItemExposure_itemID];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v16 = sub_1B67D877C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v7[v15], a3, v16);
  v18(&v7[OBJC_IVAR___FCItemExposure_lastExposedAt], a4, v16);
  v18(&v7[OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt], a6, v16);
  *&v7[OBJC_IVAR___FCItemExposure_maxExposedVersion] = a5;
  v23.receiver = v7;
  v23.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  v20 = *(v17 + 8);
  v20(a6, v16);
  v20(a4, v16);
  v20(a3, v16);
  return v19;
}

id ItemExposure.__allocating_init(itemID:exposedAt:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___FCItemExposure_itemID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v12 = sub_1B67D877C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(&v9[v11], a3, v12);
  v14(&v9[OBJC_IVAR___FCItemExposure_lastExposedAt], a3, v12);
  *&v9[OBJC_IVAR___FCItemExposure_maxExposedVersion] = a4;
  v14(&v9[OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt], a3, v12);
  v17.receiver = v9;
  v17.super_class = v4;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a3, v12);
  return v15;
}

id ItemExposure.init(itemID:exposedAt:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___FCItemExposure_itemID];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v12 = sub_1B67D877C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(&v4[v11], a3, v12);
  v14(&v4[OBJC_IVAR___FCItemExposure_lastExposedAt], a3, v12);
  *&v4[OBJC_IVAR___FCItemExposure_maxExposedVersion] = a4;
  v14(&v4[OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt], a3, v12);
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a3, v12);
  return v15;
}

uint64_t ItemExposure.description.getter()
{
  ItemExposure.shortDescription.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1B67D897C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t ItemExposure.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6818210;
  *(inited + 32) = 0x44496D657469;
  *(inited + 40) = 0xE600000000000000;
  v5 = *(v2 + OBJC_IVAR___FCItemExposure_itemID + 8);
  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(v2 + OBJC_IVAR___FCItemExposure_itemID);
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  strcpy((inited + 80), "firstExposedAt");
  *(inited + 95) = -18;
  v7 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v8 = sub_1B67D877C();
  *(inited + 120) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
  v10 = *(*(v8 - 8) + 16);
  v10(boxed_opaque_existential_0, v2 + v7, v8);
  strcpy((inited + 128), "lastExposedAt");
  *(inited + 142) = -4864;
  v11 = OBJC_IVAR___FCItemExposure_lastExposedAt;
  *(inited + 168) = v8;
  v12 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
  v10(v12, v2 + v11, v8);
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x80000001B6828440;
  v13 = MEMORY[0x1E69E6530];
  *(inited + 192) = *(v2 + OBJC_IVAR___FCItemExposure_maxExposedVersion);
  *(inited + 216) = v13;
  *(inited + 224) = 0xD00000000000001FLL;
  *(inited + 232) = 0x80000001B6828460;
  v14 = OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt;
  *(inited + 264) = v8;
  v15 = __swift_allocate_boxed_opaque_existential_0((inited + 240));
  v10(v15, v2 + v14, v8);

  sub_1B6482328(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A848, &qword_1B6812AB0);
  swift_arrayDestroy();
  a1[3] = sub_1B67D895C();
  a1[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1B67D894C();
}

uint64_t ItemExposure.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B6415FF0(a1, v6, &qword_1EB94B738, &unk_1B6819580);
  if (!v7)
  {
    sub_1B64E6418(v6);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = _s8NewsCore12ItemExposureC2eeoiySbAC_ACtFZ_0(v1, v5);

  return v3 & 1;
}

uint64_t ItemExposure.hash.getter()
{
  sub_1B67DA42C();
  v1 = *(v0 + OBJC_IVAR___FCItemExposure_itemID);
  v2 = *(v0 + OBJC_IVAR___FCItemExposure_itemID + 8);
  sub_1B67D967C();
  sub_1B67D877C();
  sub_1B64E6594(&qword_1EB94B740, MEMORY[0x1E6969530]);
  sub_1B67D95DC();
  sub_1B67D95DC();
  MEMORY[0x1B8C95640](*(v0 + OBJC_IVAR___FCItemExposure_maxExposedVersion));
  sub_1B67D95DC();
  return sub_1B67DA40C();
}

id ItemExposure.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ItemExposure.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ItemExposure.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCItemExposure_itemID);
  v2 = *(v0 + OBJC_IVAR___FCItemExposure_itemID + 8);

  return v1;
}

uint64_t sub_1B64E63B4()
{
  v1 = (*v0 + OBJC_IVAR___FCItemExposure_itemID);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1B64E6418(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B738, &unk_1B6819580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8NewsCore12ItemExposureC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR___FCItemExposure_itemID) == *(a2 + OBJC_IVAR___FCItemExposure_itemID) && *(a1 + OBJC_IVAR___FCItemExposure_itemID + 8) == *(a2 + OBJC_IVAR___FCItemExposure_itemID + 8);
  if (!v4 && (sub_1B67DA2DC() & 1) == 0 || (sub_1B67D873C() & 1) == 0 || (sub_1B67D873C() & 1) == 0 || *(a1 + OBJC_IVAR___FCItemExposure_maxExposedVersion) != *(a2 + OBJC_IVAR___FCItemExposure_maxExposedVersion))
  {
    return 0;
  }

  return sub_1B67D873C();
}

uint64_t sub_1B64E6594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ItemExposure()
{
  result = qword_1EDB26510;
  if (!qword_1EDB26510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B64E6630()
{
  result = sub_1B67D877C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1B64E6720()
{
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  return &qword_1EDB20558;
}

uint64_t RecipeHistoryItem.identifier.getter()
{
  v1 = *v0;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t RecipeHistoryItem.recipeID.getter()
{
  v1 = *(*(v0 + 8) + 32);

  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t RecipeHistoryItem.lastVisitedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  v12 = *(*(v1 + 16) + 32);

  sub_1B67D8DCC();

  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_1B6418AB4(v11, &qword_1EB949FA0, &qword_1B68182C0);
    v13 = sub_1B67D877C();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_1B6403FD4(v11, v7);
    sub_1B6418AB4(v11, &qword_1EB949FA0, &qword_1B68182C0);
    sub_1B67D9DEC();
    return sub_1B6418AB4(v7, &unk_1EB94A100, &qword_1B680FD50);
  }
}

uint64_t RecipeHistoryItem.lastSeenDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  v12 = *(*(v1 + 24) + 32);

  sub_1B67D8DCC();

  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_1B6418AB4(v11, &qword_1EB949FA0, &qword_1B68182C0);
    v13 = sub_1B67D877C();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    sub_1B6403FD4(v11, v7);
    sub_1B6418AB4(v11, &qword_1EB949FA0, &qword_1B68182C0);
    sub_1B67D9DEC();
    return sub_1B6418AB4(v7, &unk_1EB94A100, &qword_1B680FD50);
  }
}

uint64_t sub_1B64E6C74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];

  sub_1B67D8B5C();
}

uint64_t RecipeHistoryItem.init(recipeID:lastVisitedDate:lastSeenDate:lastModifiedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v103 = a4;
  v104 = a3;
  v96 = a1;
  v97 = a2;
  v105 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v101 = &v93 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v100 = *(v109 - 8);
  v10 = *(v100 + 64);
  v11 = MEMORY[0x1EEE9AC00](v109);
  v98 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v106 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v93 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v93 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v33 = *(*(v32 - 8) + 56);
  v33(v31, 1, 1, v32);
  v33(v29, 1, 1, v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v108 = sub_1B67D8B3C();
  v33(v31, 1, 1, v32);
  v33(v29, 1, 1, v32);
  v40 = *(v34 + 48);
  v41 = *(v34 + 52);
  swift_allocObject();
  v42 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  v102 = a5;
  v43 = qword_1EDB20558;
  v44 = unk_1EDB20560;

  v45 = sub_1B6421E80();
  v107 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v42, v43, v44, v45 & 1);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v47 = *(*(v46 - 8) + 56);
  v47(v24, 1, 1, v46);
  v47(v106, 1, 1, v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
  if (qword_1EDB24C08 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDB20568;
  v53 = unk_1EDB20570;
  sub_1B6416C84();

  v54 = sub_1B6421E80();
  v93 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v51, v52, v53, v54 & 1);
  v47(v24, 1, 1, v46);
  v47(v106, 1, 1, v46);
  v55 = *(v48 + 48);
  v56 = *(v48 + 52);
  swift_allocObject();
  v57 = sub_1B67D8DBC();
  if (qword_1EDB24C10 != -1)
  {
    swift_once();
  }

  v58 = qword_1EDB20578;
  v59 = unk_1EDB20580;

  v60 = v109;
  v61 = sub_1B6421E80();
  v106 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v57, v58, v59, v61 & 1);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v63 = *(*(v62 - 8) + 56);
  v63(v94, 1, 1, v62);
  v63(v95, 1, 1, v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v70 = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v72 = v96;
  v71 = v97;
  v110 = v96;
  v111 = v97;

  sub_1B67D8DDC();

  v73 = *(v107 + 32);
  v110 = v72;
  v111 = v71;

  sub_1B67D8DDC();

  v97 = v70;
  sub_1B67D8B4C();
  v74 = v102;
  v75 = v98;
  sub_1B6403FD4(v102, v98);
  v76 = sub_1B67D877C();
  v77 = *(v76 - 8);
  v78 = *(v77 + 48);
  v79 = v78(v75, 1, v76);
  v80 = v60;
  v81 = v99;
  if (v79 == 1)
  {
    sub_1B67D876C();
    if (v78(v75, 1, v76) != 1)
    {
      sub_1B6418AB4(v75, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    (*(v77 + 32))(v99, v75, v76);
  }

  (*(v77 + 56))(v81, 0, 1, v76);
  sub_1B67D8DDC();

  v82 = v93;
  v83 = *(v93 + 32);
  v84 = v104;
  v85 = v101;
  sub_1B6403FD4(v104, v101);
  v86 = *(v100 + 56);
  v86(v85, 0, 1, v80);

  sub_1B67D8DDC();

  v87 = v106;
  v88 = *(v106 + 4);
  v89 = v103;
  sub_1B6403FD4(v103, v85);
  v86(v85, 0, 1, v80);

  sub_1B67D8DDC();

  sub_1B6418AB4(v74, &unk_1EB94A100, &qword_1B680FD50);
  sub_1B6418AB4(v89, &unk_1EB94A100, &qword_1B680FD50);
  result = sub_1B6418AB4(v84, &unk_1EB94A100, &qword_1B680FD50);
  v91 = v105;
  v92 = v107;
  *v105 = v108;
  v91[1] = v92;
  v91[2] = v82;
  v91[3] = v87;
  v91[4] = v97;
  return result;
}

uint64_t RecipeHistoryItem.init(recipeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v88 = a1;
  v89 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v92 = *(v98 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v83 - v8;
  v9 = sub_1B67D877C();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v83 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v83 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 1, 1, v30);
  v31(v27, 1, 1, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v85 = sub_1B67D8B3C();
  *a3 = v85;
  v31(v29, 1, 1, v30);
  v31(v27, 1, 1, v30);
  v38 = *(v32 + 48);
  v39 = *(v32 + 52);
  swift_allocObject();
  v40 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDB20558;
  v42 = unk_1EDB20560;

  v43 = sub_1B6421E80();
  v84 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v40, v41, v42, v43 & 1);
  a3[1] = v84;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v45 = *(*(v44 - 8) + 56);
  v45(v97, 1, 1, v44);
  v45(v21, 1, 1, v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_1B67D8DBC();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
  if (qword_1EDB24C08 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDB20568;
  v50 = unk_1EDB20570;
  sub_1B6416C84();

  v52 = sub_1B6421E80();
  v53 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v49, v51, v50, v52 & 1);
  a3[2] = v53;
  v45(v97, 1, 1, v44);
  v45(v21, 1, 1, v44);
  v54 = *(v46 + 48);
  v55 = *(v46 + 52);
  swift_allocObject();
  v56 = sub_1B67D8DBC();
  v57 = a3;
  if (qword_1EDB24C10 != -1)
  {
    swift_once();
  }

  v58 = qword_1EDB20578;
  v59 = unk_1EDB20580;

  v60 = v98;
  v61 = sub_1B6421E80();
  v62 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v56, v58, v59, v61 & 1);
  v57[3] = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v64 = *(*(v63 - 8) + 56);
  v64(v86, 1, 1, v63);
  v64(v87, 1, 1, v63);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v57[4] = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v72 = v88;
  v71 = v89;
  v99 = v88;
  v100 = v89;

  sub_1B67D8DDC();

  v73 = *(v84 + 32);
  v99 = v72;
  v100 = v71;

  sub_1B67D8DDC();

  v74 = v91;
  sub_1B67D876C();
  v75 = *(v53 + 32);
  v76 = *(v92 + 56);
  v77 = v90;
  v76(v90, 1, 1, v60);

  sub_1B67D8DDC();

  v78 = *(v62 + 32);
  v76(v77, 1, 1, v60);

  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v80 = v93;
  v79 = v94;
  v81 = v95;
  (*(v93 + 16))(v95, v74, v94);
  (*(v80 + 56))(v81, 0, 1, v79);
  sub_1B67D8DDC();

  return (*(v80 + 8))(v74, v79);
}

uint64_t RecipeHistoryItem.fastEntity.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  v6 = sub_1B67D8B8C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_1B67D8BCC();
}

unint64_t sub_1B64E8168()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  v4 = 0x6565537473616C5FLL;
  if (v1 != 3)
  {
    v4 = 0x6465696669646F6DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496570696365725FLL;
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

uint64_t sub_1B64E8210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B64E9490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B64E8238(uint64_t a1)
{
  v2 = sub_1B64E8630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64E8274(uint64_t a1)
{
  v2 = sub_1B64E8630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecipeHistoryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B758, &qword_1B68182D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v19 = v1[2];
  v20 = v9;
  v17 = v1[4];
  v18 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64E8630();

  sub_1B67DA47C();
  v22 = v10;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (v2)
  {
  }

  else
  {
    v14 = v18;
    v13 = v19;

    v22 = v20;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
    sub_1B6413CCC(&qword_1EB94A6E8, &qword_1EB94A6B0, &qword_1B6812380);
    sub_1B67DA24C();
    v22 = v13;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
    sub_1B6413CCC(&qword_1EB94B760, &qword_1EB94B750, &unk_1B68182C8);
    sub_1B67DA24C();
    v22 = v14;
    v21 = 3;
    sub_1B67DA24C();
    v22 = v17;
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA24C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B64E8630()
{
  result = qword_1EB958B48[0];
  if (!qword_1EB958B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958B48);
  }

  return result;
}

uint64_t RecipeHistoryItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B768, &qword_1B68182E0);
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v86 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v25 = *(*(v24 - 8) + 56);
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v79 = v29;
  swift_allocObject();
  v91 = sub_1B67D8B3C();
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v32 = *(v26 + 48);
  v33 = *(v26 + 52);
  swift_allocObject();
  v34 = sub_1B67D8DBC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB24C00 != -1)
  {
    swift_once();
  }

  v87 = a1;
  v36 = qword_1EDB20558;
  v37 = unk_1EDB20560;

  v38 = sub_1B6421E80();
  v78 = v35;
  v90 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v34, v36, v37, v38 & 1);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v40 = *(*(v39 - 8) + 56);
  v40(v92, 1, 1, v39);
  v40(v15, 1, 1, v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v88 = sub_1B67D8DBC();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B750, &unk_1B68182C8);
  v44 = v15;
  if (qword_1EDB24C08 != -1)
  {
    swift_once();
  }

  v45 = qword_1EDB20568;
  v46 = unk_1EDB20570;

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  sub_1B6416C84();
  v82 = v47;
  v48 = sub_1B6421E80();
  v88 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v88, v45, v46, v48 & 1);
  v40(v92, 1, 1, v39);
  v40(v44, 1, 1, v39);
  v49 = *(v41 + 48);
  v50 = *(v41 + 52);
  swift_allocObject();
  v51 = sub_1B67D8DBC();
  if (qword_1EDB24C10 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDB20578;
  v52 = unk_1EDB20580;

  v54 = sub_1B6421E80();
  CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v51, v53, v52, v54 & 1);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v56 = *(*(v55 - 8) + 56);
  v56(v83, 1, 1, v55);
  v56(v84, 1, 1, v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v63 = v87;
  v64 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  sub_1B64E8630();
  v65 = v85;
  v66 = v86;
  sub_1B67DA46C();
  if (!v65)
  {
    v93 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    v67 = v81;
    sub_1B67DA1CC();

    v68 = v94;
    v93 = 1;
    sub_1B6413CCC(&qword_1EB94A708, &qword_1EB94A6B0, &qword_1B6812380);
    sub_1B67DA1CC();
    v91 = v68;

    v90 = v94;
    v93 = 2;
    v92 = sub_1B6413CCC(&qword_1EB94B770, &qword_1EB94B750, &unk_1B68182C8);
    sub_1B67DA1CC();

    v88 = v94;
    v93 = 3;
    sub_1B67DA1CC();

    v70 = v94;
    v93 = 4;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA1CC();
    (*(v80 + 8))(v66, v67);
    v71 = v91;

    v72 = v71;
    v73 = v94;
    v74 = v77;
    v75 = v90;
    *v77 = v72;
    v74[1] = v75;
    v74[2] = v88;
    v74[3] = v70;
    v74[4] = v73;
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1B64E9194(uint64_t a1)
{
  v2 = sub_1B6413B38();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64E91E0(uint64_t a1)
{
  v2 = sub_1B6413B38();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64E922C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6413B38();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64E9290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6413B38();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64E92DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6413B38();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64E9330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6413B38();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

BOOL sub_1B64E93A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return (_s8NewsCore17RecipeHistoryItemV1loiySbAC_ACtFZ_0(v7, v9) & 1) == 0;
}

BOOL sub_1B64E93F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return (_s8NewsCore17RecipeHistoryItemV1loiySbAC_ACtFZ_0(v9, v7) & 1) == 0;
}

uint64_t sub_1B64E9440(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = v2;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = v3;
  return _s8NewsCore17RecipeHistoryItemV1loiySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_1B64E9490(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496570696365725FLL && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B682A030 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6565537473616C5FLL && a2 == 0xED0000657461446ELL || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B67DA2DC();

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

uint64_t _s8NewsCore17RecipeHistoryItemV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v89 = sub_1B67D877C();
  v85 = *(v89 - 8);
  v4 = *(v85 + 64);
  v5 = MEMORY[0x1EEE9AC00](v89);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v83 = &v74 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v80 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v74 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B778, &unk_1B68186F0);
  v12 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v81 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v76 = &v74 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v74 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v74 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v82 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v78 = &v74 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v74 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v74 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v74 - v39;
  v41 = *(a1 + 16);
  v75 = *(a1 + 24);
  v42 = *(a2 + 16);
  v77 = *(a2 + 24);
  v43 = *(v41 + 32);

  sub_1B67D8DCC();

  v87 = *(v27 + 48);
  v88 = v27 + 48;
  if (v87(v25, 1, v26))
  {
    sub_1B6418AB4(v25, &qword_1EB949FA0, &qword_1B68182C0);
    v44 = v85;
    (*(v85 + 56))(v40, 1, 1, v89);
  }

  else
  {
    v44 = v85;
    sub_1B6403FD4(v25, v38);
    sub_1B6418AB4(v25, &qword_1EB949FA0, &qword_1B68182C0);
    sub_1B67D9DEC();
    sub_1B6418AB4(v38, &unk_1EB94A100, &qword_1B680FD50);
  }

  v45 = *(v42 + 32);

  sub_1B67D8DCC();

  v46 = v87(v23, 1, v26);
  v74 = v38;
  if (v46)
  {
    sub_1B6418AB4(v23, &qword_1EB949FA0, &qword_1B68182C0);
    v47 = v89;
    (*(v44 + 56))(v35, 1, 1, v89);
  }

  else
  {
    sub_1B6403FD4(v23, v38);
    sub_1B6418AB4(v23, &qword_1EB949FA0, &qword_1B68182C0);
    sub_1B67D9DEC();
    sub_1B6418AB4(v38, &unk_1EB94A100, &qword_1B680FD50);
    v47 = v89;
  }

  v48 = *(v86 + 48);
  sub_1B6404758(v40, v14);
  sub_1B6404758(v35, &v14[v48]);
  v49 = *(v44 + 48);
  v50 = v49(v14, 1, v47);
  v51 = v49(&v14[v48], 1, v47);
  if (v50 == 1)
  {
    if (v51 == 1)
    {
      v52 = *(v75 + 32);

      v53 = v76;
      sub_1B67D8DCC();

      if (v87(v53, 1, v26))
      {
        v54 = v26;
        sub_1B6418AB4(v53, &qword_1EB949FA0, &qword_1B68182C0);
        v55 = v78;
        (*(v44 + 56))(v78, 1, 1, v47);
        v57 = v83;
        v56 = v84;
        v59 = v81;
        v58 = v82;
      }

      else
      {
        v66 = v74;
        sub_1B6403FD4(v53, v74);
        sub_1B6418AB4(v53, &qword_1EB949FA0, &qword_1B68182C0);
        v67 = v78;
        v54 = v26;
        sub_1B67D9DEC();
        v68 = v66;
        v55 = v67;
        sub_1B6418AB4(v68, &unk_1EB94A100, &qword_1B680FD50);
        v69 = v49(v67, 1, v47);
        v57 = v83;
        v56 = v84;
        v59 = v81;
        v58 = v82;
        if (v69 != 1)
        {
          (*(v44 + 32))(v83, v55, v47);
          goto LABEL_19;
        }
      }

      sub_1B67D86AC();
      if (v49(v55, 1, v47) != 1)
      {
        sub_1B6418AB4(v55, &unk_1EB94A100, &qword_1B680FD50);
      }

LABEL_19:
      v70 = *(v77 + 32);

      sub_1B67D8DCC();

      if (v87(v59, 1, v54))
      {
        sub_1B6418AB4(v59, &qword_1EB949FA0, &qword_1B68182C0);
        (*(v44 + 56))(v58, 1, 1, v47);
      }

      else
      {
        v71 = v74;
        sub_1B6403FD4(v59, v74);
        sub_1B6418AB4(v59, &qword_1EB949FA0, &qword_1B68182C0);
        sub_1B67D9DEC();
        sub_1B6418AB4(v71, &unk_1EB94A100, &qword_1B680FD50);
        if (v49(v58, 1, v47) != 1)
        {
          (*(v44 + 32))(v56, v58, v47);
LABEL_25:
          v60 = sub_1B67D86FC();
          v72 = *(v44 + 8);
          v72(v56, v47);
          v72(v57, v47);
          return v60 & 1;
        }
      }

      sub_1B67D86AC();
      if (v49(v58, 1, v47) != 1)
      {
        sub_1B6418AB4(v58, &unk_1EB94A100, &qword_1B680FD50);
      }

      goto LABEL_25;
    }

    sub_1B6418AB4(&v14[v48], &unk_1EB94A100, &qword_1B680FD50);
    v60 = 0;
  }

  else if (v51 == 1)
  {
    (*(v44 + 8))(v14, v47);
    v60 = 1;
  }

  else
  {
    v61 = *(v44 + 32);
    v62 = v79;
    v61(v79, v14, v47);
    v63 = &v14[v48];
    v64 = v80;
    v61(v80, v63, v47);
    v60 = sub_1B67D86FC();
    v65 = *(v44 + 8);
    v65(v64, v47);
    v65(v62, v47);
  }

  return v60 & 1;
}

uint64_t _s8NewsCore17RecipeHistoryItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v9)
  {
    if (v7)
    {
      if (v8 == v6 && v9 == v7)
      {

        v4 = 1;
      }

      else
      {
        v4 = sub_1B67DA2DC();
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      v4 = 1;
      return v4 & 1;
    }

    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1B64EA07C()
{
  result = qword_1EDB1EC38;
  if (!qword_1EDB1EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EC38);
  }

  return result;
}

unint64_t sub_1B64EA0F4()
{
  result = qword_1EB958C50[0];
  if (!qword_1EB958C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958C50);
  }

  return result;
}

unint64_t sub_1B64EA14C()
{
  result = qword_1EB958D60;
  if (!qword_1EB958D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB958D60);
  }

  return result;
}

unint64_t sub_1B64EA1A4()
{
  result = qword_1EB958D68[0];
  if (!qword_1EB958D68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958D68);
  }

  return result;
}

uint64_t PrivateZoneModel.identifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 8);
  sub_1B67D8AAC();
  sub_1B67D8DCC();

  if (v5)
  {
    return v4;
  }

  __break(1u);
  return result;
}

void *PrivateZoneType.allModelIDs(orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;
  v6 = *(a3 + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F90, &qword_1B6810150);
  v8 = sub_1B64577E8();
  result = v6(&v11, &type metadata for IDEntity, sub_1B64EA6F8, v10, v7, &type metadata for IDEntity, v8, a2, a3);
  if (!v3)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1B64EA34C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_1B67D8E4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v7, &qword_1EB94B510, &unk_1B68102C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    result = sub_1B67D8F9C();
    if (v2)
    {
      return result;
    }

    v14 = result;
    v41 = 0;
    v15 = *(result + 16);
    if (v15)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1B6456B24(0, v15, 0);
      v16 = 32;
      v17 = v43;
      do
      {
        v18 = *(v14 + v16);

        v19 = sub_1B644DFB8();
        v21 = v20;

        v43 = v17;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B6456B24((v22 > 1), v23 + 1, 1);
          v17 = v43;
        }

        *(v17 + 16) = v23 + 1;
        v24 = v17 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v16 += 8;
        --v15;
      }

      while (v15);

      *v42 = v17;
      return result;
    }

LABEL_19:
    *v42 = MEMORY[0x1E69E7CC0];
    return result;
  }

  (*(v9 + 32))(v12, v7, v8);
  v25 = sub_1B67D8FBC();
  if (v2)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v26 = v25;
  v41 = 0;
  v27 = *(v25 + 16);
  if (!v27)
  {

    result = (*(v9 + 8))(v12, v8);
    goto LABEL_19;
  }

  v38 = v12;
  v39 = v9;
  v40 = v8;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1B6456B24(0, v27, 0);
  v28 = 32;
  v29 = v43;
  do
  {
    v30 = *(v26 + v28);

    v31 = sub_1B644DFB8();
    v33 = v32;

    v43 = v29;
    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1B6456B24((v34 > 1), v35 + 1, 1);
      v29 = v43;
    }

    *(v29 + 16) = v35 + 1;
    v36 = v29 + 16 * v35;
    *(v36 + 32) = v31;
    *(v36 + 40) = v33;
    v28 += 8;
    --v27;
  }

  while (v27);
  (*(v39 + 8))(v38, v40);

  *v42 = v29;
  return result;
}

uint64_t sub_1B64EA714(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1B67D9B4C();
  if (!v26)
  {
    return sub_1B67D980C();
  }

  v48 = v26;
  v52 = sub_1B67D9FEC();
  v39 = sub_1B67D9FFC();
  sub_1B67D9F9C();
  result = sub_1B67D9B2C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1B67D9B7C();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1B67D9FDC();
      result = sub_1B67D9B5C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *PrivateZoneType.all<A>(_:orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[2] = a3;
  v14[3] = a5;
  v14[4] = a2;
  v11 = *(a5 + 48);
  v12 = sub_1B67D988C();
  result = v11(&v15, a4, sub_1B64EADF0, v14, v12, a4, a6, a3, a5);
  if (!v6)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1B64EABF0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_1B67D8E4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6415FF0(a1, v7, &qword_1EB94B510, &unk_1B68102C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    result = sub_1B67D8F9C();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = sub_1B67D8FBC();
    if (v2)
    {
      return (*(v9 + 8))(v12, v8);
    }

    v15 = v14;
    (*(v9 + 8))(v12, v8);
    result = v15;
  }

  *v17 = result;
  return result;
}

void *PrivateZoneType.where<A>(_:_:orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[5] = a3;
  v15[2] = a4;
  v15[3] = a6;
  v15[4] = a2;
  v12 = *(a6 + 48);
  v13 = sub_1B67D988C();
  result = v12(&v16, a5, sub_1B64EAEC8, v15, v13, a5, a7, a4, a6);
  if (!v7)
  {
    return v16;
  }

  return result;
}

uint64_t sub_1B64EAEC8@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  result = sub_1B67D8FEC();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t PrivateZoneType.first<A>(_:_:orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[2] = a4;
  v14[3] = a6;
  v14[4] = a2;
  v14[5] = a3;
  v11 = *(a6 + 48);
  v12 = sub_1B67D9DFC();
  return v11(a5, sub_1B64EAFBC, v14, v12, a5, a7, a4, a6);
}

uint64_t sub_1B64EAFBC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1B67D8FDC();
}

uint64_t PrivateZoneType.first<A>(_:orderBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[2] = a3;
  v13[3] = a5;
  v13[4] = a2;
  v10 = *(a5 + 48);
  v11 = sub_1B67D9DFC();
  return v10(a4, sub_1B64EB09C, v13, v11, a4, a6, a3, a5);
}

uint64_t PrivateZoneType.querySome<A, B>(_:options:executor:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v18;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v17;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v9[2] = *a3;
  v11 = *(v17 + 88);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v9[13] = v13;
  *v13 = v9;
  v13[1] = sub_1B64EB210;

  return (v15)(v9 + 2, a6);
}

uint64_t sub_1B64EB210()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1B6493278;
  }

  else
  {
    v3 = sub_1B64EB324;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64EB324()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[3];
  (*(v0[10] + 48))(v0[4], v0[5], v0[6], v0[8], v0[9], v0[11], v0[7]);
  v4 = v0[1];

  return v4();
}

uint64_t PrivateZoneType.add(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1B64FC418(AssociatedTypeWitness, AssociatedTypeWitness);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 72);
  v12 = *(v10 + 80);
  swift_allocObject();
  v13 = sub_1B67D97DC();
  (*(v10 + 16))(v14, a1, AssociatedTypeWitness);
  sub_1B67D988C();
  (*(a3 + 56))(v13, a2, a3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateZoneType.remove(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B68100D0;
  *(v7 + 32) = countAndFlagsBits;
  *(v7 + 40) = object;
  v8 = *(v3 + 64);

  v8(v7, v4, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PrivateZoneType.removeAll()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - v7;
  v9 = sub_1B67D8E4C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = PrivateZoneType.allModelIDs(orderBy:)(v8, v4, v3);
  sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
  if (!v2)
  {
    (*(v3 + 64))(v10, v4, v3);
  }
}

uint64_t PrivateZoneType.individualChanges.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange();
  v6 = sub_1B67D997C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13[-v8];
  (*(a2 + 72))(v17, a1, a2);
  v14 = a1;
  v15 = a2;
  v16 = v17;
  swift_checkMetadataState();
  v10 = *MEMORY[0x1E69E8650];
  v11 = sub_1B67D997C();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  a3[3] = sub_1B67D99AC();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_1B67D99BC();
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1B64EB8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange();
  v8 = sub_1B67D999C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v17 = sub_1B67D993C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1B6431D18(a2, v24);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 88) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a3;
  *(v19 + 5) = a4;
  sub_1B6416D08(v24, (v19 + 48));
  (*(v9 + 32))(&v19[v18], v12, v8);
  v20 = sub_1B644BCA8(0, 0, v16, &unk_1B6818D00, v19);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = v20;
  return sub_1B67D996C();
}

uint64_t sub_1B64EBB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange();
  v6 = sub_1B67D995C();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = swift_checkMetadataState();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v5[16] = *(v10 + 64);
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64EBCE0, 0, 0);
}

uint64_t sub_1B64EBCE0()
{
  v1 = v0[9];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1B67D9A2C();

  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = *(MEMORY[0x1E69E85B0] + 4);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1B64EBE98;

  return MEMORY[0x1EEE6D8D0](v0 + 7, 0, 0);
}

uint64_t sub_1B64EBE98()
{
  v2 = *(*v1 + 144);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64EBFA8, 0, 0);
  }

  return result;
}

uint64_t sub_1B64EBFA8()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[14];
    if (sub_1B67D984C())
    {
      v3 = 0;
      do
      {
        v4 = v0[14];
        v5 = sub_1B67D982C();
        sub_1B67D97EC();
        if (v5)
        {
          (*(v0[15] + 16))(v0[17], v1 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v3, v0[14]);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          v13 = v0[16];
          v14 = v0[14];
          v15 = sub_1B67D9F1C();
          if (v13 != 8)
          {
            __break(1u);
            return MEMORY[0x1EEE6D8D0](v15, v16, v17);
          }

          v18 = v0[17];
          v19 = v0[14];
          v20 = v0[15];
          v0[8] = v15;
          (*(v20 + 16))(v18, v0 + 8, v19);
          swift_unknownObjectRelease();
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        v7 = v0[17];
        v9 = v0[13];
        v8 = v0[14];
        v11 = v0[11];
        v10 = v0[12];
        v12 = v0[10];
        sub_1B67D999C();
        sub_1B67D998C();
        (*(v10 + 8))(v9, v11);
        ++v3;
      }

      while (v6 != sub_1B67D984C());
    }

    v21 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    v22 = *(MEMORY[0x1E69E85B0] + 4);
    v23 = swift_task_alloc();
    v0[18] = v23;
    *v23 = v0;
    v23[1] = sub_1B64EBE98;
    v15 = (v0 + 7);
    v16 = 0;
    v17 = 0;

    return MEMORY[0x1EEE6D8D0](v15, v16, v17);
  }

  else
  {
    v24 = v0[17];
    v25 = v0[13];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v26 = v0[1];

    return v26();
  }
}

void *sub_1B64EC2A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B64EC2D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1B64EC3A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void PrivateZone.deinit()
{
  v1 = v0;
  if (*(v0 + 2))
  {
    v2 = *v0;

    sub_1B64601C4(&v17);

    v3 = v17;
    v4 = v18;
    if ((~(v17 & v18) & 0xF000000000000007) != 0)
    {
      v5 = v2[10];
      v6 = v2[11];
      v7 = v2[12];
      v8 = v2[13];
      sub_1B64B7198();
      sub_1B64FE758(v3, v4);
    }

    v9 = *(v1 + 2);

    v10 = *(v1 + 3);

    v11 = v2[11];
    v12 = v2[13];
    type metadata accessor for PrivateZoneChange();
    sub_1B67D988C();
    type metadata accessor for Multicaster();
    v13 = *(sub_1B67D8A4C() + 16);
    sub_1B67D9DDC();
    v14 = *(v1 + 7);

    v15 = qword_1EDB265A0;
    v16 = sub_1B67D8A9C();
    (*(*(v16 - 8) + 8))(&v1[v15], v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t PrivateZone.__deallocating_deinit()
{
  PrivateZone.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B64EC5C0()
{
  v1 = *(v0 + 80);
  sub_1B645745C(*(v0 + 168), *(v0 + 160));
  if ((v1 & 2) != 0)
  {
    goto LABEL_9;
  }

  if ((*(v0 + 80) & 1) == 0)
  {
    goto LABEL_5;
  }

  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  sub_1B641C49C((v0 + 16));
  if (v2)
  {
    goto LABEL_5;
  }

  v12 = sub_1B6501D14();
  v13 = *(v0 + 16);

  v14 = *(v0 + 24);

  v15 = *(v0 + 32);

  v16 = *(v0 + 40);

  v17 = *(v0 + 48);

  v18 = *(v0 + 56);

  if (v12)
  {
LABEL_9:
    v19 = *(*(v0 + 64) + 24);
    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *v20 = v0;
    v20[1] = sub_1B64EC73C;

    return sub_1B645CA68();
  }

  else
  {
LABEL_5:
    v9 = *(v0 + 144);

    sub_1B641FC34(*(v0 + 88), *(v0 + 96));
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B64EC73C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 184) = v4;
  *v4 = v3;
  v4[1] = sub_1B64EC880;
  v5 = *(v1 + 144);

  return sub_1B64ECCAC(1);
}

uint64_t sub_1B64EC880()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1B64ECBC8;
  }

  else
  {
    v3 = sub_1B64EC994;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64EC994()
{
  v1 = sub_1B65013CC(v0[14], v0[16]);
  v0[25] = v1;
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1B64ECA40;
  v3 = v0[18];

  return sub_1B64ED460(v1);
}

uint64_t sub_1B64ECA40()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_1B64ECC34;
  }

  else
  {

    v4 = sub_1B64ECB5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B64ECB5C()
{
  v1 = v0[18];

  sub_1B641FC34(v0[11], v0[12]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B64ECBC8()
{
  v1 = v0[18];

  v2 = v0[24];
  sub_1B641FC34(v0[11], v0[12]);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B64ECC34()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 216);
  sub_1B641FC34(*(v0 + 88), *(v0 + 96));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B64ECCAC(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 128) = a1;
  v3 = sub_1B67D913C();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = sub_1B67D916C();
  *(v2 + 64) = v6;
  v7 = *(v6 - 8);
  *(v2 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64ECDCC, 0, 0);
}

uint64_t sub_1B64ECDCC()
{
  v1 = v0[10];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E695B5A8], v0[5]);
  sub_1B67D914C();
  v2 = *(MEMORY[0x1E695B598] + 4);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1B64ECEA4;
  v4 = v0[10];
  v5 = v0[4];

  return MEMORY[0x1EEDB5460](v4);
}

uint64_t sub_1B64ECEA4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  v2[12] = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64ED04C, 0, 0);
  }

  else
  {
    v5 = v2[10];
    v6 = v2[7];

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1B64ED04C()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 24);
  *(v0 + 104) = v3;
  v4 = v3;
  sub_1B64FB034(26);
  if (v5)
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 128);
    sub_1B67D943C();
    v8 = sub_1B67D93EC();

    v9 = *(v8 + 16);

    if (v9 && (v7 & 1) != 0)
    {

      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = sub_1B64ED24C;
      v11 = *(v0 + 32);

      return sub_1B64ECCAC(0);
    }
  }

  else
  {
  }

  sub_1B64FB034(14);
  v14 = v13;

  if (v14)
  {

    v15 = *(v0 + 80);
    v16 = *(v0 + 56);

    v17 = *(v0 + 8);
  }

  else
  {
LABEL_11:
    v18 = *(v0 + 96);

    swift_willThrow();
    v19 = *(v0 + 96);
    v20 = *(v0 + 80);
    v21 = *(v0 + 56);

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1B64ED24C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1B64ED3E0;
  }

  else
  {
    v3 = sub_1B64ED360;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64ED360()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B64ED3E0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B64ED460(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B67D91AC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1B67D91CC();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64ED57C, 0, 0);
}

uint64_t sub_1B64ED57C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  sub_1B67D921C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B68100E0;
  *(v7 + 32) = v6;
  *v2 = v7;
  (*(v3 + 104))(v2, *MEMORY[0x1E695B5D0], v5);
  v8 = v6;
  sub_1B67D91BC();
  v9 = *(MEMORY[0x1E695B5A0] + 4);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1B64ED6A8;
  v11 = v0[9];
  v12 = v0[3];

  return MEMORY[0x1EEDB5468](v11);
}

uint64_t sub_1B64ED6A8()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[11] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64ED860, 0, 0);
  }

  else
  {
    v7 = v6[9];
    v8 = v6[6];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1B64ED860()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t PrivateZone.querySome<A, B>(_:executor:)()
{
  v2 = *v0;
  result = sub_1B641A1BC();
  if (!v1)
  {
    v12[1] = v12;
    v4 = MEMORY[0x1EEE9AC00](result);
    v9 = v2[10];
    v10 = v2[11];
    v11 = v2[12];
    v8 = v2[13];
    v5 = v4;
    v7 = v6;
    sub_1B641CFC8();
    return sub_1B641FC34(v5, v7);
  }

  return result;
}

uint64_t sub_1B64EDA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a5;
  v41 = a7;
  v49 = a1;
  v50 = a4;
  v42 = a2;
  v47 = type metadata accessor for PrivateZoneChange();
  v11 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v39 - v16;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v39 - v21;
  v22 = sub_1B67D984C();
  v51 = a8;
  if (v22)
  {
    v39 = v18;
    v23 = 0;
    v52 = (v17 + 16);
    v44 = a8 + 24;
    v45 = (v17 + 32);
    v43 = (v17 + 8);
    while (1)
    {
      v24 = sub_1B67D982C();
      sub_1B67D97EC();
      if (v24)
      {
        v25 = *(v17 + 16);
        result = v25(v53, (a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23), a6);
      }

      else
      {
        result = sub_1B67D9F1C();
        if (v39 != 8)
        {
          goto LABEL_15;
        }

        v55 = result;
        v25 = *v52;
        (*v52)(v53, &v55, a6);
        result = swift_unknownObjectRelease();
      }

      v27 = v23 + 1;
      v28 = v51;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v29 = v17;
      v30 = a3;
      (*v45)(v20, v53, a6);
      (*(v28 + 24))(a6, v28);
      v31 = v48;
      sub_1B67D876C();
      v32 = sub_1B67D877C();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      sub_1B67D8DDC();

      sub_1B67D8D4C();
      v33 = v54;
      sub_1B67D8CDC();

      if (v33)
      {
        return (*v43)(v20, a6);
      }

      v54 = 0;
      v34 = *(swift_getTupleTypeMetadata2() + 48);
      v35 = v46;
      v25(v46, v20, a6);
      v35[v34] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1B67D988C();
      sub_1B67D985C();
      (*v43)(v20, a6);
      a3 = v30;
      v22 = sub_1B67D984C();
      ++v23;
      v17 = v29;
      if (v27 == v22)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_11:
    MEMORY[0x1EEE9AC00](v22);
    v36 = v41;
    *(&v39 - 6) = v40;
    *(&v39 - 5) = a6;
    v37 = v50;
    v38 = v51;
    *(&v39 - 4) = v36;
    *(&v39 - 3) = v38;
    *(&v39 - 2) = v37;
    return sub_1B6502494(sub_1B650023C);
  }

  return result;
}

uint64_t sub_1B64EDEE4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = *(*v2 + 104);
  type metadata accessor for PrivateZoneChange();
  v21 = sub_1B67D950C();
  v9 = sub_1B641A1BC();
  if (v3)
  {
    sub_1B64EE068(v2, &v21);
  }

  else
  {
    v11 = v9;
    v12 = v10;
    MEMORY[0x1EEE9AC00](v9);
    v15 = *(v6 + 80);
    v16 = v7;
    v17 = *(v6 + 96);
    v18 = v8;
    v19 = a1;
    v20 = &v21;
    sub_1B64B6EE8(a2, &v14, v11, v12, v15, v7, v17, v8);
    sub_1B641FC34(v11, v12);
    sub_1B64EE068(v2, &v21);
  }
}

uint64_t sub_1B64EE068(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;

  sub_1B64F9054(v4);

  v5 = *a2;

  sub_1B64F99E0(v6);
}

uint64_t sub_1B64EE0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a6;
  v25 = a7;
  v23 = a5;
  v28 = a4;
  v26 = a8;
  v27 = a2;
  v10 = type metadata accessor for PrivateZoneChange();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  if (v15)
  {
    v16 = (a3 + 40);
    while (1)
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      sub_1B67D8D7C();
      sub_1B67D8E0C();
      if (v8)
      {
        break;
      }

      *v14 = v17;
      *(v14 + 1) = v18;
      v14[16] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1B67D988C();
      v12 = sub_1B67D985C();
      v16 += 2;
      if (!--v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    MEMORY[0x1EEE9AC00](v12);
    v19 = v24;
    *(&v22 - 6) = v23;
    *(&v22 - 5) = v19;
    v20 = v26;
    *(&v22 - 4) = v25;
    *(&v22 - 3) = v20;
    *(&v22 - 2) = v28;
    return sub_1B6502494(sub_1B65013A4);
  }
}

uint64_t PrivateZone.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B642694C;

  return (sub_1B64FE868)(a1);
}

uint64_t sub_1B64EE3E0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  v2[16] = *v1;
  v3 = sub_1B67D922C();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = sub_1B67D925C();
  v2[21] = v7;
  v8 = *(v7 - 8);
  v2[22] = v8;
  v9 = *(v8 + 64) + 15;
  v2[23] = swift_task_alloc();
  v10 = sub_1B67D927C();
  v2[24] = v10;
  v11 = *(v10 - 8);
  v2[25] = v11;
  v12 = *(v11 + 64) + 15;
  v2[26] = swift_task_alloc();
  v13 = sub_1B67D930C();
  v2[27] = v13;
  v14 = *(v13 - 8);
  v2[28] = v14;
  v15 = *(v14 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v16 = sub_1B67D934C();
  v2[32] = v16;
  v17 = *(v16 - 8);
  v2[33] = v17;
  v18 = *(v17 + 64) + 15;
  v2[34] = swift_task_alloc();
  v19 = sub_1B67D92DC();
  v2[35] = v19;
  v20 = *(v19 - 8);
  v2[36] = v20;
  v21 = *(v20 + 64) + 15;
  v2[37] = swift_task_alloc();
  v22 = sub_1B67D9C1C();
  v2[38] = v22;
  v23 = *(v22 - 8);
  v2[39] = v23;
  v24 = *(v23 + 64) + 15;
  v2[40] = swift_task_alloc();
  v25 = sub_1B67D9BFC();
  v2[41] = v25;
  v26 = *(v25 - 8);
  v2[42] = v26;
  v27 = *(v26 + 64) + 15;
  v2[43] = swift_task_alloc();
  v28 = sub_1B67D939C();
  v2[44] = v28;
  v29 = *(v28 - 8);
  v2[45] = v29;
  v30 = *(v29 + 64) + 15;
  v2[46] = swift_task_alloc();
  v31 = sub_1B67D9BDC();
  v2[47] = v31;
  v32 = *(v31 - 8);
  v2[48] = v32;
  v33 = *(v32 + 64) + 15;
  v2[49] = swift_task_alloc();
  v34 = sub_1B67D936C();
  v2[50] = v34;
  v35 = *(v34 - 8);
  v2[51] = v35;
  v36 = *(v35 + 64) + 15;
  v2[52] = swift_task_alloc();
  v37 = sub_1B67D924C();
  v2[53] = v37;
  v38 = *(v37 - 8);
  v2[54] = v38;
  v39 = *(v38 + 64) + 15;
  v2[55] = swift_task_alloc();
  v40 = sub_1B67D93CC();
  v2[56] = v40;
  v41 = *(v40 - 8);
  v2[57] = v41;
  v42 = *(v41 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64EE9A8, 0, 0);
}

void sub_1B64EE9A8()
{
  v1 = v0[14];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);

    sub_1B64251D4((v0 + 7));
    v3 = v0[16];

    v5 = v0[7];
    v4 = v0[8];
    v0[61] = v5;
    v0[62] = v4;
    v6 = swift_task_alloc();
    v0[63] = v6;
    v7 = v3[10];
    v0[64] = v7;
    v8 = v3[11];
    v0[65] = v8;
    v9 = v3[12];
    v0[66] = v9;
    v10 = v3[13];
    v0[67] = v10;
    *v6 = v0;
    v6[1] = sub_1B64EEBE4;

    sub_1B64252D4(v5, v4, v7, v8, v9, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64EEBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 504);
  v9 = *v4;
  v5[68] = a1;
  v5[69] = a2;
  v5[70] = a3;
  v5[71] = v3;

  if (v3)
  {
    v7 = sub_1B64F1BFC;
  }

  else
  {
    v7 = sub_1B64EED04;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B64EED04()
{
  v375 = v0;
  v1 = *(v0 + 104);
  v2 = sub_1B64FB5B0();
  v3 = 0;
  v4 = *(v2 + 16);
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return sub_1B67DA07C();
    }

    v5 = v3 + 1;
    v6 = *(v2 + 8 * v3 + 32);
    v7 = v6;
    v8 = sub_1B67D854C();
    v9 = [v8 fc_hasCKIdentityLostError];

    v3 = v5;
    if (v9)
    {
      v11 = *(v0 + 456);
      v10 = *(v0 + 464);
      v12 = *(v0 + 448);
      v13 = *(v0 + 104);
      v14 = *(v0 + 112);

      *(v0 + 688) = qword_1EDB265A0;
      (*(v11 + 16))(v10, v13, v12);
      v15 = sub_1B67D8A7C();
      v16 = sub_1B67D9C9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v0 + 528);
        v18 = *(v0 + 512);
        v20 = *(v0 + 456);
        v19 = *(v0 + 464);
        v21 = *(v0 + 448);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v374[0] = v23;
        *v22 = 136446466;
        v24 = (*(v17 + 8))(v18, v17);
        v26 = sub_1B6456540(v24, v25, v374);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2082;
        sub_1B6415F9C(&qword_1EB94B7E8, MEMORY[0x1E695B6B8]);
        v27 = sub_1B67DA28C();
        v29 = v28;
        (*(v20 + 8))(v19, v21);
        v30 = sub_1B6456540(v27, v29, v374);

        *(v22 + 14) = v30;
        _os_log_impl(&dword_1B63EF000, v15, v16, "Will handle identity loss from sync engine, zone=%{public}s, event=%{public}s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v23, -1, -1);
        MEMORY[0x1B8C96DF0](v22, -1, -1);
      }

      else
      {
        v79 = *(v0 + 456);
        v78 = *(v0 + 464);
        v80 = *(v0 + 448);

        (*(v79 + 8))(v78, v80);
      }

      v81 = swift_task_alloc();
      *(v0 + 696) = v81;
      *v81 = v0;
      v81[1] = sub_1B64F1854;
      v82 = *(v0 + 112);

      return sub_1B64F2590();
    }
  }

  v31 = *(v0 + 480);
  v32 = *(v0 + 448);
  v33 = *(v0 + 456);
  v34 = *(v0 + 104);

  v35 = *(v33 + 16);
  v35(v31, v34, v32);
  v36 = (*(v33 + 88))(v31, v32);
  if (v36 == *MEMORY[0x1E695B608])
  {
    v355 = *(v0 + 536);
    v365 = *(v0 + 568);
    v37 = *(v0 + 528);
    v38 = *(v0 + 520);
    v39 = *(v0 + 512);
    v41 = *(v0 + 488);
    v40 = *(v0 + 496);
    v42 = *(v0 + 480);
    v43 = *(v0 + 432);
    v44 = *(v0 + 440);
    v45 = *(v0 + 424);
    (*(*(v0 + 456) + 96))(v42, *(v0 + 448));
    (*(v43 + 32))(v44, v42, v45);
    v46 = swift_task_alloc();
    *(v46 + 16) = v44;
    sub_1B64B6EA4(sub_1B64FFFC8, v46, v41, v40, v39, v38, v37, v355);
    v47 = *(v0 + 544);
    v49 = *(v0 + 488);
    v48 = *(v0 + 496);
    v51 = *(v0 + 432);
    v50 = *(v0 + 440);
    v52 = *(v0 + 424);
    sub_1B645745C(*(v0 + 552), *(v0 + 560));

    sub_1B641FC34(v49, v48);

    (*(v51 + 8))(v50, v52);
    if (!v365)
    {
      goto LABEL_88;
    }

LABEL_13:
    v69 = *(v0 + 472);
    v68 = *(v0 + 480);
    v70 = *(v0 + 464);
    v71 = *(v0 + 440);
    v72 = *(v0 + 416);
    v73 = *(v0 + 392);
    v74 = *(v0 + 368);
    v75 = *(v0 + 344);
    v76 = *(v0 + 320);
    v325 = *(v0 + 296);
    v326 = *(v0 + 272);
    v329 = *(v0 + 248);
    v332 = *(v0 + 240);
    logb = *(v0 + 232);
    v343 = *(v0 + 208);
    v349 = *(v0 + 184);
    v357 = *(v0 + 160);
    v367 = *(v0 + 152);

    v77 = *(v0 + 8);
LABEL_89:

    return v77();
  }

  if (v36 == *MEMORY[0x1E695B630])
  {
    v53 = *(v0 + 536);
    v54 = *(v0 + 528);
    v55 = *(v0 + 520);
    v56 = *(v0 + 512);
    v57 = *(v0 + 488);
    v356 = *(v0 + 496);
    v366 = *(v0 + 568);
    v58 = *(v0 + 480);
    v59 = *(v0 + 200);
    v60 = *(v0 + 208);
    v61 = *(v0 + 192);
    (*(*(v0 + 456) + 96))(v58, *(v0 + 448));
    (*(v59 + 32))(v60, v58, v61);
    v62 = swift_task_alloc();
    v62[2] = v56;
    v62[3] = v55;
    v62[4] = v54;
    v62[5] = v53;
    sub_1B64B6EE8(sub_1B650136C, v62, v57, v356, v56, v55, v54, v53);
    if (v366)
    {
      v63 = *(v0 + 560);
      v64 = *(v0 + 552);
      v65 = *(v0 + 544);
      v67 = *(v0 + 488);
      v66 = *(v0 + 496);
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      sub_1B645745C(v64, v63);

      sub_1B641FC34(v67, v66);

      goto LABEL_13;
    }

    v129 = *(v0 + 208);
    v131 = *(v0 + 176);
    v130 = *(v0 + 184);
    v132 = *(v0 + 168);

    sub_1B67D926C();
    v133 = (*(v131 + 88))(v130, v132);
    if (v133 != *MEMORY[0x1E695B620])
    {
      if (v133 != *MEMORY[0x1E695B628] && v133 != *MEMORY[0x1E695B618])
      {
        return sub_1B67DA07C();
      }

      v168 = *(v0 + 560);
      v169 = *(v0 + 552);
      v170 = *(v0 + 544);
      v172 = *(v0 + 488);
      v171 = *(v0 + 496);
      v173 = *(v0 + 184);
      v174 = *(v0 + 168);
      v175 = *(v0 + 176);
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      sub_1B645745C(v169, v168);

      sub_1B641FC34(v172, v171);
      (*(v175 + 8))(v173, v174);
      goto LABEL_88;
    }

    v134 = *(v0 + 160);
    v135 = *(v0 + 112);
    v136 = *(v0 + 120);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    *(v0 + 72) = v135;
    v137 = sub_1B67D8E4C();
    (*(*(v137 - 8) + 56))(v134, 1, 1, v137);
    WitnessTable = swift_getWitnessTable();
    p_isa = PrivateZoneType.allModelIDs(orderBy:)(v134, v136, WitnessTable);
    sub_1B6418AB4(*(v0 + 160), &qword_1EB94B510, &unk_1B68102C0);
    v202 = p_isa[2];
    if (v202)
    {
      v203 = *(v0 + 144);
      v374[0] = MEMORY[0x1E69E7CC0];
      result = sub_1B64FC714(0, v202, 0);
      v204 = 0;
      v205 = v374[0];
      v334 = *MEMORY[0x1E695B5F0];
      loga = v203;
      v345 = v202;
      v206 = p_isa + 5;
      v350 = p_isa;
      while (1)
      {
        v370 = v205;
        if (v204 >= p_isa[2])
        {
          break;
        }

        v207 = *(v0 + 560);
        v208 = *(v0 + 552);
        v360 = *(v0 + 536);
        v209 = *(v0 + 528);
        v210 = *(v0 + 520);
        v211 = *(v0 + 512);
        v213 = *(v206 - 1);
        v212 = *v206;

        sub_1B646B894(v208, v207);
        sub_1B6471CBC(v213, v212, v208, v207, v211, v210, v209);
        v214 = *(v0 + 152);
        *v214 = v215;

        v216 = sub_1B67D922C();
        (*(*(v216 - 8) + 104))(v214, v334, v216);

        v205 = v370;
        v374[0] = v370;
        v218 = *(v370 + 16);
        v217 = *(v370 + 24);
        if (v218 >= v217 >> 1)
        {
          sub_1B64FC714(v217 > 1, v218 + 1, 1);
          v205 = v374[0];
        }

        ++v204;
        v219 = *(v0 + 152);
        v220 = *(v0 + 136);
        *(v205 + 16) = v218 + 1;
        result = (loga[4].isa)(v205 + ((LOBYTE(loga[10].isa) + 32) & ~LOBYTE(loga[10].isa)) + loga[9].isa * v218, v219, v220);
        v206 += 2;
        p_isa = &v350->isa;
        if (v345 == v204)
        {
          goto LABEL_62;
        }
      }

LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return result;
    }

LABEL_62:

    v300 = *(v0 + 560);
    v301 = *(v0 + 552);
    v302 = *(v0 + 544);
    v304 = *(v0 + 488);
    v303 = *(v0 + 496);
    v305 = *(v0 + 200);
    v372 = *(v0 + 208);
    v306 = *(v0 + 192);
    sub_1B67D943C();
    sub_1B67D941C();
    sub_1B645745C(v301, v300);

    sub_1B641FC34(v304, v303);

    (*(v305 + 8))(v372, v306);
    goto LABEL_88;
  }

  if (v36 == *MEMORY[0x1E695B698])
  {
    v84 = *(v0 + 480);
    v86 = *(v0 + 408);
    v85 = *(v0 + 416);
    v87 = *(v0 + 400);
    (*(*(v0 + 456) + 96))(v84, *(v0 + 448));
    v88 = (*(v86 + 32))(v85, v84, v87);
    result = MEMORY[0x1B8C945B0](v88);
    v358 = *(result + 16);
    v368 = result;
    if (!v358)
    {
LABEL_39:
      v139 = *(v0 + 544);
      v141 = *(v0 + 488);
      v140 = *(v0 + 496);
      v142 = *(v0 + 408);
      v143 = *(v0 + 416);
      v144 = *(v0 + 400);
      sub_1B645745C(*(v0 + 552), *(v0 + 560));

      sub_1B641FC34(v141, v140);

      (*(v142 + 8))(v143, v144);
      goto LABEL_88;
    }

    v89 = 0;
    v344 = *(v0 + 384);
    v333 = result + ((*(v344 + 80) + 32) & ~*(v344 + 80));
    log = *(*(v0 + 528) + 8);
    v90 = *(v0 + 568);
    while (1)
    {
      if (v89 >= *(v368 + 16))
      {
        __break(1u);
        goto LABEL_94;
      }

      v91 = *(v0 + 528);
      v92 = *(v0 + 512);
      v93 = *(v0 + 392);
      v94 = *(v0 + 376);
      v95 = (*(v344 + 16))(v93, v333 + *(v344 + 72) * v89, v94);
      v96 = MEMORY[0x1B8C94E20](v95);
      (*(v344 + 8))(v93, v94);
      v97 = [v96 zoneName];

      v98 = sub_1B67D964C();
      v100 = v99;

      if (v98 == (log)(v92, v91) && v100 == v101)
      {
      }

      else
      {
        v103 = sub_1B67DA2DC();

        if ((v103 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v104 = *(v0 + 536);
      v105 = *(v0 + 528);
      v106 = *(v0 + 520);
      v107 = *(v0 + 512);
      v109 = *(v0 + 488);
      v108 = *(v0 + 496);
      v110 = swift_task_alloc();
      v110[2] = v107;
      v110[3] = v106;
      v110[4] = v105;
      v110[5] = v104;
      sub_1B64B6EE8(sub_1B64FFF54, v110, v109, v108, v107, v106, v105, v104);
      if (v90)
      {
        v176 = *(v0 + 544);
        v178 = *(v0 + 488);
        v177 = *(v0 + 496);
        v179 = *(v0 + 408);
        v180 = *(v0 + 416);
        v181 = *(v0 + 400);
        sub_1B645745C(*(v0 + 552), *(v0 + 560));

        sub_1B641FC34(v178, v177);

        (*(v179 + 8))(v180, v181);
        goto LABEL_13;
      }

LABEL_21:
      if (v358 == ++v89)
      {
        goto LABEL_39;
      }
    }
  }

  if (v36 != *MEMORY[0x1E695B6A0])
  {
    if (v36 == *MEMORY[0x1E695B688])
    {
      v145 = *(v0 + 568);
      v146 = *(v0 + 528);
      v147 = *(v0 + 512);
      v148 = *(v0 + 480);
      v150 = *(v0 + 288);
      v149 = *(v0 + 296);
      v151 = *(v0 + 280);
      (*(*(v0 + 456) + 96))(v148, *(v0 + 448));
      v152 = (*(v150 + 32))(v149, v148, v151);
      v153 = MEMORY[0x1B8C94500](v152);
      v154 = sub_1B65013CC(v147, v146);
      *(v0 + 96) = v154;
      v155 = swift_task_alloc();
      *(v155 + 16) = v0 + 96;
      LOBYTE(v147) = sub_1B64FB248(sub_1B64FFE90, v155, v153);

      if (v147)
      {
        v156 = *(v0 + 536);
        v157 = *(v0 + 528);
        v158 = *(v0 + 520);
        v159 = *(v0 + 512);
        v161 = *(v0 + 488);
        v160 = *(v0 + 496);
        v162 = swift_task_alloc();
        v162[2] = v159;
        v162[3] = v158;
        v162[4] = v157;
        v162[5] = v156;
        sub_1B64B6EE8(sub_1B64FFEF8, v162, v161, v160, v159, v158, v157, v156);
        v163 = *(v0 + 560);
        v164 = *(v0 + 552);
        v165 = *(v0 + 544);
        v167 = *(v0 + 488);
        v166 = *(v0 + 496);
        (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
        sub_1B645745C(v164, v163);

        sub_1B641FC34(v167, v166);

        if (!v145)
        {
          goto LABEL_88;
        }

        goto LABEL_13;
      }

      v221 = *(v0 + 560);
      v222 = *(v0 + 552);
      v223 = *(v0 + 544);
      v225 = *(v0 + 488);
      v224 = *(v0 + 496);
      (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
      sub_1B645745C(v222, v221);

      sub_1B641FC34(v225, v224);
    }

    else if (v36 == *MEMORY[0x1E695B690])
    {
      v182 = *(v0 + 536);
      v183 = *(v0 + 528);
      v184 = *(v0 + 520);
      v185 = *(v0 + 512);
      v186 = *(v0 + 488);
      v359 = *(v0 + 496);
      v369 = *(v0 + 568);
      v187 = *(v0 + 480);
      v188 = *(v0 + 264);
      v189 = *(v0 + 272);
      v190 = *(v0 + 256);
      (*(*(v0 + 456) + 96))(v187, *(v0 + 448));
      (*(v188 + 32))(v189, v187, v190);
      v191 = swift_task_alloc();
      v191[2] = v185;
      v191[3] = v184;
      v191[4] = v183;
      v191[5] = v182;
      v191[6] = v189;
      sub_1B64B6EE8(sub_1B64FFD04, v191, v186, v359, v185, v184, v183, v182);
      if (v369)
      {
        v192 = *(v0 + 544);
        v194 = *(v0 + 488);
        v193 = *(v0 + 496);
        v196 = *(v0 + 264);
        v195 = *(v0 + 272);
        v197 = *(v0 + 256);
        sub_1B645745C(*(v0 + 552), *(v0 + 560));

        sub_1B641FC34(v194, v193);

        (*(v196 + 8))(v195, v197);
        goto LABEL_13;
      }

      v251 = *(v0 + 272);

      result = MEMORY[0x1B8C94570](v252);
      *(v0 + 624) = result;
      v253 = *(result + 16);
      *(v0 + 632) = v253;
      if (v253)
      {
        v254 = 0;
        v255 = *(v0 + 224);
        v256 = MEMORY[0x1E695B5E0];
        v257 = MEMORY[0x1E695B5F0];
        *(v0 + 640) = qword_1EDB265A0;
        *(v0 + 712) = *(v255 + 80);
        *(v0 + 716) = *v256;
        *(v0 + 720) = *v257;
        while (1)
        {
          *(v0 + 648) = v254;
          v273 = *(v0 + 624);
          if (v254 >= *(v273 + 16))
          {
            goto LABEL_95;
          }

          v274 = *(v0 + 224);
          v275 = *(v274 + 16);
          v275(*(v0 + 248), v273 + ((*(v0 + 712) + 32) & ~*(v0 + 712)) + *(v274 + 72) * v254, *(v0 + 216));
          v276 = sub_1B67D928C();
          *(v0 + 80) = v276;
          type metadata accessor for CKError(0);
          sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);
          sub_1B67D850C();

          v277 = *(v0 + 88);
          if (v277 == 26)
          {
            logd = *(v0 + 720);
            v330 = *(v0 + 716);
            v327 = *(v0 + 544);
            v258 = *(v0 + 248);
            v347 = v258;
            v352 = *(v0 + 224);
            v362 = *(v0 + 216);
            v259 = *(v0 + 144);
            v335 = *(v0 + 136);
            v260 = MEMORY[0x1B8C94550]();
            v261 = [v260 recordID];

            sub_1B67D943C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B798, &qword_1B6818B78);
            v262 = sub_1B67D91DC();
            v263 = *(v262 - 8);
            v264 = *(v263 + 72);
            v265 = (*(v263 + 80) + 32) & ~*(v263 + 80);
            v266 = swift_allocObject();
            *(v266 + 16) = xmmword_1B68100D0;
            v267 = [v261 zoneID];
            v268 = [objc_allocWithZone(MEMORY[0x1E695BA80]) initWithZoneID_];

            *(v266 + v265) = v268;
            (*(v263 + 104))(v266 + v265, v330, v262);
            sub_1B67D940C();

            sub_1B67D943C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
            v269 = *(v259 + 72);
            v270 = (*(v259 + 80) + 32) & ~*(v259 + 80);
            v271 = swift_allocObject();
            *(v271 + 16) = xmmword_1B68100D0;
            *(v271 + v270) = v261;
            (*(v259 + 104))(v271 + v270, logd, v335);
            v272 = v261;
            sub_1B67D941C();

            result = (v352[1].isa)(v347, v362);
          }

          else if (v277 == 14)
          {
            v278 = *(v0 + 248);
            v279 = sub_1B67D928C();
            v280 = sub_1B67D951C();
            *(v0 + 656) = v280;

            if (v280)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
              inited = swift_initStackObject();
              *(v0 + 664) = inited;
              *(inited + 16) = xmmword_1B68100E0;
              *(inited + 32) = v280;
              v324 = v280;
              v198 = swift_task_alloc();
              *(v0 + 672) = v198;
              *v198 = v0;
              v199 = sub_1B64F0F70;
              goto LABEL_53;
            }

            result = (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
          }

          else
          {
            v281 = *(v0 + 640);
            v282 = *(v0 + 248);
            v283 = *(v0 + 232);
            v284 = *(v0 + 216);
            v285 = *(v0 + 112);
            v275(*(v0 + 240), v282, v284);
            v275(v283, v282, v284);
            v286 = sub_1B67D8A7C();
            v287 = sub_1B67D9C8C();
            v288 = os_log_type_enabled(v286, v287);
            v289 = *(v0 + 240);
            v290 = *(v0 + 248);
            v291 = *(v0 + 224);
            v292 = *(v0 + 232);
            v293 = *(v0 + 216);
            if (v288)
            {
              v363 = *(v0 + 248);
              v294 = swift_slowAlloc();
              v353 = v286;
              v295 = swift_slowAlloc();
              *v294 = 138543618;
              v296 = MEMORY[0x1B8C94550]();
              v297 = *(v291 + 8);
              v297(v289, v293);
              *(v294 + 4) = v296;
              *v295 = v296;
              *(v294 + 12) = 2112;
              sub_1B67D928C();
              v298 = _swift_stdlib_bridgeErrorToNSError();
              v297(v292, v293);
              *(v294 + 14) = v298;
              v295[1] = v298;
              _os_log_impl(&dword_1B63EF000, v353, v287, "Failed to save record to cloud, record=%{public}@, error=%@", v294, 0x16u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
              swift_arrayDestroy();
              MEMORY[0x1B8C96DF0](v295, -1, -1);
              MEMORY[0x1B8C96DF0](v294, -1, -1);

              result = (v297)(v363, v293);
            }

            else
            {

              v299 = *(v291 + 8);
              v299(v292, v293);
              v299(v289, v293);
              result = (v299)(v290, v293);
            }
          }

          v254 = *(v0 + 648) + 1;
          if (v254 == *(v0 + 632))
          {
            v307 = *(v0 + 624);
            break;
          }
        }
      }

      v308 = *(v0 + 544);
      v310 = *(v0 + 488);
      v309 = *(v0 + 496);
      v312 = *(v0 + 264);
      v311 = *(v0 + 272);
      v313 = *(v0 + 256);
      sub_1B645745C(*(v0 + 552), *(v0 + 560));

      sub_1B641FC34(v310, v309);

      (*(v312 + 8))(v311, v313);
    }

    else
    {
      if (v36 != *MEMORY[0x1E695B6A8])
      {
        v233 = *(v0 + 112);
        v35(*(v0 + 472), *(v0 + 104), *(v0 + 448));
        v234 = sub_1B67D8A7C();
        v235 = sub_1B67D9C9C();
        v236 = os_log_type_enabled(v234, v235);
        v237 = *(v0 + 552);
        v238 = *(v0 + 544);
        v240 = *(v0 + 488);
        v239 = *(v0 + 496);
        v241 = *(v0 + 472);
        v243 = *(v0 + 448);
        v242 = *(v0 + 456);
        if (v236)
        {
          v361 = *(v0 + 552);
          v371 = *(v0 + 560);
          v244 = swift_slowAlloc();
          logc = v234;
          v245 = swift_slowAlloc();
          v374[0] = v245;
          *v244 = 136446210;
          sub_1B6415F9C(&qword_1EB94B7E8, MEMORY[0x1E695B6B8]);
          v346 = v240;
          v351 = v239;
          v246 = sub_1B67DA28C();
          v248 = v247;
          v249 = *(v242 + 8);
          v249(v241, v243);
          v250 = sub_1B6456540(v246, v248, v374);

          *(v244 + 4) = v250;
          _os_log_impl(&dword_1B63EF000, logc, v235, "Will ignore sync engine event, event=%{public}s", v244, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v245);
          MEMORY[0x1B8C96DF0](v245, -1, -1);
          MEMORY[0x1B8C96DF0](v244, -1, -1);
          sub_1B645745C(v361, v371);

          sub_1B641FC34(v346, v351);
        }

        else
        {
          sub_1B645745C(*(v0 + 552), *(v0 + 560));

          sub_1B641FC34(v240, v239);

          v249 = *(v242 + 8);
          v249(v241, v243);
        }

        v249(*(v0 + 480), *(v0 + 448));
        goto LABEL_88;
      }

      v226 = *(v0 + 568);
      sub_1B64B6EA4(sub_1B64F3838, 0, *(v0 + 488), *(v0 + 496), *(v0 + 512), *(v0 + 520), *(v0 + 528), *(v0 + 536));
      v227 = *(v0 + 544);
      v229 = *(v0 + 488);
      v228 = *(v0 + 496);
      v230 = *(v0 + 480);
      v231 = *(v0 + 448);
      v232 = *(v0 + 456);
      sub_1B645745C(*(v0 + 552), *(v0 + 560));

      sub_1B641FC34(v229, v228);
      (*(v232 + 8))(v230, v231);
      if (v226)
      {
        goto LABEL_13;
      }
    }

LABEL_88:
    v315 = *(v0 + 472);
    v314 = *(v0 + 480);
    v316 = *(v0 + 464);
    v317 = *(v0 + 440);
    v318 = *(v0 + 416);
    v319 = *(v0 + 392);
    v320 = *(v0 + 368);
    v321 = *(v0 + 344);
    v322 = *(v0 + 320);
    v323 = *(v0 + 296);
    v328 = *(v0 + 272);
    v331 = *(v0 + 248);
    v336 = *(v0 + 240);
    loge = *(v0 + 232);
    v348 = *(v0 + 208);
    v354 = *(v0 + 184);
    v364 = *(v0 + 160);
    v373 = *(v0 + 152);

    v77 = *(v0 + 8);
    goto LABEL_89;
  }

  v111 = *(v0 + 480);
  v113 = *(v0 + 360);
  v112 = *(v0 + 368);
  v114 = *(v0 + 352);
  (*(*(v0 + 456) + 96))(v111, *(v0 + 448));
  v115 = (*(v113 + 32))(v112, v111, v114);
  v116 = MEMORY[0x1B8C945D0](v115);
  v117 = *(v116 + 16);
  if (v117)
  {
    v118 = *(v0 + 336);
    v374[0] = MEMORY[0x1E69E7CC0];
    sub_1B67D9FAC();
    v121 = *(v118 + 16);
    v119 = v118 + 16;
    v120 = v121;
    v122 = v116 + ((*(v119 + 64) + 32) & ~*(v119 + 64));
    v123 = *(v119 + 56);
    do
    {
      v124 = *(v0 + 344);
      v125 = *(v0 + 328);
      v126 = v120(v124, v122, v125);
      MEMORY[0x1B8C94E40](v126);
      (*(v119 - 8))(v124, v125);
      sub_1B67D9F7C();
      v127 = *(v374[0] + 16);
      sub_1B67D9FBC();
      sub_1B67D9FCC();
      sub_1B67D9F8C();
      v122 += v123;
      --v117;
    }

    while (v117);

    inited = v374[0];
  }

  else
  {

    inited = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 576) = inited;
  v198 = swift_task_alloc();
  *(v0 + 584) = v198;
  *v198 = v0;
  v199 = sub_1B64F09C4;
LABEL_53:
  v198[1] = v199;
  v200 = *(v0 + 112);

  return sub_1B64F2FDC(inited);
}

uint64_t sub_1B64F09C4()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 576);

  if (v0)
  {
    v6 = sub_1B64F207C;
  }

  else
  {
    v6 = sub_1B64F0AF8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64F0AF8()
{
  v1 = v0[46];
  v2 = MEMORY[0x1B8C945E0]();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[39];
    v18 = MEMORY[0x1E69E7CC0];
    sub_1B67D9FAC();
    v7 = *(v4 + 16);
    v5 = v4 + 16;
    v6 = v7;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v9 = *(v5 + 56);
    do
    {
      v10 = v0[40];
      v11 = v0[38];
      v12 = v6(v10, v8, v11);
      MEMORY[0x1B8C94E60](v12);
      (*(v5 - 8))(v10, v11);
      sub_1B67D9F7C();
      v13 = *(v18 + 16);
      sub_1B67D9FBC();
      sub_1B67D9FCC();
      sub_1B67D9F8C();
      v8 += v9;
      --v3;
    }

    while (v3);

    v14 = v18;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v0[75] = v14;
  v15 = swift_task_alloc();
  v0[76] = v15;
  *v15 = v0;
  v15[1] = sub_1B64F0CA0;
  v16 = v0[14];

  return sub_1B64F343C(v14);
}

uint64_t sub_1B64F0CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = *(v2 + 600);

  if (v0)
  {
    v6 = sub_1B64F2220;
  }

  else
  {
    v6 = sub_1B64F0DD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64F0DD4()
{
  v1 = v0[68];
  v3 = v0[61];
  v2 = v0[62];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  sub_1B645745C(v0[69], v0[70]);

  sub_1B641FC34(v3, v2);
  (*(v5 + 8))(v4, v6);
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[58];
  v10 = v0[55];
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[46];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[37];
  v19 = v0[34];
  v20 = v0[31];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[23];
  v25 = v0[20];
  v26 = v0[19];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B64F0F70()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v4 = *v1;
  v2[85] = v0;

  v5 = v2[83];
  if (v0)
  {
    v6 = v2[78];

    swift_setDeallocating();
    v7 = *(v5 + 16);
    swift_arrayDestroy();
    v8 = sub_1B64F23C4;
  }

  else
  {
    swift_setDeallocating();
    v9 = *(v5 + 16);
    swift_arrayDestroy();
    v8 = sub_1B64F10E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B64F10E8()
{
  while (2)
  {
    result = (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    while (1)
    {
      while (1)
      {
        v17 = *(v0 + 648) + 1;
        if (v17 == *(v0 + 632))
        {
          v49 = *(v0 + 624);
          v50 = *(v0 + 544);
          v52 = *(v0 + 488);
          v51 = *(v0 + 496);
          v54 = *(v0 + 264);
          v53 = *(v0 + 272);
          v55 = *(v0 + 256);
          sub_1B645745C(*(v0 + 552), *(v0 + 560));

          sub_1B641FC34(v52, v51);

          (*(v54 + 8))(v53, v55);
          v57 = *(v0 + 472);
          v56 = *(v0 + 480);
          v58 = *(v0 + 464);
          v59 = *(v0 + 440);
          v60 = *(v0 + 416);
          v61 = *(v0 + 392);
          v62 = *(v0 + 368);
          v63 = *(v0 + 344);
          v64 = *(v0 + 320);
          v65 = *(v0 + 296);
          v68 = *(v0 + 272);
          v70 = *(v0 + 248);
          v72 = *(v0 + 240);
          v74 = *(v0 + 232);
          v76 = *(v0 + 208);
          logb = *(v0 + 184);
          v82 = *(v0 + 160);
          v83 = *(v0 + 152);

          v66 = *(v0 + 8);

          return v66();
        }

        *(v0 + 648) = v17;
        v18 = *(v0 + 624);
        if (v17 >= *(v18 + 16))
        {
          __break(1u);
          return result;
        }

        v19 = *(v0 + 224);
        v20 = *(v19 + 16);
        v20(*(v0 + 248), v18 + ((*(v0 + 712) + 32) & ~*(v0 + 712)) + *(v19 + 72) * v17, *(v0 + 216));
        v21 = sub_1B67D928C();
        *(v0 + 80) = v21;
        type metadata accessor for CKError(0);
        sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);
        sub_1B67D850C();

        v22 = *(v0 + 88);
        if (v22 != 26)
        {
          break;
        }

        v73 = *(v0 + 720);
        v69 = *(v0 + 716);
        v67 = *(v0 + 544);
        v2 = *(v0 + 248);
        v75 = v2;
        log = *(v0 + 224);
        v80 = *(v0 + 216);
        v3 = *(v0 + 144);
        v71 = *(v0 + 136);
        v4 = MEMORY[0x1B8C94550]();
        v5 = [v4 recordID];

        sub_1B67D943C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B798, &qword_1B6818B78);
        v6 = sub_1B67D91DC();
        v7 = *(v6 - 8);
        v8 = *(v7 + 72);
        v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1B68100D0;
        v11 = [v5 zoneID];
        v12 = [objc_allocWithZone(MEMORY[0x1E695BA80]) initWithZoneID_];

        *(v10 + v9) = v12;
        (*(v7 + 104))(v10 + v9, v69, v6);
        sub_1B67D940C();

        sub_1B67D943C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
        v13 = *(v3 + 72);
        v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1B68100D0;
        *(v15 + v14) = v5;
        (*(v3 + 104))(v15 + v14, v73, v71);
        v16 = v5;
        sub_1B67D941C();

        result = (log[1].isa)(v75, v80);
      }

      if (v22 == 14)
      {
        break;
      }

      v23 = *(v0 + 640);
      v24 = *(v0 + 248);
      v25 = *(v0 + 232);
      v26 = *(v0 + 216);
      v27 = *(v0 + 112);
      v20(*(v0 + 240), v24, v26);
      v20(v25, v24, v26);
      v28 = sub_1B67D8A7C();
      v29 = sub_1B67D9C8C();
      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 240);
      v32 = *(v0 + 248);
      v33 = *(v0 + 224);
      v34 = *(v0 + 232);
      v35 = *(v0 + 216);
      if (v30)
      {
        v81 = *(v0 + 248);
        v36 = swift_slowAlloc();
        loga = v28;
        v37 = swift_slowAlloc();
        *v36 = 138543618;
        v38 = MEMORY[0x1B8C94550]();
        v39 = *(v33 + 8);
        v39(v31, v35);
        *(v36 + 4) = v38;
        *v37 = v38;
        *(v36 + 12) = 2112;
        sub_1B67D928C();
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v39(v34, v35);
        *(v36 + 14) = v40;
        v37[1] = v40;
        _os_log_impl(&dword_1B63EF000, loga, v29, "Failed to save record to cloud, record=%{public}@, error=%@", v36, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v37, -1, -1);
        MEMORY[0x1B8C96DF0](v36, -1, -1);

        result = (v39)(v81, v35);
      }

      else
      {

        v41 = *(v33 + 8);
        v41(v34, v35);
        v41(v31, v35);
        result = (v41)(v32, v35);
      }
    }

    v42 = *(v0 + 248);
    v43 = sub_1B67D928C();
    v44 = sub_1B67D951C();
    *(v0 + 656) = v44;

    if (!v44)
    {
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  inited = swift_initStackObject();
  *(v0 + 664) = inited;
  *(inited + 16) = xmmword_1B68100E0;
  *(inited + 32) = v44;
  v46 = v44;
  v47 = swift_task_alloc();
  *(v0 + 672) = v47;
  *v47 = v0;
  v47[1] = sub_1B64F0F70;
  v48 = *(v0 + 112);

  return sub_1B64F2FDC(inited);
}

uint64_t sub_1B64F1854()
{
  v2 = *(*v1 + 696);
  v5 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = sub_1B64F1D60;
  }

  else
  {
    v3 = sub_1B64F1968;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64F1968()
{
  v42 = v0;
  v1 = v0[14] + v0[86];
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  if (v4)
  {
    v8 = v0[66];
    v9 = v0[64];
    v37 = v0[61];
    v39 = v0[62];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136446210;
    v12 = (*(v8 + 8))(v9, v8);
    v14 = sub_1B6456540(v12, v13, &v41);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B63EF000, v2, v3, "Did handle identity loss from sync engine, zone=%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
    sub_1B645745C(v6, v5);

    v15 = v37;
    v16 = v39;
  }

  else
  {
    v18 = v0[61];
    v17 = v0[62];
    sub_1B645745C(v0[69], v0[70]);

    v15 = v18;
    v16 = v17;
  }

  sub_1B641FC34(v15, v16);

  v20 = v0[59];
  v19 = v0[60];
  v21 = v0[58];
  v22 = v0[55];
  v23 = v0[52];
  v24 = v0[49];
  v25 = v0[46];
  v26 = v0[43];
  v27 = v0[40];
  v28 = v0[37];
  v31 = v0[34];
  v32 = v0[31];
  v33 = v0[30];
  v34 = v0[29];
  v35 = v0[26];
  v36 = v0[23];
  v38 = v0[20];
  v40 = v0[19];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B64F1BFC()
{
  sub_1B641FC34(v0[61], v0[62]);
  v21 = v0[71];
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[49];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[37];
  v13 = v0[34];
  v14 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[19];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B64F1D60()
{
  v47 = v0;
  v1 = v0[88];
  v2 = v0[86];
  v3 = v0[14];
  v4 = v1;
  v5 = sub_1B67D8A7C();
  v6 = sub_1B67D9C9C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[88];
  v9 = v0[69];
  if (v7)
  {
    v38 = v0[70];
    v40 = v0[68];
    v10 = v0[66];
    v11 = v0[64];
    v42 = v0[61];
    v44 = v0[62];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46 = v14;
    *v12 = 136446466;
    v15 = (*(v10 + 8))(v11, v10);
    v17 = sub_1B6456540(v15, v16, &v46);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_1B63EF000, v5, v6, "Failed to handle identity loss from sync engine, zone=%{public}s, error=%{public}@", v12, 0x16u);
    sub_1B6418AB4(v13, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B8C96DF0](v14, -1, -1);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
    sub_1B645745C(v9, v38);

    sub_1B641FC34(v42, v44);
  }

  else
  {
    v21 = v0[61];
    v20 = v0[62];
    sub_1B645745C(v0[69], v0[70]);

    sub_1B641FC34(v21, v20);
  }

  v23 = v0[59];
  v22 = v0[60];
  v24 = v0[58];
  v25 = v0[55];
  v26 = v0[52];
  v27 = v0[49];
  v28 = v0[46];
  v29 = v0[43];
  v30 = v0[40];
  v31 = v0[37];
  v34 = v0[34];
  v35 = v0[31];
  v36 = v0[30];
  v37 = v0[29];
  v39 = v0[26];
  v41 = v0[23];
  v43 = v0[20];
  v45 = v0[19];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1B64F207C()
{
  v1 = v0[68];
  v3 = v0[61];
  v2 = v0[62];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  sub_1B645745C(v0[69], v0[70]);

  sub_1B641FC34(v3, v2);
  (*(v5 + 8))(v4, v6);
  v27 = v0[74];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[58];
  v10 = v0[55];
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[46];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[37];
  v19 = v0[34];
  v20 = v0[31];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[23];
  v25 = v0[20];
  v26 = v0[19];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B64F2220()
{
  v1 = v0[68];
  v3 = v0[61];
  v2 = v0[62];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  sub_1B645745C(v0[69], v0[70]);

  sub_1B641FC34(v3, v2);
  (*(v5 + 8))(v4, v6);
  v27 = v0[77];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[58];
  v10 = v0[55];
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[46];
  v14 = v0[43];
  v15 = v0[40];
  v16 = v0[37];
  v19 = v0[34];
  v20 = v0[31];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[23];
  v25 = v0[20];
  v26 = v0[19];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B64F23C4()
{
  v1 = v0[82];
  v2 = v0[68];
  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[33];
  v30 = v0[34];
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[27];
  v8 = v0[28];
  sub_1B645745C(v0[69], v0[70]);

  sub_1B641FC34(v4, v3);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v30, v6);
  v31 = v0[85];
  v11 = v0[59];
  v10 = v0[60];
  v12 = v0[58];
  v13 = v0[55];
  v14 = v0[52];
  v15 = v0[49];
  v16 = v0[46];
  v17 = v0[43];
  v18 = v0[40];
  v19 = v0[37];
  v22 = v0[34];
  v23 = v0[31];
  v24 = v0[30];
  v25 = v0[29];
  v26 = v0[26];
  v27 = v0[23];
  v28 = v0[20];
  v29 = v0[19];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B64F2590()
{
  v1[5] = v0;
  v1[6] = *v0;
  v1[7] = *v0;
  v2 = sub_1B67D922C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64F26D8, 0, 0);
}

void sub_1B64F26D8()
{
  v1 = v0[5];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);

    sub_1B64251D4((v0 + 2));
    v3 = v0[7];

    v5 = v0[2];
    v4 = v0[3];
    v0[12] = v5;
    v0[13] = v4;
    v6 = swift_task_alloc();
    v0[14] = v6;
    v7 = v3[10];
    v0[15] = v7;
    v8 = v3[11];
    v0[16] = v8;
    v9 = v3[12];
    v0[17] = v9;
    v10 = v3[13];
    v0[18] = v10;
    *v6 = v0;
    v6[1] = sub_1B64F2824;

    sub_1B64252D4(v5, v4, v7, v8, v9, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64F2824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 112);
  v9 = *v4;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v5[22] = v3;

  if (v3)
  {
    v7 = sub_1B64F2E68;
  }

  else
  {
    v7 = sub_1B64F293C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

size_t sub_1B64F293C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v57 = v0[6];
  v59 = v0[22];
  v53 = v0[5];
  v55 = v0[11];
  sub_1B67D943C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B798, &qword_1B6818B78);
  v4 = sub_1B67D91DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B68100D0;
  *(v8 + v7) = sub_1B65013CC(v3, v2);
  (*(v5 + 104))(v8 + v7, *MEMORY[0x1E695B5D8], v4);
  sub_1B67D940C();
  v9 = v0;

  sub_1B67D943C();
  v0[4] = v53;
  v10 = sub_1B67D8E4C();
  (*(*(v10 - 8) + 56))(v55, 1, 1, v10);
  WitnessTable = swift_getWitnessTable();
  v12 = PrivateZoneType.allModelIDs(orderBy:)(v55, v57, WitnessTable);
  if (v59)
  {
    v13 = v0[20];
    v14 = v0[21];
    v15 = v0[19];
    v17 = v0[12];
    v16 = v0[13];
    sub_1B6418AB4(v0[11], &qword_1EB94B510, &unk_1B68102C0);
    sub_1B645745C(v13, v14);

    sub_1B641FC34(v17, v16);
    v19 = v0[10];
    v18 = v0[11];

    v20 = v0[1];
LABEL_10:

    return v20();
  }

  v21 = v12;
  sub_1B6418AB4(v0[11], &qword_1EB94B510, &unk_1B68102C0);
  v22 = v21[2];
  if (!v22)
  {
LABEL_9:

    v42 = v9;
    v45 = v9 + 20;
    v44 = v9[20];
    v43 = v45[1];
    v46 = v42[19];
    v48 = v42[12];
    v47 = v42[13];
    v49 = v42[10];
    v50 = v42[11];
    sub_1B67D941C();

    sub_1B645745C(v44, v43);

    sub_1B641FC34(v48, v47);

    v20 = v42[1];
    goto LABEL_10;
  }

  v23 = v9[9];
  v61 = MEMORY[0x1E69E7CC0];
  result = sub_1B64FC714(0, v22, 0);
  v25 = 0;
  v26 = v61;
  v51 = *MEMORY[0x1E695B5F0];
  v52 = v23;
  v54 = v22;
  v27 = v21 + 5;
  v56 = v21;
  while (v25 < v21[2])
  {
    v29 = v9[20];
    v28 = v9[21];
    v30 = v9[17];
    v58 = v9[18];
    v60 = v26;
    v31 = v9[15];
    v32 = v9[16];
    v34 = *(v27 - 1);
    v33 = *v27;

    sub_1B646B894(v29, v28);
    sub_1B6471CBC(v34, v33, v29, v28, v31, v32, v30);
    v35 = v9[10];
    *v35 = v36;

    v37 = sub_1B67D922C();
    (*(*(v37 - 8) + 104))(v35, v51, v37);

    v26 = v60;
    v39 = *(v60 + 16);
    v38 = *(v60 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1B64FC714(v38 > 1, v39 + 1, 1);
      v26 = v60;
    }

    ++v25;
    v40 = v9[10];
    v41 = v9[8];
    *(v26 + 16) = v39 + 1;
    result = (*(v52 + 32))(v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v39, v40, v41);
    v27 += 2;
    v21 = v56;
    if (v54 == v25)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64F2E68()
{
  sub_1B641FC34(v0[12], v0[13]);
  v1 = v0[22];
  v3 = v0[10];
  v2 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B64F2EDC(_OWORD *a1)
{
  v2 = sub_1B67D93DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  sub_1B67D923C();
  sub_1B6501AF0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B64F2FDC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B64F3024, 0, 0);
}

void sub_1B64F3024()
{
  v1 = v0[6];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);

    sub_1B64251D4((v0 + 2));
    v3 = v0[7];

    v5 = v0[2];
    v4 = v0[3];
    v0[8] = v5;
    v0[9] = v4;
    v6 = swift_task_alloc();
    v0[10] = v6;
    v7 = v3[10];
    v0[11] = v7;
    v8 = v3[11];
    v0[12] = v8;
    v9 = v3[12];
    v0[13] = v9;
    v10 = v3[13];
    v0[14] = v10;
    *v6 = v0;
    v6[1] = sub_1B64F3160;

    sub_1B64252D4(v5, v4, v7, v8, v9, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64F3160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v9 = *v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = v3;

  if (v3)
  {
    v7 = sub_1B64F33D8;
  }

  else
  {

    v7 = sub_1B64F3284;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B64F3284()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v18 = *(v0 + 104);
  v19 = *(v0 + 136);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  type metadata accessor for PrivateZoneChange();
  v17 = *(v0 + 40);
  *(v0 + 32) = sub_1B67D950C();
  v8 = swift_task_alloc();
  *(v8 + 16) = v17;
  *(v8 + 32) = v3;
  *(v8 + 40) = v1;
  *(v8 + 48) = v0 + 32;
  sub_1B64B6EE8(sub_1B650005C, v8, v7, v6, v5, v4, v18, v2);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 48);

  sub_1B64F8620(v13, (v0 + 32));
  sub_1B645745C(v9, v10);
  sub_1B641FC34(v12, v11);
  v14 = *(v0 + 32);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B64F33D8()
{
  sub_1B641FC34(v0[8], v0[9]);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B64F343C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B64F3484, 0, 0);
}

void sub_1B64F3484()
{
  v1 = v0[6];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);

    sub_1B64251D4((v0 + 2));
    v3 = v0[7];

    v5 = v0[2];
    v4 = v0[3];
    v0[8] = v5;
    v0[9] = v4;
    v6 = swift_task_alloc();
    v0[10] = v6;
    v7 = v3[10];
    v0[11] = v7;
    v8 = v3[11];
    v0[12] = v8;
    v9 = v3[12];
    v0[13] = v9;
    v10 = v3[13];
    v0[14] = v10;
    *v6 = v0;
    v6[1] = sub_1B64F35C0;

    sub_1B64252D4(v5, v4, v7, v8, v9, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64F35C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v9 = *v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = v3;

  if (v3)
  {
    v7 = sub_1B6501330;
  }

  else
  {

    v7 = sub_1B64F36E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B64F36E4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v18 = *(v0 + 104);
  v19 = *(v0 + 136);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  type metadata accessor for PrivateZoneChange();
  v17 = *(v0 + 40);
  *(v0 + 32) = sub_1B67D950C();
  v8 = swift_task_alloc();
  *(v8 + 16) = v17;
  *(v8 + 32) = v3;
  *(v8 + 40) = v1;
  *(v8 + 48) = v0 + 32;
  sub_1B64B6EE8(sub_1B64FFFE4, v8, v7, v6, v5, v4, v18, v2);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 48);

  sub_1B64F8620(v13, (v0 + 32));
  sub_1B645745C(v9, v10);
  sub_1B641FC34(v12, v11);
  v14 = *(v0 + 32);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1B64F3838(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v10 - v4;
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = a1[2];
  sub_1B646CF4C();
  sub_1B67D876C();
  v7 = sub_1B67D877C();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  sub_1B67D8DDC();
}

uint64_t PrivateZone.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = *v1;
  v3 = sub_1B67D91AC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64F3A64, 0, 0);
}

uint64_t sub_1B64F3A64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B68100E0;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  *(v6 + 32) = sub_1B65013CC(v7, v8);
  *v1 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x1E695B5D0], v4);
  sub_1B67D91BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B780, &qword_1B6818780);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B788, &qword_1B6818788) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B68100D0;
  v13 = (v12 + v11);
  *v13 = sub_1B65013CC(v7, v8);
  (*(v8 + 32))(v7, v8);
  v14 = v13 + v9[14];
  sub_1B67D917C();
  sub_1B64FF040(v12);
  swift_setDeallocating();
  sub_1B6418AB4(v13, &qword_1EB94B788, &qword_1B6818788);
  swift_deallocClassInstance();
  sub_1B67D919C();

  v15 = v0[1];

  return v15();
}

uint64_t PrivateZone.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1B64F3D48;

  return sub_1B64F402C(a1, a2);
}

uint64_t sub_1B64F3D48()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64F3E7C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B64F3E7C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v1;
  v4 = sub_1B67D8A7C();
  v5 = sub_1B67D9C8C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B63EF000, v4, v5, "Failed to produce next change batch for sync engine, error=%{public}@", v8, 0xCu);
    sub_1B6418AB4(v9, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v9, -1, -1);
    MEMORY[0x1B8C96DF0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = sub_1B67D920C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_1B64F402C(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = *v2;
  v4 = sub_1B67D922C();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64F4118, 0, 0);
}

void sub_1B64F4118()
{
  v1 = v0[18];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);

    sub_1B64251D4((v0 + 6));
    v3 = v0[19];

    v5 = v0[6];
    v4 = v0[7];
    v0[23] = v5;
    v0[24] = v4;
    v6 = swift_task_alloc();
    v0[25] = v6;
    v7 = v3[10];
    v0[26] = v7;
    v8 = v3[11];
    v0[27] = v8;
    v9 = v3[12];
    v0[28] = v9;
    v10 = v3[13];
    v0[29] = v10;
    *v6 = v0;
    v6[1] = sub_1B64F425C;

    sub_1B64252D4(v5, v4, v7, v8, v9, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64F425C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 200);
  v9 = *v4;
  v5[30] = a1;
  v5[31] = a2;
  v5[32] = a3;
  v5[33] = v3;

  if (v3)
  {
    v7 = sub_1B64F4CB8;
  }

  else
  {
    v7 = sub_1B64F4374;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B64F4374()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 136);
  sub_1B67D943C();
  v6 = sub_1B67D93FC();

  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v8 = sub_1B64F4EAC(sub_1B64FF6D8, v7, v6);

  v9 = (*(v3 + 32))(v4, v3);
  if (v10)
  {
    v9 = sub_1B67D91EC();
  }

  sub_1B64F517C(v9, v8);
  v85 = v11;
  v13 = v12;
  v14 = MEMORY[0x1E69E7CC0];
  v88 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  v16 = v15 >> 1;

  v86 = v16;
  v79 = v1;
  if (v13 != v16)
  {
    v33 = *(v0 + 168);
    v84 = v33 + 16;
    v80 = *MEMORY[0x1E695B5F0];
    v34 = (v33 + 96);
    v78 = *MEMORY[0x1E695B5F8];
    v35 = v13;
    while (v35 >= v13)
    {
      if (v35 <= v86)
      {
        v36 = v86;
      }

      else
      {
        v36 = v35;
      }

      while (1)
      {
        if (v36 == v35)
        {
          goto LABEL_41;
        }

        v37 = *(v0 + 176);
        v38 = *(v0 + 160);
        v39 = v35 + 1;
        (*(v33 + 16))(v37, v85 + *(v33 + 72) * v35, v38);
        v40 = (*(v33 + 88))(v37, v38);
        if (v40 != v80)
        {
          break;
        }

        v41 = *(v0 + 176);
        (*v34)(v41, *(v0 + 160));
        v42 = *v41;
        MEMORY[0x1B8C949F0]();
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B67D97FC();
        }

        sub_1B67D983C();

        v14 = v88;
        ++v35;
        if (v86 == v39)
        {
          goto LABEL_4;
        }
      }

      if (v40 != v78)
      {
        return sub_1B67DA07C();
      }

      v44 = *(v0 + 176);
      (*v34)(v44, *(v0 + 160));
      v45 = *v44;
      MEMORY[0x1B8C949F0]();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B67D97FC();
      }

      sub_1B67D983C();

      if (v86 - 1 == v35++)
      {
        goto LABEL_4;
      }
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_4:
  v82 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 232);
  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 184);
  v87 = *(v0 + 192);
  v22 = *(v0 + 144);

  *(v0 + 80) = v14;
  v23 = swift_task_alloc();
  *(v23 + 16) = v82;
  *(v23 + 32) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A8, &qword_1B6818B88);
  *(v0 + 16) = v20;
  *(v0 + 24) = v19;
  *(v0 + 32) = v17;
  *(v0 + 40) = v18;
  _s2IDVMa();
  sub_1B6458C04(&qword_1EB94B7B0, &qword_1EB94B7A8, &qword_1B6818B88);
  v24 = sub_1B67D973C();

  v25 = swift_task_alloc();
  v25[2] = v20;
  v25[3] = v19;
  v25[4] = v17;
  v25[5] = v18;
  v83 = v24;
  v25[6] = v24;
  swift_getWitnessTable();
  sub_1B67D959C();
  sub_1B67D959C();
  swift_getTupleTypeMetadata2();
  sub_1B641CFC8();
  if (!v79)
  {
    v48 = *(v0 + 144);

    v50 = *(v0 + 64);
    v49 = *(v0 + 72);
    v51 = MEMORY[0x1E69E7CC8];
    *(v0 + 96) = v83;
    *(v0 + 104) = v51;
    v52 = swift_task_alloc();
    v52[2] = v50;
    v52[3] = v48;
    v52[4] = v49;
    sub_1B67D988C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7B8, &qword_1B6818B90);
    swift_getWitnessTable();
    sub_1B67D976C();

    v84 = *(v0 + 88);
    if (!(v14 >> 62))
    {
      v54 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v54)
      {
LABEL_25:
        if (v54 < 1)
        {
          __break(1u);
          return result;
        }

        v55 = 0;
        v56 = *(v0 + 168);
        v81 = *MEMORY[0x1E695B5F0];
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x1B8C95180](v55, v14);
          }

          else
          {
            v63 = *(v14 + 8 * v55 + 32);
          }

          v64 = v63;
          if ((v84 & 0xC000000000000001) != 0)
          {
            v65 = v63;
            v66 = sub_1B67DA05C();

            if (v66)
            {
              *(v0 + 120) = v66;
              sub_1B63F3DA0(0, &qword_1EB949A60, 0x1E695BA60);
              swift_dynamicCast();
              v67 = *(v0 + 112);
              if (v67)
              {
                goto LABEL_39;
              }
            }
          }

          else if (*(v84 + 16))
          {
            v68 = sub_1B64FCA90(v63);
            if (v69)
            {
              v67 = *(*(v84 + 56) + 8 * v68);
              if (v67)
              {
LABEL_39:

                goto LABEL_28;
              }
            }
          }

          v57 = *(v0 + 240);
          v58 = *(v0 + 160);
          sub_1B67D943C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
          v59 = *(v56 + 72);
          v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_1B68100D0;
          *(v61 + v60) = v64;
          (*(v56 + 104))(v61 + v60, v81, v58);
          v62 = v64;
          sub_1B67D942C();

LABEL_28:
          ++v55;
        }

        while (v54 != v55);
      }

LABEL_43:
      v71 = *(v0 + 248);
      v70 = *(v0 + 256);
      v72 = *(v0 + 240);
      v74 = *(v0 + 184);
      v73 = *(v0 + 192);
      v75 = *(v0 + 176);
      v76 = *(v0 + 128);

      sub_1B64FD51C(v84);

      sub_1B67D91FC();
      swift_unknownObjectRelease();
      sub_1B645745C(v71, v70);

      sub_1B641FC34(v74, v73);
      v77 = sub_1B67D920C();
      (*(*(v77 - 8) + 56))(v76, 0, 1, v77);

      v32 = *(v0 + 8);
      goto LABEL_44;
    }

LABEL_42:
    result = sub_1B67DA04C();
    v54 = result;
    if (result)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

  v27 = *(v0 + 248);
  v26 = *(v0 + 256);
  v28 = *(v0 + 240);
  v30 = *(v0 + 184);
  v29 = *(v0 + 192);

  sub_1B645745C(v27, v26);

  sub_1B641FC34(v30, v29);
  swift_unknownObjectRelease();

  v31 = *(v0 + 176);

  v32 = *(v0 + 8);
LABEL_44:

  return v32();
}

uint64_t sub_1B64F4CB8()
{
  sub_1B641FC34(v0[23], v0[24]);
  v1 = v0[33];
  v2 = v0[22];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B64F4D24()
{
  v0 = sub_1B67D913C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D916C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D911C();
  MEMORY[0x1B8C943B0](v10);
  (*(v6 + 8))(v9, v5);
  v11 = sub_1B67D912C();
  (*(v1 + 8))(v4, v0);
  return v11 & 1;
}

uint64_t sub_1B64F4EAC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_1B67D922C();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B64FC714(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1B64FC714(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_1B64F517C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_1B67D922C() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1B64F5210@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v30 = a4;
  v26[1] = a1;
  v32 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v27 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - v15;
  sub_1B67D8D5C();
  v17 = sub_1B67D8E4C();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v28 = a2;
  v29 = a3;
  v31 = a6;
  v19 = a6;
  v20 = a5;
  v21 = v33;
  v22 = sub_1B64F543C(a2, v16, a3, v19, a5);
  sub_1B6418AB4(v16, &qword_1EB94B510, &unk_1B68102C0);

  if (!v21)
  {
    *v32 = v22;
    sub_1B67D8D5C();
    v24 = v27;
    v18(v27, 1, 1, v17);
    v25 = sub_1B64F58F8(v28, v24, v29, v30, v20, v31);
    sub_1B6418AB4(v24, &qword_1EB94B510, &unk_1B68102C0);

    v32[1] = v25;
  }

  return result;
}

uint64_t sub_1B64F543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v33 = a2;
  v32 = a1;
  v11 = *v8;
  v36 = sub_1B67D8B1C();
  v35 = *(v36 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v15 = *(v11 + *MEMORY[0x1E69D61F0]);
  v53 = a3;
  v54 = v15;
  v55 = a5;
  v56 = a4;
  v16 = _s2IDVMa();
  v17 = sub_1B67D94FC();
  v51 = a5;
  v52 = v17;
  v48 = v15;
  v49 = a3;
  v50 = a4;
  v18 = sub_1B67D988C();
  v29[1] = v16;
  sub_1B67D959C();
  swift_getWitnessTable();
  v19 = v34;
  sub_1B67D976C();
  v34 = v53;
  v57 = v32;
  v44 = v15;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  KeyPath = swift_getKeyPath();
  v38 = v15;
  v39 = a3;
  v30 = a3;
  v31 = a4;
  v40 = a4;
  v41 = a5;
  v32 = a5;
  v42 = sub_1B6501334;
  v43 = KeyPath;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B580, &qword_1B68146D0);
  WitnessTable = swift_getWitnessTable();
  sub_1B64EA714(sub_1B6501354, v37, v18, v21, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);

  sub_1B67D8C8C();

  v24 = sub_1B67D8D2C();
  if (v19)
  {
    (*(v35 + 8))(v14, v36);
  }

  else
  {
    v26 = v24;
    (*(v35 + 8))(v14, v36);
    v57 = v26;
    swift_getWitnessTable();
    v52 = sub_1B67D94FC();
    MEMORY[0x1EEE9AC00](v52);
    v27 = v30;
    v29[-6] = v15;
    v29[-5] = v27;
    v28 = v32;
    v29[-4] = v31;
    v29[-3] = v28;
    v29[-2] = v34;
    sub_1B67D988C();
    sub_1B67D959C();
    swift_getWitnessTable();
    sub_1B67D976C();

    return v53;
  }
}

uint64_t sub_1B64F58F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a2;
  v40 = sub_1B67D8B1C();
  v39 = *(v40 - 1);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v13 = _s2IDVMa();
  v14 = sub_1B67D94FC();
  v55 = a6;
  v56 = v14;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v15 = sub_1B67D988C();
  v31 = v13;
  sub_1B67D959C();
  swift_getWitnessTable();
  v16 = v35;
  sub_1B67D976C();
  v17 = v57;
  v61 = a1;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  KeyPath = swift_getKeyPath();
  v32 = a3;
  v42 = a3;
  v43 = a4;
  v33 = a4;
  v34 = a5;
  v44 = a5;
  v45 = a6;
  v35 = a6;
  v46 = sub_1B64FF9EC;
  v47 = KeyPath;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B580, &qword_1B68146D0);
  WitnessTable = swift_getWitnessTable();
  sub_1B64EA714(sub_1B64FF9F0, v41, v15, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);

  v22 = v36;
  sub_1B67D8C8C();
  v23 = v22;

  v24 = sub_1B67D8D2C();
  if (v16)
  {
    (*(v39 + 8))(v22, v40);
  }

  else
  {
    v26 = *(v39 + 8);
    v27 = v24;
    v38 = v24;
    v26(v23, v40);
    v61 = v27;
    swift_getWitnessTable();
    v28 = sub_1B67D94FC();
    v40 = &v31;
    v56 = v28;
    MEMORY[0x1EEE9AC00](v28);
    v29 = v33;
    *(&v31 - 6) = v32;
    *(&v31 - 5) = v29;
    v30 = v35;
    *(&v31 - 4) = v34;
    *(&v31 - 3) = v30;
    *(&v31 - 2) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7C8, &qword_1B6818BE0);
    sub_1B67D959C();
    sub_1B6458C04(&qword_1EB94B7D0, &qword_1EB94B7C8, &qword_1B6818BE0);
    sub_1B67D976C();

    return v57;
  }
}

void sub_1B64F5DB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v69 = a5;
  WitnessTable = a3;
  v65 = a1;
  v7 = *a4;
  v8 = *a4;
  v9 = *(*a4 + 88);
  v10 = sub_1B67D9DFC();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v63 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v66 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v63 - v19;
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v71 = *a2;
  v74 = v71;
  v75 = v21;
  v76 = v22;
  v23 = *(v7 + 80);
  v72 = *(v8 + 96);

  v24 = v22;
  *&v25 = v23;
  *(&v25 + 1) = v9;
  v73[1] = v72;
  v73[0] = v25;
  _s2IDVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1B67D95AC();

  if ((*(v15 + 48))(v14, 1, v9) == 1)
  {
    v26 = v71;
    (*(v67 + 8))(v14, v68);

    v27 = v24;
    v28 = sub_1B67D8A7C();
    v29 = sub_1B67D9C8C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v73[0] = v31;
      *v30 = 136446210;

      v32 = sub_1B6456540(v26, v21, v73);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_1B63EF000, v28, v29, "Failed to lookup model for record save, modelID=%{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1B8C96DF0](v31, -1, -1);
      MEMORY[0x1B8C96DF0](v30, -1, -1);
    }
  }

  else
  {
    v63[1] = a4;
    v64 = v20;
    v67 = v15;
    v68 = v9;
    (*(v15 + 32))(v20, v14, v9);
    sub_1B63F3DA0(0, &qword_1EB949A60, 0x1E695BA60);
    (*(v72 + 16))(v23);
    v33 = v24;
    v34 = sub_1B67D9D6C();
    v74 = v71;
    v75 = v21;
    v76 = v33;

    v35 = v33;
    sub_1B67D95AC();

    v36 = *&v73[0];
    if (*&v73[0])
    {
      sub_1B6499B48();

      sub_1B67D8DCC();

      v37 = v77;
      if (v75)
      {
        v36 = sub_1B67D963C();
      }

      else
      {
        v36 = 0;
      }

      v39 = v67;
      v38 = v68;
    }

    else
    {
      v37 = v77;
      v39 = v67;
      v38 = v68;
    }

    [v34 setEtag_];

    v40 = v64;
    v41 = v37;
    sub_1B644A610(v34, v38);
    if (!v37)
    {
      v54 = v65;
      v55 = *v65;
      if ((*v65 & 0xC000000000000001) != 0)
      {
        if (v55 < 0)
        {
          v56 = *v65;
        }

        else
        {
          v56 = v55 & 0xFFFFFFFFFFFFFF8;
        }

        v57 = v34;
        v58 = sub_1B67DA04C();
        if (__OFADD__(v58, 1))
        {
          __break(1u);
          return;
        }

        *v54 = sub_1B64FCD90(v56, v58 + 1);
      }

      else
      {
        v60 = *v65;
        v61 = v34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v73[0] = *v54;
      sub_1B64FD244(v34, v35, isUniquelyReferenced_nonNull_native);

      *v54 = *&v73[0];
      (*(v39 + 8))(v40, v38);
      return;
    }

    *&v72 = v34;
    v42 = v66;
    (*(v39 + 16))(v66, v40, v38);
    v43 = v41;
    v44 = sub_1B67D8A7C();
    v45 = sub_1B67D9C8C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v74 = v77;
      *v46 = 136446466;
      *&v73[0] = 0;
      *(&v73[0] + 1) = 0xE000000000000000;
      sub_1B67DA2BC();
      v47 = v73[0];
      v48 = *(v39 + 8);
      v48(v42);
      v49 = sub_1B6456540(v47, *(&v47 + 1), &v74);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2114;
      v50 = v41;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v51;
      v52 = v71;
      *v71 = v51;
      _os_log_impl(&dword_1B63EF000, v44, v45, "Failed to convert model to record, model=%{public}s, error=%{public}@", v46, 0x16u);
      sub_1B6418AB4(v52, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v52, -1, -1);
      v53 = v77;
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1B8C96DF0](v53, -1, -1);
      MEMORY[0x1B8C96DF0](v46, -1, -1);

      (v48)(v64, v38);
    }

    else
    {

      v59 = *(v39 + 8);
      v59(v42, v38);
      v59(v40, v38);
    }
  }
}

uint64_t PrivateZone.shouldFetchChanges(zoneID:syncEngine:)(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = v4[10];
  v7 = v4[11];
  v8 = v4[12];
  v9 = v4[13];
  *v5 = v2;
  v5[1] = sub_1B64D0F34;

  return sub_1B64FF228(a1, v6, v7, v8);
}

uint64_t PrivateZone.relatedApplicationBundleIdentifiers(zoneIDs:recordIDs:syncEngine:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B64D0F34;

  return sub_1B64FF300();
}

uint64_t sub_1B64F6720(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return (sub_1B64FE868)(a1);
}

uint64_t sub_1B64F67CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6422E9C;

  return PrivateZone.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2);
}

uint64_t sub_1B64F6874(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6422E9C;

  return PrivateZone.nextFetchChangesOptions(_:syncEngine:)(a1);
}

uint64_t sub_1B64F690C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = a3[10];
  v8 = a3[11];
  v9 = a3[12];
  v10 = a3[13];
  *v6 = v3;
  v6[1] = sub_1B65013A0;

  return (sub_1B64FF228)(a1, v7, v8, v9, v10);
}

uint64_t sub_1B64F69C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B65013A0;

  return sub_1B64FF300();
}

uint64_t sub_1B64F6A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64F6A90, 0, 0);
}

uint64_t sub_1B64F6A90()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_1B64F6BE4;

    return sub_1B64F6E4C();
  }

  else
  {
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = *(v0 + 120);
    type metadata accessor for PrivateZone.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B64F6BE4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1B64F6DE8;
  }

  else
  {
    v3 = sub_1B64F6CF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64F6CF8()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  sub_1B64B6EA4(sub_1B6500410, v9, v8, v6, v5, v4, v2, v3);
  v10 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B64F6DE8()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B64F6E4C()
{
  *(v1 + 144) = v0;
  *(v1 + 152) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B64F6E94, 0, 0);
}

uint64_t sub_1B64F6E94()
{
  v1 = v0[18];
  v2 = sub_1B641A1BC();
  v0[20] = v2;
  v0[21] = v3;
  v4 = v0[19];
  v5 = v2;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[22] = v7;
  v8 = v4[10];
  v0[23] = v8;
  v9 = v4[11];
  v0[24] = v9;
  v10 = v4[12];
  v0[25] = v10;
  v11 = v4[13];
  v0[26] = v11;
  *v7 = v0;
  v7[1] = sub_1B64F6FB0;

  return sub_1B64252D4(v5, v6, v8, v9, v10, v11);
}

uint64_t sub_1B64F6FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 176);
  v9 = *v4;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = a3;
  v5[30] = v3;

  if (v3)
  {
    v7 = sub_1B64F7A08;
  }

  else
  {
    v7 = sub_1B64F70C8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B64F70C8()
{
  v87 = v0;
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[20];
  v6 = v0[21];
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B810, &qword_1B6818C88);
  sub_1B641CFC8();
  if (v1)
  {
    v9 = v0[27];
    v11 = v0[20];
    v10 = v0[21];
    sub_1B645745C(v0[28], v0[29]);

    sub_1B641FC34(v11, v10);

    v12 = v0[1];
  }

  else
  {
    v13 = v0[28];
    v84 = v0[29];
    v15 = v0[25];
    v14 = v0[26];
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[18];
    v82 = v14;

    v69 = v0[7];
    v0[9] = v0[6];
    v0[2] = v17;
    v0[3] = v16;
    v0[4] = v15;
    v0[5] = v14;
    _s2IDVMa();
    swift_getWitnessTable();
    v0[10] = sub_1B67D94FC();
    v19 = swift_task_alloc();
    v19[2] = v13;
    v19[3] = v84;
    v19[4] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B818, &qword_1B6818C90);
    sub_1B67D959C();
    sub_1B6458C04(&qword_1EB94B820, &qword_1EB94B818, &qword_1B6818C90);
    sub_1B67D976C();

    log = v0[8];
    v0[12] = v69;
    v0[13] = sub_1B67D94FC();
    v20 = swift_task_alloc();
    v20[2] = v13;
    v20[3] = v84;
    v20[4] = v18;
    sub_1B67D976C();

    v21 = v0[11];
    v22 = swift_task_alloc();
    v22[2] = v17;
    v22[3] = v16;
    v22[4] = v15;
    v22[5] = v82;
    v22[6] = v21;
    v23 = swift_task_alloc();
    v23[2] = v17;
    v23[3] = v16;
    v23[4] = v15;
    v23[5] = v82;
    v23[6] = sub_1B6500854;
    v23[7] = v22;

    v85 = sub_1B67D958C();

    v24 = swift_task_alloc();
    v24[2] = v17;
    v24[3] = v16;
    v24[4] = v15;
    v24[5] = v82;
    v24[6] = log;
    v25 = swift_task_alloc();
    v25[2] = v17;
    v25[3] = v16;
    v25[4] = v15;
    v25[5] = v82;
    v25[6] = sub_1B65008A8;
    v25[7] = v24;
    v26 = sub_1B67D958C();

    swift_bridgeObjectRetain_n();
    v83 = v26;
    swift_bridgeObjectRetain_n();
    v27 = sub_1B67D8A7C();
    v28 = sub_1B67D9C9C();
    if (os_log_type_enabled(v27, v28))
    {
      loga = v27;
      v30 = v0[25];
      v29 = v0[26];
      v71 = v30;
      v73 = v29;
      v32 = v0[23];
      v31 = v0[24];
      v67 = v32;
      v66 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86[0] = v80;
      *v66 = 136446466;
      v0[16] = v85;
      v33 = swift_task_alloc();
      v78 = v28;
      *v33 = v32;
      v33[1] = v31;
      v33[2] = v30;
      v33[3] = v29;
      KeyPath = swift_getKeyPath();

      v35 = sub_1B67D957C();
      WitnessTable = swift_getWitnessTable();
      v37 = MEMORY[0x1E69E6158];
      v39 = sub_1B64EA714(sub_1B6501384, KeyPath, v35, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v38);

      v40 = MEMORY[0x1B8C94A20](v39, v37);
      v42 = v41;

      v43 = sub_1B6456540(v40, v42, v86);

      *(v66 + 4) = v43;
      *(v66 + 12) = 2082;
      v0[17] = v83;
      v44 = swift_task_alloc();
      *v44 = v67;
      v44[1] = v31;
      v44[2] = v71;
      v44[3] = v73;
      v45 = swift_getKeyPath();

      v47 = sub_1B64EA714(sub_1B6500A78, v45, v35, v37, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v46);

      v48 = MEMORY[0x1B8C94A20](v47, v37);
      v50 = v49;

      v51 = sub_1B6456540(v48, v50, v86);

      *(v66 + 14) = v51;
      _os_log_impl(&dword_1B63EF000, loga, v78, "Will merge local data to cloud, idsToSave=%{public}s, idsToDelete=%{public}s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C96DF0](v80, -1, -1);
      MEMORY[0x1B8C96DF0](v66, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v52 = v0[26];
    v72 = v0[27];
    v74 = v0[28];
    v53 = v0[24];
    v54 = v0[25];
    v68 = v54;
    v70 = v52;
    v55 = v0[23];
    v81 = v0[21];
    logb = v0[29];
    v79 = v0[20];
    v86[0] = MEMORY[0x1E69E7CC0];
    v0[14] = v85;
    v56 = swift_task_alloc();
    v56[2] = v55;
    v56[3] = v53;
    v56[4] = v54;
    v56[5] = v52;
    v57 = sub_1B67D957C();
    v58 = sub_1B67D922C();
    v59 = swift_getWitnessTable();
    v61 = sub_1B64EA714(sub_1B65009BC, v56, v57, v58, MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v60);

    sub_1B64F8F28(v61);
    v0[15] = v83;
    v62 = swift_task_alloc();
    v62[2] = v55;
    v62[3] = v53;
    v62[4] = v68;
    v62[5] = v70;
    v64 = sub_1B64EA714(sub_1B65009DC, v62, v57, v58, MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v63);

    sub_1B64F8F28(v64);
    sub_1B67D943C();
    sub_1B67D941C();
    sub_1B645745C(v74, logb);

    sub_1B641FC34(v79, v81);

    v12 = v0[1];
  }

  return v12();
}

uint64_t sub_1B64F7A08()
{
  sub_1B641FC34(v0[20], v0[21]);
  v1 = v0[30];
  v2 = v0[1];

  return v2();
}

void sub_1B64F7A6C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v97 = a5;
  v98 = a6;
  v102 = a2;
  v93 = a1;
  v11 = *a4;
  v12 = *a4;
  v13 = *(*a4 + 88);
  v109 = a4;
  v14 = *(v11 + 104);
  v86 = type metadata accessor for PrivateZoneChange();
  v15 = *(*(v86 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v86);
  v85 = &v81[-v17];
  v100 = v13;
  v18 = *(v13 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v92 = &v81[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v81[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v91 = &v81[-v26];
  if (a3 >> 62)
  {
    v27 = sub_1B67DA04C();
    if (!v27)
    {
      return;
    }
  }

  else
  {
    v27 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      return;
    }
  }

  v108 = v27;
  if (v27 >= 1)
  {
    v96 = v14;
    v84 = a7;
    v28 = 0;
    v29 = *(v12 + 96);
    v106 = *(v29 + 16);
    v107 = v29 + 16;
    v105 = a3 & 0xC000000000000001;
    v88 = (v18 + 32);
    v110 = *(v12 + 80);
    v87 = (v18 + 16);
    v90 = (v18 + 8);
    v104 = qword_1EDB265A0;
    *&v25 = 136446466;
    v83 = v25;
    *&v25 = 138543618;
    v99 = v25;
    *&v25 = 136446210;
    v94 = v25;
    v103 = a3;
    v95 = v24;
    v101 = v29;
    while (1)
    {
      v30 = v105 ? MEMORY[0x1B8C95180](v28, a3) : *(a3 + 8 * v28 + 32);
      v31 = v30;
      v32 = sub_1B67D9D7C();
      v34 = v33;
      if (v32 == v106() && v34 == v35)
      {
        break;
      }

      v36 = sub_1B67DA2DC();

      if (v36)
      {
        goto LABEL_15;
      }

      v57 = v31;
      v58 = sub_1B67D8A7C();
      v59 = sub_1B67D9C8C();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v111[0] = v61;
        *v60 = v94;
        v62 = sub_1B67D9D7C();
        v64 = sub_1B6456540(v62, v63, v111);

        *(v60 + 4) = v64;
        v29 = v101;
        _os_log_impl(&dword_1B63EF000, v58, v59, "Ignoring unknown record type, recordType=%{public}s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        v65 = v61;
        a3 = v103;
        MEMORY[0x1B8C96DF0](v65, -1, -1);
        MEMORY[0x1B8C96DF0](v60, -1, -1);
      }

      else
      {
      }

LABEL_7:
      if (v108 == ++v28)
      {
        return;
      }
    }

LABEL_15:
    sub_1B67D8D4C();
    v37 = v31;
    v111[0] = sub_1B6505EFC(v37);
    v111[1] = v38;
    v111[2] = v39;
    v40 = v8;
    sub_1B67D8CDC();
    if (v8)
    {
      v8 = 0;

      v41 = v37;
      v42 = v40;
      v43 = sub_1B67D8A7C();
      v44 = sub_1B67D9C8C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = v99;
        *(v45 + 4) = v41;
        *v46 = v41;
        *(v45 + 12) = 2114;
        v47 = v41;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 14) = v49;
        v46[1] = v49;
        _os_log_impl(&dword_1B63EF000, v43, v44, "Failed to save record metadata to database, record=%{public}@, error=%{public}@", v45, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
        swift_arrayDestroy();
        MEMORY[0x1B8C96DF0](v46, -1, -1);
        MEMORY[0x1B8C96DF0](v45, -1, -1);

        v29 = v101;
      }

      else
      {
      }

      a3 = v103;
    }

    else
    {

      v50 = [v37 recordID];
      v52 = v97;
      v51 = v98;
      sub_1B646B894(v97, v98);
      v53 = v100;
      v54 = v29;
      v55 = v96;
      v56 = sub_1B6471D60(v50, v52, v51, v110, v100, v54);
      v67 = v66;
      v68 = v56;
      v70 = v69;
      v71 = v37;
      v72 = v68;
      v73 = v53;
      sub_1B6449D58(v72, v70, v71, v53, v55, v95);
      a3 = v103;
      v89 = v71;

      v74 = v91;
      (*v88)(v91, v95, v73);
      sub_1B67D8D4C();
      swift_beginAccess();
      v75 = *v87;
      v76 = v92;
      (*v87)(v92, v74, v73);
      sub_1B67D8CDC();
      v8 = 0;
      v82 = *v90;
      v77 = v76;
      v78 = v100;
      v82(v77, v100);

      v79 = *(swift_getTupleTypeMetadata2() + 48);
      v80 = v85;
      v75(v85, v74, v78);
      v80[v79] = 1;
      swift_storeEnumTagMultiPayload();
      sub_1B67D988C();
      sub_1B67D985C();

      v82(v74, v78);
      v29 = v101;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1B64F8620(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;

  sub_1B64F99E0(v3);
}

void sub_1B64F8664(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t **a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v8 = v7;
  v42 = a7;
  v43 = a1;
  v51 = a5;
  v52 = a6;
  v50 = a2;
  v47 = *a4;
  v10 = v47[11];
  v54 = a4;
  v48 = v47[13];
  v49 = v10;
  v41 = type metadata accessor for PrivateZoneChange();
  v11 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = (&v40 - v14);
  if (a3 >> 62)
  {
    v38 = v12;
    v39 = sub_1B67DA04C();
    v12 = v38;
    v15 = v39;
    if (!v39)
    {
      return;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    v16 = 0;
    v53 = qword_1EDB265A0;
    v45 = v12 & 0xC000000000000001;
    *&v13 = 138543618;
    v44 = v13;
    v46 = v12;
    do
    {
      if (v45)
      {
        v17 = MEMORY[0x1B8C95180](v16);
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
      }

      v18 = v17;
      sub_1B67D8D7C();
      v19 = [v18 recordName];
      sub_1B67D964C();

      sub_1B67D8E0C();
      if (v8)
      {

        v20 = v18;
        v21 = v8;
        v22 = sub_1B67D8A7C();
        v23 = sub_1B67D9C8C();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = v44;
          *(v24 + 4) = v20;
          *v25 = v20;
          *(v24 + 12) = 2114;
          v26 = v20;
          v27 = v8;
          v28 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 14) = v28;
          v25[1] = v28;
          _os_log_impl(&dword_1B63EF000, v22, v23, "Failed to delete record metadata from database, recordID=%{public}@, error=%{public}@", v24, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
          swift_arrayDestroy();
          MEMORY[0x1B8C96DF0](v25, -1, -1);
          MEMORY[0x1B8C96DF0](v24, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v29 = v18;
      v31 = v51;
      v30 = v52;
      sub_1B646B894(v51, v52);
      v32 = sub_1B6471D60(v29, v31, v30, v47[10], v49, v47[12]);
      v34 = v33;
      v36 = v35;
      sub_1B67D8D7C();
      sub_1B67D8E0C();
      v8 = 0;

      v37 = v40;
      *v40 = v32;
      v37[1] = v34;
      *(v37 + 16) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1B67D988C();

      sub_1B67D985C();

      ++v16;
      v12 = v46;
    }

    while (v15 != v16);
  }
}

uint64_t sub_1B64F8BC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[0] = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v29 - v20;
  v29[5] = a1;
  v29[6] = a2;
  v29[7] = a3;

  v22 = a3;
  v29[1] = a6;
  v29[2] = a7;
  v29[3] = a8;
  v29[4] = a9;
  _s2IDVMa();
  swift_getWitnessTable();
  sub_1B67D95AC();

  if (!v29[8])
  {
    v27 = 1;
    return v27 & 1;
  }

  sub_1B67D8B4C();
  sub_1B67D8DCC();

  v23 = sub_1B67D877C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  result = v25(v21, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B67D8B4C();
    sub_1B67D8DCC();

    result = v25(v19, 1, v23);
    if (result != 1)
    {
      v27 = sub_1B67D86EC();

      v28 = *(v24 + 8);
      v28(v19, v23);
      v28(v21, v23);
      return v27 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64F8E30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1B67D9F3C();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for CKError(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B64F8F28(uint64_t result)
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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1B64FC498(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1B67D922C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B64F9054(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = v1[3];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *(v3 + 80);
  *(v7 + 24) = *(v4 + 88);
  *(v7 + 40) = *(v3 + 104);
  *(v7 + 48) = v6;
  *(v7 + 56) = a1;

  sub_1B645C7AC(&unk_1B6818C58, v7);
}

uint64_t sub_1B64F9180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64F91A8, 0, 0);
}

uint64_t sub_1B64F91A8()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v3 = sub_1B641A1BC();
    *(v0 + 144) = v3;
    *(v0 + 152) = v4;
    v8 = v3;
    v9 = v4;
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_1B64F9340;
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);

    return sub_1B64252D4(v8, v9, v13, v14, v11, v12);
  }

  else
  {
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = *(v0 + 120);
    type metadata accessor for PrivateZone.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B64F9340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 160);
  v9 = *v4;
  v5[21] = a1;
  v5[22] = a2;
  v5[23] = a3;
  v5[24] = v3;

  if (v3)
  {
    v7 = sub_1B64F96A8;
  }

  else
  {
    v7 = sub_1B64F9458;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B64F9458()
{
  *(v0 + 72) = *(v0 + 96);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = swift_task_alloc();
  v7 = *(v0 + 112);
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
  *(v6 + 56) = v2;
  type metadata accessor for PrivateZoneChange();
  v8 = sub_1B67D988C();
  v9 = sub_1B67D922C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  WitnessTable = swift_getWitnessTable();
  sub_1B64EA714(sub_1B6500190, v6, v8, v9, v10, WitnessTable, MEMORY[0x1E69E7288], v0 + 80);
  v12 = *(v0 + 168);
  if (v1)
  {
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    sub_1B645745C(*(v0 + 176), *(v0 + 184));

    sub_1B641FC34(v14, v13);

    v16 = *(v0 + 80);
  }

  else
  {
    v29 = *(v0 + 144);
    v30 = *(v0 + 152);
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 96);

    sub_1B67D943C();
    sub_1B67D941C();

    v22 = swift_task_alloc();
    v22[2] = v20;
    v22[3] = v19;
    v22[4] = v18;
    v22[5] = v17;
    v22[6] = v21;
    sub_1B64B6EA4(sub_1B65001B8, v22, v29, v30, v20, v19, v18, v17);
    v23 = *(v0 + 168);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 136);
    sub_1B645745C(*(v0 + 176), *(v0 + 184));

    sub_1B641FC34(v25, v24);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1B64F96A8()
{
  v1 = v0[17];
  sub_1B641FC34(v0[18], v0[19]);

  v2 = v0[24];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B64F9718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v40 = a8;
  v41 = a4;
  v42 = a6;
  v39 = a9;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PrivateZoneChange();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v39 - v20);
  (*(v22 + 16))(&v39 - v20, a1, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v14 + 32))(v17, v21, a5);
    v30 = PrivateZoneModel.identifier.getter(a5, a7);
    v32 = v31;
    sub_1B646B894(a2, a3);
    v33 = v43;
    sub_1B6471CBC(v30, v32, a2, a3, v41, a5, v42);
    v35 = v34;
    v28 = v33;
    result = (*(v14 + 8))(v17, a5);
    if (!v33)
    {
      v29 = MEMORY[0x1E695B5F0];
      v27 = v35;
      goto LABEL_7;
    }

LABEL_5:
    *v40 = v28;
    return result;
  }

  v23 = *v21;
  v24 = v21[1];
  sub_1B646B894(a2, a3);
  v25 = v43;
  result = sub_1B6471CBC(v23, v24, a2, a3, v41, a5, v42);
  v28 = v25;
  if (v25)
  {
    goto LABEL_5;
  }

  v29 = MEMORY[0x1E695B5F8];
LABEL_7:
  v36 = v39;
  *v39 = v27;

  v37 = *v29;
  v38 = sub_1B67D922C();
  return (*(*(v38 - 8) + 104))(v36, v37, v38);
}

uint64_t sub_1B64F99E0(uint64_t a1)
{
  v3 = *&v1->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v1 + 8);
  v4 = *(v3 + 88);
  v5 = *(v3 + 104);
  v8[1] = *&v1[10]._os_unfair_lock_opaque;
  type metadata accessor for PrivateZoneChange();
  sub_1B67D988C();
  v6 = type metadata accessor for Multicaster();

  os_unfair_lock_unlock(v1 + 8);
  v8[0] = a1;
  sub_1B64F9A9C(v8, v6);
}

uint64_t sub_1B64F9A9C(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v3 = *(a2 + 16);
  v108 = *(v3 - 1);
  v4 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v99 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1B67D995C();
  v6 = *(v116 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v116);
  v109 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v80 - v10;
  v104 = v3;
  v11 = sub_1B67D999C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v80 - v17;
  v18 = sub_1B67D87BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v90 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v111 = &v80 - v26;
  v114 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v103 = sub_1B67D9DFC();
  v28 = *(*(v103 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v103);
  v105 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v80 - v32;
  v117 = MEMORY[0x1E69E7CD0];
  v80 = v2;
  v34 = *v2;
  v37 = *(*v2 + 64);
  v36 = *v2 + 64;
  v35 = v37;
  v38 = 1 << *(v34 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v35;
  v82 = (v38 + 63) >> 6;
  v106 = TupleTypeMetadata2;
  v102 = TupleTypeMetadata2 - 8;
  v110 = (v19 + 16);
  v84 = v12 + 16;
  v112 = (v12 + 32);
  v113 = (v19 + 32);
  v101 = (v31 + 32);
  v96 = (v108 + 16);
  v95 = (v6 + 16);
  v94 = (v6 + 88);
  v93 = *MEMORY[0x1E69E8630];
  v83 = *MEMORY[0x1E69E8628];
  v81 = *MEMORY[0x1E69E8620];
  v86 = v19;
  v92 = (v19 + 8);
  v88 = v12;
  v91 = (v12 + 8);
  v108 = v6 + 8;
  v89 = v34;

  v42 = 0;
  v107 = v25;
  v85 = v33;
  v97 = v36;
  v98 = v16;
  while (v40)
  {
    v47 = v42;
LABEL_17:
    v52 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v53 = v52 | (v47 << 6);
    v54 = v89;
    v55 = v86;
    v56 = v111;
    (*(v86 + 16))(v111, *(v89 + 48) + *(v86 + 72) * v53, v18);
    v57 = v88;
    v58 = v18;
    v59 = v87;
    v60 = v114;
    (*(v88 + 16))(v87, *(v54 + 56) + *(v88 + 72) * v53, v114);
    v50 = v106;
    v61 = *(v106 + 48);
    v62 = *(v55 + 32);
    v63 = v105;
    v64 = v56;
    v65 = v58;
    v62(v105, v64, v58);
    v66 = *(v57 + 32);
    v51 = v63;
    v66(&v63[v61], v59, v60);
    v67 = 0;
    v25 = v107;
    v33 = v85;
LABEL_18:
    v68 = *(v50 - 8);
    (*(v68 + 56))(v51, v67, 1, v50);
    (*v101)(v33, v51, v103);
    if ((*(v68 + 48))(v33, 1, v50) == 1)
    {

      MEMORY[0x1EEE9AC00](v79);
      *(&v80 - 2) = v104;
      *(&v80 - 1) = &v117;
      sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8]);
      *v80 = sub_1B67D958C();
    }

    v69 = *(v50 + 48);
    (*v113)(v25, v33, v65);
    v70 = v98;
    v71 = v114;
    (*v112)(v98, &v33[v69], v114);
    (*v96)(v99, v100, v104);
    v18 = v65;
    v43 = v25;
    v72 = v115;
    sub_1B67D998C();
    v73 = v109;
    v74 = v116;
    (*v95)(v109, v72, v116);
    v75 = (*v94)(v73, v74);
    if (v75 == v93)
    {
      goto LABEL_5;
    }

    if (v75 == v83)
    {
      (*v108)(v109, v116);
      v43 = v107;
LABEL_5:
      v44 = v90;
      (*v110)(v90, v43, v18);
      v45 = v111;
      sub_1B64FD5CC(v111, v44);
      v46 = *v92;
      (*v92)(v45, v18);
      (*v91)(v70, v71);
      v46(v43, v18);
      v25 = v43;
      goto LABEL_6;
    }

    if (v75 == v81)
    {
      (*v91)(v70, v71);
      v25 = v107;
      (*v92)(v107, v18);
    }

    else
    {
      v76 = v90;
      v25 = v107;
      (*v110)(v90, v107, v18);
      v77 = v111;
      sub_1B64FD5CC(v111, v76);
      v78 = *v92;
      (*v92)(v77, v18);
      (*v91)(v70, v71);
      v78(v25, v18);
      (*v108)(v109, v116);
    }

LABEL_6:
    result = (*v108)(v115, v116);
    v36 = v97;
  }

  if (v82 <= v42 + 1)
  {
    v48 = v42 + 1;
  }

  else
  {
    v48 = v82;
  }

  v49 = v48 - 1;
  v51 = v105;
  v50 = v106;
  while (1)
  {
    v47 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v47 >= v82)
    {
      v65 = v18;
      v40 = 0;
      v67 = 1;
      v42 = v49;
      goto LABEL_18;
    }

    v40 = *(v36 + 8 * v47);
    ++v42;
    if (v40)
    {
      v42 = v47;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64FA510()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B64FA558, 0, 0);
}

uint64_t sub_1B64FA558()
{
  v1 = v0[2];
  v2 = sub_1B641A1BC();
  v0[4] = v2;
  v0[5] = v3;
  v4 = v0[3];
  v5 = v2;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[6] = v7;
  v8 = v4[10];
  v9 = v4[11];
  v10 = v4[12];
  v11 = v4[13];
  *v7 = v0;
  v7[1] = sub_1B64FA65C;

  return sub_1B64252D4(v5, v6, v8, v9, v10, v11);
}

uint64_t sub_1B64FA65C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v4;
  v8 = *(*v4 + 48);
  v11 = *v4;
  *(v7 + 56) = a1;
  *(v7 + 64) = v3;

  if (v3)
  {
    v9 = sub_1B64FAAF0;
  }

  else
  {
    sub_1B645745C(a2, a3);
    v9 = sub_1B64FA78C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B64FA78C()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1B64FA824;

  return sub_1B645CA68();
}

uint64_t sub_1B64FA824()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v3;
  v4[1] = sub_1B64FA968;
  v5 = *(v1 + 56);

  return sub_1B64ECCAC(1);
}

uint64_t sub_1B64FA968()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B64FAB54;
  }

  else
  {
    v3 = sub_1B64FAA7C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64FAA7C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  sub_1B641FC34(v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B64FAAF0()
{
  v1 = v0[8];
  sub_1B641FC34(v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B64FAB54()
{
  v1 = v0[7];

  v2 = v0[11];
  sub_1B641FC34(v0[4], v0[5]);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B64FABC0()
{
  *(v0 + 16) = 2;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B64FAC5C;

  return PrivateZone.synchronize(options:)((v0 + 16));
}

uint64_t sub_1B64FAC5C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6460E18, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B64FAD90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B642694C;

  return sub_1B64F2590();
}

uint64_t sub_1B64FAE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1B67D9DFC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  v27 = PrivateZoneModel.identifier.getter(a4, a6);
  v28 = v16;
  v23 = a5;
  v24 = a4;
  v25 = a7;
  v26 = a6;
  _s2IDVMa();
  sub_1B67D95AC();

  v18 = v30;
  if (v30)
  {
    v19 = v31;
    v20 = v29;
    v21 = *(a4 - 8);
    (*(v21 + 16))(v15, a2, a4);
    (*(v21 + 56))(v15, 0, 1, a4);
    v23 = v20;
    v24 = v18;
    v25 = v19;
    swift_getWitnessTable();
    sub_1B67D959C();
    return sub_1B67D95BC();
  }

  return result;
}

uint64_t sub_1B64FAFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 32);
  v6 = *(a2 + a3 - 24);
  v7 = *(a2 + a3 - 16);
  v8 = *(a2 + a3 - 8);
  result = sub_1B6471C64(*a1, *(a1 + 8), *(a1 + 16));
  *a4 = result;
  a4[1] = v10;
  return result;
}

void sub_1B64FB034(uint64_t a1)
{
  type metadata accessor for CKError(0);
  sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);
  sub_1B67D850C();
  if (v17 != a1 && v17 == 2)
  {
    v2 = sub_1B67D952C();
    if (v2)
    {
      v3 = v2;
      v4 = v2 + 64;
      v5 = 1 << *(v2 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(v2 + 64);
      v8 = (v5 + 63) >> 6;

      v9 = 0;
      while (v7)
      {
LABEL_13:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * v11)));
        v13 = v12;
        v14 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
        if (swift_dynamicCast())
        {
          v15 = (sub_1B64FB034)(a1);

          if (v15)
          {
LABEL_17:

            return;
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v8)
        {
          goto LABEL_17;
        }

        v7 = *(v4 + 8 * v10);
        ++v9;
        if (v7)
        {
          v9 = v10;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B64FB248(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8C95180](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B67DA04C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1B64FB370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6501034();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B64FB398(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B67D87BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8]), v9 = sub_1B67D95CC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1B6415F9C(&qword_1EDB1EF80, MEMORY[0x1E69695A8]);
      v17 = sub_1B67D962C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B64FB5B0()
{
  v1 = sub_1B67D93BC();
  v68 = *(v1 - 8);
  v69 = v1;
  v2 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v67 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B67D930C();
  v70 = *(v4 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B67D934C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B67D929C();
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D92DC();
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B67D93CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v0, v19);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == *MEMORY[0x1E695B608] || v24 == *MEMORY[0x1E695B630] || v24 == *MEMORY[0x1E695B698] || v24 == *MEMORY[0x1E695B6A0])
  {
    goto LABEL_41;
  }

  if (v24 == *MEMORY[0x1E695B688])
  {
    (*(v20 + 96))(v23, v19);
    v25 = v72;
    v26 = (*(v73 + 32))(v72, v23, v74);
    v27 = MEMORY[0x1B8C94510](v26);
    v28 = *(v27 + 16);
    if (v28)
    {
      v76 = MEMORY[0x1E69E7CC0];
      sub_1B67D9FAC();
      v29 = v12;
      v30 = v75 + 16;
      v75 = *(v75 + 16);
      v31 = *(v30 + 64);
      v71 = v27;
      v32 = v27 + ((v31 + 32) & ~v31);
      v33 = *(v30 + 56);
      do
      {
        (v75)(v15, v32, v29);
        sub_1B67D928C();
        (*(v30 - 8))(v15, v29);
        sub_1B67D9F7C();
        v34 = *(v76 + 16);
        sub_1B67D9FBC();
        sub_1B67D9FCC();
        sub_1B67D9F8C();
        v32 += v33;
        --v28;
      }

      while (v28);

      v35 = v76;
      v25 = v72;
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }

    v53 = sub_1B67D92CC();
    v54 = v53;
    v55 = *(v53 + 16);
    if (v55)
    {
      v56 = sub_1B64FC670(*(v53 + 16), 0);
      v57 = sub_1B64FE400(&v76, v56 + 4, v55, v54);
      result = sub_1B6449D40();
      if (v57 == v55)
      {
LABEL_25:
        if (!__OFADD__(v56[2], *(v35 + 16)))
        {
          v76 = sub_1B67D9F3C();
          sub_1B64F8E30(v35);
          sub_1B64F8E30(v56);
          v59 = sub_1B64FBF28(v76);

          (*(v73 + 8))(v25, v74);
          return v59;
        }

        __break(1u);
        goto LABEL_46;
      }

      __break(1u);
    }

    v56 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  if (v24 == *MEMORY[0x1E695B690])
  {
    (*(v20 + 96))(v23, v19);
    v74 = v9;
    v36 = v71;
    v37 = (*(v9 + 32))(v71, v23, v8);
    v38 = MEMORY[0x1B8C94570](v37);
    v39 = *(v38 + 16);
    if (v39)
    {
      v73 = v8;
      v76 = MEMORY[0x1E69E7CC0];
      sub_1B67D9FAC();
      v75 = *(v70 + 16);
      v40 = *(v70 + 80);
      v72 = v38;
      v41 = v38 + ((v40 + 32) & ~v40);
      v42 = *(v70 + 72);
      v43 = (v70 + 8);
      do
      {
        (v75)(v7, v41, v4);
        sub_1B67D928C();
        (*v43)(v7, v4);
        sub_1B67D9F7C();
        v44 = *(v76 + 16);
        sub_1B67D9FBC();
        sub_1B67D9FCC();
        sub_1B67D9F8C();
        v41 += v42;
        --v39;
      }

      while (v39);

      v45 = v76;
      v8 = v73;
      v36 = v71;
    }

    else
    {

      v45 = MEMORY[0x1E69E7CC0];
    }

    v60 = sub_1B67D92CC();
    v61 = v60;
    v62 = *(v60 + 16);
    if (v62)
    {
      v63 = sub_1B64FC670(*(v60 + 16), 0);
      v64 = sub_1B64FE400(&v76, v63 + 4, v62, v61);
      result = sub_1B6449D40();
      if (v64 == v62)
      {
LABEL_32:
        v65 = v74;
        if (__OFADD__(v63[2], *(v45 + 16)))
        {
LABEL_46:
          __break(1u);
          return result;
        }

        v76 = sub_1B67D9F3C();
        sub_1B64F8E30(v45);
        sub_1B64F8E30(v63);
        v52 = sub_1B64FBF28(v76);

        (*(v65 + 8))(v36, v8);
        return v52;
      }

      __break(1u);
    }

    v63 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  if (v24 == *MEMORY[0x1E695B680] || v24 == *MEMORY[0x1E695B6B0])
  {
    goto LABEL_41;
  }

  if (v24 != *MEMORY[0x1E695B6A8])
  {
    if (v24 != *MEMORY[0x1E695B670] && v24 != *MEMORY[0x1E695B678] && v24 != *MEMORY[0x1E695B650] && v24 != *MEMORY[0x1E695B658] && v24 != *MEMORY[0x1E695B610])
    {
      v66 = *MEMORY[0x1E695B638];
    }

LABEL_41:
    (*(v20 + 8))(v23, v19);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v20 + 96))(v23, v19);
  v47 = v67;
  v46 = v68;
  v48 = v23;
  v49 = v69;
  (*(v68 + 32))(v67, v48, v69);
  v50 = sub_1B67D93AC();
  if (v50)
  {
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F8, &unk_1B6818C38);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1B68100D0;
    *(v52 + 32) = v51;
    (*(v46 + 8))(v47, v49);
    return v52;
  }

  (*(v46 + 8))(v47, v49);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B64FBF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1B64FC6F4(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 32);
    type metadata accessor for CKError(0);
    sub_1B6415F9C(&qword_1EB94B800, type metadata accessor for CKError);
    do
    {
      v5 = *v4;
      v6 = swift_allocError();
      *v7 = v5;
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);
      v10 = v5;
      if (v8 >= v9 >> 1)
      {
        sub_1B64FC6F4((v9 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      *(v12 + 8 * v8 + 32) = v6;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B64FC05C(uint64_t a1)
{
  v2 = sub_1B6415F9C(&qword_1EB94B828, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B64FC0C8(uint64_t a1)
{
  v2 = sub_1B6415F9C(&qword_1EB94B828, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B64FC134(uint64_t a1)
{
  v2 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B64FC1B0(uint64_t a1)
{
  v2 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B64FC21C(uint64_t a1)
{
  v2 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B64FC288(void *a1, uint64_t a2)
{
  v4 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B64FC318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B64FC394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6415F9C(&unk_1EB94B9E0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B64FC418(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

size_t sub_1B64FC498(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
  v10 = *(sub_1B67D922C() - 8);
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
  v15 = *(sub_1B67D922C() - 8);
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

void *sub_1B64FC670(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B808, &qword_1B6818C48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1B64FC6F4(void *a1, int64_t a2, char a3)
{
  result = sub_1B64FC734(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B64FC714(size_t a1, int64_t a2, char a3)
{
  result = sub_1B64FC868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B64FC734(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F8, &unk_1B6818C38);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1B64FC868(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7A0, &qword_1B6818B80);
  v10 = *(sub_1B67D922C() - 8);
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
  v15 = *(sub_1B67D922C() - 8);
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