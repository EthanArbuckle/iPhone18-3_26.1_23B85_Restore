uint64_t sub_1B649BFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1B6488F24(v13, v14, a2);
  v16 = 0uLL;
  v17 = 0uLL;
  if ((result & 1) == 0)
  {
    (*(v9 + 16))(v12, a3, v8, 0, 0);

    result = RecipeBoxItem.init(recipeID:dateAdded:)(v13, v14, v12, v18);
    v16 = v18[0];
    v17 = v18[1];
  }

  *a4 = v16;
  a4[1] = v17;
  return result;
}

char *sub_1B649C108(void (*a1)(_OWORD *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6;
    v19[0] = *(v6 - 1);
    v19[1] = v8;

    a1(v18, v19);
    if (v3)
    {
      break;
    }

    if (*&v18[0])
    {
      v16 = v18[0];
      v17 = v18[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B649EC7C(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v12 = v16;
      v11 = v17;
      if (v10 >= v9 >> 1)
      {
        v14 = sub_1B649EC7C((v9 > 1), v10 + 1, 1, v7);
        v12 = v16;
        v11 = v17;
        v7 = v14;
      }

      *(v7 + 2) = v10 + 1;
      v13 = &v7[32 * v10];
      *(v13 + 2) = v12;
      *(v13 + 3) = v11;
    }

    else
    {
      sub_1B649FFF8(0);
    }

    v6 += 2;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_1B649C264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1B642694C;

  return sub_1B649C310(a5, a6);
}

uint64_t sub_1B649C310(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B649C334, 0, 0);
}

uint64_t sub_1B649C334()
{
  v1 = v0[7];
  v2 = *(v0[9] + 24);
  v0[10] = v2;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B68100D0;

  *(v3 + 32) = *sub_1B6416A90();
  v0[5] = v3;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580);
  sub_1B67D9E5C();
  v0[6] = v0[4];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD80, &qword_1B6814588);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD88, &unk_1B6814590);
  v8 = sub_1B6413CCC(&qword_1EDB1FA08, &qword_1EB94AD80, &qword_1B6814588);
  *v5 = v0;
  v5[1] = sub_1B649C568;

  return PrivateZoneType.query<A>(options:executor:)((v0 + 2), v0 + 6, sub_1B64A0058, v4, v6, v7, v8);
}

uint64_t sub_1B649C568()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);

    v6 = sub_1B649CC98;
  }

  else
  {
    v7 = *(v2 + 80);
    v8 = *(v2 + 88);

    v6 = sub_1B649C69C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B649C69C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v2, 0);
    v3 = v47;
    v4 = (v1 + 48);
    do
    {
      v49 = *(v4 - 1);
      v50 = *v4;
      v5 = RecipeBoxItem.recipeID.getter();
      v48 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B6456B24((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v48;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v12 = v0[2];

    v3 = MEMORY[0x1E69E7CC0];
  }

  v13 = v0[7];
  v14 = sub_1B646A4DC(v3);

  v15 = *(v13 + 16);
  v44 = v0;
  if (v15)
  {
    v16 = 0;
    v46 = v0[7] + 32;
    v17 = v14 + 56;
    v18 = MEMORY[0x1E69E7CC0];
    v45 = *(v13 + 16);
    while (1)
    {
      if (v16 >= v15)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x1EEE6DD58]();
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_41;
      }

      v20 = (v46 + 16 * v16);
      v22 = *v20;
      v21 = v20[1];
      ++v16;
      if (*(v14 + 16))
      {
        v23 = *(v14 + 40);
        sub_1B67DA3DC();

        sub_1B67D967C();
        v24 = sub_1B67DA41C();
        v25 = -1 << *(v14 + 32);
        v26 = v24 & ~v25;
        if ((*(v17 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (*(v14 + 48) + 16 * v26);
            v29 = *v28 == v22 && v28[1] == v21;
            if (v29 || (sub_1B67DA2DC() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v17 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_11;
        }
      }

      else
      {
      }

LABEL_23:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B6456B24(0, *(v18 + 16) + 1, 1);
      }

      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1B6456B24((v30 > 1), v31 + 1, 1);
      }

      *(v18 + 16) = v31 + 1;
      v32 = v18 + 16 * v31;
      *(v32 + 32) = v22;
      *(v32 + 40) = v21;
      v15 = v45;
LABEL_11:
      if (v19 == v15)
      {
        goto LABEL_30;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (*(v18 + 16))
  {
    v33 = v44[13];
    v34 = v44[10];
    v35 = v44[8];
    v36 = swift_task_alloc();
    *(v36 + 16) = v35;
    v37 = sub_1B649B6DC(sub_1B64A0074, v36, v18);

    PrivateZone.add(_:)(v37);
    if (!v38)
    {
      v41 = v44[9];

      v44[14] = swift_allocObject();
      swift_weakInit();
      v42 = *(MEMORY[0x1E69E88A0] + 4);
      v43 = swift_task_alloc();
      v44[15] = v43;
      *v43 = v44;
      v43[1] = sub_1B649CB00;

      return MEMORY[0x1EEE6DD58]();
    }

    v39 = v44[1];
  }

  else
  {

    v39 = v44[1];
  }

  return v39();
}

uint64_t sub_1B649CB00()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1B649CC34;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1B649CC1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B649CC34()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B649CCB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14[-v8];
  v10 = *(v2 + 40);
  v15 = a1;
  v16 = a2;
  os_unfair_lock_lock((v10 + 24));
  sub_1B649F1B8((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  v11 = sub_1B67D993C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;

  sub_1B6461304(0, 0, v9, &unk_1B68145B8, v12);
}

uint64_t sub_1B649CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1B6422E9C;

  return sub_1B649CEB8(a5, a6);
}

uint64_t sub_1B649CEB8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B649CEDC, 0, 0);
}

uint64_t sub_1B649CEDC()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = *(v0[13] + 24);
  v0[14] = v3;
  v0[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  v0[8] = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580);
  sub_1B67D9E5C();
  v0[9] = v0[7];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD80, &qword_1B6814588);
  v0[17] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD90, &qword_1B6814660);
  v9 = sub_1B6413CCC(&qword_1EDB1FA08, &qword_1EB94AD80, &qword_1B6814588);
  v0[18] = v9;
  *v6 = v0;
  v6[1] = sub_1B649D118;

  return PrivateZoneType.query<A>(options:executor:)((v0 + 2), v0 + 9, sub_1B649FF7C, v5, v7, v8, v9);
}

uint64_t sub_1B649D118()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 120);

    v6 = sub_1B649D6AC;
  }

  else
  {
    v7 = *(v2 + 112);
    v8 = *(v2 + 120);

    v6 = sub_1B649D24C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B649D24C()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[20] = v1;
  v0[21] = v2;
  v3 = v0[5];
  v0[22] = v0[4];
  v0[23] = v3;
  if (!v1)
  {
    v10 = v0[1];
    goto LABEL_5;
  }

  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v0[10] = v0[14];

  sub_1B649FF98(v1);
  v7._countAndFlagsBits = RecipeBoxItem.identifier.getter();
  PrivateZoneType.remove(_:)(v7);
  v8 = v0[14];
  if (v9)
  {

    sub_1B649FFF8(v1);
    sub_1B649FFF8(v1);
    v10 = v0[1];
LABEL_5:

    return v10();
  }

  v12 = v0[13];

  v0[24] = swift_allocObject();
  swift_weakInit();
  v13 = *(MEMORY[0x1E69E88A0] + 4);
  v14 = swift_task_alloc();
  v0[25] = v14;
  *v14 = v0;
  v14[1] = sub_1B649D460;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1B649D460()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1B649D610;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_1B649D57C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B649D57C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  sub_1B649FFF8(v3);
  sub_1B649FFF8(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B649D610()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];

  sub_1B649FFF8(v5);
  sub_1B649FFF8(v5);
  v6 = v0[26];
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B649D6C4(unint64_t *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_1B649FA80(a1, a2);
  result = swift_unknownObjectRelease();
  v6 = *a1;
  if (*a1 >> 62)
  {
    if (v6 < 0)
    {
      v8 = *a1;
    }

    result = sub_1B67DA04C();
    v7 = result;
    if (result >= v4)
    {
      return sub_1B649FEA4(v4, v7);
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v4)
    {
      return sub_1B649FEA4(v4, v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B649D764()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1B649D7D0()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_1B67D9A1C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x1E69E8708] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD98, &unk_1B68146A8);
    *v7 = v0;
    v7[1] = sub_1B6427034;
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v11, v9, v8);
  }
}

uint64_t sub_1B649D90C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v22 - v7;
  v9 = sub_1B67D8B1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  v15 = sub_1B64E29D4();
  v17 = *v15;
  v16 = v15[1];
  v14[2] = v17;
  v14[3] = v16;

  v14[4] = sub_1B64503A4(a1);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D6138], v9);
  v18 = sub_1B67D8E4C();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = sub_1B67D8D2C();
  if (v2)
  {
    sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v21 = v19;
    sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
    result = (*(v10 + 8))(v13, v9);
    *a2 = v21;
  }

  return result;
}

uint64_t sub_1B649DB50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B67D877C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  (*(v12 + 16))(v9, a2);

  return RecipeBoxItem.init(recipeID:dateAdded:)(v11, v10, v9, a3);
}

uint64_t sub_1B649DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20[-1] - v7;
  v9 = sub_1B67D8B1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B64E29D4();
  v15 = *v14;
  v16 = v14[1];
  v20[3] = MEMORY[0x1E69E6158];
  v20[4] = MEMORY[0x1E69D62D8];
  v20[0] = a2;
  v20[1] = a3;

  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v17 = sub_1B67D8E4C();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1B67D8D1C();
  sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B649DE38()
{
  v2 = *(*v1 + 240);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B649DF48, 0, 0);
  }

  return result;
}

uint64_t sub_1B649DF48()
{
  v1 = v0[27];
  if (v1)
  {
    v2 = *(v1 + 16);
    v42 = v0[27];
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 65;
      v5 = MEMORY[0x1E69E7CC0];
      v6 = MEMORY[0x1E69E7CC0];
      v45 = v2;
      v40 = v4;
      while (2)
      {
        v41 = v6;
        v7 = (v4 + 40 * v3);
        while (1)
        {
          if (v3 >= v2)
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            return MEMORY[0x1EEE6DD58]();
          }

          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_35;
          }

          v9 = *(v7 - 33);
          v10 = *(v7 - 25);
          v11 = *(v7 - 17);
          v12 = *(v7 - 9);
          v13 = *(v7 - 1);
          if (*v7)
          {
            break;
          }

          v14 = *(v7 - 33);
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1B649EC7C(0, *(v5 + 2) + 1, 1, v5);
          }

          v16 = *(v5 + 2);
          v15 = *(v5 + 3);
          v17 = v5;
          if (v16 >= v15 >> 1)
          {
            v17 = sub_1B649EC7C((v15 > 1), v16 + 1, 1, v5);
          }

          *(v17 + 2) = v16 + 1;
          v5 = v17;
          v18 = &v17[32 * v16];
          *(v18 + 4) = v9;
          *(v18 + 5) = v10;
          *(v18 + 6) = v11;
          *(v18 + 7) = v12;
          sub_1B64A01A4(v9, v10, v11, v12, v13, 0);
          ++v3;
          v7 += 40;
          v2 = v45;
          if (v8 == v45)
          {
            v0 = v43;
            v6 = v41;
            goto LABEL_24;
          }
        }

        v19 = *(v7 - 25);
        swift_bridgeObjectRetain_n();
        v6 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1B646A2E0(0, *(v41 + 2) + 1, 1, v41);
        }

        v0 = v43;
        v21 = *(v6 + 2);
        v20 = *(v6 + 3);
        if (v21 >= v20 >> 1)
        {
          v6 = sub_1B646A2E0((v20 > 1), v21 + 1, 1, v6);
        }

        *(v6 + 2) = v21 + 1;
        v22 = &v6[16 * v21];
        *(v22 + 4) = v9;
        *(v22 + 5) = v10;
        sub_1B64A01A4(v9, v10, v11, v12, v13, 1);
        v2 = v45;
        v3 = v8;
        v4 = v40;
        if (v8 != v45)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v5 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
    v0[31] = v6;
    v0[32] = v5;
    v25 = v42;
    v26 = (v42 + 65);
    v27 = -*(v42 + 16);
    v28 = -1;
    while (v27 + v28 != -1)
    {
      if (++v28 >= *(v25 + 16))
      {
        goto LABEL_36;
      }

      v29 = v26 + 40;
      v30 = *v26;
      v31 = *(v26 - 1);
      v32 = *(v26 - 17);
      *(v43 + 176) = *(v26 - 33);
      *(v43 + 192) = v32;
      *(v43 + 208) = v31;
      *(v43 + 209) = v30;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADA8, &qword_1B6814710);
      v34 = sub_1B645F150(v33);
      v25 = v42;
      v26 = v29;
      if (v34)
      {
        v35 = *(v43 + 224);

        *(v43 + 264) = swift_allocObject();
        swift_weakInit();
        v36 = *(MEMORY[0x1E69E88A0] + 4);
        v37 = swift_task_alloc();
        *(v43 + 272) = v37;
        *v37 = v43;
        v37[1] = sub_1B649E3E4;

        return MEMORY[0x1EEE6DD58]();
      }
    }

    *(v43 + 288) = sub_1B67D990C();
    *(v43 + 296) = sub_1B67D98FC();
    v39 = sub_1B67D989C();

    return MEMORY[0x1EEE6DFA0](sub_1B649E618, v39, v38);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1B649E3E4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_1B649E598;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_1B649E500;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B649E500()
{
  *(v0 + 288) = sub_1B67D990C();
  *(v0 + 296) = sub_1B67D98FC();
  v2 = sub_1B67D989C();

  return MEMORY[0x1EEE6DFA0](sub_1B649E618, v2, v1);
}

uint64_t sub_1B649E598()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];
  v5 = v0[35];

  return v4();
}

uint64_t sub_1B649E618()
{
  v1 = v0[37];
  v2 = v0[32];

  if (*(v2 + 16))
  {
    v3 = *(v0[28] + 32);
    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);

    os_unfair_lock_unlock((v3 + 24));
    if (v4 >> 62)
    {
      v5 = sub_1B67DA04C();
      v8 = v5;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_4:
        if (v8 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v5, v6, v7);
        }

        v9 = 0;
        v17 = v8;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1B8C95180](v9, v4);
          }

          else
          {
            v10 = *(v4 + 8 * v9 + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = v0[32];
            v12 = v0[28];
            v11 = v0[29];
            v13 = *(v10 + 24);
            ObjectType = swift_getObjectType();
            v0[20] = v11;
            v0[21] = &off_1F2DBF618;
            v0[17] = v12;
            v15 = *(v13 + 8);

            v15(v0 + 17, v18, ObjectType, v13);
            v8 = v17;
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v0 + 17);
          }

          else
          {
          }

          ++v9;
        }

        while (v8 != v9);
      }
    }
  }

  v5 = sub_1B649E7E4;
  v6 = 0;
  v7 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B649E7E4()
{
  v1 = *(v0 + 288);
  *(v0 + 304) = sub_1B67D98FC();
  v3 = sub_1B67D989C();

  return MEMORY[0x1EEE6DFA0](sub_1B649E870, v3, v2);
}

uint64_t sub_1B649E870()
{
  v1 = v0[38];
  v2 = v0[31];

  if (*(v2 + 16))
  {
    v3 = *(v0[28] + 32);
    os_unfair_lock_lock((v3 + 24));
    v4 = *(v3 + 16);

    os_unfair_lock_unlock((v3 + 24));
    if (v4 >> 62)
    {
      v5 = sub_1B67DA04C();
      v8 = v5;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_4:
        if (v8 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v5, v6, v7);
        }

        v9 = 0;
        v17 = v8;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1B8C95180](v9, v4);
          }

          else
          {
            v10 = *(v4 + 8 * v9 + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = v0[31];
            v12 = v0[28];
            v11 = v0[29];
            v13 = *(v10 + 24);
            ObjectType = swift_getObjectType();
            v0[15] = v11;
            v0[16] = &off_1F2DBF618;
            v0[12] = v12;
            v15 = *(v13 + 16);

            v15(v0 + 12, v18, ObjectType, v13);
            v8 = v17;
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v0 + 12);
          }

          else
          {
          }

          ++v9;
        }

        while (v8 != v9);
      }
    }
  }

  v5 = sub_1B649EA3C;
  v6 = 0;
  v7 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B649EA3C()
{
  v1 = v0[31];
  v2 = v0[32];

  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_1B649DE38;

  return MEMORY[0x1EEE6D8D0](v0 + 27, 0, 0);
}

uint64_t sub_1B649EB10()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1B649EB60()
{
  v1 = *(*v0 + 40);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_1B649EBEC()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64A0224((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1B649EC44()
{
  sub_1B649F45C(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_1B649EC7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADA0, &qword_1B68146B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B649ED88(char *a1, int64_t a2, char a3)
{
  result = sub_1B649EDA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B649EDA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADA0, &qword_1B68146B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B649EEB4(uint64_t result)
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

  result = sub_1B649EC7C(result, v11, 1, v3);
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

uint64_t sub_1B649EFA8(uint64_t a1)
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
    sub_1B67DA04C();
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
  result = sub_1B67D9F3C();
  *v1 = result;
  return result;
}

uint64_t sub_1B649F05C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B67DA04C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1B67D9F3C();
}

uint64_t sub_1B649F0DC()
{
  v2 = *(sub_1B67D877C() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B6422E9C;

  return sub_1B649C264(v6, v7, v8, v4, v5, v0 + v3);
}

unint64_t sub_1B649F1B8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  v5 = sub_1B649F600(a1, v3, v4);

  v7 = *(*a1 + 16);
  if (v7 >= v5)
  {
    return sub_1B649F9C0(v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B649F230()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B6422E9C;

  return sub_1B649CE0C(v5, v6, v7, v2, v3, v4);
}

uint64_t dispatch thunk of RecipeBoxType.recipeBoxItems()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6484E3C;

  return v9(a1, a2);
}

uint64_t sub_1B649F484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(a1 + 16);
  if (!v9)
  {
    return 0;
  }

  v4 = 0;
  v10 = a1 + 32;
  while (1)
  {
    v5 = (v10 + 32 * v4);
    v11 = *v5;
    v12 = v5[1];

    if (RecipeBoxItem.recipeID.getter() == a2 && v6 == a3)
    {
      break;
    }

    v7 = sub_1B67DA2DC();

    if (v7)
    {
      return v4;
    }

    if (v9 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B649F600(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_1B649F484(*a1, a2, a3);
  v33 = result;
  if (v3)
  {
    return v33;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (v7 == v8)
    {
      return v33;
    }

    v10 = 32 * result + 64;
    while (v7 < v8)
    {
      v11 = (v4 + v10);
      v36 = *(v4 + v10);
      v37 = *(v4 + v10 + 8);
      v38 = *(v4 + v10 + 16);
      v39 = *(v4 + v10 + 24);

      if (RecipeBoxItem.recipeID.getter() == a2 && v12 == a3)
      {
      }

      else
      {
        v31 = sub_1B67DA2DC();

        if ((v31 & 1) == 0)
        {
          v13 = v33;
          if (v7 != v33)
          {
            if ((v33 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            if (v33 >= *v9)
            {
              goto LABEL_26;
            }

            if (v7 >= *v9)
            {
              goto LABEL_27;
            }

            v14 = (v4 + 32 + 32 * v33);
            v32 = v14[1];
            v29 = *v14;
            v15 = *(v4 + v10);
            v16 = v11[1];
            v17 = v11[2];
            v18 = v11[3];

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1B649F048(v4);
              v4 = result;
            }

            if (v33 >= *(v4 + 16))
            {
              goto LABEL_28;
            }

            v19 = (v4 + 32 * v33);
            v20 = v19[4];
            v21 = v19[5];
            v23 = v19[6];
            v22 = v19[7];
            v19[4] = v15;
            v19[5] = v16;
            v19[6] = v17;
            v19[7] = v18;

            if (v7 >= *(v4 + 16))
            {
              goto LABEL_29;
            }

            v24 = (v4 + v10);
            v25 = *(v4 + v10);
            v26 = *(v4 + v10 + 8);
            v28 = *(v4 + v10 + 16);
            v27 = *(v4 + v10 + 24);
            *v24 = v29;
            v24[1] = v32;

            *a1 = v4;
            v13 = v33;
          }

          v33 = v13 + 1;
        }
      }

      ++v7;
      v9 = (v4 + 16);
      v8 = *(v4 + 16);
      v10 += 32;
      if (v7 == v8)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_25:
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

  __break(1u);
  return result;
}

unint64_t sub_1B649F900(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B649F9C0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1B649EC7C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1B649F900(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B649FA80(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
    goto LABEL_66;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
LABEL_52:
      if (v5)
      {
        return sub_1B67DA04C();
      }

      return *(v4 + 16);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8C95180](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_59;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      swift_unknownObjectRelease();
      if (v10 == a2)
      {
        break;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_60;
    }
  }

  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v4 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v13 == sub_1B67DA04C())
        {
          return v7;
        }
      }

      else if (v13 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C95180](v13, v3);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
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
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v6 = sub_1B67DA04C();
          goto LABEL_3;
        }

        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v16 = *(v3 + 8 * v13 + 32);
      }

      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17 && (v18 = v17, swift_unknownObjectRelease(), v18 == a2))
      {
      }

      else
      {
        v19 = swift_unknownObjectWeakLoadStrong();

        if (v19)
        {
          swift_unknownObjectRelease();
          if (v7 != v13)
          {
            if (v5)
            {
              v20 = MEMORY[0x1B8C95180](v7, v3);
              v21 = MEMORY[0x1B8C95180](v13, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v22)
              {
                goto LABEL_64;
              }

              if (v13 >= v22)
              {
                goto LABEL_65;
              }

              v20 = *(v3 + 32 + 8 * v7);
              v21 = *(v3 + 32 + 8 * v13);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_1B649F05C(v3);
              v23 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v23) = 0;
            }

            v5 = v3 & 0xFFFFFFFFFFFFFF8;
            v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v21;

            if ((v3 & 0x8000000000000000) != 0 || v23)
            {
              v3 = sub_1B649F05C(v3);
              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            else if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (v13 >= *(v5 + 16))
            {
              goto LABEL_62;
            }

            v14 = v5 + 8 * v13;
            v15 = *(v14 + 32);
            *(v14 + 32) = v20;

            *a1 = v3;
          }

          v11 = __OFADD__(v7++, 1);
          if (v11)
          {
            goto LABEL_61;
          }
        }
      }

      v11 = __OFADD__(v13++, 1);
      if (v11)
      {
        goto LABEL_58;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B649FDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RecipeBoxObserverProxy();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B67DA04C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B67DA04C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B649FEA4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B67DA04C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1B67DA04C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1B649EFA8(result);

  return sub_1B649FDA8(v4, v2, 0);
}

uint64_t sub_1B649FF98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B649FFF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B64A00A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B642694C;

  return sub_1B641DAEC(v5, a2, v2);
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B64A01A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

unint64_t FeedItemVendor.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B64A026C()
{
  result = qword_1EDB1EEC0;
  if (!qword_1EDB1EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EEC0);
  }

  return result;
}

uint64_t sub_1B64A02C0()
{
  v1 = *v0;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v1);
  return sub_1B67DA41C();
}

uint64_t sub_1B64A0334()
{
  v1 = *v0;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v1);
  return sub_1B67DA41C();
}

uint64_t *sub_1B64A0378@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B64A03A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  v65 = a2;
  v66 = *v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADB8, &qword_1B6814908);
  v57 = *(v59 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v51 - v5;
  v6 = sub_1B67D877C();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D8A9C();
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADC0, &qword_1B6814910);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - v18;
  v20 = *sub_1B644E4E8();
  v21 = v2[2];

  v22 = [objc_msgSend(v21 appConfigurationManager)];
  swift_unknownObjectRelease();
  if ([v22 respondsToSelector_])
  {
    [v22 isSmarterFetchEnabledForESL];
  }

  swift_unknownObjectRelease();
  sub_1B64A4C04(qword_1EDB1EE08, v23, type metadata accessor for GlobalESLService);
  v24 = sub_1B67D880C();

  if (v24)
  {
    sub_1B64A0C50(0, v19);
    v25 = swift_allocObject();
    v27 = v64;
    v26 = v65;
    *(v25 + 16) = v3;
    *(v25 + 24) = v27;
    v26[3] = v12;
    v26[4] = sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910);
    __swift_allocate_boxed_opaque_existential_0(v26);

    swift_unknownObjectRetain();
    sub_1B644ABA0(sub_1B64A4C58, v25, v12);

    return (*(v63 + 8))(v19, v12);
  }

  else
  {
    v29 = *sub_1B644E5F8();

    v30 = [objc_msgSend(v21 appConfigurationManager)];
    swift_unknownObjectRelease();
    if ([v30 respondsToSelector_])
    {
      [v30 isSmarterFetchEnabledForSupplementalESL];
    }

    swift_unknownObjectRelease();
    v31 = sub_1B67D880C();

    if (v31)
    {
      v32 = sub_1B6471774();
      v34 = v52;
      v33 = v53;
      v35 = v54;
      (*(v53 + 16))(v52, v32, v54);
      v36 = sub_1B67D8A7C();
      v37 = sub_1B67D9C8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1B63EF000, v36, v37, "will fetch global ESL feed items from CK with supplementation from Smarter Fetch", v38, 2u);
        MEMORY[0x1B8C96DF0](v38, -1, -1);
      }

      (*(v33 + 8))(v34, v35);
      v39 = v58;
      v40 = sub_1B67D876C();
      MEMORY[0x1EEE9AC00](v40);
      v41 = v64;
      *(&v51 - 4) = v3;
      *(&v51 - 3) = v41;
      *(&v51 - 2) = v39;
      (*(v57 + 104))(v60, *MEMORY[0x1E69E8790], v59);
      sub_1B67D9ADC();
      (*(v61 + 8))(v39, v62);
      v42 = v55;
      sub_1B64A0C50(1, v55);
      v43 = v56;
      sub_1B644ABA0(sub_1B64A1414, 0, v12);
      v44 = *(v63 + 8);
      v44(v42, v12);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADC8, &unk_1B6814918);
      v46 = v65;
      v65[3] = v45;
      v46[4] = sub_1B6413CCC(&unk_1EB94ADD0, &qword_1EB94ADC8, &unk_1B6814918);
      __swift_allocate_boxed_opaque_existential_0(v46);
      sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910);
      sub_1B67D8A5C();
      v44(v43, v12);
      return (v44)(v19, v12);
    }

    else
    {
      v47 = v65;
      v65[3] = v12;
      v47[4] = sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910);
      __swift_allocate_boxed_opaque_existential_0(v47);
      v48 = v58;
      v49 = sub_1B67D876C();
      MEMORY[0x1EEE9AC00](v49);
      v50 = v64;
      *(&v51 - 4) = v3;
      *(&v51 - 3) = v50;
      *(&v51 - 2) = v48;
      (*(v57 + 104))(v60, *MEMORY[0x1E69E8790], v59);
      sub_1B67D9ADC();
      return (*(v61 + 8))(v48, v62);
    }
  }
}

uint64_t sub_1B64A0C50@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADB8, &qword_1B6814908);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - v9;
  v11 = sub_1B67D8A9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D877C();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  v19 = sub_1B647147C();
  v41 = v12;
  (*(v12 + 16))(v15, v19, v11);
  v20 = sub_1B67D8A7C();
  v21 = sub_1B67D9C9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v38 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = v3;
    v37 = v24;
    v45 = v24;
    *v23 = 136446210;
    if (a1)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    v39 = a2;
    if (a1)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = v10;
    v28 = v7;
    v29 = a1;
    v30 = v6;
    v31 = sub_1B6456540(v25, v26, &v45);

    *(v23 + 4) = v31;
    v6 = v30;
    a1 = v29;
    v7 = v28;
    v10 = v27;
    _os_log_impl(&dword_1B63EF000, v20, v21, "will fetch global ESL feed items from Smarter Fetch, supplemental=%{public}s", v23, 0xCu);
    v32 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v3 = v40;
    MEMORY[0x1B8C96DF0](v32, -1, -1);
    MEMORY[0x1B8C96DF0](v23, -1, -1);

    v33 = (*(v41 + 8))(v15, v38);
  }

  else
  {

    v33 = (*(v41 + 8))(v15, v11);
  }

  MEMORY[0x1EEE9AC00](v33);
  *(&v36 - 32) = a1 & 1;
  v34 = v42;
  *(&v36 - 3) = v3;
  *(&v36 - 2) = v34;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8790], v6);
  sub_1B67D9ADC();
  return (*(v43 + 8))(v34, v44);
}

uint64_t sub_1B64A1030@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADB8, &qword_1B6814908);
  v34 = *(v37 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v30 - v8;
  v35 = sub_1B67D877C();
  v32 = *(v35 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B67D8A9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B647147C();
  (*(v13 + 16))(v16, v17, v12);
  v18 = a1;
  v19 = sub_1B67D8A7C();
  v20 = sub_1B67D9C8C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = a3;
    v23 = v22;
    *v21 = 138543362;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1B63EF000, v19, v20, "failed fetch global ESL feed items from Smarter Fetch, falling back to CK, error=%{public}@", v21, 0xCu);
    sub_1B6418AB4(v23, &qword_1EB94A780, &qword_1B6810140);
    v26 = v23;
    a3 = v31;
    MEMORY[0x1B8C96DF0](v26, -1, -1);
    MEMORY[0x1B8C96DF0](v21, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADC0, &qword_1B6814910);
  a4[4] = sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910);
  __swift_allocate_boxed_opaque_existential_0(a4);
  v27 = sub_1B67D876C();
  MEMORY[0x1EEE9AC00](v27);
  v28 = v37;
  *(&v30 - 4) = v36;
  *(&v30 - 3) = a3;
  *(&v30 - 2) = v11;
  (*(v34 + 104))(v33, *MEMORY[0x1E69E8790], v28);
  sub_1B67D9ADC();
  return (*(v32 + 8))(v11, v35);
}

uint64_t sub_1B64A1414@<X0>(uint64_t *a1@<X8>)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADB8, &qword_1B6814908);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v17 - v4;
  v6 = sub_1B67D8A9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B647147C();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_1B67D8A7C();
  v13 = sub_1B67D9C9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = v5;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1B63EF000, v12, v13, "ignoring failure to supplement global ESL feed items from Smarter Fetch", v14, 2u);
    v5 = v18;
    MEMORY[0x1B8C96DF0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8790], v19);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADC0, &qword_1B6814910);
  a1[4] = sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910);
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1B67D9ADC();
}

void sub_1B64A1710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v7 = sub_1B67D877C();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v58 = v9;
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v57 = *(v11 - 8);
  v56 = v57[8];
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v51 - v12;
  v13 = sub_1B67D8A9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(FCGlobalCuratedESLArticlesOperation) initWithContext:*(a2 + 16) configuration:a3 contentVariantProvider:*(a2 + 24)];
  v19 = sub_1B647147C();
  (*(v14 + 16))(v17, v19, v13);
  v20 = v18;
  v21 = sub_1B67D8A7C();
  v22 = sub_1B67D9C9C();
  v23 = os_log_type_enabled(v21, v22);
  v62 = v7;
  v60 = v10;
  if (!v23)
  {

    (*(v14 + 8))(v17, v13);
    v32 = v20;
    goto LABEL_5;
  }

  v52 = v13;
  v54 = v11;
  v55 = a1;
  v24 = v20;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  aBlock = v26;
  *v25 = 136446210;
  v27 = [v24 shortOperationDescription];
  v53 = v24;

  if (v27)
  {
    v28 = sub_1B67D964C();
    v30 = v29;

    v31 = sub_1B6456540(v28, v30, &aBlock);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1B63EF000, v21, v22, "will fetch global ESL feed items from CK, operation=%{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1B8C96DF0](v26, -1, -1);
    MEMORY[0x1B8C96DF0](v25, -1, -1);

    (*(v14 + 8))(v17, v52);
    v11 = v54;
    a1 = v55;
    v32 = v53;
LABEL_5:
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = v57;
    v53 = v57[2];
    v35 = v63;
    v36 = a1;
    (v53)(v63, a1, v11);
    v37 = *(v34 + 80);
    v38 = (v37 + 24) & ~v37;
    v52 = v38 + v56;
    v55 = v38;
    v56 = v37 | 7;
    v39 = swift_allocObject();
    *(v39 + 16) = v33;
    v51 = v33;
    v54 = v34[4];
    (v54)(v39 + v38, v35, v11);
    v68 = sub_1B64A4DE0;
    v69 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v57 = &v66;
    v66 = sub_1B645C7A8;
    v67 = &block_descriptor_64;
    v40 = _Block_copy(&aBlock);

    [v32 setFeedItemHandler_];
    _Block_release(v40);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = v35;
    v43 = v11;
    (v53)(v42, v36, v11);
    v45 = v60;
    v44 = v61;
    v46 = v62;
    (*(v61 + 16))(v60, v59, v62);
    v47 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + *(v44 + 80) + 8) & ~*(v44 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v41;
    (v54)(v49 + v55, v63, v43);
    *(v49 + v47) = v51;
    (*(v44 + 32))(v49 + v48, v45, v46);
    v68 = sub_1B64A4E78;
    v69 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = sub_1B64632F0;
    v67 = &block_descriptor_73;
    v50 = _Block_copy(&aBlock);

    [v32 setCompletionHandler_];
    _Block_release(v50);
    [v32 start];

    return;
  }

  __break(1u);
}

uint64_t sub_1B64A1D6C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF0, &qword_1B6814950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = *(a2 + 16);
  while (!__OFADD__(v10, 1))
  {
    v11 = v10;
    atomic_compare_exchange_strong_explicit((a2 + 16), &v11, v10 + 1, memory_order_relaxed, memory_order_relaxed);
    v12 = v11 == v10;
    v10 = v11;
    if (v12)
    {
      v14 = a1;
      v15 = 0;
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
      sub_1B67D9A6C();
      return (*(v5 + 8))(v9, v4);
    }
  }

  __break(1u);
  return result;
}

void sub_1B64A1E9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v7 = sub_1B67D877C();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D8A9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF0, &qword_1B6814950);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v59 = v7;
  v60 = a4;
  if (Strong)
  {
    v22 = Strong;
    v23 = [Strong networkEvents];

    if (v23)
    {
      sub_1B646802C();
      v24 = sub_1B67D97BC();

      if (v24 >> 62)
      {
        goto LABEL_4;
      }

LABEL_7:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
    goto LABEL_7;
  }

LABEL_4:
  v25 = sub_1B67DA04C();
  if (!v25)
  {
LABEL_5:

    goto LABEL_16;
  }

LABEL_8:
  if (v25 < 1)
  {
    __break(1u);
    return;
  }

  v51 = a1;
  v52 = v11;
  v53 = v10;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = 0;
    do
    {
      v27 = MEMORY[0x1B8C95180](v26++, v24);
      v61 = v27;
      v62 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
      sub_1B67D9A6C();
      (*(v17 + 8))(v20, v16);
    }

    while (v25 != v26);
  }

  else
  {
    v28 = 32;
    do
    {
      v61 = *(v24 + v28);
      v62 = 1;
      v29 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
      sub_1B67D9A6C();
      (*(v17 + 8))(v20, v16);
      v28 += 8;
      --v25;
    }

    while (v25);
  }

  v11 = v52;
  v10 = v53;
  a1 = v51;
LABEL_16:
  v31 = v59;
  v30 = v60;
  v32 = v57;
  v33 = v58;
  if (a1)
  {
    v34 = a1;
    v35 = sub_1B647147C();
    v36 = v55;
    (*(v11 + 16))(v55, v35, v10);
    v37 = a1;
    v38 = sub_1B67D8A7C();
    v39 = sub_1B67D9C8C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      v42 = a1;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_1B63EF000, v38, v39, "failed to fetch global ESL feed items from CK, error=%{public}@", v40, 0xCu);
      sub_1B6418AB4(v41, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v41, -1, -1);
      MEMORY[0x1B8C96DF0](v40, -1, -1);
    }

    (*(v11 + 8))(v36, v10);
    v61 = a1;
  }

  else
  {
    v44 = sub_1B647147C();
    (*(v11 + 16))(v56, v44, v10);
    (*(v33 + 16))(v32, v54, v31);

    v45 = sub_1B67D8A7C();
    v46 = sub_1B67D9C9C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v32;
      v48 = swift_slowAlloc();
      *v48 = 134349312;
      *(v48 + 4) = *(v30 + 16);

      *(v48 + 12) = 2050;
      v49 = sub_1B644C390();
      (*(v33 + 8))(v47, v31);
      *(v48 + 14) = v49;
      _os_log_impl(&dword_1B63EF000, v45, v46, "did fetch global ESL feed items from CK, count=%{public}ld, time=%{public}lldms", v48, 0x16u);
      MEMORY[0x1B8C96DF0](v48, -1, -1);
    }

    else
    {
      (*(v33 + 8))(v32, v31);
    }

    (*(v11 + 8))(v56, v10);
    v61 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  sub_1B67D9A7C();
}

uint64_t sub_1B64A24F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v26 = a2;
  v25 = a1;
  v5 = sub_1B67D877C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v17 = sub_1B67D993C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, v25, v8);
  v18 = a4;
  v19 = v5;
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v5);
  v20 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v21 = (v10 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v26;
  *(v22 + 40) = v27;
  (*(v9 + 32))(v22 + v20, v12, v8);
  (*(v6 + 32))(v22 + v21, v24, v19);

  sub_1B644BCA8(0, 0, v16, &unk_1B6814940, v22);
}

uint64_t sub_1B64A27D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = *MEMORY[0x1E69E9840];
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 96) = a5;
  *(v7 + 25) = a4;
  v8 = sub_1B67D877C();
  *(v7 + 120) = v8;
  v9 = *(v8 - 8);
  *(v7 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v11 = sub_1B67D8A9C();
  *(v7 + 144) = v11;
  v12 = *(v11 - 8);
  *(v7 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF0, &qword_1B6814950);
  *(v7 + 176) = v14;
  v15 = *(v14 - 8);
  *(v7 + 184) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7F0, &qword_1B6811318);
  *(v7 + 200) = v17;
  v18 = *(v17 - 8);
  *(v7 + 208) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A310, &unk_1B6812A70);
  *(v7 + 224) = v20;
  v21 = *(v20 - 8);
  *(v7 + 232) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  v23 = *(*(type metadata accessor for SmarterFetchRequest(0) - 8) + 64) + 15;
  *(v7 + 248) = swift_task_alloc();
  v24 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B64A2A94, 0, 0);
}

uint64_t sub_1B64A2A94()
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 96);
  v2 = *(v0 + 25);
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = *(v0 + 248);
  if (v2 == 1)
  {
    (*(v4 + 40))(v3, v4);
  }

  else
  {
    (*(v4 + 16))(v3, v4);
  }

  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = *(v0 + 200);
  v11 = *(v0 + 96);
  v12 = v11[12];
  v13 = v11[13];
  __swift_project_boxed_opaque_existential_1(v11 + 9, v12);
  (*(v13 + 8))(v7, v12, v13);
  sub_1B67D9A9C();
  (*(v9 + 8))(v8, v10);
  *(v0 + 264) = 0;
  v14 = *(MEMORY[0x1E69E87A8] + 4);
  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  *v15 = v0;
  v15[1] = sub_1B64A2E50;
  v16 = *(v0 + 240);
  v17 = *(v0 + 224);
  v18 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v17, v0 + 72);
}

uint64_t sub_1B64A2E50()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 256);
  v7 = *v1;

  if (v0)
  {
    v3 = sub_1B64A344C;
  }

  else
  {
    v3 = sub_1B64A2F8C;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64A2F8C()
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  if (*(v0 + 24) <= 1u)
  {
    if (*(v0 + 24))
    {
      v6 = *(*(v0 + 96) + 112);
      *(v0 + 88) = 0;
      v7 = [v6 feedItemFromPBRecord:v1 error:v0 + 88];
      v8 = *(v0 + 88);
      if (v7)
      {
        v9 = v7;
        v10 = *(v0 + 264);
        v11 = v8;
        [v9 setSurfacedByFlags_];
        [v9 markAsEvergreen];
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
        }

        v14 = *(v0 + 184);
        v13 = *(v0 + 192);
        v15 = *(v0 + 176);
        v16 = *(v0 + 104);
        *(v0 + 48) = v9;
        *(v0 + 56) = 0;
        v17 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
        sub_1B67D9A6C();
        sub_1B6449D2C(v1, 1);

        (*(v14 + 8))(v13, v15);
        *(v0 + 264) = v12;
      }

      else
      {
        v49 = v8;
        v50 = sub_1B67D855C();

        swift_willThrow();
        sub_1B6449D2C(v1, 1);
      }
    }

    else
    {
      sub_1B6449D2C(*(v0 + 16), 0);
    }

    goto LABEL_16;
  }

  if (*(v0 + 24) == 2)
  {
    *(v0 + 32) = v1;
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v4 = *(v0 + 176);
    v5 = *(v0 + 104);
    *(v0 + 40) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
    sub_1B67D9A6C();
    (*(v3 + 8))(v2, v4);
LABEL_16:
    v51 = *(MEMORY[0x1E69E87A8] + 4);
    v52 = swift_task_alloc();
    *(v0 + 256) = v52;
    *v52 = v0;
    v52[1] = sub_1B64A2E50;
    v53 = *(v0 + 240);
    v54 = *(v0 + 224);
    v55 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v54, v0 + 72);
  }

  v18 = *(v0 + 168);
  v19 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 128);
  v21 = *(v0 + 136);
  v24 = *(v0 + 112);
  v23 = *(v0 + 120);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  v25 = sub_1B647147C();
  (*(v20 + 16))(v18, v25, v19);
  (*(v22 + 16))(v21, v24, v23);
  v26 = sub_1B67D8A7C();
  v27 = sub_1B67D9C9C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 264);
    v30 = *(v0 + 128);
    v29 = *(v0 + 136);
    v31 = *(v0 + 120);
    v32 = swift_slowAlloc();
    *v32 = 134349312;
    *(v32 + 4) = v28;
    *(v32 + 12) = 2050;
    v33 = sub_1B644C390();
    (*(v30 + 8))(v29, v31);
    *(v32 + 14) = v33;
    _os_log_impl(&dword_1B63EF000, v26, v27, "did fetch global ESL feed items from Smarter Fetch, count=%{public}ld, time=%{public}lldms", v32, 0x16u);
    MEMORY[0x1B8C96DF0](v32, -1, -1);
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  }

  v34 = *(v0 + 248);
  v35 = *(v0 + 168);
  v36 = *(v0 + 144);
  v37 = *(v0 + 152);
  v38 = *(v0 + 104);

  (*(v37 + 8))(v35, v36);
  *(v0 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  sub_1B67D9A7C();
  sub_1B6467DA0(v34);
  v40 = *(v0 + 240);
  v39 = *(v0 + 248);
  v41 = *(v0 + 216);
  v42 = *(v0 + 192);
  v44 = *(v0 + 160);
  v43 = *(v0 + 168);
  v45 = *(v0 + 136);

  v46 = *(v0 + 8);
  v47 = *MEMORY[0x1E69E9840];

  return v46();
}

uint64_t sub_1B64A344C()
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = v0[31];
  (*(v0[29] + 8))(v0[30], v0[28]);
  sub_1B6467DA0(v1);
  v2 = v0[9];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_1B647147C();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1B67D8A7C();
  v9 = sub_1B67D9C8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B63EF000, v8, v9, "failed to fetch global ESL feed items from Smarter Fetch, error=%{public}@", v10, 0xCu);
    sub_1B6418AB4(v11, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
  }

  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];
  v17 = v0[13];

  (*(v15 + 8))(v14, v16);
  v0[8] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  sub_1B67D9A7C();
  v19 = v0[30];
  v18 = v0[31];
  v20 = v0[27];
  v21 = v0[24];
  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[17];

  v25 = v0[1];
  v26 = *MEMORY[0x1E69E9840];

  return v25();
}

uint64_t sub_1B64A369C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v3 = v0[14];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64A36F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a1;
  v5[37] = a3;
  v6 = type metadata accessor for FeedItemPruningPolicy(0);
  v5[40] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v9 = sub_1B67D8A9C();
  v5[43] = v9;
  v10 = *(v9 - 8);
  v5[44] = v10;
  v11 = *(v10 + 64) + 15;
  v5[45] = swift_task_alloc();
  v12 = sub_1B67D877C();
  v5[46] = v12;
  v13 = *(v12 - 8);
  v5[47] = v13;
  v14 = *(v13 + 64) + 15;
  v5[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64A387C, 0, 0);
}

uint64_t sub_1B64A387C()
{
  v1 = v0[48];
  v2 = v0[39];
  sub_1B67D876C();
  v3 = [*(v2 + 16) configurationManager];
  v0[49] = v3;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_1B64A39C0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6465578;
  v0[13] = &block_descriptor_6;
  v0[14] = v4;
  [v3 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B64A39C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_1B64A422C;
  }

  else
  {
    v3 = sub_1B64A3AD0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64A3AD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[33];
  v3[51] = v4;
  if (v4)
  {
    v5 = v3[49];
    v6 = v3[39];
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
    v3[34] = MEMORY[0x1E69E7CC0];
    sub_1B64A03A4(v4, v3 + 23);
    v8 = v3[26];
    v9 = __swift_project_boxed_opaque_existential_1(v3 + 23, v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, v8);
    v3[21] = swift_getAssociatedTypeWitness();
    v3[22] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(v3 + 18);
    sub_1B67D9A2C();

    __swift_destroy_boxed_opaque_existential_1(v3 + 23);
    v3[53] = 0;
    v3[54] = 0;
    v3[52] = v7;
    v13 = v3[22];
    __swift_mutable_project_boxed_opaque_existential_1((v3 + 18), v3[21]);
    v14 = *(MEMORY[0x1E69E85B0] + 4);
    v15 = swift_task_alloc();
    v3[55] = v15;
    *v15 = v3;
    v15[1] = sub_1B64A3CD0;
    a1 = v3 + 31;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D8D0](a1, a2, a3);
}

uint64_t sub_1B64A3CD0()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 416);

    v5 = sub_1B64A42F0;
  }

  else
  {
    v5 = sub_1B64A3DE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B64A3DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 248);
  v5 = *(v3 + 256);
  if (v5 != 255)
  {
    if (v5)
    {
      swift_beginAccess();
      v6 = v4;
      MEMORY[0x1B8C949F0]();
      if (*((*(v3 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((*(v3 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B67D97FC();
      }

      sub_1B67D983C();
      v7 = *(v3 + 272);
      swift_endAccess();
      sub_1B6449D2C(v4, v5);
      v9 = *(v3 + 424);
      v8 = *(v3 + 432);
      *(v3 + 416) = v7;
    }

    else
    {
      v31 = *(v3 + 432);
      v9 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return MEMORY[0x1EEE6D8D0](a1, a2, a3);
      }

      v32 = *(v3 + 304);
      (*(v3 + 296))(v4);
      sub_1B6449D2C(v4, v5);
      sub_1B6449D2C(v4, v5);
      v8 = v9;
    }

    *(v3 + 424) = v9;
    *(v3 + 432) = v8;
    v33 = *(v3 + 176);
    __swift_mutable_project_boxed_opaque_existential_1(v3 + 144, *(v3 + 168));
    v34 = *(MEMORY[0x1E69E85B0] + 4);
    v35 = swift_task_alloc();
    *(v3 + 440) = v35;
    *v35 = v3;
    v35[1] = sub_1B64A3CD0;
    a1 = v3 + 248;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x1EEE6D8D0](a1, a2, a3);
  }

  v11 = *(v3 + 352);
  v10 = *(v3 + 360);
  v12 = *(v3 + 344);
  __swift_destroy_boxed_opaque_existential_1((v3 + 144));
  v13 = sub_1B647147C();
  (*(v11 + 16))(v10, v13, v12);
  v14 = sub_1B67D8A7C();
  v15 = sub_1B67D9C9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v3 + 424);
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = v16;
    _os_log_impl(&dword_1B63EF000, v14, v15, "did fetch %{public}ld global ESL feed items", v17, 0xCu);
    MEMORY[0x1B8C96DF0](v17, -1, -1);
  }

  v40 = *(v3 + 408);
  v19 = *(v3 + 376);
  v18 = *(v3 + 384);
  v21 = *(v3 + 360);
  v20 = *(v3 + 368);
  v39 = *(v3 + 416);
  v23 = *(v3 + 344);
  v22 = *(v3 + 352);
  v25 = *(v3 + 328);
  v24 = *(v3 + 336);
  v37 = *(v3 + 320);
  v38 = *(v3 + 288);

  (*(v22 + 8))(v21, v23);
  v26 = sub_1B645C624(MEMORY[0x1E69E7CC0]);
  v27 = *(v19 + 16);
  v27(v24, v18, v20);
  (*(v19 + 56))(v24, 0, 1, v20);
  v27(v25, v18, v20);
  swift_storeEnumTagMultiPayload();
  v28 = MEMORY[0x1E6969530];
  sub_1B64A4C04(&unk_1EDB1EFA0, 255, MEMORY[0x1E6969530]);
  sub_1B64A4C04(&unk_1EDB1EFC0, 255, v28);
  sub_1B65074D8(v26, v24, v39, v25, v38);
  swift_unknownObjectRelease();
  (*(v19 + 8))(v18, v20);

  v29 = *(v3 + 8);

  return v29();
}

uint64_t sub_1B64A422C()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  swift_willThrow();
  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = v0[50];
  v7 = v0[48];
  v8 = v0[45];
  v10 = v0[41];
  v9 = v0[42];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B64A42F0()
{
  v1 = v0[51];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = v0[35];
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v6 = v0[48];
  v7 = v0[45];
  v9 = v0[41];
  v8 = v0[42];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B64A43D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B642694C;

  return sub_1B64A36F4(a1, v10, a3, a4);
}

uint64_t sub_1B64A448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A110, &qword_1B6811218);
  v6[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64A4578, 0, 0);
}

uint64_t sub_1B64A4578()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = [v1 lastRefreshed];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = v0[8];
        v5 = sub_1B67D877C();
        v6 = *(v5 - 8);
        v7 = *(v6 + 56);
        v7(v4, 1, 1, v5);
        sub_1B64A4C04(&qword_1EB94A118, 255, MEMORY[0x1E6969530]);
        sub_1B67DA11C();

        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          v8 = v0[9];
          (*(v6 + 32))(v8, v0[8], v5);
          v7(v8, 0, 1, v5);
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v9 = v0[9];
  v10 = sub_1B67D877C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
LABEL_8:
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1B6465AEC;
  v13 = v0[11];
  v14 = v0[7];
  v15 = v0[3];
  v16 = v0[4];

  return sub_1B64A36F4(v13, v11, v15, v16);
}

uint64_t sub_1B64A4998(void *a1, void *aBlock, const void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v9 = _Block_copy(aBlock);
  v10 = _Block_copy(a3);
  v5[4] = _Block_copy(a4);
  v11 = swift_allocObject();
  v5[5] = v11;
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v5[6] = v12;
  *(v12 + 16) = v10;
  v13 = a1;

  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1B6466108;

  return sub_1B64A448C(a1, sub_1B644DBF4, v11, sub_1B644DCAC, v12);
}

uint64_t sub_1B64A4B3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B642694C;

  return sub_1B64A4998(v2, v3, v4, v5, v6);
}

uint64_t sub_1B64A4C04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1B64A4C90()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1B67D877C() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B6422E9C;

  return sub_1B64A27D4(v9, v10, v11, v7, v8, v0 + v3, v0 + v6);
}

uint64_t sub_1B64A4DE0(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_1B64A1D6C(a1, v4);
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B64A4E78(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1B67D877C() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + 16);
  v9 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  sub_1B64A1E9C(a1, v8, v1 + v4, v7, v9);
}

uint64_t sub_1B64A4FB8()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B64A50D8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6465578;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B64A50D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1B64A6EB0;
  }

  else
  {
    v3 = sub_1B64A51E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B64A51E8()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = sub_1B64A5288(v0[19], v1);
    swift_unknownObjectRelease();
    v3 = v0[1];

    v3(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64A5288(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 24) preferredContentVariant];
  if (v3 == 1)
  {
    v4 = &selRef_paidRecentRecipeListIDs;
  }

  else
  {
    if (v3)
    {
      result = sub_1B67DA07C();
      __break(1u);
      return result;
    }

    v4 = &selRef_freeRecentRecipeListIDs;
  }

  if (([a2 respondsToSelector_] & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = [a2 *v4];
  v6 = sub_1B67D97BC();

  return v6;
}

uint64_t sub_1B64A537C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6484FB4;

  return RecentRecipeListProvider.fetchRecipeListIDs()();
}

uint64_t sub_1B64A5438()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B64A5558;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6465578;
  v0[13] = &block_descriptor_4;
  v0[14] = v2;
  [v1 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B64A5558()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1B64A6EB0;
  }

  else
  {
    v3 = sub_1B64A5668;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B64A5668()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_trendingRecipesListID)) != 0)
    {
      v3 = v2;
      v4 = sub_1B67D964C();
      v6 = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1B68100D0;
      *(v7 + 32) = v4;
      *(v7 + 40) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    swift_unknownObjectRelease();
    v8 = *(v0 + 8);

    v8(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t TrendingRecipeListProvider.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TrendingRecipeListProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64A57D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6484FB4;

  return TrendingRecipeListProvider.fetchRecipeListIDs()();
}

uint64_t sub_1B64A5890()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B64A59B0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AE60, &qword_1B68149F0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6465578;
  v0[13] = &block_descriptor_8_0;
  v0[14] = v2;
  [v1 fetchConfigurationIfNeededWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B64A59B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1B64A5B48;
  }

  else
  {
    v3 = sub_1B64A5AC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B64A5AC0()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = sub_1B64A5BB4(v0[19], v1);
    swift_unknownObjectRelease();
    v3 = v0[1];

    v3(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64A5B48()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1B64A5BB4(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 24) preferredContentVariant];
  if (v3 == 1)
  {
    v4 = &selRef_paidGlobalRecipeListIDs;
  }

  else
  {
    if (v3)
    {
      result = sub_1B67DA07C();
      __break(1u);
      return result;
    }

    v4 = &selRef_freeGlobalRecipeListIDs;
  }

  if (([a2 respondsToSelector_] & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = [a2 *v4];
  v6 = sub_1B67D97BC();

  return v6;
}

uint64_t sub_1B64A5CA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B64A5CCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64A5D0C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6435678;

  return sub_1B64A5870();
}

uint64_t sub_1B64A5DC8()
{
  v35 = v0;
  v1 = [*(v0[21] + 24) preferredContentVariant];
  if (v1 == 1)
  {
    v2 = [*(v0[21] + 16) configuration];
    if (!v2)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 paidTagRecipeListIDPrefix];
LABEL_9:
      v7 = v4;
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = sub_1B67D964C();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v11 = v0 + 10;
      v0[10] = v8;
      v0[11] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C0, &qword_1B6812A50);
      sub_1B67D9DEC();

      v12 = v0[19];
      v0[22] = v0[18];
      v0[23] = v12;
      if (!v12)
      {
        goto LABEL_17;
      }

      v13 = v0[21];
      v0[18] = MEMORY[0x1E69E7CD0];
      v14 = [*(v13 + 32) rankedAllSubscribedTagIDs];
      v15 = sub_1B67D97BC();

      sub_1B64A6A4C(v15);

      v16 = [*(v13 + 48) autofavoriteTagIDs];
      v17 = sub_1B67D9AFC();

      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = sub_1B646682C(*(v17 + 16), 0);
        v20 = sub_1B648945C(&v34, v19 + 4, v18, v17);
        sub_1B6449D40();
        if (v20 != v18)
        {
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {

        v19 = MEMORY[0x1E69E7CC0];
      }

      v24 = v0[21];
      sub_1B64A6A4C(v19);

      v25 = *(v24 + 40);
      v26 = v0[18];
      v0[24] = v26;
      v27 = *(v26 + 16);
      if (!v27)
      {
        v28 = MEMORY[0x1E69E7CC0];
LABEL_25:
        sub_1B6462BFC(v28);

        v30 = sub_1B67D97AC();
        v0[25] = v30;

        v31 = FCCurrentQoS();
        v0[2] = v0;
        v0[7] = v0 + 20;
        v0[3] = sub_1B64A6290;
        v32 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A380, &qword_1B6814A20);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1B6462CFC;
        v0[13] = &block_descriptor_12;
        v0[14] = v32;
        [v25 fetchTagsForTagIDs:v30 maximumCachedAge:v31 qualityOfService:v11 completionHandler:1.79769313e308];
        v33 = (v0 + 2);

        return MEMORY[0x1EEE6DEC8](v33);
      }

      v28 = sub_1B646682C(v27, 0);
      v29 = sub_1B648945C(&v34, v28 + 4, v27, v26);

      sub_1B6449D40();
      if (v29 == v27)
      {
        v11 = v0 + 10;
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    if (v1)
    {
LABEL_31:
      v33 = sub_1B67DA07C();
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v33);
    }

    v5 = [*(v0[21] + 16) configuration];
    if (!v5)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      v4 = [v6 freeTagRecipeListIDPrefix];
      goto LABEL_9;
    }
  }

  swift_unknownObjectRelease();
LABEL_17:
  v21 = v0[1];
  v22 = MEMORY[0x1E69E7CC0];

  return v21(v22);
}

uint64_t sub_1B64A6290()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  if (v3)
  {
    v5 = *(v1 + 184);
    v4 = *(v1 + 192);

    v6 = sub_1B64A64A0;
  }

  else
  {
    v6 = sub_1B64A63B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B64A63B0()
{
  v1 = *(v0 + 160);
  if (!v1)
  {
    v1 = sub_1B64676E4(MEMORY[0x1E69E7CC0]);
  }

  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);

  v5 = sub_1B64A6748(v1);

  v6 = sub_1B64A6ABC(v5, v4, v3);
  swift_bridgeObjectRelease_n();

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1B64A64A0()
{
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[26];

  return v3();
}

id sub_1B64A6510(SEL *a1)
{
  result = [*(v1 + 16) configuration];
  if (result)
  {
    v4 = result;
    if ([result respondsToSelector_])
    {
      [v4 *a1];
      v6 = v5;
      swift_unknownObjectRelease();
      return v6;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64A65B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B64A6608()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6484FB4;

  return sub_1B64A5DA8();
}

id sub_1B64A66A4(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [*(*v3 + 16) configuration];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 *a3];
      v8 = v7;
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64A6748(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1B64A68A8(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1B64A69D4(v9, v4, v2);
  result = MEMORY[0x1B8C96DF0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *sub_1B64A68A8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 56) + 8 * v15) hasRecipeList];
    if (result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1B6466BB4(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1B6466BB4(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B64A69D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1B64A68A8(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1B64A6A4C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1B6469928(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B64A6ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v4, 0);
    v6 = v32;
    v7 = a1 + 64;
    v8 = -1 << *(a1 + 32);
    result = sub_1B67D9E6C();
    v9 = result;
    v10 = 0;
    v27 = v4;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v30 = v10;
      v31 = *(a1 + 36);
      v13 = (*(a1 + 48) + 16 * v9);
      v14 = *v13;
      v15 = v13[1];

      MEMORY[0x1B8C94910](v14, v15);

      v16 = v6;
      v33 = v6;
      v17 = *(v6 + 16);
      v18 = *(v16 + 24);
      if (v17 >= v18 >> 1)
      {
        result = sub_1B6456B24((v18 > 1), v17 + 1, 1);
        v16 = v33;
      }

      *(v16 + 16) = v17 + 1;
      v19 = v16 + 16 * v17;
      *(v19 + 32) = a2;
      *(v19 + 40) = a3;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v7 = a1 + 64;
      v20 = *(a1 + 64 + 8 * v12);
      if ((v20 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v16;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v9 & 0x3F));
      if (v21)
      {
        v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v12 << 6;
        v23 = v12 + 1;
        v24 = (a1 + 72 + 8 * v12);
        while (v23 < (v11 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1B6467E08(v9, v31, 0);
            v11 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1B6467E08(v9, v31, 0);
      }

LABEL_4:
      v10 = v30 + 1;
      v9 = v11;
      if (v30 + 1 == v27)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of RecipeListProviderType.fetchRecipeListIDs()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6484E3C;

  return v9(a1, a2);
}

Swift::Void __swiftcall RecipeHistoryType.addOrUpdate(recipeID:)(Swift::String recipeID)
{
  v3 = v2;
  v4 = v1;
  object = recipeID._object;
  countAndFlagsBits = recipeID._countAndFlagsBits;
  v7 = sub_1B67D877C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  (*(v3 + 48))(countAndFlagsBits, object, v11, v4, v3);
  (*(v8 + 8))(v11, v7);
}

uint64_t RecipeHistoryType.historyItems()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6484FB4;

  return (v9)(0, 1, a1, a2);
}

uint64_t sub_1B64A70DC()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  v6 = sub_1B64189EC();
  (*(v5 + 16))(v3, v6, v4);
  v7 = v1;
  v8 = sub_1B67D8A7C();
  v9 = sub_1B67D9C8C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[8];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1B63EF000, v8, v9, "Recipe history cache initialization failed; error=%@", v12, 0xCu);
    sub_1B6418AB4(v13, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

double sub_1B64A7284@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_1B6456E70(a2, a3), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 40 * v6);
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    *a4 = *v8;
    a4[1] = v9;
    a4[2] = v10;
    a4[3] = v11;
    a4[4] = v12;
  }

  else
  {
    a4[4] = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1B64A735C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64A7380, 0, 0);
}

uint64_t sub_1B64A7380()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = *(v0[9] + 16);
  v0[10] = v3;
  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  v0[4] = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580);
  sub_1B67D9E5C();
  v0[5] = v0[3];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB60, &unk_1B681A0F0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF58, &qword_1B6814C20);
  v9 = sub_1B6413CCC(&unk_1EDB1FA10, &unk_1EB94BB60, &unk_1B681A0F0);
  *v6 = v0;
  v6[1] = sub_1B6478794;
  v10 = v0[6];

  return PrivateZoneType.query<A>(options:executor:)(v10, v0 + 5, sub_1B64AD4E8, v5, v7, v8, v9);
}

uint64_t sub_1B64A75B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20[-1] - v7;
  v9 = sub_1B67D8B1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B64E6720();
  v15 = *v14;
  v16 = v14[1];
  v20[3] = MEMORY[0x1E69E6158];
  v20[4] = MEMORY[0x1E69D62D8];
  v20[0] = a2;
  v20[1] = a3;

  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  v17 = sub_1B67D8E4C();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1B67D8D1C();
  sub_1B6418AB4(v8, &qword_1EB94B510, &unk_1B68102C0);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B64A77B0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B64A77D0, 0, 0);
}

uint64_t sub_1B64A77D0()
{
  v1 = v0[7];
  v2 = *(v0[8] + 16);
  v0[9] = v2;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B68100D0;

  *(v3 + 32) = *sub_1B6416A90();
  v0[5] = v3;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580);
  sub_1B67D9E5C();
  v0[6] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB60, &unk_1B681A0F0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF60, &unk_1B6814C30);
  v8 = sub_1B6413CCC(&unk_1EDB1FA10, &unk_1EB94BB60, &unk_1B681A0F0);
  *v5 = v0;
  v5[1] = sub_1B64A7A00;

  return PrivateZoneType.query<A>(options:executor:)((v0 + 2), v0 + 6, sub_1B64AD504, v4, v6, v7, v8);
}

uint64_t sub_1B64A7A00()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v5 = sub_1B64AEA74;
  }

  else
  {
    v5 = sub_1B64AEAC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B64A7B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v57 = a3;
  v58 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v52 - v8;
  v10 = sub_1B67D8B1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a2 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v54 = v3;
    v55 = v11;
    v56 = v10;
    v59[0] = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v15, 0);
    v16 = v59[0];
    v17 = (a2 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      v20 = sub_1B67D968C();
      v22 = v21;

      v59[0] = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B6456B24((v23 > 1), v24 + 1, 1);
        v16 = v59[0];
      }

      *(v16 + 16) = v24 + 1;
      v25 = v16 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v17 += 2;
      --v15;
    }

    while (v15);
    v11 = v55;
    v10 = v56;
    v4 = v54;
  }

  v26 = swift_allocObject();
  v27 = sub_1B64E6720();
  v29 = *v27;
  v28 = v27[1];
  v26[2] = v29;
  v26[3] = v28;

  v30 = sub_1B64503A4(v16);

  v26[4] = v30;
  *v14 = v26;
  (*(v11 + 104))(v14, *MEMORY[0x1E69D6138], v10);
  v31 = sub_1B67D8E4C();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  v32 = sub_1B67D8D2C();
  v33 = v4;
  if (v4)
  {
    sub_1B6418AB4(v9, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v11 + 8))(v14, v10);
  }

  v35 = v32;
  sub_1B6418AB4(v9, &qword_1EB94B510, &unk_1B68102C0);
  (*(v11 + 8))(v14, v10);
  v36 = *(v35 + 16);
  if (v36)
  {
    v58 = 0;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1B64AC430(0, v36, 0);
    v37 = v60;
    v56 = v35;
    v38 = (v35 + 64);
    do
    {
      v39 = *(v38 - 4);
      v40 = *(v38 - 3);
      v42 = *(v38 - 2);
      v41 = *(v38 - 1);
      v43 = *v38;
      v59[0] = v39;
      v59[1] = v40;
      v59[2] = v42;
      v59[3] = v41;
      v59[4] = v43;

      v44 = RecipeHistoryItem.recipeID.getter();
      v60 = v37;
      v46 = *(v37 + 16);
      v47 = *(v37 + 24);
      v48 = v46 + 1;
      if (v46 >= v47 >> 1)
      {
        v54 = v45;
        v55 = v44;
        v53 = v46 + 1;
        sub_1B64AC430((v47 > 1), v46 + 1, 1);
        v48 = v53;
        v45 = v54;
        v44 = v55;
        v37 = v60;
      }

      *(v37 + 16) = v48;
      v49 = (v37 + 56 * v46);
      v49[4] = v44;
      v49[5] = v45;
      v49[6] = v39;
      v49[7] = v40;
      v49[8] = v42;
      v49[9] = v41;
      v49[10] = v43;
      v38 += 5;
      --v36;
    }

    while (v36);

    v33 = v58;
    if (*(v37 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF70, &qword_1B6814DD0);
      v50 = sub_1B67DA0EC();
      goto LABEL_18;
    }
  }

  v50 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v59[0] = v50;

  sub_1B64ABBF0(v51, 1, v59);
  if (v33)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    *v57 = v59[0];
  }

  return result;
}

uint64_t sub_1B64A8010(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1B64AC450(0, v5, 0);
  v6 = v24;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v20[0] = *(i - 1);
    v20[1] = v10;

    a1(&v21, v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v21;
    v12 = v22;
    v13 = v23;
    v24 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      v18 = v22;
      v19 = v21;
      sub_1B64AC450((v14 > 1), v15 + 1, 1);
      v12 = v18;
      v11 = v19;
      v6 = v24;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 40 * v15;
    *(v16 + 32) = v11;
    *(v16 + 48) = v12;
    *(v16 + 64) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64A8150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v37 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = sub_1B67D877C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v22(v19, a3, v20);
  v23 = *(v21 + 56);
  v23(v19, 0, 1, v20);
  v22(v17, a3, v20);
  v23(v17, 0, 1, v20);
  v23(v14, 1, 1, v20);

  RecipeHistoryItem.init(recipeID:lastVisitedDate:lastSeenDate:lastModifiedDate:)(v37, a2, v19, v17, v14, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF78, &qword_1B6814DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  v25 = v45;
  v26 = v44;
  *(inited + 32) = v43;
  *(inited + 48) = v26;
  *(inited + 64) = v25;
  sub_1B64AE88C(&v43, v42);
  v27 = v38;
  sub_1B64A9F38();
  swift_setDeallocating();
  v28 = *(inited + 16);
  swift_arrayDestroy();
  v29 = sub_1B67D993C();
  v30 = v39;
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v32 = v40;
  v33 = v41;
  *(v31 + 32) = v40;
  *(v31 + 40) = v33;
  *(v31 + 48) = v27;
  v34 = v44;
  *(v31 + 56) = v43;
  *(v31 + 72) = v34;
  *(v31 + 88) = v45;
  sub_1B64AE994(v32);

  sub_1B6461304(0, 0, v30, &unk_1B6814E08, v31);
}

uint64_t sub_1B64A84B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64A84D4, 0, 0);
}

uint64_t sub_1B64A84D4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B64A85D4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A85D4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B64AEA70, 0, 0);
}

uint64_t sub_1B64A86EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_1B64A8150(a3, a4, a5, sub_1B64AEA68, v15);
}

uint64_t sub_1B64A8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v17 = v3;
  v18 = a3;

  v12 = sub_1B64A8010(sub_1B64AD52C, v16, inited);
  swift_setDeallocating();
  sub_1B644F4F4(inited + 32);
  sub_1B64A9F38();
  v13 = sub_1B67D993C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = v3;
  *(v14 + 56) = v12;

  sub_1B6461304(0, 0, v10, &unk_1B6814C48, v14);
}

uint64_t sub_1B64A8A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B64A8A28, 0, 0);
}

uint64_t sub_1B64A8A28()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B64A8B28;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A8B28()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B649CC1C, 0, 0);
}

uint64_t sub_1B64A8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  (*(v14 + 16))(&v25 - v16, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v28 = a2;
  v29 = v26;

  v21 = sub_1B64A8010(sub_1B64AEA38, v27, inited);
  swift_setDeallocating();
  sub_1B644F4F4(inited + 32);
  sub_1B64A9F38();
  v22 = sub_1B67D993C();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = sub_1B64AE268;
  v23[5] = v19;
  v23[6] = a2;
  v23[7] = v21;

  sub_1B6461304(0, 0, v12, &unk_1B6814DD8, v23);
}

uint64_t sub_1B64A8EF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B64A8F18, 0, 0);
}

uint64_t sub_1B64A8F18()
{
  v1 = *(v0[3]._rawValue + 2);
  PrivateZone.add(_:)(v0[2]);
  if (v2)
  {
    swift_willThrow();
  }

  rawValue = v0[1]._rawValue;

  return rawValue();
}

uint64_t sub_1B64A8FB8()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1B64A9090;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A9090()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B64AEA70, 0, 0);
}

uint64_t sub_1B64A918C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  (*(v9 + 16))(&v23 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = *(a2 + 32);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  v17 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v15 + 24));
  v18 = *(a2 + 40);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);

  *(v18 + 16) = sub_1B64AD610(v17);
  os_unfair_lock_unlock((v18 + 24));
  v20 = sub_1B67D993C();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = sub_1B64AEA68;
  v21[5] = v14;
  v21[6] = a2;

  sub_1B6461304(0, 0, v7, &unk_1B6814D60, v21);
}

uint64_t sub_1B64A93F4(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RecipeHistoryObserverProxy();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  v6 = swift_unknownObjectWeakAssign();
  MEMORY[0x1B8C949F0](v6);
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B67D97FC();
  }

  return sub_1B67D983C();
}

uint64_t sub_1B64A949C(unint64_t *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_1B649FA80(a1, a2);
  result = swift_unknownObjectRelease();
  v6 = *a1;
  if (*a1 >> 62)
  {
    if (v6 < 0)
    {
      v8 = *a1;
    }

    result = sub_1B67DA04C();
    v7 = result;
    if (result >= v4)
    {
      return sub_1B64AE140(v4, v7);
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v4)
    {
      return sub_1B64AE140(v4, v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64A953C()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_1B64A9580(void *a1@<X8>)
{
  v3 = *(*v1 + 40);
  os_unfair_lock_lock((v3 + 24));
  sub_1B64AEAAC((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1B64A95E0(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B6435678;

  return sub_1B6419EA0(a1, a2 & 1);
}

uint64_t sub_1B64A9688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B642694C;

  return sub_1B64A735C(a1, a2, a3);
}

uint64_t sub_1B64A973C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6484FB4;

  return sub_1B64A77B0(a1);
}

uint64_t sub_1B64A9800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1B64A9828, 0, 0);
}

uint64_t sub_1B64A9828()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B64A85D4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A994C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14[-v7];
  v9 = *v2;
  v15 = v9;
  v16 = a2;
  v10 = sub_1B64A8010(sub_1B64AEA38, v14, a1);
  sub_1B64A9F38();
  v11 = sub_1B67D993C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;

  sub_1B6461304(0, 0, v8, &unk_1B6814D50, v12);
}

uint64_t sub_1B64A9A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1B64A9AC0, 0, 0);
}

uint64_t sub_1B64A9AC0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B64A85D4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B64A9BC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = *v0;
  sub_1B64AA0B8();
  v6 = sub_1B67D993C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = v5;

  sub_1B6461304(0, 0, v4, &unk_1B6814D48, v7);
}

uint64_t sub_1B64A9CF8()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1B64A9090;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0]();
}

void sub_1B64A9DD0()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64AEA94((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1B64A9E28()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64AEA7C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1B64A9E80()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1B64A9ED4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_1B64A9F38()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64AE2C4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 40);
  os_unfair_lock_lock((v2 + 24));
  sub_1B64AEA50((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1B64A9FC0(uint64_t result)
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

  result = sub_1B64ABAD0(result, v11, 1, v3);
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

void sub_1B64AA0B8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock((v1 + 24));
  v4 = *(v0 + 40);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  *(v4 + 16) = sub_1B64AD610(v3);

  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_1B64AA138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B64AA15C, 0, 0);
}

uint64_t sub_1B64AA15C()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF78, &qword_1B6814DE8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B68100D0;
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  *(v3 + 32) = *v2;
  *(v3 + 48) = v5;
  *(v3 + 64) = v4;
  sub_1B64AE88C(v2, (v0 + 2));
  v6 = *(v1 + 16);
  PrivateZone.add(_:)(v3);

  v8 = v0[7];
  if (v9)
  {
    v10 = swift_willThrow();
    if (v8)
    {
      v11 = v0[8];
      (v0[7])(v10);
    }

    v12 = v0[1];
  }

  else
  {
    if (v8)
    {
      v13 = v0[8];
      v8(v7);
    }

    v12 = v0[1];
  }

  return v12();
}

void sub_1B64AA274(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v39 = a3;
  v42 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v38 - v12;
  v13 = *a1;
  v46 = a1[1];
  v14 = *(a2 + 32);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 24));
  v44 = *(v15 + 16);
  v45 = v15;
  if (v44)
  {
    v16 = 0;
    v17 = (v45 + 64);
    while (v16 < *(v45 + 16))
    {
      v18 = *(v17 - 4);
      v19 = *(v17 - 3);
      v20 = *(v17 - 2);
      v21 = *(v17 - 1);
      v22 = *v17;
      v47 = v18;
      v48 = v19;
      v49 = v20;
      v50 = v21;
      v51 = v22;

      if (RecipeHistoryItem.recipeID.getter() == v13 && v23 == v46)
      {
        v24 = v13;

LABEL_10:

        v47 = v18;
        v48 = v19;
        v49 = v20;
        v50 = v21;
        v51 = v22;

        RecipeHistoryItem.lastVisitedDate.getter(v43);
        v33 = sub_1B67D877C();
        v34 = *(v33 - 8);
        v35 = v40;
        (*(v34 + 16))(v40, v39, v33);
        v36 = *(v34 + 56);
        v36(v35, 0, 1, v33);
        v37 = v41;
        v36(v41, 1, 1, v33);
        RecipeHistoryItem.init(recipeID:lastVisitedDate:lastSeenDate:lastModifiedDate:)(v24, v46, v43, v35, v37, v42);

        return;
      }

      v24 = v13;
      v25 = sub_1B67DA2DC();

      if (v25)
      {
        goto LABEL_10;
      }

      ++v16;

      v17 += 5;
      v13 = v24;
      if (v44 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v26 = sub_1B67D877C();
    v27 = *(v26 - 8);
    v28 = *(v27 + 56);
    v29 = v43;
    v28(v43, 1, 1, v26);
    v30 = v40;
    (*(v27 + 16))(v40, v39, v26);
    v28(v30, 0, 1, v26);
    v31 = v41;
    v28(v41, 1, 1, v26);
    v32 = v46;

    RecipeHistoryItem.init(recipeID:lastVisitedDate:lastSeenDate:lastModifiedDate:)(v13, v32, v29, v30, v31, v42);
  }
}

uint64_t sub_1B64AA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B64AA6BC, 0, 0);
}

uint64_t sub_1B64AA6BC()
{
  v1 = *(v0[4]._rawValue + 2);
  PrivateZone.add(_:)(v0[5]);
  rawValue = v0[2]._rawValue;
  if (v3)
  {
    v4 = swift_willThrow();
    if (rawValue)
    {
      v5 = v0[3]._rawValue;
      (v0[2]._rawValue)(v4);
    }

    v6 = v0[1]._rawValue;
  }

  else
  {
    if (rawValue)
    {
      v7 = v0[3]._rawValue;
      rawValue();
    }

    v6 = v0[1]._rawValue;
  }

  return v6();
}

uint64_t sub_1B64AA778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = swift_task_alloc();
  v6[12] = v7;
  *v7 = v6;
  v7[1] = sub_1B64AA818;

  return sub_1B6419EA0(0, 1);
}

uint64_t sub_1B64AA818(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_1B64AAE58;
  }

  else
  {
    v5 = sub_1B64AA92C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B64AA92C()
{
  v1 = v0[13];
  v2 = *(v0[11] + 16);
  swift_getKeyPath();
  v3 = *(v1 + 16);
  v4 = v0[13];
  if (v3)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v3, 0);
    v5._rawValue = v33;
    v6 = (v4 + 64);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v0[2] = *(v6 - 4);
      v0[3] = v7;
      v0[4] = v8;
      v0[5] = v9;
      v0[6] = v10;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_getAtKeyPath();

      v11 = v0[2];
      v12 = v0[3];
      v13 = v0[4];
      v14 = v0[5];
      v15 = v0[6];

      v16 = v0[7];
      v17 = v0[8];
      v19 = v33[2];
      v18 = v33[3];
      if (v19 >= v18 >> 1)
      {
        sub_1B6456B24((v18 > 1), v19 + 1, 1);
      }

      v33[2] = v19 + 1;
      v20 = &v33[2 * v19];
      v20[4] = v16;
      v20[5] = v17;
      v6 += 5;
      --v3;
    }

    while (v3);
    v21 = v0[13];
  }

  else
  {
    v22 = v0[13];

    v5._rawValue = MEMORY[0x1E69E7CC0];
  }

  v23 = v0[14];
  PrivateZone.remove(_:)(v5);
  if (v24)
  {
    v25 = v0[9];

    if (v25)
    {
      v27 = v0[10];
      (v0[9])(v26);
    }

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[11];

    v0[15] = swift_allocObject();
    swift_weakInit();
    v31 = *(MEMORY[0x1E69E88A0] + 4);
    v32 = swift_task_alloc();
    v0[16] = v32;
    *v32 = v0;
    v32[1] = sub_1B64AAC54;

    return MEMORY[0x1EEE6DD58]();
  }
}

uint64_t sub_1B64AAC54()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1B64AADE0;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1B64AAD70;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B64AAD70()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[10];
    v1();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B64AADE0()
{
  v1 = v0[15];
  v2 = v0[9];

  if (v2)
  {
    v4 = v0[10];
    (v0[9])(v3);
  }

  v5 = v0[17];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1B64AAE58()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[10];
    v1();
  }

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B64AAEC8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  result = RecipeHistoryItem.id.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1B64AAF0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];

  sub_1B64E67E4();
}

double sub_1B64AAFD4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_1B67D8DCC();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1B64AB010(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];

  return sub_1B67D8DDC();
}

uint64_t sub_1B64AB04C()
{
  v2 = *(*v1 + 160);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64AB15C, 0, 0);
  }

  return result;
}

uint64_t sub_1B64AB15C()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 73;
      v5 = MEMORY[0x1E69E7CC0];
      v29 = MEMORY[0x1E69E7CC0];
      v30 = *(v1 + 16);
      v27 = v1 + 73;
      do
      {
        v6 = (v4 + 48 * v3);
        while (1)
        {
          if (v3 >= v2)
          {
            __break(1u);
LABEL_28:
            __break(1u);
            return MEMORY[0x1EEE6DD58]();
          }

          if (__OFADD__(v3, 1))
          {
            goto LABEL_28;
          }

          v32 = v3 + 1;
          v7 = *(v6 - 41);
          v8 = *(v6 - 33);
          v9 = *(v6 - 25);
          v10 = *(v6 - 17);
          v11 = *(v6 - 9);
          v12 = *(v6 - 1);
          if (*v6)
          {
            break;
          }

          v13 = *(v6 - 41);
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1B64ABAD0(0, *(v5 + 2) + 1, 1, v5);
          }

          v15 = *(v5 + 2);
          v14 = *(v5 + 3);
          v16 = v5;
          if (v15 >= v14 >> 1)
          {
            v16 = sub_1B64ABAD0((v14 > 1), v15 + 1, 1, v5);
          }

          *(v16 + 2) = v15 + 1;
          v5 = v16;
          v17 = &v16[40 * v15];
          *(v17 + 4) = v7;
          *(v17 + 5) = v8;
          *(v17 + 6) = v9;
          *(v17 + 7) = v10;
          *(v17 + 8) = v11;
          sub_1B64AE9A4(v7, v8, v9, v10, v11, v12, 0);
          ++v3;
          v6 += 48;
          v2 = v30;
          if (v32 == v30)
          {
            goto LABEL_24;
          }
        }

        v18 = *(v6 - 33);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1B646A2E0(0, *(v29 + 2) + 1, 1, v29);
        }

        v20 = *(v29 + 2);
        v19 = *(v29 + 3);
        if (v20 >= v19 >> 1)
        {
          v29 = sub_1B646A2E0((v19 > 1), v20 + 1, 1, v29);
        }

        *(v29 + 2) = v20 + 1;
        v21 = &v29[16 * v20];
        *(v21 + 4) = v7;
        *(v21 + 5) = v8;
        sub_1B64AE9A4(v7, v8, v9, v10, v11, v12, 1);
        v2 = v30;
        v3 = v32;
        v4 = v27;
      }

      while (v32 != v30);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      v29 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
    v28[21] = v29;
    v28[22] = v5;
    v24 = v28[18];

    v28[23] = swift_allocObject();
    swift_weakInit();
    v25 = *(MEMORY[0x1E69E88A0] + 4);
    v26 = swift_task_alloc();
    v28[24] = v26;
    *v26 = v28;
    v26[1] = sub_1B64AB508;

    return MEMORY[0x1EEE6DD58]();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1B64AB508()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B64AB878;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1B64AB624;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B64AB624()
{
  sub_1B67D990C();
  *(v0 + 208) = sub_1B67D98FC();
  v2 = sub_1B67D989C();

  return MEMORY[0x1EEE6DFA0](sub_1B64AB6B8, v2, v1);
}

uint64_t sub_1B64AB6B8()
{
  v1 = v0[26];
  v2 = v0[18];

  v3 = *(v2 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  if (v4 >> 62)
  {
    v5 = sub_1B67DA04C();
    v8 = v5;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  v9 = 0;
  v17 = v8;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B8C95180](v9, v4);
    }

    else
    {
      v10 = *(v4 + 8 * v9 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = v0[21];
      v19 = v0[22];
      v12 = v0[18];
      v11 = v0[19];
      v13 = *(v10 + 24);
      ObjectType = swift_getObjectType();
      v0[15] = v11;
      v0[16] = &off_1F2DBFB50;
      v0[12] = v12;
      v15 = *(v13 + 8);

      v15(v0 + 12, v19, v18, ObjectType, v13);
      v8 = v17;
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }

    else
    {
    }

    ++v9;
  }

  while (v8 != v9);
LABEL_13:

  v5 = sub_1B64AB8F8;
  v6 = 0;
  v7 = 0;

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B64AB878()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_1B64AB8F8()
{
  v1 = v0[21];
  v2 = v0[22];

  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1B64AB04C;

  return MEMORY[0x1EEE6D8D0](v0 + 17, 0, 0);
}

char *sub_1B64AB9CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B650, &qword_1B6814DE0);
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

char *sub_1B64ABAD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF78, &qword_1B6814DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B64ABBF0(uint64_t a1, char a2, void *a3)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = (a1 + 80);
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1B67DA34C();
      __break(1u);
      goto LABEL_24;
    }

    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = *(v5 - 3);
    v9 = *(v5 - 2);
    v11 = *(v5 - 5);
    v10 = *(v5 - 4);
    v12 = *(v5 - 6);

    if (!v11)
    {
      goto LABEL_18;
    }

    v33 = v6;
    v34 = v9;
    v35 = v8;
    v13 = *a3;
    v15 = sub_1B6456E70(v12, v11);
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B64ABF38();
      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v23 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v24 = (v23[6] + 16 * v15);
    *v24 = v12;
    v24[1] = v11;
    v25 = (v23[7] + 40 * v15);
    *v25 = v10;
    v25[1] = v35;
    v25[2] = v34;
    v25[3] = v33;
    v25[4] = v7;
    v26 = v23[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_22;
    }

    ++v4;
    v23[2] = v28;
    v5 += 7;
    a2 = 1;
    if (v31 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_1B64AC10C(v18, a2 & 1);
  v20 = *a3;
  v21 = sub_1B6456E70(v12, v11);
  if ((v19 & 1) != (v22 & 1))
  {
    goto LABEL_23;
  }

  v15 = v21;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  sub_1B67D9EFC();
  MEMORY[0x1B8C94910](0xD00000000000001BLL, 0x80000001B6829360);
  sub_1B67DA01C();
  MEMORY[0x1B8C94910](39, 0xE100000000000000);
  sub_1B67DA07C();
  __break(1u);
}

void *sub_1B64ABF38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF70, &qword_1B6814DD0);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1B67DA0BC();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = (*(v28 + 48) + v15);
        *v25 = v18;
        v25[1] = v17;
        v26 = (*(v28 + 56) + v14);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v24;
      }

      while (v9);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

uint64_t sub_1B64AC10C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF70, &qword_1B6814DD0);
  v48 = a2;
  result = sub_1B67DA0CC();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v47 = result;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = v26[1];
      v51 = *v26;
      v28 = (*(v5 + 56) + 40 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v33 = v28[4];
      if ((v48 & 1) == 0)
      {
      }

      v50 = v31;
      v34 = v30;
      v35 = v29;
      v36 = *(v47 + 40);
      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
      v8 = v47;
      v37 = -1 << *(v47 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v50;
        v18 = v33;
        v19 = v32;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v18 = v33;
      v19 = v32;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v20 = (*(v47 + 48) + 16 * v16);
      *v20 = v51;
      v20[1] = v27;
      v21 = (*(v47 + 56) + 40 * v16);
      *v21 = v35;
      v21[1] = v34;
      v21[2] = v17;
      v21[3] = v19;
      v21[4] = v18;
      ++*(v47 + 16);
      v5 = v46;
      v13 = v49;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (v48)
    {
      v44 = 1 << *(v5 + 32);
      if (v44 >= 64)
      {
        bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v44;
      }

      *(v5 + 16) = 0;
    }

    v3 = v45;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_1B64AC430(void *a1, int64_t a2, char a3)
{
  result = sub_1B64AC470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B64AC450(char *a1, int64_t a2, char a3)
{
  result = sub_1B64AC5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B64AC470(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF80, &qword_1B6814E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AF88, &qword_1B6814E18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B64AC5C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF78, &qword_1B6814DE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B64AC6E0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1B67DA04C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_1B67D9F3C();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1B64AC79C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B64AD4A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B64AC808(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B64AC808(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B67DA27C();
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
        v5 = sub_1B67D981C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B64ACA24(v7, v8, a1, v4);
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
    return sub_1B64AC900(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B64AC900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1B64AE738();
    v7 = (v6 + 40 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = (v6 + 40 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(v9 + 4);
    v13 = v8;
    v14 = v7;
    while (1)
    {
      v20 = *(v14 - 40);
      v21 = *(v14 - 24);
      v22 = *(v14 - 1);
      result = sub_1B67D95EC();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v7 = (v7 + 40);
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

      v15 = *v14;
      v16 = v14[1];
      v17 = *(v14 + 4);
      v18 = *(v14 - 24);
      *v14 = *(v14 - 40);
      v14[1] = v18;
      *(v14 + 4) = *(v14 - 1);
      *(v14 - 24) = v16;
      *(v14 - 1) = v17;
      *(v14 - 40) = v15;
      v14 = (v14 - 40);
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B64ACA24(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = a3;
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B64AD494(v10);
      v10 = result;
    }

    v89 = v6;
    v90 = *(v10 + 2);
    if (v90 >= 2)
    {
      while (1)
      {
        v91 = *v4;
        if (!*v4)
        {
          goto LABEL_126;
        }

        v6 = v90 - 1;
        v4 = *&v10[16 * v90];
        v92 = *&v10[16 * v90 + 24];
        sub_1B64AD104((v91 + 40 * v4), (v91 + 40 * *&v10[16 * v90 + 16]), v91 + 40 * v92, v9);
        if (v89)
        {
        }

        if (v92 < v4)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B64AD494(v10);
        }

        if (v90 - 2 >= *(v10 + 2))
        {
          goto LABEL_116;
        }

        v93 = &v10[16 * v90];
        *v93 = v4;
        *(v93 + 1) = v92;
        result = sub_1B64AD408(v6);
        v90 = *(v10 + 2);
        v4 = a3;
        if (v90 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v96 = result;
  while (1)
  {
    v11 = v9;
    if (v9 + 1 >= v8)
    {
      v17 = v9 + 1;
      v18 = a3;
    }

    else
    {
      v12 = *a3 + 40 * (v9 + 1);
      v13 = 40 * v9;
      v9 = *a3 + 40 * v9;
      v109 = *v12;
      v111 = *(v12 + 16);
      v113 = *(v12 + 32);
      v100 = *v9;
      v103 = *(v9 + 16);
      v106 = *(v9 + 32);
      sub_1B64AE738();
      result = sub_1B67D95EC();
      v14 = v11;
      v15 = result;
      v95 = v14;
      v4 = v14 + 2;
      v16 = v9 + 56;
      do
      {
        if (v8 == v4)
        {
          v17 = v8;
          v7 = v96;
          v18 = a3;
          if ((v15 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_70;
        }

        v9 = v16 + 40;
        v110 = *(v16 + 24);
        v112 = *(v16 + 40);
        v114 = *(v16 + 56);
        v101 = *(v16 - 16);
        v104 = *v16;
        v107 = *(v16 + 16);
        result = sub_1B67D95EC();
        ++v4;
        v16 = v9;
      }

      while ((v15 & 1) == (result & 1));
      v17 = v4 - 1;
      v7 = v96;
      v18 = a3;
      if ((v15 & 1) == 0)
      {
LABEL_9:
        v11 = v95;
        goto LABEL_11;
      }

LABEL_70:
      v11 = v95;
      if (v17 < v95)
      {
        goto LABEL_119;
      }

      if (v95 < v17)
      {
        v65 = 40 * v17 - 40;
        v66 = v17;
        v67 = v95;
        do
        {
          if (v67 != --v66)
          {
            v75 = *v18;
            if (!*v18)
            {
              goto LABEL_125;
            }

            v68 = (v75 + v13);
            v69 = *(v75 + v13 + 32);
            v70 = (v75 + v65);
            v71 = *v68;
            v72 = v68[1];
            v73 = *(v70 + 4);
            v74 = v70[1];
            *v68 = *v70;
            v68[1] = v74;
            *(v68 + 4) = v73;
            *v70 = v71;
            v70[1] = v72;
            *(v70 + 4) = v69;
          }

          ++v67;
          v65 -= 40;
          v13 += 40;
        }

        while (v67 < v66);
      }
    }

LABEL_11:
    v19 = v18[1];
    if (v17 < v19)
    {
      if (__OFSUB__(v17, v11))
      {
        goto LABEL_118;
      }

      if (v17 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_120;
        }

        if (v11 + a4 < v19)
        {
          v19 = v11 + a4;
        }

        if (v19 < v11)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v17 != v19)
        {
          break;
        }
      }
    }

    v9 = v17;
    if (v17 < v11)
    {
      goto LABEL_117;
    }

LABEL_20:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B64AB9CC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v4 = *(v10 + 2);
    v20 = *(v10 + 3);
    v21 = v4 + 1;
    if (v4 >= v20 >> 1)
    {
      result = sub_1B64AB9CC((v20 > 1), v4 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v21;
    v22 = &v10[16 * v4];
    *(v22 + 4) = v11;
    *(v22 + 5) = v9;
    v23 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    if (v4)
    {
      while (1)
      {
        v24 = v21 - 1;
        if (v21 >= 4)
        {
          break;
        }

        if (v21 == 3)
        {
          v25 = *(v10 + 4);
          v26 = *(v10 + 5);
          v35 = __OFSUB__(v26, v25);
          v27 = v26 - v25;
          v28 = v35;
LABEL_39:
          if (v28)
          {
            goto LABEL_106;
          }

          v41 = &v10[16 * v21];
          v43 = *v41;
          v42 = *(v41 + 1);
          v44 = __OFSUB__(v42, v43);
          v45 = v42 - v43;
          v46 = v44;
          if (v44)
          {
            goto LABEL_109;
          }

          v47 = &v10[16 * v24 + 32];
          v49 = *v47;
          v48 = *(v47 + 1);
          v35 = __OFSUB__(v48, v49);
          v50 = v48 - v49;
          if (v35)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v45, v50))
          {
            goto LABEL_113;
          }

          if (v45 + v50 >= v27)
          {
            if (v27 < v50)
            {
              v24 = v21 - 2;
            }

            goto LABEL_60;
          }

          goto LABEL_53;
        }

        v51 = &v10[16 * v21];
        v53 = *v51;
        v52 = *(v51 + 1);
        v35 = __OFSUB__(v52, v53);
        v45 = v52 - v53;
        v46 = v35;
LABEL_53:
        if (v46)
        {
          goto LABEL_108;
        }

        v54 = &v10[16 * v24];
        v56 = *(v54 + 4);
        v55 = *(v54 + 5);
        v35 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v35)
        {
          goto LABEL_111;
        }

        if (v57 < v45)
        {
          goto LABEL_3;
        }

LABEL_60:
        v4 = v24 - 1;
        if (v24 - 1 >= v21)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*v18)
        {
          goto LABEL_124;
        }

        v62 = *&v10[16 * v4 + 32];
        v63 = *&v10[16 * v24 + 40];
        sub_1B64AD104((*v18 + 40 * v62), (*v18 + 40 * *&v10[16 * v24 + 32]), *v18 + 40 * v63, v23);
        if (v5)
        {
        }

        if (v63 < v62)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1B64AD494(v10);
        }

        if (v4 >= *(v10 + 2))
        {
          goto LABEL_103;
        }

        v64 = &v10[16 * v4];
        *(v64 + 4) = v62;
        *(v64 + 5) = v63;
        result = sub_1B64AD408(v24);
        v21 = *(v10 + 2);
        if (v21 <= 1)
        {
          goto LABEL_3;
        }
      }

      v29 = &v10[16 * v21 + 32];
      v30 = *(v29 - 64);
      v31 = *(v29 - 56);
      v35 = __OFSUB__(v31, v30);
      v32 = v31 - v30;
      if (v35)
      {
        goto LABEL_104;
      }

      v34 = *(v29 - 48);
      v33 = *(v29 - 40);
      v35 = __OFSUB__(v33, v34);
      v27 = v33 - v34;
      v28 = v35;
      if (v35)
      {
        goto LABEL_105;
      }

      v36 = &v10[16 * v21];
      v38 = *v36;
      v37 = *(v36 + 1);
      v35 = __OFSUB__(v37, v38);
      v39 = v37 - v38;
      if (v35)
      {
        goto LABEL_107;
      }

      v35 = __OFADD__(v27, v39);
      v40 = v27 + v39;
      if (v35)
      {
        goto LABEL_110;
      }

      if (v40 >= v32)
      {
        v58 = &v10[16 * v24 + 32];
        v60 = *v58;
        v59 = *(v58 + 1);
        v35 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v35)
        {
          goto LABEL_114;
        }

        if (v27 < v61)
        {
          v24 = v21 - 2;
        }

        goto LABEL_60;
      }

      goto LABEL_39;
    }

LABEL_3:
    v8 = v18[1];
    v7 = v96;
    if (v9 >= v8)
    {
      goto LABEL_89;
    }
  }

  v98 = v19;
  v76 = *v18;
  sub_1B64AE738();
  v77 = (v76 + 40 * v17);
  v4 = v11 - v17;
LABEL_80:
  v99 = v17;
  v78 = (v76 + 40 * v17);
  v79 = *v78;
  v80 = v78[1];
  v81 = *(v78 + 4);
  v82 = v4;
  v83 = v77;
  while (1)
  {
    v102 = *(v83 - 40);
    v105 = *(v83 - 24);
    v108 = *(v83 - 1);
    result = sub_1B67D95EC();
    if ((result & 1) == 0)
    {
LABEL_79:
      ++v17;
      v77 = (v77 + 40);
      --v4;
      if (v99 + 1 != v98)
      {
        goto LABEL_80;
      }

      v7 = v96;
      v18 = a3;
      v9 = v98;
      if (v98 < v11)
      {
        goto LABEL_117;
      }

      goto LABEL_20;
    }

    if (!v76)
    {
      break;
    }

    v84 = *v83;
    v85 = v83[1];
    v86 = *(v83 + 4);
    v87 = *(v83 - 24);
    *v83 = *(v83 - 40);
    v83[1] = v87;
    *(v83 + 4) = *(v83 - 1);
    *(v83 - 24) = v85;
    *(v83 - 1) = v86;
    *(v83 - 40) = v84;
    v83 = (v83 - 40);
    if (__CFADD__(v82++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_1B64AD104(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
    }

    v12 = &v4[40 * v11];
    if (v10 < 40 || v6 <= v7)
    {
      v17 = v6;
    }

    else
    {
      v42 = v4;
      sub_1B64AE738();
LABEL_23:
      v31 = v5;
      v18 = 0;
      v19 = v12;
      v30 = v6 - 40;
      do
      {
        v20 = v19;
        v12 = &v19[v18];
        v21 = &v19[v18 - 40];
        v22 = (v31 + v18);
        v23 = (v31 + v18 - 40);
        v41 = *&v19[v18 - 8];
        v33 = *(v6 - 40);
        v35 = *(v6 - 24);
        v37 = *(v6 - 1);
        if (sub_1B67D95EC())
        {
          v17 = v6 - 40;
          if (v22 != v6)
          {
            v26 = *v30;
            v27 = *(v6 - 24);
            *(v31 + v18 - 8) = *(v6 - 1);
            *v23 = v26;
            *(v31 + v18 - 24) = v27;
          }

          if (v12 <= v42 || (v5 = v31 + v18 - 40, v6 -= 40, v30 <= v7))
          {
            v12 = &v20[v18];
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        if (v22 != v12)
        {
          v24 = *v21;
          v25 = *(v21 + 16);
          *(v31 + v18 - 8) = *(v21 + 32);
          *v23 = v24;
          *(v31 + v18 - 24) = v25;
        }

        v18 -= 40;
        v19 = v20;
        v12 = &v20[v18];
      }

      while (&v20[v18] > v42);
      v17 = v6;
LABEL_35:
      v4 = v42;
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 >= 40 && v6 < v5)
    {
      sub_1B64AE738();
      while (1)
      {
        v38 = *v6;
        v39 = *(v6 + 1);
        v40 = *(v6 + 4);
        v32 = *v4;
        v34 = *(v4 + 1);
        v36 = *(v4 + 4);
        if ((sub_1B67D95EC() & 1) == 0)
        {
          break;
        }

        v13 = v6;
        v14 = v7 == v6;
        v6 += 40;
        if (!v14)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 40;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 40;
      if (v14)
      {
        goto LABEL_14;
      }

LABEL_13:
      v15 = *v13;
      v16 = *(v13 + 1);
      *(v7 + 4) = *(v13 + 4);
      *v7 = v15;
      *(v7 + 1) = v16;
      goto LABEL_14;
    }

LABEL_16:
    v17 = v7;
  }

  v28 = (v12 - v4) / 40;
  if (v17 != v4 || v17 >= &v4[40 * v28])
  {
    memmove(v17, v4, 40 * v28);
  }

  return 1;
}

uint64_t sub_1B64AD408(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B64AD494(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B64AD558()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B6422E9C;

  return sub_1B64AA698(v6, v7, v8, v2, v3, v5, v4);
}

unint64_t sub_1B64AD610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF70, &qword_1B6814DD0);
    v3 = sub_1B67DA0EC();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_1B6456E70(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

uint64_t dispatch thunk of RecipeHistoryType.historyItems(maxAge:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B6484E3C;

  return (v13)(a1, a2 & 1, a3, a4);
}

uint64_t dispatch thunk of RecipeHistoryType.historyItem(recipeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B6422E9C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RecipeHistoryType.historyItems(recipeIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B64AEA6C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of RecipeHistoryType.addOrUpdate(recipeID:lastVisitedDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 48))();
}

{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B6422E9C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RecipeHistoryType.addOrUpdate(recipeID:lastSeenDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 64))();
}

{
  v11 = *(a5 + 80);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B6422E9C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RecipeHistoryType.removeAll()(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 88))();
}

{
  v5 = *(a2 + 96);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6422E9C;

  return v9(a1, a2);
}

uint64_t sub_1B64ADF9C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B6422E9C;

  return sub_1B64AA778(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1B64AE044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RecipeHistoryObserverProxy();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B67DA04C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B67DA04C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64AE140(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B67DA04C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1B67DA04C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1B64AC6E0(result);

  return sub_1B64AE044(v4, v2, 0);
}

uint64_t objectdestroy_20Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B64AE2C4(char **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1B647DDF4(0, v3, 0);
    v4 = v50;
    v5 = (v2 + 64);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v49[0] = *(v5 - 4);
      v49[1] = v6;
      v49[2] = v7;
      v49[3] = v8;
      v49[4] = v9;

      RecipeHistoryItem.id.getter();
      sub_1B67D8DCC();

      v10 = v52;
      v50 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1B647DDF4((v11 > 1), v12 + 1, 1);
        v10 = v52;
        v4 = v50;
      }

      *(v4 + 16) = v12 + 1;
      *(v4 + 16 * v12 + 32) = v10;
      v5 += 5;
      --v3;
    }

    while (v3);
    v13 = a1;
  }

  else
  {
    v13 = a1;
  }

  v14 = sub_1B647F10C(v4);

  v15 = *v13;
  v45 = *(*v13 + 2);
  if (!v45)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v16 = 0;
  v42 = v15 + 32;
  v17 = v14 + 56;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v14;
  v43 = *v13;
  v44 = v14;
LABEL_10:
  v46 = v18;
  do
  {
    if (v16 >= *(v15 + 2))
    {
      __break(1u);
      goto LABEL_39;
    }

    v20 = &v42[40 * v16];
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = v20[3];
    v25 = v20[4];
    ++v16;
    *&v52 = *v20;
    *(&v52 + 1) = v22;
    v53 = v23;
    v54 = v24;
    v55 = v25;

    v47 = v23;

    RecipeHistoryItem.id.getter();
    sub_1B67D8DCC();

    v48 = v25;
    if (!*(v19 + 16))
    {
      goto LABEL_29;
    }

    v26 = *(v19 + 40);
    sub_1B67DA3DC();
    sub_1B67DA3FC();
    if (v51)
    {
      sub_1B67D967C();
    }

    v27 = sub_1B67DA41C();
    v28 = -1 << *(v19 + 32);
    v29 = v27 & ~v28;
    if (((*(v17 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_29:

      v18 = v46;
      v56 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B64AC450(0, *(v46 + 16) + 1, 1);
        v18 = v56;
      }

      v15 = v43;
      v36 = *(v18 + 16);
      v35 = *(v18 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B64AC450((v35 > 1), v36 + 1, 1);
        v18 = v56;
      }

      *(v18 + 16) = v36 + 1;
      v37 = (v18 + 40 * v36);
      v37[4] = v21;
      v37[5] = v22;
      v37[6] = v47;
      v37[7] = v24;
      v37[8] = v48;
      v19 = v44;
      if (v16 == v45)
      {
        break;
      }

      goto LABEL_10;
    }

    v30 = ~v28;
    v31 = *(v19 + 48);
    while (1)
    {
      v32 = (v31 + 16 * v29);
      v33 = v32[1];
      if (v33)
      {
        break;
      }

      if (!v51)
      {
        goto LABEL_27;
      }

LABEL_18:
      v29 = (v29 + 1) & v30;
      if (((*(v17 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (!v51)
    {
      goto LABEL_18;
    }

    v34 = *v32 == v50 && v33 == v51;
    if (!v34 && (sub_1B67DA2DC() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_27:

    v19 = v44;
    v15 = v43;
    v18 = v46;
  }

  while (v16 != v45);
LABEL_36:

  *a1 = v18;

  sub_1B64A9FC0(v38);
  v49[0] = *a1;

  sub_1B64AC79C(v49);
  v19 = v40;
  if (!v40)
  {

    *a1 = v49[0];
    return result;
  }

LABEL_39:

  __break(1u);
  return result;
}

unint64_t sub_1B64AE738()
{
  result = qword_1EDB1EC40;
  if (!qword_1EDB1EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EC40);
  }

  return result;
}

uint64_t objectdestroy_66Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B64AE820()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF68, &qword_1B6814D58) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1B67D98BC();
}

uint64_t sub_1B64AE8E8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B642694C;

  return sub_1B64AA138(v5, v6, v7, v2, v3, v4, (v0 + 7));
}

uint64_t sub_1B64AE994(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B64AE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

void *sub_1B64AEAC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v41 = sub_1B67D8A9C();
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D856C();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = sub_1B67D85FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v38 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = [result contentDirectory];
  sub_1B67D964C();

  v36 = v13;
  v37 = v12;
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v44 + 104))(v43, *MEMORY[0x1E6968F70], v45);
  sub_1B67D85CC();
  sub_1B67D859C();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for GlobalESLService();
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v47 = result;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B140, &qword_1B6814FF8);
  result = sub_1B67D88DC();
  if (v46[3])
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B160, &qword_1B6815018);
    v29 = v36;
    v28 = v37;
    v30 = v38;
    (*(v36 + 16))(v38, v19, v37);
    v31 = sub_1B647147C();
    v32 = v40;
    (*(v39 + 16))(v40, v31, v41);
    v33 = FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(&v47, v46, v30, v32, 86400.0);
    v34 = v42;
    v42[3] = v27;
    v34[4] = &protocol witness table for FeedItemInventory<A>;
    swift_unknownObjectRelease();
    *v34 = v33;
    v35 = *(v29 + 8);
    v35(v19, v28);
    return (v35)(v21, v28);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1B64AEF54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v41 = sub_1B67D8A9C();
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D856C();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = sub_1B67D85FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v38 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = [result contentDirectory];
  sub_1B67D964C();

  v36 = v13;
  v37 = v12;
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v44 + 104))(v43, *MEMORY[0x1E6968F70], v45);
  sub_1B67D85CC();
  sub_1B67D859C();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagESLService();
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v47 = result;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B140, &qword_1B6814FF8);
  result = sub_1B67D88DC();
  if (v46[3])
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B158, &qword_1B6815010);
    v29 = v36;
    v28 = v37;
    v30 = v38;
    (*(v36 + 16))(v38, v19, v37);
    v31 = sub_1B6471680();
    v32 = v40;
    (*(v39 + 16))(v40, v31, v41);
    v33 = FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(&v47, v46, v30, v32, 86400.0);
    v34 = v42;
    v42[3] = v27;
    v34[4] = &protocol witness table for FeedItemInventory<A>;
    swift_unknownObjectRelease();
    *v34 = v33;
    v35 = *(v29 + 8);
    v35(v19, v28);
    return (v35)(v21, v28);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1B64AF3E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v41 = sub_1B67D8A9C();
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D856C();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36 - v10;
  v12 = sub_1B67D85FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v38 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = [result contentDirectory];
  sub_1B67D964C();

  v36 = v13;
  v37 = v12;
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v44 + 104))(v43, *MEMORY[0x1E6968F70], v45);
  sub_1B67D85CC();
  sub_1B67D859C();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for BridgedFeedItemService();
  result = sub_1B67D88BC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v47 = result;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B140, &qword_1B6814FF8);
  result = sub_1B67D88DC();
  if (v46[3])
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B150, &qword_1B6815008);
    v29 = v36;
    v28 = v37;
    v30 = v38;
    (*(v36 + 16))(v38, v19, v37);
    v31 = sub_1B64715D4();
    v32 = v40;
    (*(v39 + 16))(v40, v31, v41);
    v33 = FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(&v47, v46, v30, v32, 21600.0);
    v34 = v42;
    v42[3] = v27;
    v34[4] = &protocol witness table for FeedItemInventory<A>;
    swift_unknownObjectRelease();
    *v34 = v33;
    v35 = *(v29 + 8);
    v35(v19, v28);
    return (v35)(v21, v28);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1B64AF88C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v44 = sub_1B67D8A9C();
  v42 = *(v44 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D856C();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v46 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v38 - v10;
  v12 = sub_1B67D85FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v39 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v38 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v38 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v38[1] = result;
  v24 = [result contentDirectory];
  sub_1B67D964C();

  v40 = v13;
  v41 = v12;
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v47 + 104))(v46, *MEMORY[0x1E6968F70], v48);
  sub_1B67D85CC();
  sub_1B67D859C();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v26 = result;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B018, &unk_1B6814F08);
  result = sub_1B67D88DC();
  if (!v51)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  type metadata accessor for MyArticlesFeedItemService();
  v49 = sub_1B6507F14(v26, &v50);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B140, &qword_1B6814FF8);

  result = sub_1B67D88DC();
  v30 = v40;
  v29 = v41;
  if (v51)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B148, &qword_1B6815000);
    v32 = v39;
    (*(v30 + 16))(v39, v19, v29);
    v33 = sub_1B6471528();
    v34 = v43;
    (*(v42 + 16))(v43, v33, v44);
    v35 = FeedItemInventory.__allocating_init(feedItemService:feedItemScoringService:fileURL:refreshInterval:logger:)(&v49, &v50, v32, v34, 900.0);
    v36 = v45;
    v45[3] = v31;
    v36[4] = &protocol witness table for FeedItemInventory<A>;

    swift_unknownObjectRelease();
    *v36 = v35;
    v37 = *(v30 + 8);
    v37(v19, v29);
    return (v37)(v21, v29);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B64AFD98(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &unk_1EDB1F010, off_1E7C34E00);
  result = sub_1B67D88CC();
  if (result)
  {
    v3 = result;
    type metadata accessor for BridgedFeedItemService();
    return sub_1B64314B0(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PingBasedOnlineNetworkTransitionMonitor.__allocating_init(configurationManager:hostName:port:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = objc_allocWithZone(v4);
  v14 = OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock;
  v15 = sub_1B67D877C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD68, &qword_1B6814558);
  v17 = *(v16 + 52);
  v18 = (*(v16 + 48) + 3) & 0x1FFFFFFFCLL;
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B6404758(v12, v19 + *(*v19 + *MEMORY[0x1E69E6B68] + 16));
  *&v13[v14] = v19;
  *&v13[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_configurationManager] = a1;
  v20 = &v13[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_hostName];
  *v20 = a2;
  *(v20 + 1) = a3;
  *&v13[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_port] = a4;
  v22.receiver = v13;
  v22.super_class = v4;
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_1B64B007C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*&v3[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_configurationManager] possiblyUnfetchedAppConfiguration];
  v8 = 1.0;
  if ([v7 respondsToSelector_])
  {
    [v7 offlineModeDetectionPingInterval];
    v8 = v9;
  }

  v10 = 5.0;
  if ([v7 respondsToSelector_])
  {
    [v7 offlineModeDetectionPingTimeoutInterval];
    v10 = v11;
  }

  v12 = *&v3[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_hostName + 8];
  v26 = *&v3[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_hostName];
  v25 = *&v3[OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_port];
  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = a3;
  *(v13 + 5) = v3;
  v14 = type metadata accessor for PingBasedOnlineNetworkTransitionOperation();
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_log;
  sub_1B63F3DA0(0, &qword_1EDB1E538, 0x1E69E9BF8);

  v17 = a1;

  v18 = v3;
  *&v15[v16] = sub_1B67D9DCC();
  v19 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B1A8, &qword_1B6815020);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  *&v15[v19] = v20;
  *&v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe] = 0;
  *&v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingInterval] = v8;
  *&v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingTimeoutInterval] = v10;
  v21 = &v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_hostName];
  *v21 = v26;
  *(v21 + 1) = v12;
  *&v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_port] = v25;
  v22 = &v15[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock];
  *v22 = sub_1B64B05E0;
  v22[1] = v13;
  v27.receiver = v15;
  v27.super_class = v14;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  [v23 start];
  swift_unknownObjectRelease();
  return v23;
}

void sub_1B64B02F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a4;
  v6 = sub_1B67D946C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B67D949C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B64B2AA0;
  aBlock[3] = &block_descriptor_55;
  v16 = _Block_copy(aBlock);

  sub_1B67D947C();
  v20[1] = MEMORY[0x1E69E7CC0];
  sub_1B64B2808(&qword_1EDB1EF78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1F0, &qword_1B6810310);
  sub_1B64B2278();
  sub_1B67D9E5C();
  MEMORY[0x1B8C94F30](0, v15, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);

  v17 = *(v20[0] + OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock);
  v18 = *(*v17 + *MEMORY[0x1E69E6B68] + 16);
  v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v19));
  sub_1B64B05EC(v17 + v18);
  os_unfair_lock_unlock((v17 + v19));
}

uint64_t sub_1B64B05EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  sub_1B6404758(a1, &v17 - v7);
  v9 = sub_1B67D877C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v11 = sub_1B67D86DC();
    (*(v10 + 8))(v8, v9);
  }

  v12 = objc_opt_self();
  v13 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v14 = [v12 fc:v11 laterDateAllowingNilWithDate:v13 andDate:?];

  if (v14)
  {
    sub_1B67D874C();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v10 + 56))(v6, v15, 1, v9);
  return sub_1B6404758(v6, a1);
}

id PingBasedOnlineNetworkTransitionOperation.__allocating_init(pingInterval:pingTimeoutInterval:hostName:port:notificationBlock:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v7);
  v17 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_log;
  sub_1B63F3DA0(0, &qword_1EDB1E538, 0x1E69E9BF8);
  *&v16[v17] = sub_1B67D9DCC();
  v18 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B1A8, &qword_1B6815020);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = 0;
  *&v16[v18] = v19;
  *&v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe] = 0;
  *&v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingInterval] = a6;
  *&v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingTimeoutInterval] = a7;
  v20 = &v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_hostName];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_port] = a3;
  v21 = &v16[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock];
  *v21 = a4;
  *(v21 + 1) = a5;
  v23.receiver = v16;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

void sub_1B64B0A10(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___FCPingBasedOnlineNetworkTransitionMonitor_dateOfLastTransitionLock);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B6403FD4(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

id PingBasedOnlineNetworkTransitionMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B64B0BBC()
{
  v1 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B64B0C04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PingBasedOnlineNetworkTransitionOperation.init(pingInterval:pingTimeoutInterval:hostName:port:notificationBlock:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  v16 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_log;
  sub_1B63F3DA0(0, &qword_1EDB1E538, 0x1E69E9BF8);
  *&v7[v16] = sub_1B67D9DCC();
  v17 = OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B1A8, &qword_1B6815020);
  v18 = swift_allocObject();
  *&v8[v17] = v18;
  *&v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probe] = 0;
  *(v18 + 24) = 0;
  *&v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingInterval] = a6;
  *&v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingTimeoutInterval] = a7;
  v19 = &v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_hostName];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_port] = a3;
  *(v18 + 16) = 0;
  v20 = &v8[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_notificationBlock];
  *v20 = a4;
  *(v20 + 1) = a5;
  v22.receiver = v8;
  v22.super_class = type metadata accessor for PingBasedOnlineNetworkTransitionOperation();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1B64B0E24()
{
  v1 = v0;
  v67 = sub_1B67D946C();
  v70 = *(v67 - 8);
  v2 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B67D949C();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B67D94BC();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v63 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = v58 - v12;
  v13 = sub_1B67D902C();
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71 = v58 - v18;
  v19 = sub_1B67D8FFC();
  v61 = v19;
  v62 = *(v19 - 8);
  v20 = v62;
  v21 = *(v62 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v58 - v25;
  v60 = v58 - v25;
  v27 = [v0 operationID];
  v28 = sub_1B67D964C();
  v59 = v28;
  v30 = v29;

  v31 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_log];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B68100D0;
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1B64B164C();
  *(v32 + 32) = v28;
  *(v32 + 40) = v30;

  sub_1B67D9C9C();
  sub_1B67D8A6C();

  v33 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_hostName];
  v34 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_hostName + 8];

  sub_1B67D900C();
  v35 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_port];
  v36 = v71;
  sub_1B67D901C();
  sub_1B67D908C();
  (*(v20 + 16))(v24, v26, v19);
  (*(v72 + 16))(v17, v36, v73);
  sub_1B67D90AC();
  sub_1B67D909C();
  v37 = sub_1B67D905C();
  v38 = [v1 retryCount];
  v39 = [objc_allocWithZone(FCOnce) init];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v31;
  v41[4] = v59;
  v41[5] = v30;
  v41[6] = v38;
  v41[7] = v39;

  v42 = v31;
  v43 = v39;
  sub_1B64AE994(sub_1B64B2110);
  sub_1B67D904C();

  v44 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_probeLock];
  os_unfair_lock_lock((v44 + 24));
  v58[1] = v37;
  sub_1B64B2120((v44 + 16));
  os_unfair_lock_unlock((v44 + 24));
  sub_1B63F3DA0(0, &qword_1EDB1FB00, 0x1E69E9610);
  v45 = sub_1B67D9CFC();
  sub_1B67D907C();
  v46 = v63;
  sub_1B67D94AC();
  v47 = *&v1[OBJC_IVAR____TtC8NewsCore41PingBasedOnlineNetworkTransitionOperation_pingTimeoutInterval];
  v48 = v64;
  sub_1B67D94DC();
  v49 = *(v75 + 8);
  v75 += 8;
  v59 = v49;
  v49(v46, v74);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = v43;
  aBlock[4] = sub_1B64B215C;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6453FF4;
  aBlock[3] = &block_descriptor_8;
  v52 = _Block_copy(aBlock);
  v53 = v43;

  v54 = v65;
  sub_1B67D947C();
  v76 = MEMORY[0x1E69E7CC0];
  sub_1B64B2808(&qword_1EDB1EF78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1F0, &qword_1B6810310);
  sub_1B64B2278();
  v56 = v66;
  v55 = v67;
  sub_1B67D9E5C();
  MEMORY[0x1B8C94F20](v48, v54, v56, v52);

  _Block_release(v52);

  (*(v70 + 8))(v56, v55);
  (*(v68 + 8))(v54, v69);
  v59(v48, v74);
  (*(v72 + 8))(v71, v73);
  (*(v62 + 8))(v60, v61);
}

unint64_t sub_1B64B164C()
{
  result = qword_1EDB1E668;
  if (!qword_1EDB1E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E668);
  }

  return result;
}

void sub_1B64B16A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v67 = a7;
  v68 = a4;
  v69 = a6;
  v70 = a5;
  v71 = a3;
  v8 = sub_1B67D90BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - v13;
  v15 = sub_1B67D906C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    (*(v16 + 16))(v19, a1, v15);
    v22 = (*(v16 + 88))(v19, v15);
    if (v22 == *MEMORY[0x1E6977C18])
    {
      (*(v16 + 96))(v19, v15);
      v66 = v21;
      v65 = *(v9 + 32);
      v65(v14, v19, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1B6813190;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      v24 = sub_1B64B164C();
      v25 = v70;
      *(v23 + 32) = v68;
      *(v23 + 40) = v25;
      v26 = MEMORY[0x1E69E6870];
      *(v23 + 96) = MEMORY[0x1E69E6810];
      *(v23 + 104) = v26;
      v27 = v69;
      *(v23 + 64) = v24;
      *(v23 + 72) = v27;
      sub_1B64B2808(&qword_1EB94B2D8, MEMORY[0x1E6977D78]);

      v28 = sub_1B67DA37C();
      *(v23 + 136) = MEMORY[0x1E69E6158];
      *(v23 + 144) = v24;
      *(v23 + 112) = v28;
      *(v23 + 120) = v29;
      sub_1B67D9C9C();
      sub_1B67D8A6C();

      (*(v9 + 16))(v12, v14, v8);
      v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v31 = swift_allocObject();
      v32 = v65;
      v33 = v66;
      *(v31 + 16) = v66;
      v32(v31 + v30, v12, v8);
      v76 = sub_1B64B2AA4;
      v77 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v73 = 1107296256;
      v34 = &block_descriptor_52;
LABEL_6:
      v74 = sub_1B64B2AA0;
      v75 = v34;
      v45 = _Block_copy(&aBlock);
      v46 = v33;

      [v67 executeOnce_];
      _Block_release(v45);

      (*(v9 + 8))(v14, v8);
      return;
    }

    if (v22 == *MEMORY[0x1E6977C10])
    {
      (*(v16 + 96))(v19, v15);
      v66 = v21;
      v65 = *(v9 + 32);
      v65(v14, v19, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1B6813190;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      v36 = sub_1B64B164C();
      v37 = v70;
      *(v35 + 32) = v68;
      *(v35 + 40) = v37;
      v38 = MEMORY[0x1E69E6870];
      *(v35 + 96) = MEMORY[0x1E69E6810];
      *(v35 + 104) = v38;
      v39 = v69;
      *(v35 + 64) = v36;
      *(v35 + 72) = v39;
      sub_1B64B2808(&qword_1EB94B2D8, MEMORY[0x1E6977D78]);

      v40 = sub_1B67DA37C();
      *(v35 + 136) = MEMORY[0x1E69E6158];
      *(v35 + 144) = v36;
      *(v35 + 112) = v40;
      *(v35 + 120) = v41;
      sub_1B67D9C9C();
      sub_1B67D8A6C();

      (*(v9 + 16))(v12, v14, v8);
      v42 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v43 = swift_allocObject();
      v44 = v65;
      v33 = v66;
      *(v43 + 16) = v66;
      v44(v43 + v42, v12, v8);
      v76 = sub_1B64B2850;
      v77 = v43;
      aBlock = MEMORY[0x1E69E9820];
      v73 = 1107296256;
      v34 = &block_descriptor_40_0;
      goto LABEL_6;
    }

    if (v22 == *MEMORY[0x1E6977C08] || v22 == *MEMORY[0x1E6977C28])
    {
      goto LABEL_10;
    }

    if (v22 == *MEMORY[0x1E6977C00])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1B6812A80;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v53 = sub_1B64B164C();
      v54 = v70;
      *(v52 + 32) = v68;
      *(v52 + 40) = v54;
      v55 = MEMORY[0x1E69E6870];
      *(v52 + 96) = MEMORY[0x1E69E6810];
      *(v52 + 104) = v55;
      v56 = v69;
      *(v52 + 64) = v53;
      *(v52 + 72) = v56;

      sub_1B67D9C9C();
      sub_1B67D8A6C();

      v57 = swift_allocObject();
      *(v57 + 16) = v21;
      v76 = sub_1B64B2854;
      v77 = v57;
      aBlock = MEMORY[0x1E69E9820];
      v73 = 1107296256;
      v74 = sub_1B64B2AA0;
      v75 = &block_descriptor_46;
      v58 = _Block_copy(&aBlock);
      v59 = v21;

      [v67 executeOnce_];

      _Block_release(v58);
      return;
    }

    if (v22 == *MEMORY[0x1E6977C20])
    {
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1B6812A80;
      *(v47 + 56) = MEMORY[0x1E69E6158];
      v48 = sub_1B64B164C();
      v49 = v70;
      *(v47 + 32) = v68;
      *(v47 + 40) = v49;
      v50 = MEMORY[0x1E69E6870];
      *(v47 + 96) = MEMORY[0x1E69E6810];
      *(v47 + 104) = v50;
      v51 = v69;
      *(v47 + 64) = v48;
      *(v47 + 72) = v51;

      sub_1B67D9C9C();
      sub_1B67D8A6C();
    }

    else
    {
      sub_1B67D9C8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1E0, &unk_1B6815028);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1B6812A80;
      *(v60 + 56) = MEMORY[0x1E69E6158];
      v61 = sub_1B64B164C();
      v62 = v70;
      *(v60 + 32) = v68;
      *(v60 + 40) = v62;
      v63 = MEMORY[0x1E69E6870];
      *(v60 + 96) = MEMORY[0x1E69E6810];
      *(v60 + 104) = v63;
      v64 = v69;
      *(v60 + 64) = v61;
      *(v60 + 72) = v64;

      sub_1B67D8A6C();

      (*(v16 + 8))(v19, v15);
    }
  }
}