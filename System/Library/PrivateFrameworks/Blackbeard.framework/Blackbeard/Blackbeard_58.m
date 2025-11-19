uint64_t sub_1E64E7ED8(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v26 = v6;
        v17 = v6 - 1;
        --v5;
        v18 = v10;
        v19 = v10;
        while (1)
        {
          v20 = v4;
          v21 = v5 + 1;
          v22 = *--v19;
          v6 = v17;
          v23 = *v17;
          v24 = sub_1E65DAD68();
          if (v24 < sub_1E65DAD68())
          {
            break;
          }

          if (v21 < v18 || v5 >= v18)
          {
            *v5 = *v19;
          }

          --v5;
          v18 = v19;
          v4 = v20;
          v17 = v6;
          if (v19 <= v20)
          {
            v10 = v19;
            v6 = v26;
            goto LABEL_40;
          }
        }

        if (v21 < v26 || v5 >= v26)
        {
          *v5 = *v6;
        }

        v4 = v20;
        v10 = v18;
      }

      while (v18 > v4 && v6 > v7);
      if (v6 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v4;
        v13 = sub_1E65DAD68();
        if (v13 >= sub_1E65DAD68())
        {
          v16 = v4 + 1;
          v15 = v4;
          v14 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v16)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v14 = v6 + 1;
          v15 = v6;
          if (v7 >= v6 && v7 < v14)
          {
            goto LABEL_16;
          }
        }

        *v7 = *v15;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v14;
          if (v14 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1E64E813C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E24A8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E61A6788(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E64E82C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64E8320(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a2;
  v42 = a5;
  v43 = a4;
  v34 = a1;
  v40 = sub_1E65D76F8();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65DA488();
  v10 = *(*(v44 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v44);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v41 = a3;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v37 = (v6 + 8);
  v38 = v12 + 16;
  v39 = v12;
  v35 = 0;
  v36 = (v12 + 8);
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_12:
    v27 = v24 | (v15 << 6);
    (*(v39 + 16))(v14, *(v41 + 48) + *(v39 + 72) * v27, v44);
    sub_1E65DA418();
    v28 = sub_1E65D76C8();
    v30 = v29;
    (*v37)(v9, v40);
    if (v28 == v43 && v30 == v42)
    {

      result = (*v36)(v14, v44);
      goto LABEL_15;
    }

    v23 = sub_1E65E6C18();

    result = (*v36)(v14, v44);
    if (v23)
    {
LABEL_15:
      *(v34 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_18:
        v32 = v41;

        return sub_1E6089D18(v34, v33, v35, v32);
      }
    }
  }

  v25 = v15;
  while (1)
  {
    v15 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      goto LABEL_18;
    }

    v26 = *(v17 + 8 * v15);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v21 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E64E863C(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v48 = sub_1E65D76F8();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65DA488();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v52 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v14 = v13 & 0x3F;
  v40 = ((1 << v13) + 63) >> 6;
  v15 = 8 * v40;
  v50 = a3;

  if (v14 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v39[0] = v39;
    v39[1] = v4;
    MEMORY[0x1EEE9AC00](v16);
    v41 = v39 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v15);
    v42 = 0;
    v4 = 0;
    v49 = a1;
    v17 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    a1 = (v18 + 63) >> 6;
    v45 = (v7 + 8);
    v46 = v11 + 2;
    v44 = (v11 + 1);
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_13:
      v24 = v21 | (v4 << 6);
      v25 = *(v49 + 48);
      v26 = v11[9];
      v43 = v24;
      v27 = v25 + v26 * v24;
      v28 = v11;
      v29 = v11[2];
      v30 = v10;
      v29(v52, v27, v10);
      v31 = v47;
      sub_1E65DA418();
      v7 = sub_1E65D76C8();
      v15 = v32;
      (*v45)(v31, v48);
      if (v7 == v51 && v15 == v50)
      {

        v10 = v30;
        (*v44)(v52, v30);
        v11 = v28;
        goto LABEL_16;
      }

      v7 = sub_1E65E6C18();

      v10 = v30;
      (*v44)(v52, v30);
      v11 = v28;
      if (v7)
      {
LABEL_16:
        *&v41[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
LABEL_19:
          v34 = sub_1E6089D18(v41, v40, v42, v49);

          goto LABEL_20;
        }
      }
    }

    v22 = v4;
    while (1)
    {
      v4 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v4 >= a1)
      {
        goto LABEL_19;
      }

      v23 = *(v17 + 8 * v4);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v37 = swift_slowAlloc();
  v38 = v50;

  v34 = sub_1E64E76CC(v37, v40, a1, v51, v38);

  MEMORY[0x1E694F1C0](v37, -1, -1);

LABEL_20:
  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t sub_1E64E8AD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E64E8B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for RouteSource(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for RouteDestination();
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64E8BE8, 0, 0);
}

uint64_t sub_1E64E8BE8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  *v1 = v7;
  v1[1] = v6;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v4, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E613DBE4(v4, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  v9 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  *(v0 + 88) = 0;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1E64E8D4C;
  v11 = *(v0 + 64);

  return RoutingContext.appendDestination(_:priority:)(v11, (v0 + 88), v9, v8);
}

uint64_t sub_1E64E8D4C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E64E8EF0;
  }

  else
  {
    v3 = sub_1E64E8E60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64E8E60()
{
  v1 = v0[6];
  sub_1E613DBE4(v0[8], type metadata accessor for RouteDestination);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E64E8EF0()
{
  v1 = v0[6];
  sub_1E613DBE4(v0[8], type metadata accessor for RouteDestination);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E64E8F80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v46 = a2;
  v47 = a3;
  v9 = type metadata accessor for AppComposer();
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A730, &qword_1E66073D8);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v44 - v14;
  v15 = sub_1E65DBEC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1E65DBCD8();
  v51 = *(v54 - 8);
  v20 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v23 = *a1;
  v49 = v22;
  v50 = v23;
  (*(v16 + 16))(v19, v46, v15);
  sub_1E65DBCC8();
  sub_1E5E1D5BC(a1, v11, type metadata accessor for AppComposer);
  v24 = *(v48 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v44 = a4;
  sub_1E5E1FA80(v11, v25 + ((v24 + 32) & ~v24));
  type metadata accessor for AppFeature();
  sub_1E64E9E70(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v48 = sub_1E64E9E70(&qword_1EE2D6BD0, MEMORY[0x1E699D270]);

  sub_1E65E4DE8();
  sub_1E5E1D5BC(v45, v11, type metadata accessor for AppComposer);
  v26 = *a5;
  v27 = a5[3];
  v28 = a5[5];
  v29 = a5[9];
  v45 = a5[7];
  v46 = v29;
  v30 = (v24 + 16) & ~v24;
  v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_1E5E1FA80(v11, v32 + v30);
  v33 = (v32 + v31);
  v34 = *(a5 + 3);
  v33[2] = *(a5 + 2);
  v33[3] = v34;
  v33[4] = *(a5 + 4);
  v35 = *(a5 + 1);
  *v33 = *a5;
  v33[1] = v35;
  v36 = (v32 + ((v31 + 87) & 0xFFFFFFFFFFFFFFF8));
  v37 = v44;
  *v36 = v47;
  v36[1] = v37;

  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1E64E9EB8;
  *(v38 + 24) = v32;

  v39 = v49;
  v41 = v54;
  v40 = v55;
  v42 = sub_1E65E4F08();

  (*(v52 + 8))(v40, v53);
  (*(v51 + 8))(v39, v41);
  return v42;
}

uint64_t sub_1E64E9490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A48, &qword_1E65F76A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1E65DBC28();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppState();
  v14 = *(v13 + 24);
  v15 = *(a4 + *(type metadata accessor for AppComposer() + 20) + 8);

  sub_1E628E904(v12);
  v16 = *(v13 + 52);
  v18[0] = a2;
  v18[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  sub_1E65E4D78();
  return sub_1E65DBB38();
}

uint64_t sub_1E64E95FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v5 = type metadata accessor for AppComposer();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65DBDF8();
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v51);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v52 = sub_1E65DBB28();
  v46 = *(v52 - 8);
  v17 = *(v46 + 64);
  v18 = MEMORY[0x1EEE9AC00](v52);
  v43 = v19;
  v44 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v22 = *(a1 + *(v6 + 28) + 8);
  sub_1E65DAE38();
  sub_1E65DAE38();
  v50 = v21;
  sub_1E65DBB08();
  sub_1E5E1D5BC(a1, v9, type metadata accessor for AppComposer);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = v23 + v8;
  v25 = a1;
  v26 = v9;
  v27 = swift_allocObject();
  sub_1E5E1FA80(v9, v27 + v23);
  v42 = v16;
  sub_1E65DBDE8();
  sub_1E5E1D5BC(v25, v9, type metadata accessor for AppComposer);
  (*(v10 + 16))(v14, v16, v51);
  v28 = v46;
  v29 = v44;
  (*(v46 + 16))(v44, v50, v52);
  v30 = (v24 + *(v10 + 80)) & ~*(v10 + 80);
  v31 = (v45 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v28 + 80) + v31 + 16) & ~*(v28 + 80);
  v33 = swift_allocObject();
  sub_1E5E1FA80(v26, v33 + v23);
  v34 = v33 + v30;
  v35 = v51;
  (*(v10 + 32))(v34, v14, v51);
  v36 = (v33 + v31);
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  v38 = v29;
  v39 = v52;
  (*(v28 + 32))(v33 + v32, v38, v52);

  sub_1E65DB9B8();
  (*(v10 + 8))(v42, v35);
  return (*(v28 + 8))(v50, v39);
}

uint64_t sub_1E64E9A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v34 = a1;
  v42 = a4;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65DBEF8();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v39);
  v12 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = sub_1E65DBFB8();
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v38 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v33 - v19;
  v20 = *MEMORY[0x1E699D370];
  (*(v21 + 104))();
  sub_1E5E1D5BC(a1, v8, type metadata accessor for AppComposer);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_1E5E1FA80(v8, v23 + v22);
  sub_1E65DBEE8();
  sub_1E5E1D5BC(v34, v8, type metadata accessor for AppComposer);
  v24 = v39;
  (*(v9 + 16))(v12, v14, v39);
  v25 = (v22 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v26 = swift_allocObject();
  sub_1E5E1FA80(v8, v26 + v22);
  (*(v9 + 32))(v26 + v25, v12, v24);
  v27 = (v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  v30 = v35;
  v29 = v36;
  v31 = v37;
  (*(v35 + 16))(v38, v37, v36);

  sub_1E65DBC38();
  (*(v9 + 8))(v14, v24);
  return (*(v30 + 8))(v31, v29);
}

uint64_t sub_1E64E9DEC(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E64E9490(a1, v4, v5, v6);
}

uint64_t sub_1E64E9E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E64E9EB8(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E639E360((v1 + v4), *a1, *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1E64E9F5C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6C6C614777656976;
    v6 = 0x6E616C5077656976;
    if (a1 != 8)
    {
      v6 = 0x4174756F6B726F77;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x726F577472617473;
    if (a1 != 5)
    {
      v7 = 0x6174614377656976;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6B6E616C62;
    v2 = 0xD000000000000015;
    v3 = 0x6564695679616C70;
    if (a1 != 3)
    {
      v3 = 0x6B72614D776F6873;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x616C50646C697562;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E64EA0D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8D0, &qword_1E66079F8);
  v167 = *(v2 - 8);
  v168 = v2;
  v3 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v166 = &v135 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v5 = *(*(v161 - 8) + 64);
  MEMORY[0x1EEE9AC00](v161);
  v165 = &v135 - v6;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8D8, &qword_1E6607A00);
  v159 = *(v160 - 8);
  v7 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v135 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8E0, &qword_1E6607A08);
  v163 = *(v9 - 8);
  v164 = v9;
  v10 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v162 = &v135 - v11;
  v135 = type metadata accessor for GalleryDescriptor();
  v12 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135);
  v175 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8E8, &qword_1E6607A10);
  v156 = *(v157 - 8);
  v14 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v153 = &v135 - v15;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8F0, &qword_1E6607A18);
  v151 = *(v152 - 8);
  v16 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v149 = &v135 - v17;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A8F8, &qword_1E6607A20);
  v145 = *(v146 - 8);
  v18 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v141 = &v135 - v19;
  v144 = sub_1E65E1518();
  v142 = *(v144 - 8);
  v20 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v140 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A900, &qword_1E6607A28);
  v154 = *(v155 - 8);
  v22 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v150 = &v135 - v23;
  v174 = sub_1E65D74E8();
  v172 = *(v174 - 8);
  v24 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65D72D8();
  v176 = *(v26 - 8);
  v177 = v26;
  v27 = *(v176 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v169 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v171 = &v135 - v30;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A908, &qword_1E6607A30);
  v147 = *(v148 - 8);
  v31 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v143 = &v135 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v170 = &v135 - v35;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A910, &qword_1E6607A38);
  v138 = *(v139 - 8);
  v36 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v135 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A918, &qword_1E6607A40);
  v136 = *(v38 - 8);
  v39 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v135 - v40;
  v42 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A920, &qword_1E6607A48);
  v47 = *(v46 - 8);
  v180 = v46;
  v181 = v47;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v135 - v49;
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64F2398();
  v52 = v50;
  sub_1E65E6DA8();
  sub_1E64F0A10(v178, v45, type metadata accessor for ActionButtonDescriptor.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v68 = *v45;
          LOBYTE(v182) = 8;
          sub_1E64F2494();
          v69 = v158;
          v70 = v180;
          sub_1E65E6B18();
          LOBYTE(v182) = v68;
          sub_1E64F297C();
          v71 = v160;
          sub_1E65E6B78();
          (*(v159 + 8))(v69, v71);
          return (*(v181 + 8))(v50, v70);
        }

        else
        {
          v107 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48)];
          v109 = *v107;
          v108 = v107[1];
          v110 = v165;
          sub_1E5FAB460(v45, v165, &qword_1ED073648, &qword_1E6607560);
          LOBYTE(v182) = 9;
          sub_1E64F23EC();
          v111 = v166;
          v112 = v180;
          sub_1E65E6B18();
          LOBYTE(v182) = 0;
          sub_1E64F28D8(&qword_1ED07A928);
          v113 = v168;
          v114 = v179;
          sub_1E65E6B78();
          if (v114)
          {
            sub_1E61B73EC(v109, v108);
            (*(v167 + 8))(v111, v113);
            sub_1E5DFE50C(v110, &qword_1ED073648, &qword_1E6607560);
            return (*(v181 + 8))(v50, v112);
          }

          else
          {
            v182 = v109;
            v183 = v108;
            v184 = 1;
            sub_1E64F2928();
            sub_1E65E6B78();
            (*(v167 + 8))(v111, v113);
            sub_1E5DFE50C(v110, &qword_1ED073648, &qword_1E6607560);
            (*(v181 + 8))(v50, v112);
            return sub_1E61B73EC(v109, v108);
          }
        }
      }

      v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
      v93 = v176;
      v94 = v177;
      v95 = v169;
      (*(v176 + 32))(v169, v45, v177);
      sub_1E64F0A78(&v45[v92], v175, type metadata accessor for GalleryDescriptor);
      LOBYTE(v182) = 7;
      sub_1E64F253C();
      v96 = v162;
      v74 = v180;
      sub_1E65E6B18();
      LOBYTE(v182) = 0;
      sub_1E5DF4934(&qword_1EE2D7290, MEMORY[0x1E6968848]);
      v97 = v164;
      v98 = v179;
      sub_1E65E6B78();
      if (v98)
      {
        (*(v163 + 8))(v96, v97);
        sub_1E64F0AE0(v175, type metadata accessor for GalleryDescriptor);
        (*(v93 + 8))(v95, v94);
      }

      else
      {
        LOBYTE(v182) = 1;
        sub_1E5DF4934(&qword_1ED07A940, type metadata accessor for GalleryDescriptor);
        v126 = v175;
        sub_1E65E6B78();
        (*(v163 + 8))(v96, v97);
        sub_1E64F0AE0(v126, type metadata accessor for GalleryDescriptor);
        (*(v93 + 8))(v169, v94);
      }

      v99 = *(v181 + 8);
      v100 = v50;
      return v99(v100, v74);
    }

    if (EnumCaseMultiPayload == 5)
    {
      v76 = *v45;
      v75 = *(v45 + 1);
      v77 = v45[16];
      LOBYTE(v182) = 5;
      sub_1E64F2638();
      v78 = v149;
      v74 = v180;
      sub_1E65E6B18();
      LOBYTE(v182) = 0;
      v79 = v152;
      v80 = v179;
      sub_1E65E6B48();

      if (!v80)
      {
        LOBYTE(v182) = v77;
        v184 = 1;
        sub_1E64F2A24();
        sub_1E65E6B78();
      }

      v130 = &v183;
    }

    else
    {
      v123 = *v45;
      v122 = *(v45 + 1);
      v124 = v45[16];
      LOBYTE(v182) = 6;
      sub_1E64F2590();
      v78 = v153;
      v74 = v180;
      sub_1E65E6B18();
      LOBYTE(v182) = 0;
      v79 = v157;
      v125 = v179;
      sub_1E65E6B48();

      if (!v125)
      {
        LOBYTE(v182) = v124;
        v184 = 1;
        sub_1E64F29D0();
        sub_1E65E6B78();
      }

      v130 = &v185;
    }

    (*(*(v130 - 32) + 8))(v78, v79);
LABEL_39:
    v99 = *(v181 + 8);
    v100 = v50;
    return v99(v100, v74);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
      v82 = *&v45[v81[12]];
      v83 = &v45[v81[16]];
      v84 = *(v83 + 1);
      v177 = *v83;
      v178 = v82;
      v85 = &v45[v81[20]];
      v86 = *(v85 + 1);
      v176 = *v85;
      v87 = v170;
      sub_1E5FAB460(v45, v170, &qword_1ED073718, &qword_1E65ED978);
      LOBYTE(v182) = 2;
      sub_1E64F2788();
      v88 = v143;
      v89 = v180;
      sub_1E65E6B18();
      LOBYTE(v182) = 0;
      sub_1E65E20A8();
      sub_1E5DF4934(&qword_1ED07A950, MEMORY[0x1E699F1B8]);
      v90 = v148;
      v91 = v179;
      sub_1E65E6B38();
      if (v91)
      {

        (*(v147 + 8))(v88, v90);
        sub_1E5DFE50C(v87, &qword_1ED073718, &qword_1E65ED978);
      }

      else
      {
        LOBYTE(v182) = 1;
        sub_1E65E6B68();
        LOBYTE(v182) = 2;
        sub_1E65E6B28();

        LOBYTE(v182) = 3;
        sub_1E65E6B28();
        v134 = v170;

        (*(v147 + 8))(v88, v90);
        sub_1E5DFE50C(v134, &qword_1ED073718, &qword_1E65ED978);
      }

      return (*(v181 + 8))(v52, v89);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
      v55 = &v45[*(v54 + 48)];
      v57 = *v55;
      v56 = v55[1];
      v170 = v57;
      v175 = v56;
      v58 = *(v54 + 64);
      v60 = v176;
      v59 = v177;
      v61 = v171;
      (*(v176 + 32))(v171, v45, v177);
      v62 = v172;
      (*(v172 + 32))(v173, &v45[v58], v174);
      LOBYTE(v182) = 3;
      sub_1E64F2734();
      v63 = v150;
      v64 = v180;
      sub_1E65E6B18();
      LOBYTE(v182) = 0;
      sub_1E5DF4934(&qword_1EE2D7290, MEMORY[0x1E6968848]);
      v178 = v50;
      v65 = v155;
      v66 = v179;
      sub_1E65E6B78();
      if (v66)
      {

        (*(v154 + 8))(v63, v65);
        (*(v62 + 8))(v173, v174);
        (*(v60 + 8))(v61, v59);
        return (*(v181 + 8))(v178, v64);
      }

      else
      {
        v127 = v64;
        LOBYTE(v182) = 1;
        v128 = v174;
        v129 = v63;
        sub_1E65E6B48();

        LOBYTE(v182) = 2;
        sub_1E5DF4934(&qword_1ED073F50, MEMORY[0x1E6968FB0]);
        v131 = v173;
        sub_1E65E6B78();
        v133 = v171;
        v132 = v172;
        (*(v154 + 8))(v129, v65);
        (*(v132 + 8))(v131, v128);
        (*(v60 + 8))(v133, v177);
        return (*(v181 + 8))(v178, v127);
      }
    }

    else
    {
      v101 = v142;
      v102 = v140;
      v103 = v144;
      (*(v142 + 32))(v140, v45, v144);
      LOBYTE(v182) = 4;
      sub_1E64F26E0();
      v104 = v141;
      v105 = v180;
      sub_1E65E6B18();
      sub_1E5DF4934(&qword_1ED074C10, MEMORY[0x1E699E860]);
      v106 = v146;
      sub_1E65E6B78();
      (*(v145 + 8))(v104, v106);
      (*(v101 + 8))(v102, v103);
      return (*(v181 + 8))(v50, v105);
    }
  }

  if (!EnumCaseMultiPayload)
  {
    v72 = *v45;
    v73 = *(v45 + 1);
    LOBYTE(v182) = 0;
    sub_1E64F2884();
    v74 = v180;
    sub_1E65E6B18();
    sub_1E65E6B48();

    (*(v136 + 8))(v41, v38);
    goto LABEL_39;
  }

  v115 = *v45;
  v117 = *(v45 + 1);
  v116 = *(v45 + 2);
  LOBYTE(v182) = 1;
  sub_1E64F27DC();
  v118 = v180;
  v119 = v137;
  sub_1E65E6B18();
  LOBYTE(v182) = v115;
  v184 = 0;
  sub_1E64F2A78();
  v120 = v139;
  v121 = v179;
  sub_1E65E6B78();
  if (!v121)
  {
    LOBYTE(v182) = 1;
    sub_1E65E6B28();
  }

  (*(v138 + 8))(v119, v120);
  return (*(v181 + 8))(v50, v118);
}

uint64_t sub_1E64EB8E8(uint64_t a1)
{
  v88 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v2 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v77 - v3;
  v83 = type metadata accessor for GalleryDescriptor();
  v4 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E1518();
  v78 = *(v6 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E65D74E8();
  v79 = *(v81 - 8);
  v10 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D72D8();
  v86 = *(v13 - 8);
  v87 = v13;
  v14 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E20A8();
  v77 = *(v16 - 8);
  v17 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v77 - v25;
  v27 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E64F0A10(v1, v30, type metadata accessor for ActionButtonDescriptor.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
        v58 = v85;
        v57 = v86;
        v59 = v87;
        (*(v86 + 32))(v85, v30, v87);
        v60 = v84;
        sub_1E64F0A78(&v30[v56], v84, type metadata accessor for GalleryDescriptor);
        MEMORY[0x1E694E740](7);
        sub_1E5DF4934(&qword_1ED0734B0, MEMORY[0x1E6968848]);
        sub_1E65E5B48();
        v61 = *v60;
        v62 = *(v60 + 8);
        sub_1E65E5D78();
        v63 = *(v60 + 16);
        sub_1E65E0018();
        v64 = *(v60 + 17);
        sub_1E65DFB58();
        sub_1E65E5D78();

        v65 = v60 + *(v83 + 28);
        sub_1E65E5B48();
        (*(v57 + 8))(v58, v59);
        return sub_1E64F0AE0(v60, type metadata accessor for GalleryDescriptor);
      }

      if (EnumCaseMultiPayload == 8)
      {
        v42 = *v30;
        MEMORY[0x1E694E740](8);
        return MEMORY[0x1E694E740](v42);
      }

      v67 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48)];
      v68 = *v67;
      v69 = v67[1];
      v70 = v82;
      sub_1E5FAB460(v30, v82, &qword_1ED073648, &qword_1E6607560);
      MEMORY[0x1E694E740](9);
      sub_1E65DE4A8();
      sub_1E65D8CC8();
      sub_1E61B73EC(v68, v69);
      sub_1E65E5D78();

      v71 = v70;
      v72 = &qword_1ED073648;
      v73 = &qword_1E6607560;
      return sub_1E5DFE50C(v71, v72, v73);
    }

    v45 = *v30;
    v46 = *(v30 + 1);
    v47 = v30[16];
    if (EnumCaseMultiPayload == 5)
    {
      MEMORY[0x1E694E740](5);
      sub_1E65E5D78();

      sub_1E65E1268();
    }

    else
    {
      MEMORY[0x1E694E740](6);
      sub_1E65E5D78();

      sub_1E65D94E8();
    }

LABEL_22:
    sub_1E65E5D78();
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v43 = *v30;
      v44 = *(v30 + 1);
      MEMORY[0x1E694E740](0);
      sub_1E65E5D78();
    }

    v75 = *(v30 + 1);
    v74 = *(v30 + 2);
    v76 = *v30;
    MEMORY[0x1E694E740](1);
    sub_1E65E2328();
    if (!v74)
    {
      return sub_1E65E6D48();
    }

    sub_1E65E6D48();
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
    v49 = *&v30[v48[12]];
    v50 = &v30[v48[16]];
    v52 = *v50;
    v51 = *(v50 + 1);
    v53 = &v30[v48[20]];
    v54 = *(v53 + 1);
    v87 = *v53;
    sub_1E5FAB460(v30, v26, &qword_1ED073718, &qword_1E65ED978);
    MEMORY[0x1E694E740](2);
    sub_1E633EE38(v26, v24);
    v55 = v77;
    if ((*(v77 + 48))(v24, 1, v16) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      (*(v55 + 32))(v19, v24, v16);
      sub_1E65E6D48();
      sub_1E5DF4934(&qword_1ED07A7E0, MEMORY[0x1E699F1B8]);
      sub_1E65E5B48();
      (*(v55 + 8))(v19, v16);
    }

    MEMORY[0x1E694E740](v49);
    if (v51)
    {
      sub_1E65E6D48();
      sub_1E65E5D78();

      if (v54)
      {
LABEL_26:
        sub_1E65E6D48();
        sub_1E65E5D78();

LABEL_29:
        v72 = &qword_1ED073718;
        v73 = &qword_1E65ED978;
        v71 = v26;
        return sub_1E5DFE50C(v71, v72, v73);
      }
    }

    else
    {
      sub_1E65E6D48();
      if (v54)
      {
        goto LABEL_26;
      }
    }

    sub_1E65E6D48();
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
    v33 = &v30[*(v32 + 48)];
    v34 = v33[1];
    v84 = *v33;
    v35 = *(v32 + 64);
    v37 = v85;
    v36 = v86;
    v38 = v87;
    (*(v86 + 32))(v85, v30, v87);
    v39 = v79;
    v40 = v81;
    (*(v79 + 32))(v12, &v30[v35], v81);
    MEMORY[0x1E694E740](3);
    sub_1E5DF4934(&qword_1ED0734B0, MEMORY[0x1E6968848]);
    sub_1E65E5B48();
    sub_1E65E5D78();

    sub_1E5DF4934(&qword_1ED073F58, MEMORY[0x1E6968FB0]);
    sub_1E65E5B48();
    (*(v39 + 8))(v12, v40);
    return (*(v36 + 8))(v37, v38);
  }

  else
  {
    v66 = v78;
    (*(v78 + 32))(v9, v30, v6);
    MEMORY[0x1E694E740](4);
    sub_1E5DF4934(&qword_1EE2D64F0, MEMORY[0x1E699E860]);
    sub_1E65E5B48();
    return (*(v66 + 8))(v9, v6);
  }
}

uint64_t sub_1E64EC3CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A800, &qword_1E66079A0);
  v175 = *(v173 - 8);
  v3 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v183 = &v145 - v4;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A808, &qword_1E66079A8);
  v171 = *(v170 - 8);
  v5 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v181 = &v145 - v6;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A810, &qword_1E66079B0);
  v174 = *(v172 - 8);
  v7 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v182 = &v145 - v8;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A818, &qword_1E66079B8);
  v169 = *(v166 - 8);
  v9 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v188 = &v145 - v10;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A820, &qword_1E66079C0);
  v162 = *(v164 - 8);
  v11 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v187 = &v145 - v12;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A828, &qword_1E66079C8);
  v160 = *(v161 - 8);
  v13 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v179 = &v145 - v14;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A830, &qword_1E66079D0);
  v168 = *(v167 - 8);
  v15 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v180 = &v145 - v16;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A838, &qword_1E66079D8);
  v163 = *(v165 - 8);
  v17 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v186 = &v145 - v18;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A840, &qword_1E66079E0);
  v158 = *(v159 - 8);
  v19 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v178 = &v145 - v20;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A848, &qword_1E66079E8);
  v155 = *(v156 - 8);
  v21 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v177 = &v145 - v22;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A850, &qword_1E66079F0);
  v185 = *(v191 - 8);
  v23 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v25 = &v145 - v24;
  v184 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v26 = *(*(v184 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v184);
  v157 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v153 = &v145 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v176 = &v145 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v152 = (&v145 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v151 = (&v145 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v154 = &v145 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v145 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v145 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v145 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = (&v145 - v49);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v145 - v51;
  v53 = a1[3];
  v54 = a1[4];
  v192 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_1E64F2398();
  v190 = v25;
  v55 = v193;
  sub_1E65E6D98();
  if (v55)
  {
    goto LABEL_12;
  }

  v147 = v50;
  v146 = v47;
  v148 = v41;
  v149 = v44;
  v57 = v186;
  v56 = v187;
  v58 = v188;
  v193 = 0;
  v150 = v52;
  v59 = v189;
  v60 = v190;
  v61 = v191;
  v62 = sub_1E65E6AF8();
  v63 = (2 * *(v62 + 16)) | 1;
  v194 = v62;
  v195 = v62 + 32;
  v196 = 0;
  v197 = v63;
  v64 = sub_1E5FBE3F8();
  if (v64 == 10 || v196 != v197 >> 1)
  {
    v69 = sub_1E65E68F8();
    swift_allocError();
    v71 = v70;
    v72 = v61;
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v71 = v184;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x1E69E6AF8], v69);
    swift_willThrow();
    (*(v185 + 8))(v60, v72);
LABEL_11:
    swift_unknownObjectRelease();
LABEL_12:
    v74 = v192;
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  if (v64 > 4u)
  {
    if (v64 <= 6u)
    {
      if (v64 == 5)
      {
        v199 = 5;
        sub_1E64F2638();
        v82 = v193;
        sub_1E65E6A68();
        if (v82)
        {
          goto LABEL_37;
        }

        v199 = 0;
        v83 = v164;
        v84 = sub_1E65E6AA8();
        v111 = v110;
        v193 = v84;
        v198 = 1;
        sub_1E64F268C();
        sub_1E65E6AD8();
        (*(v162 + 8))(v56, v83);
        (*(v185 + 8))(v60, v61);
        swift_unknownObjectRelease();
        v112 = v199;
        v113 = v151;
        *v151 = v193;
        v113[1] = v111;
        *(v113 + 16) = v112;
      }

      else
      {
        v199 = 6;
        sub_1E64F2590();
        v94 = v193;
        sub_1E65E6A68();
        if (v94)
        {
          goto LABEL_37;
        }

        v199 = 0;
        v95 = v166;
        v96 = sub_1E65E6AA8();
        v120 = v119;
        v193 = v96;
        v198 = 1;
        sub_1E64F25E4();
        sub_1E65E6AD8();
        (*(v169 + 8))(v58, v95);
        (*(v185 + 8))(v60, v61);
        swift_unknownObjectRelease();
        v132 = v199;
        v113 = v152;
        *v152 = v193;
        v113[1] = v120;
        *(v113 + 16) = v132;
      }

      swift_storeEnumTagMultiPayload();
      v109 = v113;
      goto LABEL_43;
    }

    if (v64 == 7)
    {
      v199 = 7;
      sub_1E64F253C();
      v87 = v193;
      sub_1E65E6A68();
      if (!v87)
      {
        sub_1E65D72D8();
        v199 = 0;
        sub_1E5DF4934(&qword_1ED0734A8, MEMORY[0x1E6968848]);
        v88 = v172;
        sub_1E65E6AD8();
        v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
        type metadata accessor for GalleryDescriptor();
        v199 = 1;
        sub_1E5DF4934(&qword_1ED07A888, type metadata accessor for GalleryDescriptor);
        v100 = v176;
        v101 = v182;
        sub_1E65E6AD8();
        (*(v174 + 8))(v101, v88);
        (*(v185 + 8))(v60, v61);
        swift_unknownObjectRelease();
LABEL_39:
        swift_storeEnumTagMultiPayload();
        v109 = v100;
        goto LABEL_43;
      }

LABEL_37:
      (*(v185 + 8))(v60, v61);
      goto LABEL_11;
    }

    if (v64 != 8)
    {
      v199 = 9;
      sub_1E64F23EC();
      v91 = v193;
      sub_1E65E6A68();
      if (v91)
      {
        (*(v185 + 8))(v60, v61);
        swift_unknownObjectRelease();
        v74 = v192;
        return __swift_destroy_boxed_opaque_existential_1(v74);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
      v199 = 0;
      sub_1E64F28D8(&qword_1ED07A860);
      v97 = v157;
      v98 = v173;
      sub_1E65E6AD8();
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48);
      v199 = 1;
      sub_1E64F2440();
      v104 = v183;
      sub_1E65E6AD8();
      (*(v175 + 8))(v104, v98);
      (*(v185 + 8))(v60, v61);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v109 = v97;
      goto LABEL_43;
    }

    v199 = 8;
    sub_1E64F2494();
    v76 = v181;
    v77 = v193;
    sub_1E65E6A68();
    if (v77)
    {
      goto LABEL_37;
    }

    sub_1E64F24E8();
    v78 = v170;
    sub_1E65E6AD8();
    (*(v171 + 8))(v76, v78);
    (*(v185 + 8))(v60, v61);
    swift_unknownObjectRelease();
    v102 = v153;
    *v153 = v199;
LABEL_40:
    swift_storeEnumTagMultiPayload();
    v109 = v102;
    goto LABEL_43;
  }

  if (v64 > 1u)
  {
    v65 = v193;
    if (v64 == 2)
    {
      v199 = 2;
      sub_1E64F2788();
      sub_1E65E6A68();
      if (!v65)
      {
        sub_1E65E20A8();
        v199 = 0;
        sub_1E5DF4934(&qword_1ED07A8C0, MEMORY[0x1E699F1B8]);
        v85 = v165;
        sub_1E65E6A98();
        v86 = v185;
        v199 = 1;
        v121 = sub_1E65E6AC8();
        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
        *&v149[v122[12]] = v121;
        v199 = 2;
        v123 = sub_1E65E6A88();
        v133 = v57;
        v134 = v60;
        v135 = v61;
        v136 = &v149[v122[16]];
        *v136 = v123;
        v136[1] = v137;
        v199 = 3;
        v138 = sub_1E65E6A88();
        v193 = v139;
        v140 = v138;
        v128 = v149;
        v141 = &v149[v122[20]];
        (*(v163 + 8))(v133, v85);
        (*(v86 + 8))(v134, v135);
        swift_unknownObjectRelease();
        v142 = v193;
        *v141 = v140;
        v141[1] = v142;
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v64 == 3)
    {
      v199 = 3;
      sub_1E64F2734();
      v66 = v180;
      sub_1E65E6A68();
      if (!v65)
      {
        sub_1E65D72D8();
        v199 = 0;
        sub_1E5DF4934(&qword_1ED0734A8, MEMORY[0x1E6968848]);
        v67 = v167;
        sub_1E65E6AD8();
        v68 = v185;
        v199 = 1;
        v124 = sub_1E65E6AA8();
        v126 = v125;
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
        v128 = v148;
        v129 = &v148[*(v127 + 48)];
        v193 = *(v127 + 64);
        *v129 = v124;
        v129[1] = v126;
        v188 = v126;
        sub_1E65D74E8();
        v199 = 2;
        sub_1E5DF4934(&qword_1ED073F38, MEMORY[0x1E6968FB0]);
        sub_1E65E6AD8();
        (*(v168 + 8))(v66, v67);
        (*(v68 + 8))(v190, v191);
        swift_unknownObjectRelease();
LABEL_42:
        swift_storeEnumTagMultiPayload();
        v109 = v128;
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    v199 = 4;
    sub_1E64F26E0();
    v89 = v179;
    sub_1E65E6A68();
    if (!v65)
    {
      sub_1E65E1518();
      sub_1E5DF4934(&qword_1ED074C08, MEMORY[0x1E699E860]);
      v100 = v154;
      v90 = v161;
      sub_1E65E6AD8();
      (*(v160 + 8))(v89, v90);
      (*(v185 + 8))(v60, v61);
      swift_unknownObjectRelease();
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v79 = v193;
  if (v64)
  {
    v199 = 1;
    sub_1E64F27DC();
    v92 = v178;
    sub_1E65E6A68();
    if (v79)
    {
      goto LABEL_37;
    }

    v198 = 0;
    sub_1E64F2830();
    v93 = v159;
    sub_1E65E6AD8();
    v114 = v60;
    v115 = v61;
    v116 = v199;
    v198 = 1;
    v117 = sub_1E65E6A88();
    v118 = v92;
    v131 = v130;
    (*(v158 + 8))(v118, v93);
    (*(v185 + 8))(v114, v115);
    swift_unknownObjectRelease();
    v102 = v146;
    *v146 = v116;
    *(v102 + 1) = v117;
    *(v102 + 2) = v131;
    goto LABEL_40;
  }

  v199 = 0;
  sub_1E64F2884();
  v80 = v177;
  sub_1E65E6A68();
  if (v79)
  {
    goto LABEL_37;
  }

  v81 = v156;
  v105 = sub_1E65E6AA8();
  v107 = v106;
  (*(v155 + 8))(v80, v81);
  (*(v185 + 8))(v60, v61);
  swift_unknownObjectRelease();
  v108 = v147;
  *v147 = v105;
  v108[1] = v107;
  swift_storeEnumTagMultiPayload();
  v109 = v108;
LABEL_43:
  v143 = v150;
  sub_1E64F0A78(v109, v150, type metadata accessor for ActionButtonDescriptor.Kind);
  v144 = v192;
  sub_1E64F0A78(v143, v59, type metadata accessor for ActionButtonDescriptor.Kind);
  return __swift_destroy_boxed_opaque_existential_1(v144);
}

uint64_t sub_1E64EE090(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A7D8, &qword_1E6607968);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64F09BC();
  sub_1E65E6DA8();
  v11[15] = 0;
  sub_1E65D76F8();
  sub_1E5DF4934(&qword_1EE2D71B0, MEMORY[0x1E69695A8]);
  sub_1E65E6B78();
  if (!v1)
  {
    v9 = *(type metadata accessor for ActionButtonDescriptor(0) + 20);
    v11[14] = 1;
    type metadata accessor for ActionButtonDescriptor.Kind(0);
    sub_1E5DF4934(&qword_1EE2D8EC0, type metadata accessor for ActionButtonDescriptor.Kind);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E64EE290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65D76F8();
  v26 = *(v30 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A7C8, &qword_1E6607960);
  v29 = *(v31 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ActionButtonDescriptor(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64F09BC();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v33 = 0;
  sub_1E5DF4934(&qword_1ED073B78, MEMORY[0x1E69695A8]);
  v18 = v28;
  v19 = v30;
  sub_1E65E6AD8();
  (*(v17 + 32))(v24, v18, v19);
  v32 = 1;
  sub_1E5DF4934(&qword_1ED07A7D0, type metadata accessor for ActionButtonDescriptor.Kind);
  sub_1E65E6AD8();
  (*(v29 + 8))(v11, v31);
  v20 = v24;
  sub_1E64F0A78(v6, &v24[*(v23 + 20)], type metadata accessor for ActionButtonDescriptor.Kind);
  sub_1E64F0A10(v20, v25, type metadata accessor for ActionButtonDescriptor);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E64F0AE0(v20, type metadata accessor for ActionButtonDescriptor);
}

uint64_t sub_1E64EE6A4(uint64_t a1)
{
  v2 = sub_1E64F2884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EE6E0(uint64_t a1)
{
  v2 = sub_1E64F2884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EE71C()
{
  v1 = 0x74616469646E6163;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x6D614E6567616D69;
  }

  if (*v0)
  {
    v1 = 0x7865646E69;
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

uint64_t sub_1E64EE790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E64F37EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E64EE7B8(uint64_t a1)
{
  v2 = sub_1E64F2788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EE7F4(uint64_t a1)
{
  v2 = sub_1E64F2788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EE830()
{
  if (*v0)
  {
    result = 0x656C746974;
  }

  else
  {
    result = 0x6E656D6563616C70;
  }

  *v0;
  return result;
}

uint64_t sub_1E64EE86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E64EE94C(uint64_t a1)
{
  v2 = sub_1E64F27DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EE988(uint64_t a1)
{
  v2 = sub_1E64F27DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EE9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E64F3958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E64EE9F4(uint64_t a1)
{
  v2 = sub_1E64F2398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EEA30(uint64_t a1)
{
  v2 = sub_1E64F2398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEA6C()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E696D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69546E6F69746361;
  }
}

uint64_t sub_1E64EEADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E64F3CB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E64EEB04(uint64_t a1)
{
  v2 = sub_1E64F2734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EEB40(uint64_t a1)
{
  v2 = sub_1E64F2734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEB98(uint64_t a1)
{
  v2 = sub_1E64F26E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EEBD4(uint64_t a1)
{
  v2 = sub_1E64F26E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E64EEC10()
{
  if (*v0)
  {
    result = 0x6E656D6563616C70;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1E64EEC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E6618910 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E65E6C18();

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

uint64_t sub_1E64EED44(uint64_t a1)
{
  v2 = sub_1E64F2638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EED80(uint64_t a1)
{
  v2 = sub_1E64F2638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEDBC()
{
  if (*v0)
  {
    result = 0x636E657265666572;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1E64EEE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E64EEEF4(uint64_t a1)
{
  v2 = sub_1E64F2590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EEF30(uint64_t a1)
{
  v2 = sub_1E64F2590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EEF6C()
{
  if (*v0)
  {
    result = 0x7470697263736564;
  }

  else
  {
    result = 0x69546E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1E64EEFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E64EF09C(uint64_t a1)
{
  v2 = sub_1E64F253C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EF0D8(uint64_t a1)
{
  v2 = sub_1E64F253C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EF114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E64EF1A4(uint64_t a1)
{
  v2 = sub_1E64F2494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EF1E0(uint64_t a1)
{
  v2 = sub_1E64F2494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EF21C()
{
  if (*v0)
  {
    result = 0x437363697274656DLL;
  }

  else
  {
    result = 0x747865746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1E64EF264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x437363697274656DLL && a2 == 0xEE00747865746E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E64EF348(uint64_t a1)
{
  v2 = sub_1E64F23EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EF384(uint64_t a1)
{
  v2 = sub_1E64F23EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EF3F0()
{
  sub_1E65E6D28();
  sub_1E64EB8E8(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E64EF434()
{
  sub_1E65E6D28();
  sub_1E64EB8E8(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E64EF470()
{
  if (*v0)
  {
    result = 1684957547;
  }

  else
  {
    result = 0x4B747865746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1E64EF4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B747865746E6F63 && a2 == 0xEA00000000007965;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E64EF58C(uint64_t a1)
{
  v2 = sub_1E64F09BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EF5C8(uint64_t a1)
{
  v2 = sub_1E64F09BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EF634(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65D76F8();
  sub_1E5DF4934(&qword_1EE2D71A8, MEMORY[0x1E69695A8]);
  sub_1E65E5B48();
  v3 = v1 + *(a1 + 20);
  sub_1E64EB8E8(v5);
  return sub_1E65E6D78();
}

uint64_t sub_1E64EF6D8(uint64_t a1, uint64_t a2)
{
  sub_1E65D76F8();
  sub_1E5DF4934(&qword_1EE2D71A8, MEMORY[0x1E69695A8]);
  sub_1E65E5B48();
  v5 = v2 + *(a2 + 20);
  return sub_1E64EB8E8(a1);
}

uint64_t sub_1E64EF764(uint64_t a1, uint64_t a2)
{
  sub_1E65E6D28();
  sub_1E65D76F8();
  sub_1E5DF4934(&qword_1EE2D71A8, MEMORY[0x1E69695A8]);
  sub_1E65E5B48();
  v4 = v2 + *(a2 + 20);
  sub_1E64EB8E8(v6);
  return sub_1E65E6D78();
}

uint64_t sub_1E64EF804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E65D76D8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_1E64E9F58(a1 + v6, a2 + v6);
}

uint64_t sub_1E64EF86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (a2 + *(a1 + 20));
  *v2 = 0x323232323232;
  v2[1] = 0xE600000000000000;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();

  return sub_1E65D76E8();
}

uint64_t sub_1E64EF8EC()
{
  if (*v0)
  {
    return 0x6C6C616D73;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_1E64EF918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656772616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E64EF9EC(uint64_t a1)
{
  v2 = sub_1E64EFE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EFA28(uint64_t a1)
{
  v2 = sub_1E64EFE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EFA64(uint64_t a1)
{
  v2 = sub_1E64EFEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EFAA0(uint64_t a1)
{
  v2 = sub_1E64EFEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64EFADC(uint64_t a1)
{
  v2 = sub_1E64EFE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64EFB18(uint64_t a1)
{
  v2 = sub_1E64EFE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewPlanButtonPlacement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A738, &qword_1E66073F0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A740, &qword_1E66073F8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A748, &qword_1E6607400);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64EFE04();
  sub_1E65E6DA8();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E64EFE58();
    v18 = v22;
    sub_1E65E6B18();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E64EFEAC();
    sub_1E65E6B18();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E64EFE04()
{
  result = qword_1ED07A750;
  if (!qword_1ED07A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A750);
  }

  return result;
}

unint64_t sub_1E64EFE58()
{
  result = qword_1ED07A758;
  if (!qword_1ED07A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A758);
  }

  return result;
}

unint64_t sub_1E64EFEAC()
{
  result = qword_1ED07A760;
  if (!qword_1ED07A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A760);
  }

  return result;
}

uint64_t ViewPlanButtonPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

uint64_t ViewPlanButtonPlacement.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A768, &qword_1E6607408);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A770, &qword_1E6607410);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A778, &unk_1E6607418);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E64EFE04();
  v16 = v36;
  sub_1E65E6D98();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E65E6AF8();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E5FBE3F0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E65E68F8();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v26 = &type metadata for ViewPlanButtonPlacement;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E64EFE58();
        sub_1E65E6A68();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E64EFEAC();
        sub_1E65E6A68();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_1E64F0464()
{
  result = qword_1ED07A780;
  if (!qword_1ED07A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A780);
  }

  return result;
}

void sub_1E64F0520(uint64_t a1)
{
  if (!qword_1EE2D62A8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073718, &qword_1E65ED978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2D62A8);
    }
  }
}

void sub_1E64F0650()
{
  if (!qword_1EE2D64F8)
  {
    v0 = sub_1E65E1518();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D64F8);
    }
  }
}

void sub_1E64F0698()
{
  if (!qword_1EE2D72A8)
  {
    sub_1E65D72D8();
    type metadata accessor for GalleryDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D72A8);
    }
  }
}

unint64_t sub_1E64F0758()
{
  result = qword_1ED07A790;
  if (!qword_1ED07A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A790);
  }

  return result;
}

unint64_t sub_1E64F07B0()
{
  result = qword_1ED07A798;
  if (!qword_1ED07A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A798);
  }

  return result;
}

unint64_t sub_1E64F0808()
{
  result = qword_1ED07A7A0;
  if (!qword_1ED07A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7A0);
  }

  return result;
}

unint64_t sub_1E64F0860()
{
  result = qword_1ED07A7A8;
  if (!qword_1ED07A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7A8);
  }

  return result;
}

unint64_t sub_1E64F08B8()
{
  result = qword_1ED07A7B0;
  if (!qword_1ED07A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7B0);
  }

  return result;
}

unint64_t sub_1E64F0910()
{
  result = qword_1ED07A7B8;
  if (!qword_1ED07A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7B8);
  }

  return result;
}

unint64_t sub_1E64F0968()
{
  result = qword_1ED07A7C0;
  if (!qword_1ED07A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A7C0);
  }

  return result;
}

unint64_t sub_1E64F09BC()
{
  result = qword_1EE2D8FA8;
  if (!qword_1EE2D8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8FA8);
  }

  return result;
}

uint64_t sub_1E64F0A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E64F0A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E64F0AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E64F0B40(uint64_t a1, void *a2)
{
  v230 = a1;
  v231 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v216 = &v205 - v4;
  v205 = type metadata accessor for GalleryDescriptor();
  v5 = *(*(v205 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v205);
  v215 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v217 = &v205 - v8;
  v9 = sub_1E65E1518();
  v219 = *(v9 - 8);
  v220 = v9;
  v10 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v209 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D74E8();
  v226 = *(v12 - 8);
  v227 = v12;
  v13 = v226[8];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v214 = &v205 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v225 = &v205 - v16;
  v17 = sub_1E65D72D8();
  v18 = *(v17 - 8);
  v228 = v17;
  v229 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v213 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v218 = &v205 - v22;
  v23 = sub_1E65E20A8();
  v211 = *(v23 - 8);
  v212 = v23;
  v24 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v206 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v207 = &v205 - v28;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A7E8, &qword_1E6607990);
  v29 = *(*(v208 - 8) + 64);
  MEMORY[0x1EEE9AC00](v208);
  v210 = &v205 - v30;
  v31 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v224 = &v205 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v221 = &v205 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v223 = &v205 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v205 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v205 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v205 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v222 = &v205 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v205 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v205 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = (&v205 - v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A7F0, &qword_1E6607998);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x1EEE9AC00](v58 - 8);
  v62 = &v205 - v61;
  v63 = &v205 + *(v60 + 56) - v61;
  sub_1E64F0A10(v230, &v205 - v61, type metadata accessor for ActionButtonDescriptor.Kind);
  v64 = v231;
  v231 = v63;
  sub_1E64F0A10(v64, v63, type metadata accessor for ActionButtonDescriptor.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v66 = v222;
          sub_1E64F0A10(v62, v222, type metadata accessor for ActionButtonDescriptor.Kind);
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
          v68 = *(v67 + 48);
          v70 = *(v66 + v68);
          v69 = *(v66 + v68 + 8);
          v71 = *(v67 + 64);
          v72 = v231;
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v230 = v62;
            v73 = *(v72 + v68 + 8);
            v220 = *(v72 + v68);
            v221 = v70;
            v223 = v73;
            v224 = v69;
            v75 = v228;
            v74 = v229;
            v76 = v218;
            (*(v229 + 32))(v218, v72, v228);
            v77 = v226;
            v78 = v226[4];
            v79 = v227;
            v78(v225, v66 + v71, v227);
            v80 = v214;
            v78(v214, v72 + v71, v79);
            v81 = sub_1E65D7288();
            v82 = *(v74 + 8);
            v83 = v75;
            v82(v66, v75);
            if (v81)
            {
              if (v221 == v220 && v224 == v223)
              {

                v85 = v226;
                v84 = v227;
                v86 = v225;
                v87 = v218;
LABEL_95:
                v91 = sub_1E65D7468();
                v196 = v85[1];
                v196(v80, v84);
                v196(v86, v84);
                v82(v87, v83);
                sub_1E64F0AE0(v230, type metadata accessor for ActionButtonDescriptor.Kind);
                return v91 & 1;
              }

              v195 = sub_1E65E6C18();

              v85 = v226;
              v84 = v227;
              v86 = v225;
              v87 = v218;
              if (v195)
              {
                goto LABEL_95;
              }

              v198 = v226[1];
              v198(v80, v227);
              v198(v86, v84);
              v82(v87, v83);
            }

            else
            {

              v189 = v77[1];
              v189(v80, v79);
              v189(v225, v79);
              v82(v76, v75);
            }

            goto LABEL_112;
          }

          (v226[1])(v66 + v71, v227);

          (*(v229 + 8))(v66, v228);
          goto LABEL_63;
        }

        sub_1E64F0A10(v62, v47, type metadata accessor for ActionButtonDescriptor.Kind);
        v142 = v231;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v144 = v219;
          v143 = v220;
          v145 = v209;
          (*(v219 + 32))(v209, v142, v220);
          v91 = MEMORY[0x1E6948EE0](v47, v145);
          v146 = *(v144 + 8);
          v146(v145, v143);
          v146(v47, v143);
          sub_1E64F0AE0(v62, type metadata accessor for ActionButtonDescriptor.Kind);
          return v91 & 1;
        }

        (*(v219 + 8))(v47, v220);
LABEL_63:
        sub_1E5DFE50C(v62, &qword_1ED07A7F0, &qword_1E6607998);
LABEL_64:
        v91 = 0;
        return v91 & 1;
      }

      v104 = v62;
      sub_1E64F0A10(v62, v52, type metadata accessor for ActionButtonDescriptor.Kind);
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
      v106 = v105[12];
      v230 = *&v52[v106];
      v107 = v105[16];
      v109 = *&v52[v107];
      v108 = *&v52[v107 + 8];
      v110 = v105[20];
      v111 = *&v52[v110];
      v112 = *&v52[v110 + 8];
      v113 = v231;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        sub_1E5DFE50C(v52, &qword_1ED073718, &qword_1E65ED978);
        v62 = v104;
        goto LABEL_63;
      }

      v114 = *(v113 + v106);
      v227 = v109;
      v228 = v114;
      v116 = *(v113 + v107);
      v115 = *(v113 + v107 + 8);
      v225 = v111;
      v226 = v116;
      v229 = v115;
      v117 = *(v113 + v110 + 8);
      v224 = *(v113 + v110);
      v118 = *(v208 + 48);
      v119 = v210;
      sub_1E5FAB460(v52, v210, &qword_1ED073718, &qword_1E65ED978);
      sub_1E5FAB460(v113, v119 + v118, &qword_1ED073718, &qword_1E65ED978);
      v121 = v211;
      v120 = v212;
      v122 = *(v211 + 48);
      if (v122(v119, 1, v212) == 1)
      {
        if (v122(v119 + v118, 1, v120) == 1)
        {
          sub_1E5DFE50C(v119, &qword_1ED073718, &qword_1E65ED978);
          v123 = v229;
LABEL_88:
          if (v230 == v228)
          {
            if (!v108)
            {
              if (v123)
              {

                goto LABEL_124;
              }

              goto LABEL_117;
            }

            if (v123)
            {
              if (v227 == v226 && v108 == v123)
              {

                goto LABEL_117;
              }

              v203 = sub_1E65E6C18();

              if (v203)
              {
LABEL_117:
                if (v112)
                {
                  if (v117)
                  {
                    if (v225 == v224 && v112 == v117)
                    {

LABEL_127:
                      v162 = v104;
                      goto LABEL_128;
                    }

                    v204 = sub_1E65E6C18();

                    if (v204)
                    {
                      goto LABEL_127;
                    }

LABEL_125:
                    sub_1E64F0AE0(v104, type metadata accessor for ActionButtonDescriptor.Kind);
                    goto LABEL_64;
                  }
                }

                else if (!v117)
                {
                  goto LABEL_127;
                }

LABEL_124:

                goto LABEL_125;
              }
            }

            else
            {
            }

            goto LABEL_124;
          }

LABEL_98:

          goto LABEL_124;
        }
      }

      else
      {
        v231 = v117;
        v177 = v207;
        sub_1E633EE38(v119, v207);
        if (v122(v119 + v118, 1, v120) != 1)
        {
          v191 = v119 + v118;
          v192 = v206;
          (*(v121 + 32))(v206, v191, v120);
          sub_1E5DF4934(&qword_1ED07A7F8, MEMORY[0x1E699F1B8]);
          v193 = sub_1E65E5B98();
          v194 = *(v121 + 8);
          v194(v192, v120);
          v194(v177, v120);
          sub_1E5DFE50C(v119, &qword_1ED073718, &qword_1E65ED978);
          v117 = v231;
          v123 = v229;
          if ((v193 & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_88;
        }

        (*(v121 + 8))(v177, v120);
      }

      sub_1E5DFE50C(v119, &qword_1ED07A7E8, &qword_1E6607990);
      goto LABEL_125;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1E64F0A10(v62, v57, type metadata accessor for ActionButtonDescriptor.Kind);
      v93 = *v57;
      v92 = v57[1];
      v94 = v231;
      if (!swift_getEnumCaseMultiPayload())
      {
        v95 = *v94;
        v96 = v94[1];
        if (v93 == v95 && v92 == v96)
        {
        }

        else
        {
          v190 = sub_1E65E6C18();

          if ((v190 & 1) == 0)
          {
            sub_1E64F0AE0(v62, type metadata accessor for ActionButtonDescriptor.Kind);
            goto LABEL_64;
          }
        }

        v162 = v62;
LABEL_128:
        sub_1E64F0AE0(v162, type metadata accessor for ActionButtonDescriptor.Kind);
        v91 = 1;
        return v91 & 1;
      }

LABEL_52:

      goto LABEL_63;
    }

    sub_1E64F0A10(v62, v55, type metadata accessor for ActionButtonDescriptor.Kind);
    v164 = *(v55 + 1);
    v163 = *(v55 + 2);
    v165 = v231;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_52;
    }

    v166 = v62;
    v168 = *(v165 + 1);
    v167 = *(v165 + 2);
    v169 = *v165;
    v170 = *v55;
    if (sub_1E65E2318())
    {
      if (v163)
      {
        if (v167)
        {
          if (v164 == v168 && v163 == v167)
          {

LABEL_106:
            v162 = v166;
            goto LABEL_128;
          }

          v199 = sub_1E65E6C18();

          if (v199)
          {
            goto LABEL_106;
          }

LABEL_82:
          sub_1E64F0AE0(v166, type metadata accessor for ActionButtonDescriptor.Kind);
          goto LABEL_64;
        }
      }

      else if (!v167)
      {
        goto LABEL_106;
      }
    }

    else
    {
    }

    goto LABEL_82;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    v97 = v231;
    if (EnumCaseMultiPayload == 5)
    {
      sub_1E64F0A10(v62, v44, type metadata accessor for ActionButtonDescriptor.Kind);
      v99 = *v44;
      v98 = *(v44 + 1);
      v100 = v44[16];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_52;
      }

      v101 = v62;
      v102 = *(v97 + 16);
      if (v99 == *v97 && v98 == v97[1])
      {
        v103 = v97[1];
      }

      else
      {
        v178 = v97[1];
        v179 = sub_1E65E6C18();

        if ((v179 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v180 = sub_1E65E1268();
      v182 = v181;
      v183 = sub_1E65E1268();
    }

    else
    {
      sub_1E64F0A10(v62, v41, type metadata accessor for ActionButtonDescriptor.Kind);
      v172 = *v41;
      v171 = *(v41 + 1);
      v173 = v41[16];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_52;
      }

      v101 = v62;
      v174 = *(v97 + 16);
      if (v172 == *v97 && v171 == v97[1])
      {
        v175 = v97[1];
      }

      else
      {
        v185 = v97[1];
        v186 = sub_1E65E6C18();

        if ((v186 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v180 = sub_1E65D94E8();
      v182 = v187;
      v183 = sub_1E65D94E8();
    }

    if (v180 == v183 && v182 == v184)
    {

LABEL_76:
      v162 = v101;
      goto LABEL_128;
    }

    v188 = sub_1E65E6C18();

    if (v188)
    {
      goto LABEL_76;
    }

LABEL_77:
    sub_1E64F0AE0(v101, type metadata accessor for ActionButtonDescriptor.Kind);
    goto LABEL_64;
  }

  v88 = v231;
  if (EnumCaseMultiPayload == 7)
  {
    v124 = v223;
    sub_1E64F0A10(v62, v223, type metadata accessor for ActionButtonDescriptor.Kind);
    v125 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      sub_1E64F0AE0(v124 + v125, type metadata accessor for GalleryDescriptor);
      (*(v229 + 8))(v124, v228);
      goto LABEL_63;
    }

    v230 = v62;
    v127 = v228;
    v126 = v229;
    v128 = v213;
    (*(v229 + 32))(v213, v88, v228);
    v129 = v88;
    v130 = v217;
    sub_1E64F0A78(v124 + v125, v217, type metadata accessor for GalleryDescriptor);
    v131 = v215;
    sub_1E64F0A78(&v129[v125], v215, type metadata accessor for GalleryDescriptor);
    v132 = sub_1E65D7288();
    v133 = *(v126 + 8);
    v133(v124, v127);
    if (v132 & 1) != 0 && (*v130 == *v131 && *(v130 + 8) == *(v131 + 8) || (sub_1E65E6C18()))
    {
      v134 = *(v130 + 16);
      v135 = *(v131 + 16);
      if (sub_1E65E0008())
      {
        v136 = *(v130 + 17);
        v137 = *(v131 + 17);
        v138 = sub_1E65DFB58();
        v140 = v139;
        if (v138 == sub_1E65DFB58() && v140 == v141)
        {

          goto LABEL_108;
        }

        v200 = sub_1E65E6C18();

        if (v200)
        {
LABEL_108:
          v201 = *(v205 + 28);
          v202 = sub_1E65D7288();
          v133(v128, v127);
          if (v202)
          {
            sub_1E64F0AE0(v131, type metadata accessor for GalleryDescriptor);
            sub_1E64F0AE0(v130, type metadata accessor for GalleryDescriptor);
            v162 = v230;
            goto LABEL_128;
          }

          goto LABEL_111;
        }
      }
    }

    v133(v128, v127);
LABEL_111:
    sub_1E64F0AE0(v131, type metadata accessor for GalleryDescriptor);
    sub_1E64F0AE0(v130, type metadata accessor for GalleryDescriptor);
    goto LABEL_112;
  }

  if (EnumCaseMultiPayload != 8)
  {
    v147 = v224;
    sub_1E64F0A10(v62, v224, type metadata accessor for ActionButtonDescriptor.Kind);
    v148 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48);
    v150 = *(v147 + v148);
    v149 = *(v147 + v148 + 8);
    if (swift_getEnumCaseMultiPayload() != 9)
    {
      sub_1E61B73EC(v150, v149);
      sub_1E5DFE50C(v147, &qword_1ED073648, &qword_1E6607560);
      goto LABEL_63;
    }

    v230 = v62;
    v151 = *&v88[v148];
    v152 = *&v88[v148 + 8];
    v153 = v216;
    sub_1E5FAB460(v88, v216, &qword_1ED073648, &qword_1E6607560);
    type metadata accessor for WorkoutActionsMenuLoadState();
    sub_1E5DF4934(&qword_1EE2D8298, type metadata accessor for WorkoutActionsMenuLoadState);
    v154 = v153;
    sub_1E5DF4934(&qword_1EE2D82B0, type metadata accessor for WorkoutActionsMenuLoadState);
    sub_1E5DF4934(&qword_1EE2D82A8, type metadata accessor for WorkoutActionsMenuLoadState);
    v155 = sub_1E65DE498();
    sub_1E5DFE50C(v147, &qword_1ED073648, &qword_1E6607560);
    if (v155)
    {
      v156 = sub_1E65D8CC8();
      v158 = v157;
      sub_1E61B73EC(v150, v149);
      v159 = sub_1E65D8CC8();
      v161 = v160;
      sub_1E61B73EC(v151, v152);
      if (v156 == v159 && v158 == v161)
      {

        sub_1E5DFE50C(v154, &qword_1ED073648, &qword_1E6607560);
        v162 = v230;
        goto LABEL_128;
      }

      v197 = sub_1E65E6C18();

      sub_1E5DFE50C(v154, &qword_1ED073648, &qword_1E6607560);
      v162 = v230;
      if (v197)
      {
        goto LABEL_128;
      }
    }

    else
    {
      sub_1E5DFE50C(v153, &qword_1ED073648, &qword_1E6607560);
      sub_1E61B73EC(v150, v149);
      sub_1E61B73EC(v151, v152);
    }

LABEL_112:
    sub_1E64F0AE0(v230, type metadata accessor for ActionButtonDescriptor.Kind);
    goto LABEL_64;
  }

  v89 = v221;
  sub_1E64F0A10(v62, v221, type metadata accessor for ActionButtonDescriptor.Kind);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    goto LABEL_63;
  }

  v90 = *v89 ^ *v88;
  sub_1E64F0AE0(v62, type metadata accessor for ActionButtonDescriptor.Kind);
  v91 = v90 ^ 1;
  return v91 & 1;
}

unint64_t sub_1E64F2398()
{
  result = qword_1EE2D8F90;
  if (!qword_1EE2D8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F90);
  }

  return result;
}

unint64_t sub_1E64F23EC()
{
  result = qword_1ED07A858;
  if (!qword_1ED07A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A858);
  }

  return result;
}

unint64_t sub_1E64F2440()
{
  result = qword_1ED07A868;
  if (!qword_1ED07A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A868);
  }

  return result;
}

unint64_t sub_1E64F2494()
{
  result = qword_1ED07A870;
  if (!qword_1ED07A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A870);
  }

  return result;
}

unint64_t sub_1E64F24E8()
{
  result = qword_1ED07A878;
  if (!qword_1ED07A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A878);
  }

  return result;
}

unint64_t sub_1E64F253C()
{
  result = qword_1ED07A880;
  if (!qword_1ED07A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A880);
  }

  return result;
}

unint64_t sub_1E64F2590()
{
  result = qword_1ED07A890;
  if (!qword_1ED07A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A890);
  }

  return result;
}

unint64_t sub_1E64F25E4()
{
  result = qword_1ED07A898;
  if (!qword_1ED07A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A898);
  }

  return result;
}

unint64_t sub_1E64F2638()
{
  result = qword_1EE2D8F18;
  if (!qword_1EE2D8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F18);
  }

  return result;
}

unint64_t sub_1E64F268C()
{
  result = qword_1ED07A8A0;
  if (!qword_1ED07A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A8A0);
  }

  return result;
}

unint64_t sub_1E64F26E0()
{
  result = qword_1ED07A8A8;
  if (!qword_1ED07A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A8A8);
  }

  return result;
}

unint64_t sub_1E64F2734()
{
  result = qword_1ED07A8B0;
  if (!qword_1ED07A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A8B0);
  }

  return result;
}

unint64_t sub_1E64F2788()
{
  result = qword_1ED07A8B8;
  if (!qword_1ED07A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A8B8);
  }

  return result;
}

unint64_t sub_1E64F27DC()
{
  result = qword_1EE2D8F50;
  if (!qword_1EE2D8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F50);
  }

  return result;
}

unint64_t sub_1E64F2830()
{
  result = qword_1ED07A8C8;
  if (!qword_1ED07A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A8C8);
  }

  return result;
}

unint64_t sub_1E64F2884()
{
  result = qword_1EE2D8F78;
  if (!qword_1EE2D8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F78);
  }

  return result;
}

uint64_t sub_1E64F28D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073648, &qword_1E6607560);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E64F2928()
{
  result = qword_1ED07A930;
  if (!qword_1ED07A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A930);
  }

  return result;
}

unint64_t sub_1E64F297C()
{
  result = qword_1ED07A938;
  if (!qword_1ED07A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A938);
  }

  return result;
}

unint64_t sub_1E64F29D0()
{
  result = qword_1ED07A948;
  if (!qword_1ED07A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A948);
  }

  return result;
}

unint64_t sub_1E64F2A24()
{
  result = qword_1EE2D6520;
  if (!qword_1EE2D6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6520);
  }

  return result;
}

unint64_t sub_1E64F2A78()
{
  result = qword_1EE2D6250;
  if (!qword_1EE2D6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6250);
  }

  return result;
}

unint64_t sub_1E64F2B90()
{
  result = qword_1ED07A958;
  if (!qword_1ED07A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A958);
  }

  return result;
}

unint64_t sub_1E64F2BE8()
{
  result = qword_1ED07A960;
  if (!qword_1ED07A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A960);
  }

  return result;
}

unint64_t sub_1E64F2C40()
{
  result = qword_1ED07A968;
  if (!qword_1ED07A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A968);
  }

  return result;
}

unint64_t sub_1E64F2C98()
{
  result = qword_1ED07A970;
  if (!qword_1ED07A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A970);
  }

  return result;
}

unint64_t sub_1E64F2CF0()
{
  result = qword_1ED07A978;
  if (!qword_1ED07A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A978);
  }

  return result;
}

unint64_t sub_1E64F2D48()
{
  result = qword_1ED07A980;
  if (!qword_1ED07A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A980);
  }

  return result;
}

unint64_t sub_1E64F2DA0()
{
  result = qword_1ED07A988;
  if (!qword_1ED07A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A988);
  }

  return result;
}

unint64_t sub_1E64F2DF8()
{
  result = qword_1ED07A990;
  if (!qword_1ED07A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A990);
  }

  return result;
}

unint64_t sub_1E64F2E50()
{
  result = qword_1ED07A998;
  if (!qword_1ED07A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A998);
  }

  return result;
}

unint64_t sub_1E64F2EA8()
{
  result = qword_1ED07A9A0;
  if (!qword_1ED07A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A9A0);
  }

  return result;
}

unint64_t sub_1E64F2F00()
{
  result = qword_1ED07A9A8;
  if (!qword_1ED07A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A9A8);
  }

  return result;
}

unint64_t sub_1E64F2F58()
{
  result = qword_1ED07A9B0;
  if (!qword_1ED07A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A9B0);
  }

  return result;
}

unint64_t sub_1E64F2FB0()
{
  result = qword_1EE2D8F68;
  if (!qword_1EE2D8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F68);
  }

  return result;
}

unint64_t sub_1E64F3008()
{
  result = qword_1EE2D8F70;
  if (!qword_1EE2D8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F70);
  }

  return result;
}

unint64_t sub_1E64F3060()
{
  result = qword_1EE2D8F40;
  if (!qword_1EE2D8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F40);
  }

  return result;
}

unint64_t sub_1E64F30B8()
{
  result = qword_1EE2D8F48;
  if (!qword_1EE2D8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F48);
  }

  return result;
}

unint64_t sub_1E64F3110()
{
  result = qword_1EE2D8EC8;
  if (!qword_1EE2D8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8EC8);
  }

  return result;
}

unint64_t sub_1E64F3168()
{
  result = qword_1EE2D8ED0;
  if (!qword_1EE2D8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8ED0);
  }

  return result;
}

unint64_t sub_1E64F31C0()
{
  result = qword_1EE2D8F30;
  if (!qword_1EE2D8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F30);
  }

  return result;
}

unint64_t sub_1E64F3218()
{
  result = qword_1EE2D8F38;
  if (!qword_1EE2D8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F38);
  }

  return result;
}

unint64_t sub_1E64F3270()
{
  result = qword_1EE2D8EF8;
  if (!qword_1EE2D8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8EF8);
  }

  return result;
}

unint64_t sub_1E64F32C8()
{
  result = qword_1EE2D8F00;
  if (!qword_1EE2D8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F00);
  }

  return result;
}

unint64_t sub_1E64F3320()
{
  result = qword_1EE2D8F08;
  if (!qword_1EE2D8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F08);
  }

  return result;
}

unint64_t sub_1E64F3378()
{
  result = qword_1EE2D8F10;
  if (!qword_1EE2D8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F10);
  }

  return result;
}

unint64_t sub_1E64F33D0()
{
  result = qword_1EE2D8ED8;
  if (!qword_1EE2D8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8ED8);
  }

  return result;
}

unint64_t sub_1E64F3428()
{
  result = qword_1EE2D8EE0;
  if (!qword_1EE2D8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8EE0);
  }

  return result;
}

unint64_t sub_1E64F3480()
{
  result = qword_1EE2D8F20;
  if (!qword_1EE2D8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F20);
  }

  return result;
}

unint64_t sub_1E64F34D8()
{
  result = qword_1EE2D8F28;
  if (!qword_1EE2D8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F28);
  }

  return result;
}

unint64_t sub_1E64F3530()
{
  result = qword_1EE2D8F58;
  if (!qword_1EE2D8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F58);
  }

  return result;
}

unint64_t sub_1E64F3588()
{
  result = qword_1EE2D8F60;
  if (!qword_1EE2D8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F60);
  }

  return result;
}

unint64_t sub_1E64F35E0()
{
  result = qword_1EE2D8EE8;
  if (!qword_1EE2D8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8EE8);
  }

  return result;
}

unint64_t sub_1E64F3638()
{
  result = qword_1EE2D8EF0;
  if (!qword_1EE2D8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8EF0);
  }

  return result;
}

unint64_t sub_1E64F3690()
{
  result = qword_1EE2D8F80;
  if (!qword_1EE2D8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F80);
  }

  return result;
}

unint64_t sub_1E64F36E8()
{
  result = qword_1EE2D8F88;
  if (!qword_1EE2D8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F88);
  }

  return result;
}

unint64_t sub_1E64F3740()
{
  result = qword_1EE2D8F98;
  if (!qword_1EE2D8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8F98);
  }

  return result;
}

unint64_t sub_1E64F3798()
{
  result = qword_1EE2D8FA0;
  if (!qword_1EE2D8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8FA0);
  }

  return result;
}

uint64_t sub_1E64F37EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E64F3958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6E616C62 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C50646C697562 && a2 == 0xE90000000000006ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E66188F0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564695679616C70 && a2 == 0xE90000000000006FLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B72614D776F6873 && a2 == 0xED0000676E697465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F577472617473 && a2 == 0xEC00000074756F6BLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614377656976 && a2 == 0xEF6D657449676F6CLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6C614777656976 && a2 == 0xEB00000000797265 || (sub_1E65E6C18() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E616C5077656976 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4174756F6B726F77 && a2 == 0xEE00736E6F697463)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E64F3CB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E64F3DE0@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v28 - v4;
  v5 = type metadata accessor for CatalogService();
  Description = v5[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v8 = sub_1E65E3B68();
  __swift_project_value_buffer(v8, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v9 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v31 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v10 = v1 + *(type metadata accessor for AppEnvironment() + 48);
  v32 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v30 = Description[2];
  v30(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, v5);
  v29 = v5;
  v12 = *(Description + 80);
  v13 = swift_allocObject();
  v33 = Description[4];
  v33(v13 + ((v12 + 16) & ~v12), &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA0, &qword_1E65F7730);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_1E65E4E68();
  v28 = v17;
  v18 = v35;
  v35[3] = v14;
  v18[4] = &off_1F5FAA810;
  *v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E65EA670;
  v20 = sub_1E65E60A8();
  v21 = v34;
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v22 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v29;
  v30(v22, v32 + v31, v29);
  v24 = (v12 + 32) & ~v12;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v33(v26 + v24, v22, v23);
  *(v26 + v25) = v28;

  result = sub_1E6059EAC(0, 0, v21, &unk_1E6608818, v26);
  *(v19 + 32) = result;
  v18[5] = v19;
  return result;
}

uint64_t sub_1E64F41B4(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E64F41DC, 0, 0);
}

uint64_t sub_1E64F41DC()
{
  v1 = v0[3];
  v2 = CatalogService.fetchRemoteTrainerDetail.getter();
  v0[6] = v3;
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1E60EBD8C;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6, v7);
}

uint64_t sub_1E64F42DC(uint64_t a1, void *a2)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E64F41B4(a1, a2, v2 + v7);
}

uint64_t sub_1E64F43C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64F44F4, 0, 0);
}

uint64_t sub_1E64F44F4()
{
  v1 = v0[2];
  v2 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E64F45F0;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E64F45F0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1E60EC658;
  }

  else
  {
    v4 = sub_1E64F4720;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64F4720()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E64F47FC;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v8);
}

uint64_t sub_1E64F47FC()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64F48F8, 0, 0);
}

uint64_t sub_1E64F48F8()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64F49F8, v5, v4);
  }
}

uint64_t sub_1E64F49F8()
{
  v1 = v0[14];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E64F47FC;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v6);
}

uint64_t sub_1E64F4AB0(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64F43C0(a1, v6, v7, v1 + v5, v8);
}

uint64_t URLAction.makeURL(root:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = sub_1E65D70A8();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D7158();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v38 = *a1;
  v13 = *v2;
  v12 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  sub_1E65D7148();
  sub_1E65D7128();
  MEMORY[0x1E693EB10](0x6874656B616DLL, 0xE600000000000000);
  v46 = 47;
  v47 = 0xE100000000000000;
  v16 = v15;
  if (v15 >= 4)
  {
    v17 = v14 | v12;
    if (v14 | v12 | v13)
    {
      if (v13 != 1 || v17)
      {
        if (v13 != 2 || v17)
        {
          if (v13 != 3 || v17)
          {
            if (v17)
            {
              v18 = 0;
            }

            else
            {
              v18 = v13 == 4;
            }

            if (v18)
            {
              v16 = 8;
            }

            else
            {
              v16 = 9;
            }
          }

          else
          {
            v16 = 7;
          }
        }

        else
        {
          v16 = 6;
        }
      }

      else
      {
        v16 = 5;
      }
    }

    else
    {
      v16 = 4;
    }
  }

  v19 = sub_1E643D8AC(v16);
  MEMORY[0x1E694D7C0](v19);

  MEMORY[0x1E693EB20](v46, v47);
  if (v15 <= 1)
  {
    if (!v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C98, &qword_1E65FF640);
      v22 = *(v4 + 72);
      v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      *(swift_allocObject() + 16) = xmmword_1E65EB9E0;
      sub_1E65D7078();

      sub_1E65D7078();
      goto LABEL_36;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C98, &qword_1E65FF640);
    v26 = *(v4 + 72);
    v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *(swift_allocObject() + 16) = xmmword_1E65EA670;
    if (v12 > 2)
    {
      if (v12 == 3 || v12 == 4 || v12 == 5)
      {
        goto LABEL_35;
      }
    }

    else if (v12 <= 2)
    {
      goto LABEL_35;
    }

    v46 = 0x7974696C61646F6DLL;
    v47 = 0xE90000000000003ALL;
    MEMORY[0x1E694D7C0](v13, v12);
LABEL_35:
    sub_1E65D7078();

    goto LABEL_36;
  }

  if (v15 != 2)
  {
    if (v15 != 3)
    {
      goto LABEL_37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C98, &qword_1E65FF640);
    v20 = *(v4 + 72);
    v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    *(swift_allocObject() + 16) = xmmword_1E65EA670;
    v46 = v13;
    sub_1E65E6BC8();
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078C98, &qword_1E65FF640);
  v24 = *(v4 + 72);
  v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1E65EA670;
  sub_1E65D7078();
LABEL_36:
  sub_1E65D70D8();
LABEL_37:
  v28 = v42;
  if (v11 == 6)
  {
    goto LABEL_54;
  }

  v30 = sub_1E65D70B8();
  if (!*v29)
  {
    v30(&v46, 0);
    goto LABEL_54;
  }

  v31 = v29;
  if (v11 > 2)
  {
    if (v11 == 3 || v11 == 4 || v11 == 5)
    {
      goto LABEL_49;
    }
  }

  else if (v11 <= 2)
  {
    goto LABEL_49;
  }

  v44 = 0x7974696C61646F6DLL;
  v45 = 0xE90000000000003ALL;
  MEMORY[0x1E694D7C0](v38, v11);
LABEL_49:
  v32 = v39;
  sub_1E65D7078();

  v33 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_1E64F7054(0, v33[2] + 1, 1, v33, &qword_1ED078C98, &qword_1E65FF640, MEMORY[0x1E6968178]);
    *v31 = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_1E64F7054(v35 > 1, v36 + 1, 1, v33, &qword_1ED078C98, &qword_1E65FF640, MEMORY[0x1E6968178]);
    *v31 = v33;
  }

  v33[2] = v36 + 1;
  (*(v4 + 32))(v33 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v36, v32, v40);
  v30(&v46, 0);
LABEL_54:
  sub_1E65D70F8();
  return (*(v41 + 8))(v10, v28);
}

unsigned __int8 *sub_1E64F5410@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073450, &qword_1E65ED1E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v95 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A200, &unk_1E66054C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v95 - v10;
  v96 = a1;
  sub_1E65D7428();
  if (qword_1ED071900 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v3, qword_1ED096260);
  sub_1E65E5E68();

  sub_1E64F74E8();
  sub_1E65E1C98();
  sub_1E65E1CD8();
  (*(v4 + 8))(v7, v3);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A238, &qword_1E6605518);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v14 = sub_1E65D74E8();
    (*(*(v14 - 8) + 8))(v96, v14);
    result = sub_1E64F754C(v11);
LABEL_5:
    v16 = v95;
LABEL_6:
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v17 = -1;
LABEL_7:
    *(v16 + 24) = v17;
    return result;
  }

  swift_getKeyPath();
  sub_1E65E1CF8();

  v18 = v98;
  v19 = v99;
  v20 = v100;
  v21 = v101;
  (*(v13 + 8))(v11, v12);
  MEMORY[0x1E694D730](v18, v19, v20, v21);

  v22 = sub_1E644144C();
  if (v22 <= 4)
  {
    if (v22 <= 1)
    {
      v43 = v96;
      if (v22)
      {
        v68 = sub_1E64A3A24();
        if (v69)
        {
          RootItem.init(rawValue:)(v68, v69, &v98);
          v70 = sub_1E65D74E8();
          result = (*(*(v70 - 8) + 8))(v43, v70);
          v71 = v99;
          if (v99 == 6)
          {
            goto LABEL_5;
          }

          v72 = v95;
          *v95 = v98;
          v72[1] = v71;
          v72[2] = 0;
          *(v72 + 24) = 1;
          return result;
        }
      }

      else
      {
        v44 = sub_1E64A37AC();
        if (*(v44 + 16) && (v45 = sub_1E6215038(0x656372756F736572, 0xE800000000000000), (v46 & 1) != 0))
        {
          v47 = (*(v44 + 56) + 16 * v45);
          v48 = *v47;
          v49 = v47[1];

          v50._countAndFlagsBits = v48;
          v50._object = v49;
          SharingURLResource.init(rawValue:)(v50);
          v51 = v98;
          if (v98 != 5)
          {
            v52 = sub_1E64A3A24();
            v54 = v53;
            v55 = sub_1E65D74E8();
            result = (*(*(v55 - 8) + 8))(v43, v55);
            v16 = v95;
            if (!v54)
            {
              goto LABEL_6;
            }

            *v95 = v51;
            v16[1] = v52;
            v16[2] = v54;
            *(v16 + 24) = 0;
            return result;
          }
        }

        else
        {

          LOBYTE(v98) = 5;
        }
      }

      v76 = sub_1E65D74E8();
      result = (*(*(v76 - 8) + 8))(v43, v76);
      goto LABEL_5;
    }

    v26 = v96;
    if (v22 == 2)
    {
      v56 = sub_1E64A37AC();
      if (*(v56 + 16))
      {
        v57 = sub_1E6215038(0x7972657571, 0xE500000000000000);
        if (v58)
        {
          v59 = (*(v56 + 56) + 16 * v57);
          v60 = *v59;
          v61 = v59[1];
          v62 = sub_1E65D74E8();
          v63 = *(*(v62 - 8) + 8);

          v63(v26, v62);

          v16 = v95;
          *v95 = v60;
          v16[1] = v61;
          v16[2] = 0;
          v17 = 2;
          goto LABEL_7;
        }
      }
    }

    else
    {
      if (v22 != 3)
      {
        v67 = sub_1E65D74E8();
        result = (*(*(v67 - 8) + 8))(v26, v67);
        v16 = v95;
        *v95 = 0;
        v16[1] = 0;
        v16[2] = 0;
LABEL_57:
        v17 = 4;
        goto LABEL_7;
      }

      v27 = sub_1E64A37AC();
      if (*(v27 + 16))
      {
        v28 = sub_1E6215038(0xD000000000000013, 0x80000001E66189D0);
        if (v29)
        {
          v30 = (*(v27 + 56) + 16 * v28);
          v32 = *v30;
          v31 = v30[1];

          v33 = HIBYTE(v31) & 0xF;
          v34 = v32 & 0xFFFFFFFFFFFFLL;
          if ((v31 & 0x2000000000000000) != 0)
          {
            v35 = HIBYTE(v31) & 0xF;
          }

          else
          {
            v35 = v32 & 0xFFFFFFFFFFFFLL;
          }

          if (!v35)
          {
            v93 = sub_1E65D74E8();
            (*(*(v93 - 8) + 8))(v26, v93);

            goto LABEL_5;
          }

          if ((v31 & 0x1000000000000000) != 0)
          {
            v97 = 0;
            v37 = sub_1E6426B88(v32, v31, 10);
            v91 = v94;
LABEL_105:
            v92 = sub_1E65D74E8();
            (*(*(v92 - 8) + 8))(v26, v92);

            v16 = v95;
            if ((v91 & 1) == 0)
            {
              v95[1] = 0;
              v16[2] = 0;
              *v16 = v37;
              v17 = 3;
              goto LABEL_7;
            }

            goto LABEL_6;
          }

          if ((v31 & 0x2000000000000000) != 0)
          {
            v98 = v32;
            v99 = v31 & 0xFFFFFFFFFFFFFFLL;
            if (v32 == 43)
            {
              if (v33)
              {
                if (--v33)
                {
                  v37 = 0;
                  v83 = &v98 + 1;
                  while (1)
                  {
                    v84 = *v83 - 48;
                    if (v84 > 9)
                    {
                      break;
                    }

                    v85 = 10 * v37;
                    if ((v37 * 10) >> 64 != (10 * v37) >> 63)
                    {
                      break;
                    }

                    v37 = v85 + v84;
                    if (__OFADD__(v85, v84))
                    {
                      break;
                    }

                    ++v83;
                    if (!--v33)
                    {
                      goto LABEL_104;
                    }
                  }
                }

                goto LABEL_103;
              }

LABEL_113:
              __break(1u);
              return result;
            }

            if (v32 != 45)
            {
              if (v33)
              {
                v37 = 0;
                v88 = &v98;
                while (1)
                {
                  v89 = *v88 - 48;
                  if (v89 > 9)
                  {
                    break;
                  }

                  v90 = 10 * v37;
                  if ((v37 * 10) >> 64 != (10 * v37) >> 63)
                  {
                    break;
                  }

                  v37 = v90 + v89;
                  if (__OFADD__(v90, v89))
                  {
                    break;
                  }

                  v88 = (v88 + 1);
                  if (!--v33)
                  {
                    goto LABEL_104;
                  }
                }
              }

              goto LABEL_103;
            }

            if (v33)
            {
              if (--v33)
              {
                v37 = 0;
                v77 = &v98 + 1;
                while (1)
                {
                  v78 = *v77 - 48;
                  if (v78 > 9)
                  {
                    break;
                  }

                  v79 = 10 * v37;
                  if ((v37 * 10) >> 64 != (10 * v37) >> 63)
                  {
                    break;
                  }

                  v37 = v79 - v78;
                  if (__OFSUB__(v79, v78))
                  {
                    break;
                  }

                  ++v77;
                  if (!--v33)
                  {
                    goto LABEL_104;
                  }
                }
              }

              goto LABEL_103;
            }
          }

          else
          {
            if ((v32 & 0x1000000000000000) != 0)
            {
              result = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              result = sub_1E65E6908();
            }

            v36 = *result;
            if (v36 == 43)
            {
              if (v34 >= 1)
              {
                v33 = v34 - 1;
                if (v34 != 1)
                {
                  v37 = 0;
                  if (result)
                  {
                    v80 = result + 1;
                    while (1)
                    {
                      v81 = *v80 - 48;
                      if (v81 > 9)
                      {
                        goto LABEL_103;
                      }

                      v82 = 10 * v37;
                      if ((v37 * 10) >> 64 != (10 * v37) >> 63)
                      {
                        goto LABEL_103;
                      }

                      v37 = v82 + v81;
                      if (__OFADD__(v82, v81))
                      {
                        goto LABEL_103;
                      }

                      ++v80;
                      if (!--v33)
                      {
                        goto LABEL_104;
                      }
                    }
                  }

                  goto LABEL_95;
                }

                goto LABEL_103;
              }

              goto LABEL_112;
            }

            if (v36 != 45)
            {
              if (v34)
              {
                v37 = 0;
                if (result)
                {
                  while (1)
                  {
                    v86 = *result - 48;
                    if (v86 > 9)
                    {
                      goto LABEL_103;
                    }

                    v87 = 10 * v37;
                    if ((v37 * 10) >> 64 != (10 * v37) >> 63)
                    {
                      goto LABEL_103;
                    }

                    v37 = v87 + v86;
                    if (__OFADD__(v87, v86))
                    {
                      goto LABEL_103;
                    }

                    ++result;
                    if (!--v34)
                    {
                      goto LABEL_95;
                    }
                  }
                }

                goto LABEL_95;
              }

LABEL_103:
              v37 = 0;
              LOBYTE(v33) = 1;
              goto LABEL_104;
            }

            if (v34 >= 1)
            {
              v33 = v34 - 1;
              if (v34 != 1)
              {
                v37 = 0;
                if (result)
                {
                  v38 = result + 1;
                  while (1)
                  {
                    v39 = *v38 - 48;
                    if (v39 > 9)
                    {
                      goto LABEL_103;
                    }

                    v40 = 10 * v37;
                    if ((v37 * 10) >> 64 != (10 * v37) >> 63)
                    {
                      goto LABEL_103;
                    }

                    v37 = v40 - v39;
                    if (__OFSUB__(v40, v39))
                    {
                      goto LABEL_103;
                    }

                    ++v38;
                    if (!--v33)
                    {
                      goto LABEL_104;
                    }
                  }
                }

LABEL_95:
                LOBYTE(v33) = 0;
LABEL_104:
                v97 = v33;
                v91 = v33;
                goto LABEL_105;
              }

              goto LABEL_103;
            }

            __break(1u);
          }

          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }
      }
    }

    v75 = sub_1E65D74E8();
    result = (*(*(v75 - 8) + 8))(v26, v75);
    goto LABEL_5;
  }

  if (v22 <= 7)
  {
    v23 = v96;
    if (v22 == 5)
    {
      v64 = sub_1E65D74E8();
      result = (*(*(v64 - 8) + 8))(v23, v64);
      v25 = 1;
    }

    else if (v22 == 6)
    {
      v24 = sub_1E65D74E8();
      result = (*(*(v24 - 8) + 8))(v23, v24);
      v25 = 2;
    }

    else
    {
      v73 = sub_1E65D74E8();
      result = (*(*(v73 - 8) + 8))(v23, v73);
      v25 = 3;
    }

LABEL_56:
    v16 = v95;
    v95[1] = 0;
    v16[2] = 0;
    *v16 = v25;
    goto LABEL_57;
  }

  v41 = v96;
  if (v22 != 8)
  {
    if (v22 != 9)
    {
      v74 = sub_1E65D74E8();
      result = (*(*(v74 - 8) + 8))(v41, v74);
      goto LABEL_5;
    }

    v42 = sub_1E65D74E8();
    result = (*(*(v42 - 8) + 8))(v41, v42);
    v25 = 5;
    goto LABEL_56;
  }

  v65 = sub_1E65D74E8();
  result = (*(*(v65 - 8) + 8))(v41, v65);
  v66 = v95;
  v95[1] = 0;
  v66[2] = 0;
  *v66 = 4;
  *(v66 + 24) = 4;
  return result;
}

void *sub_1E64F61AC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAA8, &qword_1E6608928);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAB0, &qword_1E6608930);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E64F6354(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E88, &qword_1E65ECCE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E64F6510(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F38, &qword_1E65ECDA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072080, &qword_1E65EA768);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E64F6718(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
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

char *sub_1E64F6840(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1E64F695C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073260, &qword_1E65ED0B8);
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

char *sub_1E64F6BF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AA18, &qword_1E6608878);
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

char *sub_1E64F6D70(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1E64F6EF8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072378, &qword_1E65EABA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E64F7054(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1E64F72F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E64F73F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FB0, &qword_1E65ECE08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1E64F7464(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FA0, &qword_1E65ECDF8);
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

unint64_t sub_1E64F74E8()
{
  result = qword_1ED07A240;
  if (!qword_1ED07A240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073450, &qword_1E65ED1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07A240);
  }

  return result;
}

uint64_t sub_1E64F754C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A200, &unk_1E66054C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E64F75B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v53 = a3;
  *&v52 = a2;
  *&v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v51 = v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v47 - v19;
  v50 = sub_1E65D7A38();
  v49 = *(v50 - 8);
  v21 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65DBB88();
  v55 = *(v24 - 8);
  v25 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ToastResource();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6451F30(v4, v31, type metadata accessor for ToastResource);
  result = swift_getEnumCaseMultiPayload();
  v33 = 0uLL;
  if (result > 2)
  {
    goto LABEL_8;
  }

  if (!result)
  {
    result = sub_1E64FA9D0(v31);
    v33 = 0uLL;
LABEL_8:
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    goto LABEL_9;
  }

  v34 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v37 = 0uLL;
  if (result != 1)
  {
    (*(v55 + 32))(v27, v31, v24, 0, 0, 0, 0, 0);
    v38 = sub_1E65DBB58();
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        *&v48 = 0x80000001E6616680;
        v39 = 0xD000000000000013;
      }

      else
      {
        *&v48 = 0xEB000000006B6165;
        v39 = 0x7274537472617453;
      }
    }

    else if (v38)
    {
      *&v48 = 0xEB00000000647261;
      v39 = 0x7741656C676E6953;
    }

    else
    {
      *&v48 = 0xEE00647261774164;
      v39 = 0x656373656C616F43;
    }

    v47[1] = v39;
    v40 = *MEMORY[0x1E69CBD78];
    v41 = sub_1E65D8F38();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v20, v40, v41);
    (*(v42 + 56))(v20, 0, 1, v41);
    v43 = sub_1E65D74E8();
    (*(*(v43 - 8) + 56))(v16, 1, 1, v43);
    v44 = sub_1E65D9908();
    (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
    v45 = sub_1E65D9F88();
    (*(*(v45 - 8) + 56))(v51, 1, 1, v45);
    sub_1E5FA9D34(v52, v53);
    sub_1E65D7A28();
    v46 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E639CFF8(v23, v46, v56);
    v53 = v56[1];
    v54 = v56[0];
    v51 = v56[3];
    v52 = v56[2];
    v48 = v56[4];

    (*(v49 + 8))(v23, v50);
    result = (*(v55 + 8))(v27, v24);
    v37 = v48;
    v36 = v51;
    v35 = v52;
    v34 = v53;
    v33 = v54;
  }

LABEL_9:
  *a4 = v33;
  a4[1] = v34;
  a4[2] = v35;
  a4[3] = v36;
  a4[4] = v37;
  return result;
}

uint64_t sub_1E64F7C2C(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_1E65DBB88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1E65E5C28();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = type metadata accessor for ToastResource();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E6451F30(v2, v18, type metadata accessor for ToastResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1E64FA9D0(v18);
      return 0;
    }

    if (EnumCaseMultiPayload != 1)
    {
      (*(v4 + 32))(v7, v18, v3);
      v26 = sub_1E65DBB68();
      (*(v4 + 8))(v7, v3);
      return v26;
    }

    v37 = *v18;
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = objc_opt_self();
    v22 = [v21 bundleForClass_];
    v23 = *(v9 + 16);
    v24 = v38;
    v23(v12, v38, v8);
    v25 = sub_1E65E5D48();
    sub_1E65E5BA8();
    [v21 bundleForClass_];
    v23(v12, v24, v8);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v37 = *v18;
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    v29 = swift_getObjCClassFromMetadata();
    v30 = objc_opt_self();
    v31 = [v30 bundleForClass_];
    v32 = *(v9 + 16);
    v33 = v38;
    v32(v12, v38, v8);
    v25 = sub_1E65E5D48();
    sub_1E65E5BA8();
    [v30 bundleForClass_];
    v32(v12, v33, v8);
LABEL_10:
    v34 = sub_1E65E5D48();
    if (sub_1E65DE5E8())
    {
      v26 = v25;
    }

    else
    {
      v26 = v34;
    }

    return v26;
  }

  v26 = 0;
  if (EnumCaseMultiPayload != 4)
  {
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    v27 = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass_];
    (*(v9 + 16))(v12, v38, v8);
    return sub_1E65E5D48();
  }

  return v26;
}

uint64_t sub_1E64F81F4(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v26[0] = a1;
  v5 = sub_1E65D7848();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E5C28();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1E65DBB88();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB38, &qword_1E6608988);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v26 - v19;
  sub_1E6451F30(v3, v26 - v19, type metadata accessor for ToastResource);
  type metadata accessor for ToastResource();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) < 2)
    {
      return result;
    }

    if (a2 <= 1u)
    {
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      (*(v6 + 16))(v9, v26[0], v5);
      return sub_1E65E5D48();
    }

    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E64FA9D0(v20);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v13 + 32))(v16, v20, v12);
    v23 = sub_1E65DBB78();
    (*(v13 + 8))(v16, v12);
    return v23;
  }

  return result;
}

uint64_t sub_1E64F8538(uint64_t a1)
{
  v3 = sub_1E65D7848();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E5C28();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5C08();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1E65DBB88();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ToastResource();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  sub_1E6451F30(v1, &v36 - v20, type metadata accessor for ToastResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = 0;
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      sub_1E65E5BF8();
      sub_1E65E5BE8();
      v29 = BBSystemBulletinTextImageIDTVButton();
      sub_1E65E5C78();

      sub_1E65E5BD8();

      sub_1E65E5BE8();
      sub_1E65E5C18();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass_];
      (*(v39 + 16))(v40, a1, v3);
      return sub_1E65E5D48();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_8:
      sub_1E64FA9D0(v21);
      return 0;
    }

    v36 = v3;
    if (EnumCaseMultiPayload != 1)
    {
      sub_1E6451F30(v1, v19, type metadata accessor for ToastResource);
      v24 = swift_getEnumCaseMultiPayload();
      v25 = v36;
      if (v24 <= 2)
      {
        if (v24)
        {
          if (v24 != 1)
          {
            v26 = v37;
            (*(v37 + 32))(v14, v19, v11);
            v27 = sub_1E65DBB48();
            (*(v26 + 8))(v14, v11);
            v28 = *(v27 + 16);

            if (v28 >= 2)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          sub_1E64FA9D0(v19);
        }
      }

      sub_1E65E5BF8();
      sub_1E65E5BE8();
      v32 = BBSystemBulletinTextImageIDTVButton();
      sub_1E65E5C78();

      sub_1E65E5BD8();

      sub_1E65E5BE8();
      sub_1E65E5C18();
      type metadata accessor for LocalizationBundle();
      v33 = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass_];
      (*(v39 + 16))(v40, a1, v25);
      v23 = sub_1E65E5D48();
      sub_1E64FA9D0(v21);
    }
  }

  return v23;
}

uint64_t sub_1E64F8AD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65DBB88();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for ToastResource();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64F8BC0, 0, 0);
}

uint64_t sub_1E64F8BC0()
{
  v1 = v0[7];
  sub_1E6451F30(v0[3], v0[8], type metadata accessor for ToastResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v0[5] + 32))(v0[6], v0[8], v0[4]);
        v3 = swift_task_alloc();
        v0[9] = v3;
        *v3 = v0;
        v3[1] = sub_1E64F8D10;
        v4 = v0[6];
        v5 = v0[2];

        return sub_1E6379AE8(v5);
      }
    }

    else
    {
      sub_1E64FA9D0(v0[8]);
    }
  }

  v7 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9(0, 0xF000000000000000);
}

uint64_t sub_1E64F8D10(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = sub_1E64F8EE0;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v9 = sub_1E64F8E44;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E64F8E44()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[6];

  v5 = v0[1];

  return v5(v2, v1);
}

uint64_t sub_1E64F8EE0()
{
  v1 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E64F8F6C@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v161 = a3;
  v157 = a2;
  v183 = a1;
  v195 = a5;
  v6 = a4[3];
  v200 = a4[2];
  v201 = v6;
  v202 = a4[4];
  v7 = a4[1];
  v198 = *a4;
  v199 = v7;
  v194 = sub_1E65DC728();
  v173 = *(v194 - 8);
  v8 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v172 = v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAB8, &qword_1E6608938);
  v10 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v177 = v141 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v171 = v141 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v170 = v141 - v17;
  v18 = sub_1E65E5128();
  v165 = *(v18 - 8);
  v166 = v18;
  v19 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v164 = v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65E5038();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v163 = v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1E65D8F28();
  v156 = *(v158 - 8);
  v24 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v155 = v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65E5058();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v179 = v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073660, &qword_1E65ED8C0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v162 = v141 - v31;
  v32 = type metadata accessor for AppComposer();
  v182 = *(v32 - 8);
  v33 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAC0, &qword_1E6608940);
  v159 = *(v34 - 8);
  v160 = v34;
  v35 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v178 = v141 - v36;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAC8, &qword_1E6608948);
  v37 = *(*(v181 - 8) + 64);
  MEMORY[0x1EEE9AC00](v181);
  v184 = v141 - v38;
  v39 = sub_1E65DBB28();
  v167 = *(v39 - 8);
  v168 = v39;
  v40 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v180 = v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAD0, &qword_1E6608950);
  v42 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  v169 = v141 - v43;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAD8, &qword_1E6608958);
  v44 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  v175 = v141 - v45;
  v46 = sub_1E65DBB88();
  v185 = *(v46 - 8);
  v186 = v46;
  v47 = *(v185 + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v48);
  v187 = v141 - v49;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAE0, &qword_1E6608960);
  v50 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v52 = v141 - v51;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAE8, &qword_1E6608968);
  v53 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188);
  v189 = v141 - v54;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AAF0, &qword_1E6608970);
  v55 = *(*(v193 - 8) + 64);
  MEMORY[0x1EEE9AC00](v193);
  v57 = v141 - v56;
  v58 = type metadata accessor for ToastResource();
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = v141 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6451F30(v191, v61, type metadata accessor for ToastResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      sub_1E6451F30(v183, v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
      v130 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      v131 = swift_allocObject();
      sub_1E5E1FA80(v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v131 + v130);
      v132 = v172;
      sub_1E65DC718();
      v133 = v173;
      v134 = v194;
      (*(v173 + 16))(v52, v132, v194);
      swift_storeEnumTagMultiPayload();
      sub_1E64FA470();
      sub_1E64FA8B8(&qword_1ED07AB28, MEMORY[0x1E699E170]);
      sub_1E65E4138();
      return (*(v133 + 8))(v132, v134);
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E64FA9D0(v61);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_1E64FA4FC();
    sub_1E65E4138();
    sub_1E5DFD1CC(v57, v52, &qword_1ED07AAF0, &qword_1E6608970);
    swift_storeEnumTagMultiPayload();
    sub_1E64FA470();
    sub_1E64FA8B8(&qword_1ED07AB28, MEMORY[0x1E699E170]);
    sub_1E65E4138();
    return sub_1E5DFE50C(v57, &qword_1ED07AAF0, &qword_1E6608970);
  }

  v63 = v185;
  v64 = v61;
  v65 = v186;
  v147 = *(v185 + 32);
  v148 = v185 + 32;
  v147(v187, v64, v186);
  v66 = *a4;
  if (*a4)
  {
    v145 = v57;
    v67 = *(a4 + 1);
    v191 = *(a4 + 2);
    v68 = *(a4 + 3);
    v172 = *(a4 + 4);
    v173 = v68;
    v69 = *(a4 + 5);
    v153 = *(a4 + 6);
    v154 = v69;
    v70 = *(a4 + 7);
    v151 = *(a4 + 8);
    v152 = v70;
    v71 = *(a4 + 9);
    v149 = v67;
    v150 = v71;
    v197[2] = v200;
    v197[3] = v201;
    v197[4] = v202;
    v197[0] = v198;
    v197[1] = v199;
    v146 = v66;
    sub_1E618A994(v197, &v196);
    sub_1E65DBB08();
    sub_1E6451F30(v183, v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v183 = *(v63 + 16);
    v142 = v141 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    v183(v142, v187, v65);
    v144 = v63 + 16;
    v72 = (*(v182 + 80) + 16) & ~*(v182 + 80);
    v73 = (v33 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v182 = *(v144 + 64);
    v74 = (v182 + v73 + 16) & ~v182;
    v143 = v182 | 7;
    v75 = swift_allocObject();
    sub_1E5E1FA80(v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v75 + v72);
    v76 = (v75 + v73);
    v77 = v161;
    *v76 = v157;
    v76[1] = v77;
    v147((v75 + v74), v141 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v186);
    v78 = (v75 + ((v47 + v74 + 7) & 0xFFFFFFFFFFFFFFF8));
    v79 = v149;
    v80 = v150;
    *v78 = v146;
    v78[1] = v79;
    v81 = v173;
    v78[2] = v191;
    v78[3] = v81;
    v82 = v154;
    v78[4] = v172;
    v78[5] = v82;
    v83 = v152;
    v78[6] = v153;
    v78[7] = v83;
    v78[8] = v151;
    v78[9] = v80;
    v157 = sub_1E65DBD38();
    v141[1] = sub_1E64FA8B8(&qword_1ED07AB30, MEMORY[0x1E699D2A0]);

    swift_unknownObjectRetain();

    sub_1E65DB9D8();
    sub_1E6379850();
    sub_1E65E5048();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA190;
    *(inited + 32) = 1701667182;
    v161 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    v85 = sub_1E65DBB68();
    v86 = MEMORY[0x1E69E6158];
    *(inited + 48) = v85;
    *(inited + 56) = v87;
    *(inited + 72) = v86;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    v88 = v155;
    v89 = v156;
    v90 = v158;
    (*(v156 + 104))(v155, *MEMORY[0x1E69CBCB8], v158);
    v91 = sub_1E65D8F18();
    v93 = v92;
    (*(v89 + 8))(v88, v90);
    *(inited + 96) = v91;
    *(inited + 104) = v93;
    *(inited + 120) = MEMORY[0x1E69E6158];
    strcpy((inited + 128), "impressionID");
    v94 = MEMORY[0x1E69E6530];
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    *(inited + 144) = 1;
    *(inited + 168) = v94;
    *(inited + 176) = 0x6973736572706D69;
    *(inited + 216) = v94;
    *(inited + 184) = 0xEF7865646E496E6FLL;
    *(inited + 192) = 0;
    sub_1E6215168(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
    swift_arrayDestroy();
    sub_1E65E5028();
    v95 = MEMORY[0x1E69E7CC0];
    sub_1E6215168(MEMORY[0x1E69E7CC0]);
    sub_1E6215168(v95);
    v96 = v162;
    sub_1E65E5068();
    v97 = sub_1E65E5078();
    (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
    v98 = v164;
    sub_1E65E5118();
    sub_1E64FA748();
    v99 = v160;
    v100 = v178;
    sub_1E65E4738();
    (*(v165 + 8))(v98, v166);
    sub_1E5DFE50C(v96, &qword_1ED073660, &qword_1E65ED8C0);
    (*(v159 + 8))(v100, v99);
    v101 = v142;
    v183(v142, v187, v186);
    v102 = (v182 + 96) & ~v182;
    v103 = swift_allocObject();
    v104 = v146;
    v105 = v149;
    v106 = v150;
    *(v103 + 2) = v146;
    *(v103 + 3) = v105;
    v107 = v173;
    *(v103 + 4) = v191;
    *(v103 + 5) = v107;
    v108 = v154;
    *(v103 + 6) = v172;
    *(v103 + 7) = v108;
    v109 = v152;
    *(v103 + 8) = v153;
    *(v103 + 9) = v109;
    *(v103 + 10) = v151;
    *(v103 + 11) = v106;
    v147(&v103[v102], v101, v186);
    v110 = &v184[*(v181 + 36)];
    LODWORD(v101) = *(sub_1E65E3D48() + 20);
    swift_unknownObjectRetain();

    sub_1E65E6068();
    *v110 = &unk_1E6608978;
    *(v110 + 1) = v103;
    v111 = sub_1E65E4FD8();
    v112 = v170;
    (*(*(v111 - 8) + 56))(v170, 1, 1, v111);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v113 = sub_1E65E5018();
    __swift_project_value_buffer(v113, qword_1EE2D49E8);
    v114 = sub_1E65E2E78();
    v115 = v171;
    (*(*(v114 - 8) + 56))(v171, 1, 1, v114);
    sub_1E64FA650();
    v116 = v169;
    v117 = v149;
    v118 = v184;
    sub_1E65E4728();
    sub_1E5DFE50C(v115, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v112, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v118, &qword_1ED07AAC8, &qword_1E6608948);
    (*(v167 + 8))(v180, v168);
    v119 = swift_allocObject();
    v119[2] = v104;
    v119[3] = v117;
    v121 = v172;
    v120 = v173;
    v119[4] = v191;
    v119[5] = v120;
    v123 = v153;
    v122 = v154;
    v119[6] = v121;
    v119[7] = v122;
    v125 = v151;
    v124 = v152;
    v119[8] = v123;
    v119[9] = v124;
    v126 = v150;
    v119[10] = v125;
    v119[11] = v126;
    v127 = (v116 + *(v174 + 36));
    *v127 = 0;
    v127[1] = 0;
    v127[2] = sub_1E5F99E38;
    v127[3] = v119;
    sub_1E5DFD1CC(v116, v177, &qword_1ED07AAD0, &qword_1E6608950);
    swift_storeEnumTagMultiPayload();
    sub_1E64FA588();
    v128 = v175;
    sub_1E65E4138();
    sub_1E5DFE50C(v116, &qword_1ED07AAD0, &qword_1E6608950);
    v129 = v186;
    v57 = v145;
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v136 = sub_1E65E3B68();
    __swift_project_value_buffer(v136, qword_1EE2EA2A0);
    v137 = sub_1E65E3B48();
    v138 = sub_1E65E6338();
    v139 = os_log_type_enabled(v137, v138);
    v128 = v175;
    v129 = v65;
    if (v139)
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_1E5DE9000, v137, v138, "Missing page metrics for award toast resource, returning EmptyView", v140, 2u);
      MEMORY[0x1E694F1C0](v140, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    sub_1E64FA588();
    sub_1E65E4138();
  }

  sub_1E5DFD1CC(v128, v189, &qword_1ED07AAD8, &qword_1E6608958);
  swift_storeEnumTagMultiPayload();
  sub_1E64FA4FC();
  sub_1E65E4138();
  sub_1E5DFD1CC(v57, v52, &qword_1ED07AAF0, &qword_1E6608970);
  swift_storeEnumTagMultiPayload();
  sub_1E64FA470();
  sub_1E64FA8B8(&qword_1ED07AB28, MEMORY[0x1E699E170]);
  sub_1E65E4138();
  sub_1E5DFE50C(v57, &qword_1ED07AAF0, &qword_1E6608970);
  sub_1E5DFE50C(v128, &qword_1ED07AAD8, &qword_1E6608958);
  return (*(v185 + 8))(v187, v129);
}

uint64_t sub_1E64FA410()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1E64D7304(v2);
}

unint64_t sub_1E64FA470()
{
  result = qword_1ED07AAF8;
  if (!qword_1ED07AAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AAF0, &qword_1E6608970);
    sub_1E64FA4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AAF8);
  }

  return result;
}

unint64_t sub_1E64FA4FC()
{
  result = qword_1ED07AB00;
  if (!qword_1ED07AB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AAD8, &qword_1E6608958);
    sub_1E64FA588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AB00);
  }

  return result;
}

unint64_t sub_1E64FA588()
{
  result = qword_1ED07AB08;
  if (!qword_1ED07AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AAD0, &qword_1E6608950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AAC8, &qword_1E6608948);
    sub_1E64FA650();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AB08);
  }

  return result;
}

unint64_t sub_1E64FA650()
{
  result = qword_1ED07AB10;
  if (!qword_1ED07AB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AAC8, &qword_1E6608948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AAC0, &qword_1E6608940);
    sub_1E64FA748();
    swift_getOpaqueTypeConformance2();
    sub_1E64FA8B8(&qword_1ED07AB20, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AB10);
  }

  return result;
}

unint64_t sub_1E64FA748()
{
  result = qword_1ED07AB18;
  if (!qword_1ED07AB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AAC0, &qword_1E6608940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AB18);
  }

  return result;
}

uint64_t sub_1E64FA7AC()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1E65DBB88() - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = *(v0 + v3 + 8);
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6372A6C((v0 + v2), v6, v7, v0 + v5, v8);
}

uint64_t sub_1E64FA8B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E64FA900()
{
  v2 = *(sub_1E65DBB88() - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E63752A4(v0 + 16, v0 + v3);
}

uint64_t sub_1E64FA9D0(uint64_t a1)
{
  v2 = type metadata accessor for ToastResource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E64FAA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1E601C1F4(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1E601C1F4((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1E5F87098(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E64FAC48@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730C8, &qword_1E65ECF20);
  v78 = *(v74 - 8);
  v1 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v57 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FF8, &qword_1E65ECE50);
  v75 = *(v72 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v82 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = v57 - v10;
  v79 = sub_1E65DD1A8();
  v64 = *(v79 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1E65DB268();
  v14 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v63 = v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075910, &qword_1E65F2248);
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v83 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABE0, &qword_1E6608DB8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v57 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B0, &qword_1E65EDD40);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v57 - v32;
  sub_1E5DFD1CC(v84, v57 - v32, &qword_1ED0739B0, &qword_1E65EDD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v83;
    (*(v66 + 32))(v83, v33, v19);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948);
    v36 = v64;
    v84 = *(v35 + 48);
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1ED075918, MEMORY[0x1E699EF60]);
    v37 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v36 + 8))(v13, v37);
    v85 = sub_1E65DC458();
    v86 = v38;
    sub_1E65DC488();
    sub_1E651D5E4(&qword_1EE2D6B60, MEMORY[0x1E699DC60]);
    sub_1E65E1748();
    (*(v66 + 8))(v34, v19);
  }

  else
  {
    v39 = v64;
    v84 = v13;
    v61 = v26;
    (*(v26 + 32))(v29, v33, v25);
    sub_1E65DC3E8();
    v62 = v25;
    v60 = v29;
    v40 = sub_1E65DC408();
    v41 = *(v40 + 16);
    if (v41)
    {
      v58 = v24;
      v59 = v19;
      v85 = MEMORY[0x1E69E7CC0];
      sub_1E601BE64(0, v41, 0);
      v83 = v85;
      v71 = *(v78 + 16);
      v42 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v57[1] = v40;
      v43 = v40 + v42;
      v44 = *(v78 + 72);
      v69 = (v39 + 8);
      v70 = v44;
      v78 += 16;
      v67 = v75 + 32;
      v68 = (v78 - 8);
      v45 = v82;
      v46 = v79;
      do
      {
        v82 = v41;
        v48 = v73;
        v47 = v74;
        v71(v73, v43, v74);
        sub_1E65DC338();
        sub_1E651D5E4(&qword_1ED075918, MEMORY[0x1E699EF60]);
        sub_1E65DC298();
        sub_1E65DC288();
        v49 = v84;
        sub_1E65DB248();
        (*v69)(v49, v46);
        sub_1E65DC348();
        sub_1E65DC318();
        sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
        sub_1E65DC328();
        (*v68)(v48, v47);
        v85 = v83;
        v51 = *(v83 + 2);
        v50 = *(v83 + 3);
        v52 = v83;
        if (v51 >= v50 >> 1)
        {
          sub_1E601BE64(v50 > 1, v51 + 1, 1);
          v52 = v85;
        }

        v83 = v52;
        *(v52 + 2) = v51 + 1;
        (*(v75 + 32))(&v52[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v51], v45, v72);
        v43 += v70;
        v41 = (v82 - 1);
      }

      while (v82 != 1);

      v53 = v59;
      v39 = v64;
      v24 = v58;
    }

    else
    {

      v83 = MEMORY[0x1E69E7CC0];
      v53 = v19;
    }

    v54 = v84;
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1ED075918, MEMORY[0x1E699EF60]);
    v55 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v39 + 8))(v54, v55);
    sub_1E65DC458();
    sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    sub_1E65DC438();
    sub_1E65DC3F8();
    (*(v66 + 8))(v24, v53);
    (*(v61 + 8))(v60, v62);
  }

  type metadata accessor for ArtworkContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64FB75C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FF8, &qword_1E65ECE50);
  v76 = *(v74 - 8);
  v1 = *(v76 + 64);
  v2 = MEMORY[0x1EEE9AC00](v74);
  v72 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v55 - v10;
  v79 = sub_1E65DB268();
  v64 = *(v79 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x1EEE9AC00](v79);
  v75 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v62 = *(v65 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x1EEE9AC00](v65);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v55 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v55 - v29;
  sub_1E5DFD1CC(v81, &v55 - v29, &qword_1ED074530, &qword_1E65F0CA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v62;
    v32 = v65;
    (*(v62 + 32))(v19, v30, v65);
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v33 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v64 + 8))(v15, v33);
    v82 = sub_1E65DC458();
    v83 = v34;
    sub_1E65DC488();
    sub_1E651D5E4(&qword_1EE2D6B60, MEMORY[0x1E699DC60]);
    sub_1E65E1748();
    (*(v31 + 8))(v19, v32);
  }

  else
  {
    v35 = v65;
    v73 = v15;
    v60 = v19;
    v58 = v23;
    (*(v23 + 32))(v26, v30, v22);
    sub_1E65DC3E8();
    v59 = v22;
    v57 = v26;
    v36 = sub_1E65DC408();
    v37 = *(v36 + 16);
    if (v37)
    {
      v56 = v21;
      v82 = MEMORY[0x1E69E7CC0];
      sub_1E601BE64(0, v37, 0);
      v81 = v82;
      v71 = *(v76 + 16);
      v38 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v55 = v36;
      v70 = v38;
      v39 = v36 + v38;
      v40 = *(v76 + 72);
      v68 = (v64 + 8);
      v69 = v40;
      v76 += 16;
      v66 = (v76 + 16);
      v67 = (v76 - 8);
      v41 = v79;
      v42 = v74;
      v43 = v61;
      v44 = v72;
      do
      {
        v80 = v37;
        v71(v44, v39, v42);
        v45 = v75;
        sub_1E65DC338();
        sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
        sub_1E65DC298();
        sub_1E65DC288();
        v42 = v74;
        sub_1E65DB248();
        (*v68)(v45, v41);
        sub_1E65DC348();
        sub_1E65DC318();
        v41 = v79;
        sub_1E65DC328();
        (*v67)(v44, v42);
        v46 = v81;
        v82 = v81;
        v48 = *(v81 + 16);
        v47 = *(v81 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1E601BE64(v47 > 1, v48 + 1, 1);
          v43 = v61;
          v46 = v82;
        }

        v81 = v46;
        *(v46 + 16) = v48 + 1;
        v49 = v69;
        (*v66)(v46 + v70 + v48 * v69, v43, v42);
        v39 += v49;
        v37 = v80 - 1;
      }

      while (v80 != 1);

      v51 = v64;
      v50 = v65;
      v21 = v56;
    }

    else
    {

      v81 = MEMORY[0x1E69E7CC0];
      v51 = v64;
      v50 = v35;
    }

    v52 = v75;
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v53 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v51 + 8))(v52, v53);
    sub_1E65DC458();
    sub_1E65DC438();
    sub_1E65DC3F8();
    (*(v62 + 8))(v21, v50);
    (*(v58 + 8))(v57, v59);
  }

  type metadata accessor for ArtworkContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64FC0F0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FD8, &qword_1E65ECE30);
  v78 = *(v74 - 8);
  v1 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v57 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FF8, &qword_1E65ECE50);
  v75 = *(v72 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v82 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = v57 - v10;
  v79 = sub_1E65DFA38();
  v64 = *(v79 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1E65DB268();
  v14 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v63 = v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075908, &qword_1E65F2240);
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v83 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABD0, &qword_1E6608D70);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v57 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v57 - v32;
  sub_1E5DFD1CC(v84, v57 - v32, &qword_1ED0758D8, &qword_1E65F1FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v83;
    (*(v66 + 32))(v83, v33, v19);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948);
    v36 = v64;
    v84 = *(v35 + 48);
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1EE2D6600, MEMORY[0x1E699D480]);
    v37 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v36 + 8))(v13, v37);
    v85 = sub_1E65DC458();
    v86 = v38;
    sub_1E65DC488();
    sub_1E651D5E4(&qword_1EE2D6B60, MEMORY[0x1E699DC60]);
    sub_1E65E1748();
    (*(v66 + 8))(v34, v19);
  }

  else
  {
    v39 = v64;
    v84 = v13;
    v61 = v26;
    (*(v26 + 32))(v29, v33, v25);
    sub_1E65DC3E8();
    v62 = v25;
    v60 = v29;
    v40 = sub_1E65DC408();
    v41 = *(v40 + 16);
    if (v41)
    {
      v58 = v24;
      v59 = v19;
      v85 = MEMORY[0x1E69E7CC0];
      sub_1E601BE64(0, v41, 0);
      v83 = v85;
      v71 = *(v78 + 16);
      v42 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v57[1] = v40;
      v43 = v40 + v42;
      v44 = *(v78 + 72);
      v69 = (v39 + 8);
      v70 = v44;
      v78 += 16;
      v67 = v75 + 32;
      v68 = (v78 - 8);
      v45 = v82;
      v46 = v79;
      do
      {
        v82 = v41;
        v48 = v73;
        v47 = v74;
        v71(v73, v43, v74);
        sub_1E65DC338();
        sub_1E651D5E4(&qword_1EE2D6600, MEMORY[0x1E699D480]);
        sub_1E65DC298();
        sub_1E65DC288();
        v49 = v84;
        sub_1E65DB248();
        (*v69)(v49, v46);
        sub_1E65DC348();
        sub_1E65DC318();
        sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
        sub_1E65DC328();
        (*v68)(v48, v47);
        v85 = v83;
        v51 = *(v83 + 2);
        v50 = *(v83 + 3);
        v52 = v83;
        if (v51 >= v50 >> 1)
        {
          sub_1E601BE64(v50 > 1, v51 + 1, 1);
          v52 = v85;
        }

        v83 = v52;
        *(v52 + 2) = v51 + 1;
        (*(v75 + 32))(&v52[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v51], v45, v72);
        v43 += v70;
        v41 = (v82 - 1);
      }

      while (v82 != 1);

      v53 = v59;
      v39 = v64;
      v24 = v58;
    }

    else
    {

      v83 = MEMORY[0x1E69E7CC0];
      v53 = v19;
    }

    v54 = v84;
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1EE2D6600, MEMORY[0x1E699D480]);
    v55 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v39 + 8))(v54, v55);
    sub_1E65DC458();
    sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    sub_1E65DC438();
    sub_1E65DC3F8();
    (*(v66 + 8))(v24, v53);
    (*(v61 + 8))(v60, v62);
  }

  type metadata accessor for ArtworkContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64FCC04@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073100, &qword_1E65ECF58);
  v78 = *(v74 - 8);
  v1 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v57 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FF8, &qword_1E65ECE50);
  v75 = *(v72 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v82 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = v57 - v10;
  v79 = sub_1E65E3418();
  v64 = *(v79 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1E65DB268();
  v14 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v63 = v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075920, &qword_1E65F2250);
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v83 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABE8, &qword_1E6608DC0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v57 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078CA8, &qword_1E65FF648);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v57 - v32;
  sub_1E5DFD1CC(v84, v57 - v32, &qword_1ED078CA8, &qword_1E65FF648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v83;
    (*(v66 + 32))(v83, v33, v19);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948);
    v36 = v64;
    v84 = *(v35 + 48);
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1ED075928, MEMORY[0x1E699EC58]);
    v37 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v36 + 8))(v13, v37);
    v85 = sub_1E65DC458();
    v86 = v38;
    sub_1E65DC488();
    sub_1E651D5E4(&qword_1EE2D6B60, MEMORY[0x1E699DC60]);
    sub_1E65E1748();
    (*(v66 + 8))(v34, v19);
  }

  else
  {
    v39 = v64;
    v84 = v13;
    v61 = v26;
    (*(v26 + 32))(v29, v33, v25);
    sub_1E65DC3E8();
    v62 = v25;
    v60 = v29;
    v40 = sub_1E65DC408();
    v41 = *(v40 + 16);
    if (v41)
    {
      v58 = v24;
      v59 = v19;
      v85 = MEMORY[0x1E69E7CC0];
      sub_1E601BE64(0, v41, 0);
      v83 = v85;
      v71 = *(v78 + 16);
      v42 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v57[1] = v40;
      v43 = v40 + v42;
      v44 = *(v78 + 72);
      v69 = (v39 + 8);
      v70 = v44;
      v78 += 16;
      v67 = v75 + 32;
      v68 = (v78 - 8);
      v45 = v82;
      v46 = v79;
      do
      {
        v82 = v41;
        v48 = v73;
        v47 = v74;
        v71(v73, v43, v74);
        sub_1E65DC338();
        sub_1E651D5E4(&qword_1ED075928, MEMORY[0x1E699EC58]);
        sub_1E65DC298();
        sub_1E65DC288();
        v49 = v84;
        sub_1E65DB248();
        (*v69)(v49, v46);
        sub_1E65DC348();
        sub_1E65DC318();
        sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
        sub_1E65DC328();
        (*v68)(v48, v47);
        v85 = v83;
        v51 = *(v83 + 2);
        v50 = *(v83 + 3);
        v52 = v83;
        if (v51 >= v50 >> 1)
        {
          sub_1E601BE64(v50 > 1, v51 + 1, 1);
          v52 = v85;
        }

        v83 = v52;
        *(v52 + 2) = v51 + 1;
        (*(v75 + 32))(&v52[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v51], v45, v72);
        v43 += v70;
        v41 = (v82 - 1);
      }

      while (v82 != 1);

      v53 = v59;
      v39 = v64;
      v24 = v58;
    }

    else
    {

      v83 = MEMORY[0x1E69E7CC0];
      v53 = v19;
    }

    v54 = v84;
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1ED075928, MEMORY[0x1E699EC58]);
    v55 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v39 + 8))(v54, v55);
    sub_1E65DC458();
    sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    sub_1E65DC438();
    sub_1E65DC3F8();
    (*(v66 + 8))(v24, v53);
    (*(v61 + 8))(v60, v62);
  }

  type metadata accessor for ArtworkContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64FD718@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731F0, &qword_1E65ED048);
  v78 = *(v74 - 8);
  v1 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v57 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FF8, &qword_1E65ECE50);
  v75 = *(v72 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v82 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = v57 - v10;
  v79 = sub_1E65E3328();
  v64 = *(v79 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1E65DB268();
  v14 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v63 = v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075938, &qword_1E65F2260);
  v66 = *(v19 - 8);
  v20 = *(v66 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v83 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ABF0, &qword_1E6608DC8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v57 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077688, &qword_1E65FA350);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v57 - v32;
  sub_1E5DFD1CC(v84, v57 - v32, &qword_1ED077688, &qword_1E65FA350);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v83;
    (*(v66 + 32))(v83, v33, v19);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948);
    v36 = v64;
    v84 = *(v35 + 48);
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1ED075940, MEMORY[0x1E699EBC8]);
    v37 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v36 + 8))(v13, v37);
    v85 = sub_1E65DC458();
    v86 = v38;
    sub_1E65DC488();
    sub_1E651D5E4(&qword_1EE2D6B60, MEMORY[0x1E699DC60]);
    sub_1E65E1748();
    (*(v66 + 8))(v34, v19);
  }

  else
  {
    v39 = v64;
    v84 = v13;
    v61 = v26;
    (*(v26 + 32))(v29, v33, v25);
    sub_1E65DC3E8();
    v62 = v25;
    v60 = v29;
    v40 = sub_1E65DC408();
    v41 = *(v40 + 16);
    if (v41)
    {
      v58 = v24;
      v59 = v19;
      v85 = MEMORY[0x1E69E7CC0];
      sub_1E601BE64(0, v41, 0);
      v83 = v85;
      v71 = *(v78 + 16);
      v42 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v57[1] = v40;
      v43 = v40 + v42;
      v44 = *(v78 + 72);
      v69 = (v39 + 8);
      v70 = v44;
      v78 += 16;
      v67 = v75 + 32;
      v68 = (v78 - 8);
      v45 = v82;
      v46 = v79;
      do
      {
        v82 = v41;
        v48 = v73;
        v47 = v74;
        v71(v73, v43, v74);
        sub_1E65DC338();
        sub_1E651D5E4(&qword_1ED075940, MEMORY[0x1E699EBC8]);
        sub_1E65DC298();
        sub_1E65DC288();
        v49 = v84;
        sub_1E65DB248();
        (*v69)(v49, v46);
        sub_1E65DC348();
        sub_1E65DC318();
        sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
        sub_1E65DC328();
        (*v68)(v48, v47);
        v85 = v83;
        v51 = *(v83 + 2);
        v50 = *(v83 + 3);
        v52 = v83;
        if (v51 >= v50 >> 1)
        {
          sub_1E601BE64(v50 > 1, v51 + 1, 1);
          v52 = v85;
        }

        v83 = v52;
        *(v52 + 2) = v51 + 1;
        (*(v75 + 32))(&v52[((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v51], v45, v72);
        v43 += v70;
        v41 = (v82 - 1);
      }

      while (v82 != 1);

      v53 = v59;
      v39 = v64;
      v24 = v58;
    }

    else
    {

      v83 = MEMORY[0x1E69E7CC0];
      v53 = v19;
    }

    v54 = v84;
    sub_1E65DC448();
    sub_1E651D5E4(&qword_1ED075940, MEMORY[0x1E699EBC8]);
    v55 = v79;
    sub_1E65DC298();
    sub_1E65DC288();
    sub_1E65DB248();
    (*(v39 + 8))(v54, v55);
    sub_1E65DC458();
    sub_1E651D5E4(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    sub_1E65DC438();
    sub_1E65DC3F8();
    (*(v66 + 8))(v24, v53);
    (*(v61 + 8))(v60, v62);
  }

  type metadata accessor for ArtworkContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E64FE26C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a6;
  v43 = a5;
  v42 = a4;
  v47 = a2;
  v44 = a1;
  v54 = a9;
  v13 = sub_1E65E0AA8();
  v14 = *(v13 - 8);
  v52 = v13;
  v53 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727C0, &qword_1E65EBC40);
  v46 = *(v17 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727B8, &qword_1E65EBC38);
  v50 = *(v48 - 8);
  v21 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v23 = &v41 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727B0, &qword_1E65EBC30);
  v51 = *(v24 - 8);
  v25 = *(v51 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v41 - v29;
  v55 = a3;
  v56 = v42;
  v57 = v43;
  v58 = v45;
  v59 = a7;
  v60 = a8;
  v61 = v44;
  v62 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB80, &qword_1E6608A40);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074380, &qword_1E65F0970);
  v32 = sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v63 = v31;
  v64 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1E65E3C18();
  v33 = sub_1E5FED46C(&qword_1ED0727C8, &qword_1ED0727C0, &qword_1E65EBC40);
  sub_1E65E4878();
  (*(v46 + 8))(v20, v17);
  v34 = v49;
  sub_1E65E4198();
  v63 = v17;
  v64 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_1E651D5E4(&qword_1EE2D6550, MEMORY[0x1E699DB08]);
  v37 = v48;
  v38 = v52;
  sub_1E65E48B8();
  (*(v53 + 8))(v34, v38);
  (*(v50 + 8))(v23, v37);
  v63 = v37;
  v64 = v38;
  v65 = OpaqueTypeConformance2;
  v66 = v36;
  swift_getOpaqueTypeConformance2();
  sub_1E5FEE4C8(v28);
  v39 = *(v51 + 8);
  v39(v28, v24);
  sub_1E5FEE4C8(v30);
  return (v39)(v30, v24);
}

uint64_t sub_1E64FE7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v118 = a3;
  v119 = a8;
  v116 = a7;
  v117 = a1;
  v122 = a6;
  v114 = a5;
  v115 = a9;
  v125 = a2;
  v123 = sub_1E65D76F8();
  v99 = *(v123 - 8);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v124 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v85 - v18;
  v104 = v85 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v121 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v85 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v27 = *(v26 - 8);
  v110 = v26;
  v111 = v27;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v105 = v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v107 = v85 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v108 = v85 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB80, &qword_1E6608A40);
  v35 = *(v34 - 8);
  v112 = v34;
  v113 = v35;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v106 = v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v109 = v85 - v39;
  v40 = sub_1E65E3E08();
  v41 = *(v40 - 8);
  v42 = *(v41 + 16);
  v120 = v25;
  v42(v25, v116, v40);
  (*(v41 + 56))(v25, 0, 1, v40);
  (*(v16 + 104))(v19, *MEMORY[0x1E699D720], v15);
  v43 = v117;
  sub_1E5E1DE44(v117, v14, type metadata accessor for AppComposer);
  v44 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v103 = swift_allocObject();
  sub_1E5E1EB40(v14, v103 + v44, type metadata accessor for AppComposer);
  sub_1E5E1DE44(v43, v14, type metadata accessor for AppComposer);
  v102 = swift_allocObject();
  v116 = v44;
  sub_1E5E1EB40(v14, v102 + v44, type metadata accessor for AppComposer);
  v90 = type metadata accessor for AppComposer;
  sub_1E5E1DE44(v43, v14, type metadata accessor for AppComposer);
  v45 = v44 + v13;
  v91 = v44 + v13;
  v101 = swift_allocObject();
  v86 = type metadata accessor for AppComposer;
  sub_1E5E1EB40(v14, v101 + v44, type metadata accessor for AppComposer);
  v46 = v14;
  sub_1E5E1DE44(v43, v14, type metadata accessor for AppComposer);
  sub_1E5DF650C(v118, &v126);
  v47 = a4;
  v94 = *a4;
  v95 = a4[3];
  v96 = a4[5];
  v97 = a4[7];
  v98 = a4[9];
  v48 = v99;
  v49 = *(v99 + 16);
  v92 = v99 + 16;
  v93 = v49;
  v49(v124, v119, v123);
  v50 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = v50;
  v51 = (v50 + 47) & 0xFFFFFFFFFFFFFFF8;
  v88 = v51;
  v52 = (v51 + 87) & 0xFFFFFFFFFFFFFFF8;
  v89 = v52 + 8;
  v53 = (v52 + 8 + *(v48 + 80)) & ~*(v48 + 80);
  v54 = swift_allocObject();
  sub_1E5E1EB40(v46, v54 + v116, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v126, v54 + v50);
  v100 = v54;
  v55 = (v54 + v51);
  v56 = v47[3];
  v55[2] = v47[2];
  v55[3] = v56;
  v55[4] = v47[4];
  v57 = v47[1];
  *v55 = *v47;
  v55[1] = v57;
  *(v54 + v52) = v125;
  v58 = v54 + v53;
  v59 = v124;
  (*(v48 + 32))(v58, v124, v123);
  v60 = v117;
  v61 = v46;
  v62 = v46;
  v63 = v90;
  sub_1E5E1DE44(v117, v62, v90);
  sub_1E5DF650C(v118, &v126);
  v64 = swift_allocObject();
  v65 = v116;
  v66 = v86;
  sub_1E5E1EB40(v61, v64 + v116, v86);
  sub_1E5DF599C(&v126, v64 + v87);
  v67 = (v64 + v88);
  v118 = v64;
  v68 = v47[3];
  v67[2] = v47[2];
  v67[3] = v68;
  v67[4] = v47[4];
  v69 = v47[1];
  *v67 = *v47;
  v67[1] = v69;
  *(v64 + v52) = v125;
  sub_1E5E1DE44(v60, v61, v63);
  v117 = swift_allocObject();
  sub_1E5E1EB40(v61, v117 + v65, v66);
  sub_1E5DFD1CC(v120, v121, &qword_1ED074410, &qword_1E65F0B78);
  v93(v59, v119, v123);
  v123 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v116 = type metadata accessor for ArtworkDescriptor();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v96 = type metadata accessor for ContextMenu(0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v93 = type metadata accessor for ItemContext();
  v92 = type metadata accessor for ItemMetrics();
  v91 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v89 = type metadata accessor for SectionMetrics();
  v88 = type metadata accessor for ViewDescriptor();
  v87 = sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v86 = sub_1E60731B0();
  v85[5] = sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v85[4] = sub_1E5FEB2FC();
  v85[3] = sub_1E60C08DC();
  v85[2] = sub_1E60C15C0();
  v85[1] = sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v72 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  *&v126 = v71;
  *(&v126 + 1) = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v126 = v70;
  *(&v126 + 1) = OpaqueTypeConformance2;
  v85[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E651D5E4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E651D5E4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v74 = v105;
  sub_1E65DC198();
  sub_1E5DFE50C(v120, &qword_1ED074410, &qword_1E65F0B78);
  v75 = sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v76 = v107;
  v77 = v110;
  sub_1E5FEE4C8(v74);
  v78 = *(v111 + 8);
  v78(v74, v77);
  v79 = v108;
  sub_1E5FEE4C8(v76);
  v78(v76, v77);
  v80 = v106;
  sub_1E65E4888();
  v78(v79, v77);
  *&v126 = v77;
  *(&v126 + 1) = v75;
  swift_getOpaqueTypeConformance2();
  v81 = v109;
  v82 = v112;
  sub_1E5FEE4C8(v80);
  v83 = *(v113 + 8);
  v83(v80, v82);
  sub_1E5FEE4C8(v81);
  return (v83)(v81, v82);
}

uint64_t sub_1E64FF820(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v69 = a8;
  v62 = a4;
  v63 = a6;
  v67 = a5;
  v65 = a2;
  v66 = a3;
  v58 = a1;
  v61 = a11;
  v68 = a9;
  v55 = a10;
  v71 = sub_1E65E3C48();
  v12 = *(v71 - 8);
  v64 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65E3D38();
  v52 = v14;
  v15 = *(v14 - 8);
  v56 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v17;
  v18 = sub_1E65D76F8();
  v51 = v18;
  v19 = *(v18 - 8);
  v50 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v21;
  v22 = type metadata accessor for AppComposer();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v49 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DE44(v62, v49, type metadata accessor for AppComposer);
  sub_1E5DF650C(v63, v73);
  v57 = *a7;
  v25 = a7[5];
  v59 = a7[3];
  v60 = v25;
  v26 = a7[9];
  v62 = a7[7];
  v63 = v26;
  v46 = v19;
  (*(v19 + 16))(v21, v55, v18);
  v47 = v15;
  (*(v15 + 16))(v17, v58, v14);
  v48 = v12;
  (*(v12 + 16))(v70, v61, v71);
  v27 = (*(v23 + 80) + 18) & ~*(v23 + 80);
  v28 = (v24 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 47) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 87) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v19 + 80) + v31 + 16) & ~*(v19 + 80);
  v33 = (v50 + *(v15 + 80) + v32) & ~*(v15 + 80);
  v61 = (v56 + *(v12 + 80) + v33) & ~*(v12 + 80);
  v34 = swift_allocObject();
  v35 = v66;
  *(v34 + 16) = v65;
  *(v34 + 17) = v35;
  sub_1E5E1EB40(v49, v34 + v27, type metadata accessor for AppComposer);
  *(v34 + v28) = v67;
  sub_1E5DF599C(v73, v34 + v29);
  v36 = (v34 + v30);
  v37 = *(a7 + 3);
  v36[2] = *(a7 + 2);
  v36[3] = v37;
  v36[4] = *(a7 + 4);
  v38 = *(a7 + 1);
  *v36 = *a7;
  v36[1] = v38;
  v39 = (v34 + v31);
  v40 = v68;
  *v39 = v69;
  v39[1] = v40;
  (*(v46 + 32))(v34 + v32, v53, v51);
  (*(v47 + 32))(v34 + v33, v54, v52);
  (*(v48 + 32))(v34 + v61, v70, v71);

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB40, &qword_1E6608990);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07AB48, &qword_1E6608998);
  v42 = sub_1E651B990();
  v74 = v41;
  v75 = v42;
  swift_getOpaqueTypeConformance2();
  *&v73[0] = sub_1E65E3E28();
  *(&v73[0] + 1) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727D0, &qword_1E65EBC48);
  sub_1E5FED46C(&qword_1ED0727D8, &qword_1ED0727D0, &qword_1E65EBC48);
  sub_1E5FEE4C8(v73);

  v72[0] = v74;
  v72[1] = v75;
  sub_1E5FEE4C8(v72);

  return *&v73[0];
}

uint64_t sub_1E64FFE4C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v70 = a8;
  v56 = a7;
  v55 = a6;
  v54 = a5;
  v53 = a4;
  v58 = a3;
  v57 = a2;
  v74 = a9;
  v73 = a13;
  v72 = sub_1E65E3E08();
  v71 = *(v72 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v68 = v15;
  v69 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E65E4188();
  v62 = *(v63 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB58, &qword_1E66089A0);
  v59 = *(v19 - 8);
  v20 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - v21;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB68, &qword_1E66089A8);
  v60 = *(v61 - 8);
  v23 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v25 = &v52 - v24;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB48, &qword_1E6608998);
  v26 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v52 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB40, &qword_1E6608990);
  v67 = *(v29 - 8);
  v30 = *(v67 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v64 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v65 = &v52 - v33;
  v75 = v53;
  v76 = v54;
  v77 = v55;
  v78 = v56;
  v79 = v70;
  v80 = a10;
  v70 = a1;
  v81 = a1;
  v82 = a11;
  v83 = a12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB70, &qword_1E66089B0);
  sub_1E651BAF4();
  sub_1E65E3C18();
  sub_1E65E4168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760B8, &qword_1E65F4950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EB9E0;
  v35 = sub_1E65E43F8();
  *(inited + 32) = v35;
  v36 = sub_1E65E4418();
  *(inited + 33) = v36;
  sub_1E65E4408();
  sub_1E65E4408();
  if (sub_1E65E4408() != v35)
  {
    sub_1E65E4408();
  }

  sub_1E65E4408();
  if (sub_1E65E4408() != v36)
  {
    sub_1E65E4408();
  }

  v37 = sub_1E5FED46C(&qword_1ED07AB60, &qword_1ED07AB58, &qword_1E66089A0);
  sub_1E65E48A8();
  (*(v62 + 8))(v18, v63);
  (*(v59 + 8))(v22, v19);
  v38 = sub_1E65E4458();
  v84 = v19;
  v85 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v61;
  sub_1E6501658(v38, 0x4034000000000000, 0, v61, OpaqueTypeConformance2);
  (*(v60 + 8))(v25, v40);
  v41 = v71;
  v42 = v69;
  v43 = v72;
  (*(v71 + 16))(v69, v70, v72);
  v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v45 = swift_allocObject();
  (*(v41 + 32))(v45 + v44, v42, v43);
  v46 = sub_1E651B990();
  v47 = v64;
  v48 = v66;
  sub_1E65E48D8();

  sub_1E5DFE50C(v28, &qword_1ED07AB48, &qword_1E6608998);
  v84 = v48;
  v85 = v46;
  swift_getOpaqueTypeConformance2();
  v49 = v65;
  sub_1E5FEE4C8(v47);
  v50 = *(v67 + 8);
  v50(v47, v29);
  sub_1E5FEE4C8(v49);
  return (v50)(v49, v29);
}

uint64_t sub_1E65005C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v116 = a8;
  v112 = a7;
  v119 = a6;
  v109 = a5;
  v87 = a4;
  v114 = a3;
  v115 = a2;
  v120 = a1;
  v110 = a9;
  v113 = sub_1E65D76F8();
  v95 = *(v113 - 8);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v121 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v80 - v17;
  v101 = v80 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v118 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v80 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v102 = *(v103 - 8);
  v25 = *(v102 + 64);
  v26 = MEMORY[0x1EEE9AC00](v103);
  v104 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v105 = v80 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v100 = v80 - v30;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AB70, &qword_1E66089B0);
  v31 = *(*(v108 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v108);
  v106 = v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v107 = v80 - v34;
  v35 = sub_1E65E3E08();
  v36 = *(v35 - 8);
  v37 = *(v36 + 16);
  v117 = v24;
  v37(v24, v112, v35);
  (*(v36 + 56))(v24, 0, 1, v35);
  (*(v15 + 104))(v18, *MEMORY[0x1E699D720], v14);
  v38 = v120;
  sub_1E5E1DE44(v120, v13, type metadata accessor for AppComposer);
  v39 = *(v11 + 80);
  v40 = (v39 + 16) & ~v39;
  v41 = v39 | 7;
  v99 = swift_allocObject();
  sub_1E5E1EB40(v13, v99 + v40, type metadata accessor for AppComposer);
  sub_1E5E1DE44(v38, v13, type metadata accessor for AppComposer);
  v112 = v41;
  v98 = swift_allocObject();
  v111 = v40;
  sub_1E5E1EB40(v13, v98 + v40, type metadata accessor for AppComposer);
  v85 = type metadata accessor for AppComposer;
  sub_1E5E1DE44(v38, v13, type metadata accessor for AppComposer);
  v42 = v40 + v12;
  v86 = v40 + v12;
  v97 = swift_allocObject();
  v81 = type metadata accessor for AppComposer;
  sub_1E5E1EB40(v13, v97 + v40, type metadata accessor for AppComposer);
  v43 = v13;
  sub_1E5E1DE44(v38, v13, type metadata accessor for AppComposer);
  sub_1E5DF650C(v114, &v122);
  v44 = v87;
  v90 = *v87;
  v91 = v87[3];
  v92 = v87[5];
  v93 = v87[7];
  v94 = v87[9];
  v45 = v95;
  v46 = *(v95 + 16);
  v88 = v95 + 16;
  v89 = v46;
  v47 = v113;
  v46(v121, v116, v113);
  v48 = (v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
  v82 = v49;
  v50 = (v49 + 87) & 0xFFFFFFFFFFFFFFF8;
  v84 = v50 + 8;
  v83 = v50;
  v51 = (v50 + 8 + *(v45 + 80)) & ~*(v45 + 80);
  v52 = swift_allocObject();
  sub_1E5E1EB40(v43, v52 + v111, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v122, v52 + v48);
  v96 = v52;
  v53 = (v52 + v49);
  v54 = v44[3];
  v53[2] = v44[2];
  v53[3] = v54;
  v53[4] = v44[4];
  v55 = v44[1];
  *v53 = *v44;
  v53[1] = v55;
  v56 = v115;
  *(v52 + v50) = v115;
  v57 = v121;
  (*(v45 + 32))(v52 + v51, v121, v47);
  v58 = v85;
  sub_1E5E1DE44(v120, v43, v85);
  sub_1E5DF650C(v114, &v122);
  v59 = swift_allocObject();
  v60 = v111;
  v61 = v43;
  v62 = v43;
  v63 = v81;
  sub_1E5E1EB40(v61, v59 + v111, v81);
  sub_1E5DF599C(&v122, v59 + v48);
  v64 = (v59 + v82);
  v114 = v59;
  v65 = v44[3];
  v64[2] = v44[2];
  v64[3] = v65;
  v64[4] = v44[4];
  v66 = v44[1];
  *v64 = *v44;
  v64[1] = v66;
  *(v59 + v83) = v56;
  sub_1E5E1DE44(v120, v62, v58);
  v120 = swift_allocObject();
  sub_1E5E1EB40(v62, v120 + v60, v63);
  sub_1E5DFD1CC(v117, v118, &qword_1ED074410, &qword_1E65F0B78);
  v89(v57, v116, v113);
  v116 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v112 = type metadata accessor for ArtworkDescriptor();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v93 = type metadata accessor for ContextMenu(0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v90 = type metadata accessor for ItemContext();
  v89 = type metadata accessor for ItemMetrics();
  v88 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v86 = type metadata accessor for SectionMetrics();
  v85 = type metadata accessor for ViewDescriptor();
  v84 = sub_1E651D5E4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v83 = sub_1E60731B0();
  v82 = sub_1E651D5E4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v81 = sub_1E5FEB2FC();
  v80[4] = sub_1E60C08DC();
  v80[3] = sub_1E60C15C0();
  v80[2] = sub_1E651D5E4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v69 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  *&v122 = v68;
  *(&v122 + 1) = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v122 = v67;
  *(&v122 + 1) = OpaqueTypeConformance2;
  v80[1] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E651D5E4(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E651D5E4(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E651D5E4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E651D5E4(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E651D5E4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v71 = v102;
  v72 = v100;
  v73 = v103;
  v74 = v104;
  sub_1E65DC198();
  sub_1E5DFE50C(v117, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v75 = v105;
  sub_1E5FEE4C8(v74);
  v76 = *(v71 + 8);
  v76(v74, v73);
  sub_1E5FEE4C8(v75);
  v76(v75, v73);
  sub_1E65E4448();
  swift_getKeyPath();
  sub_1E65E4EC8();

  if (sub_1E65DC188())
  {
    sub_1E65E3D18();
  }

  v77 = v106;
  sub_1E65E48F8();
  v76(v72, v73);
  sub_1E651BAF4();
  v78 = v107;
  sub_1E5FEE4C8(v77);
  sub_1E5DFE50C(v77, &qword_1ED07AB70, &qword_1E66089B0);
  sub_1E5FEE4C8(v78);
  return sub_1E5DFE50C(v78, &qword_1ED07AB70, &qword_1E66089B0);
}

uint64_t sub_1E6501658(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E65E4288();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0uLL;
  v14 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1E65E3BF8();
    *(&v13 + 1) = v15;
    *(&v14 + 1) = v16;
  }

  v18[0] = v13;
  v18[1] = v14;
  v19 = a3 & 1;
  sub_1E65E4278();
  MEMORY[0x1E694C310](v12, a4, v8, a5);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E6501794@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AppState() + 96) + 8);
}

uint64_t sub_1E65017E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState() + 96);
  v4 = *(v3 + 8);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E6501834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v1049) = a4;
  v1033 = a3;
  v1009 = a2;
  v1048 = a1;
  v1055 = a5;
  v978 = sub_1E65E0A98();
  v976 = *(v978 - 8);
  v6 = *(v976 + 64);
  MEMORY[0x1EEE9AC00](v978);
  v977 = &v969 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E07B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v1039 = &v969 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E05C8();
  v1042 = *(v11 - 8);
  v1043 = v11;
  v12 = *(v1042 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v1034 = &v969 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v1008 = &v969 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v1045 = &v969 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A70, &qword_1E65FEF58);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v1007 = &v969 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v1006 = &v969 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C0, &qword_1E65F1FC8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v984 = &v969 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v980 = &v969 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v983 = &v969 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v979 = &v969 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A78, &qword_1E65FEF60);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v973 = &v969 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v971 = &v969 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v972 = &v969 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v970 = &v969 - v40;
  v41 = sub_1E65D7268();
  v42 = *(v41 - 8);
  v1051 = v41;
  v1052 = v42;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v1050 = &v969 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v1005 = &v969 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v1018 = &v969 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v1016 = &v969 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v1000 = &v969 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v996 = &v969 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v1003 = &v969 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v1017 = &v969 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v1015 = &v969 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v1022 = &v969 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v1019 = &v969 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v998 = &v969 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v1021 = &v969 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v1038 = &v969 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v1037 = &v969 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v1020 = &v969 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v1035 = &v969 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v1036 = &v969 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v981 = &v969 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v990 = &v969 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v988 = &v969 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v982 = &v969 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v987 = &v969 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v989 = &v969 - v92;
  v93 = MEMORY[0x1EEE9AC00](v91);
  v1032 = &v969 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v1041 = &v969 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v1040 = &v969 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v1002 = &v969 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v1014 = &v969 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v995 = &v969 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v1011 = &v969 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v1025 = &v969 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v1024 = &v969 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v1023 = &v969 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v986 = &v969 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v1004 = &v969 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v1001 = &v969 - v118;
  v119 = MEMORY[0x1EEE9AC00](v117);
  v997 = &v969 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v1044 = (&v969 - v122);
  v123 = MEMORY[0x1EEE9AC00](v121);
  v1029 = &v969 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v1028 = &v969 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v1027 = &v969 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v999 = &v969 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v1013 = &v969 - v132;
  MEMORY[0x1EEE9AC00](v131);
  v1012 = &v969 - v133;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  v135 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134 - 8);
  v137 = &v969 - v136;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v139 = *(*(v138 - 8) + 64);
  v140 = MEMORY[0x1EEE9AC00](v138 - 8);
  v1031 = &v969 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v140);
  v1030 = &v969 - v142;
  v1053 = sub_1E65D7348();
  v1047 = *(v1053 - 8);
  v143 = *(v1047 + 64);
  v144 = MEMORY[0x1EEE9AC00](v1053);
  v1046 = &v969 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v144);
  v1026 = &v969 - v146;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v148 = *(*(v147 - 8) + 64);
  v149 = MEMORY[0x1EEE9AC00](v147 - 8);
  v992 = &v969 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = MEMORY[0x1EEE9AC00](v149);
  v991 = &v969 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  v994 = &v969 - v154;
  v155 = MEMORY[0x1EEE9AC00](v153);
  v157 = &v969 - v156;
  v158 = MEMORY[0x1EEE9AC00](v155);
  v160 = &v969 - v159;
  v161 = MEMORY[0x1EEE9AC00](v158);
  v974 = &v969 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  v975 = &v969 - v164;
  v165 = MEMORY[0x1EEE9AC00](v163);
  v167 = &v969 - v166;
  v168 = MEMORY[0x1EEE9AC00](v165);
  v993 = &v969 - v169;
  v170 = MEMORY[0x1EEE9AC00](v168);
  v1010 = &v969 - v171;
  v172 = MEMORY[0x1EEE9AC00](v170);
  v985 = &v969 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v176 = &v969 - v175;
  v177 = MEMORY[0x1EEE9AC00](v174);
  v179 = &v969 - v178;
  v180 = MEMORY[0x1EEE9AC00](v177);
  v182 = &v969 - v181;
  v183 = MEMORY[0x1EEE9AC00](v180);
  v185 = &v969 - v184;
  MEMORY[0x1EEE9AC00](v183);
  v187 = &v969 - v186;
  v1054 = v5;
  switch(sub_1E65DF868())
  {
    case 2u:
    case 0xBu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      sub_1E65E0708();
      v265 = v1049;
      v266 = v1044;
      v267 = v1034;
      v268 = v1033;
      sub_1E65E0598();
      if (v268)
      {

        sub_1E65D7338();
        sub_1E65D72E8();
        v702 = 0;
      }

      else
      {
        v702 = 1;
      }

      v703 = sub_1E65D72D8();
      v1047 = *(v703 - 8);
      v704 = *(v1047 + 56);
      v1048 = v1047 + 56;
      v1049 = v704;
      v704(v266, v702, 1, v703);
      if (v265 >= 2u)
      {
        if (v265 != 3)
        {
          goto LABEL_421;
        }

        (*(v1042 + 16))(v1008, v1045, v1043);
        sub_1E65E0768();
        v762 = v1055;
        sub_1E65E0AB8();
        v763 = v985;
        sub_1E65DF898();
        v764 = sub_1E65DF8A8();
        v765 = sub_1E65DAE38();
        v766 = sub_1E65DAE38();
        v767 = sub_1E65E4B48();
        v768 = 4.0;
        if (v767)
        {
          v768 = 8.0;
        }

        v769 = 18.0;
        if ((v767 & 1) == 0)
        {
          v769 = 16.0;
        }

        if (v765 == v766)
        {
          v770 = v769;
        }

        else
        {
          v770 = v768;
        }

        if (v765 == v766)
        {
          v771 = 12.0;
        }

        else
        {
          v771 = 8.0;
        }

        v772 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B8, &qword_1E65EDD48);
        v773 = v762 + *(v772 + 48);
        v1046 = v772;
        v774 = *(v772 + 64);
        v775 = sub_1E65DF838();
        v777 = v776;
        sub_1E64FC0F0(v773);
        v778 = sub_1E64FAA2C(v764);

        v779 = sub_1E600ACF0(v778);

        sub_1E5DFE50C(v763, &qword_1ED0758D8, &qword_1E65F1FE0);
        v780 = type metadata accessor for ArtworkDescriptor();
        *(v773 + v780[5]) = v779;
        v781 = v773 + v780[6];
        *v781 = 0;
        *(v781 + 8) = v770;
        *(v781 + 16) = v770;
        *(v781 + 24) = v771;
        *(v773 + v780[7]) = 1;
        v782 = (v773 + v780[8]);
        *v782 = v775;
        v782[1] = v777;
        v783 = v997;
        sub_1E65DF938();
        v784 = *(v1047 + 48);
        if (v784(v783, 1, v703) == 1)
        {
          sub_1E5DFE50C(v783, &qword_1ED072D90, &qword_1E66040F0);
          v785 = 1;
          v786 = v1055;
        }

        else
        {
          v787 = v1053;
          if (qword_1ED071AF8 != -1)
          {
            v967 = v1053;
            swift_once();
            v787 = v967;
          }

          __swift_project_value_buffer(v787, qword_1ED096648);
          v789 = v1051;
          v788 = v1052;
          v790 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v786 = v1055;
          v791 = v997;
          sub_1E65D73C8();
          (*(v788 + 8))(v790, v789);
          (*(v1047 + 8))(v791, v703);
          v785 = 0;
        }

        (v1049)(v786 + v774, v785, 1, v703);
        v792 = v1046;
        v793 = *(v1046 + 80);
        v794 = v1001;
        sub_1E65DF958();
        if (v784(v794, 1, v703) == 1)
        {
          sub_1E5DFE50C(v794, &qword_1ED072D90, &qword_1E66040F0);
          v795 = 1;
          v796 = v1055;
        }

        else
        {
          if (qword_1ED071B00 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1ED096660);
          v798 = v1051;
          v797 = v1052;
          v799 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v796 = v1055;
          v800 = v1001;
          sub_1E65D73C8();
          (*(v797 + 8))(v799, v798);
          (*(v1047 + 8))(v800, v703);
          v795 = 0;
        }

        (v1049)(v796 + v793, v795, 1, v703);
        v801 = v792[24];
        v802 = v1004;
        sub_1E65DF948();
        v803 = v784(v802, 1, v703);
        v804 = v1044;
        if (v803 == 1)
        {
          sub_1E5DFE50C(v802, &qword_1ED072D90, &qword_1E66040F0);
          v805 = 1;
          v806 = v1055;
        }

        else
        {
          if (qword_1ED0719F8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1ED096378);
          v808 = v1051;
          v807 = v1052;
          v809 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v806 = v1055;
          v810 = v1004;
          sub_1E65D73C8();
          (*(v807 + 8))(v809, v808);
          (*(v1047 + 8))(v810, v703);
          v805 = 0;
          v804 = v1044;
        }

        (v1049)(v806 + v801, v805, 1, v703);
        v811 = v792[28];
        v812 = v986;
        sub_1E5DFD1CC(v804, v986, &qword_1ED072D90, &qword_1E66040F0);
        if (v784(v812, 1, v703) == 1)
        {
          sub_1E5DFE50C(v804, &qword_1ED072D90, &qword_1E66040F0);
          (*(v1042 + 8))(v1045, v1043);
          sub_1E5DFE50C(v812, &qword_1ED072D90, &qword_1E66040F0);
          v813 = 1;
          v757 = v1055;
        }

        else
        {
          if (qword_1ED071A00 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1EE2EA1F0);
          v815 = v1051;
          v814 = v1052;
          v816 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v757 = v1055;
          sub_1E65D73C8();
          (*(v814 + 8))(v816, v815);
          sub_1E5DFE50C(v804, &qword_1ED072D90, &qword_1E66040F0);
          (*(v1042 + 8))(v1045, v1043);
          (*(v1047 + 8))(v812, v703);
          v813 = 0;
        }

        (v1049)(v757 + v811, v813, 1, v703);
        v761 = v792[32];
      }

      else
      {
        (*(v1042 + 16))(v267, v1045, v1043);
        sub_1E65E05B8();
        if (sub_1E65E4B48())
        {
          sub_1E65DC368();
        }

        sub_1E65E0768();
        v705 = v1055;
        sub_1E65E0AB8();
        v706 = v1010;
        sub_1E65DF898();
        v707 = sub_1E65DF8A8();
        v708 = sub_1E65DAE38();
        v709 = sub_1E65DAE38();
        v710 = sub_1E65E4B48();
        v711 = 4.0;
        if (v710)
        {
          v711 = 8.0;
        }

        v712 = 18.0;
        if ((v710 & 1) == 0)
        {
          v712 = 16.0;
        }

        if (v708 == v709)
        {
          v713 = v712;
        }

        else
        {
          v713 = v711;
        }

        if (v708 == v709)
        {
          v714 = 12.0;
        }

        else
        {
          v714 = 8.0;
        }

        v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B8, &qword_1E65EDD48);
        v716 = v705 + v715[12];
        v1041 = v715[16];
        v717 = sub_1E65DF838();
        v719 = v718;
        sub_1E64FC0F0(v716);
        v720 = sub_1E64FAA2C(v707);

        v721 = sub_1E600ACF0(v720);

        sub_1E5DFE50C(v706, &qword_1ED0758D8, &qword_1E65F1FE0);
        v722 = type metadata accessor for ArtworkDescriptor();
        *(v716 + v722[5]) = v721;
        v723 = v716 + v722[6];
        *v723 = 0;
        *(v723 + 8) = v713;
        *(v723 + 16) = v713;
        *(v723 + 24) = v714;
        *(v716 + v722[7]) = 1;
        v724 = (v716 + v722[8]);
        *v724 = v717;
        v724[1] = v719;
        v725 = v1023;
        sub_1E65DF938();
        v726 = *(v1047 + 48);
        v727 = v726(v725, 1, v703);
        v1046 = v715;
        if (v727 == 1)
        {
          sub_1E5DFE50C(v725, &qword_1ED072D90, &qword_1E66040F0);
          v728 = 1;
          v729 = v1055;
          v730 = v1041;
        }

        else
        {
          v731 = v1053;
          if (qword_1EE2D7250 != -1)
          {
            v965 = v1053;
            swift_once();
            v731 = v965;
          }

          __swift_project_value_buffer(v731, qword_1EE2EA220);
          v733 = v1051;
          v732 = v1052;
          v734 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v729 = v1055;
          v730 = v1041;
          v735 = v1023;
          sub_1E65D73C8();
          (*(v732 + 8))(v734, v733);
          (*(v1047 + 8))(v735, v703);
          v728 = 0;
          v715 = v1046;
        }

        (v1049)(v729 + v730, v728, 1, v703);
        v736 = v715[20];
        v737 = v1024;
        sub_1E65DF958();
        if (v726(v737, 1, v703) == 1)
        {
          sub_1E5DFE50C(v737, &qword_1ED072D90, &qword_1E66040F0);
          v738 = 1;
          v739 = v1055;
        }

        else
        {
          if (qword_1EE2D7248 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1EE2EA208);
          v741 = v1051;
          v740 = v1052;
          v742 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v739 = v1055;
          v743 = v1024;
          sub_1E65D73C8();
          (*(v740 + 8))(v742, v741);
          (*(v1047 + 8))(v743, v703);
          v738 = 0;
          v715 = v1046;
        }

        (v1049)(v739 + v736, v738, 1, v703);
        v744 = v715[24];
        v745 = v1025;
        sub_1E65DF948();
        v746 = v726(v745, 1, v703);
        v747 = v1044;
        if (v746 == 1)
        {
          sub_1E5DFE50C(v745, &qword_1ED072D90, &qword_1E66040F0);
          v748 = 1;
          v749 = v1055;
        }

        else
        {
          if (qword_1ED0719F8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1ED096378);
          v751 = v1051;
          v750 = v1052;
          v752 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v749 = v1055;
          v753 = v1025;
          sub_1E65D73C8();
          (*(v750 + 8))(v752, v751);
          (*(v1047 + 8))(v753, v703);
          v748 = 0;
          v747 = v1044;
          v715 = v1046;
        }

        (v1049)(v749 + v744, v748, 1, v703);
        v754 = v715[28];
        v755 = v1011;
        sub_1E5DFD1CC(v747, v1011, &qword_1ED072D90, &qword_1E66040F0);
        if (v726(v755, 1, v703) == 1)
        {
          sub_1E5DFE50C(v747, &qword_1ED072D90, &qword_1E66040F0);
          (*(v1042 + 8))(v1045, v1043);
          sub_1E5DFE50C(v755, &qword_1ED072D90, &qword_1E66040F0);
          v756 = 1;
          v757 = v1055;
        }

        else
        {
          if (qword_1ED071A00 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1EE2EA1F0);
          v759 = v1051;
          v758 = v1052;
          v760 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v757 = v1055;
          sub_1E65D73C8();
          (*(v758 + 8))(v760, v759);
          sub_1E5DFE50C(v747, &qword_1ED072D90, &qword_1E66040F0);
          (*(v1042 + 8))(v1045, v1043);
          (*(v1047 + 8))(v755, v703);
          v756 = 0;
          v715 = v1046;
        }

        (v1049)(v757 + v754, v756, 1, v703);
        v761 = v715[32];
      }

      v817 = type metadata accessor for ActionButtonDescriptor(0);
      (*(*(v817 - 8) + 56))(v757 + v761, 1, 1, v817);
      goto LABEL_418;
    case 4u:
      sub_1E65DF898();
      v447 = sub_1E65DAE38();
      v448 = sub_1E65DAE38();
      v449 = sub_1E65E4B48();
      v450 = 4.0;
      if (v449)
      {
        v450 = 8.0;
      }

      v451 = 16.0;
      if (v449)
      {
        v451 = 18.0;
      }

      if (v447 == v448)
      {
        v452 = v451;
      }

      else
      {
        v452 = v450;
      }

      if (v447 == v448)
      {
        v453 = 12.0;
      }

      else
      {
        v453 = 8.0;
      }

      v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C0, &qword_1E65EDD50);
      v455 = v1055;
      v456 = v1055 + v454[12];
      v457 = v454[16];
      v458 = sub_1E65DF838();
      v460 = v459;
      sub_1E64FC0F0(v456);
      v461 = sub_1E64FAA2C(MEMORY[0x1E69E7CD0]);
      v462 = sub_1E600ACF0(v461);

      sub_1E5DFE50C(v187, &qword_1ED0758D8, &qword_1E65F1FE0);
      v463 = type metadata accessor for ArtworkDescriptor();
      *(v456 + v463[5]) = v462;
      v464 = v456 + v463[6];
      *v464 = 0;
      *(v464 + 8) = v452;
      *(v464 + 16) = v452;
      *(v464 + 24) = v453;
      *(v456 + v463[7]) = 1;
      v465 = (v456 + v463[8]);
      *v465 = v458;
      v465[1] = v460;
      v466 = v1012;
      sub_1E65DF938();
      v467 = sub_1E65D72D8();
      v468 = *(v467 - 8);
      if ((*(v468 + 48))(v466, 1, v467) == 1)
      {
        sub_1E5DFE50C(v466, &qword_1ED072D90, &qword_1E66040F0);
        v469 = 1;
      }

      else
      {
        if (qword_1ED071A48 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1053, qword_1ED096450);
        v629 = v1051;
        v628 = v1052;
        v630 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v631 = v1012;
        sub_1E65D73C8();
        (*(v628 + 8))(v630, v629);
        (*(v468 + 8))(v631, v467);
        v469 = 0;
      }

      v632 = *(v468 + 56);
      v632(v455 + v457, v469, 1, v467);
      v632(v455 + v454[20], 1, 1, v467);
      sub_1E65E0A48();
      goto LABEL_418;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      sub_1E65E0708();
      if (v1057 >= 2u)
      {
        (*(v976 + 104))(v977, *MEMORY[0x1E699DAF0], v978);
        v633 = v1055;
        sub_1E65E0A78();
        v634 = v974;
        sub_1E65DF898();
        v635 = sub_1E65DF8A8();
        v636 = sub_1E65DAE38();
        v637 = sub_1E65DAE38();
        v638 = sub_1E65E4B48();
        v639 = 4.0;
        if (v638)
        {
          v639 = 8.0;
        }

        v640 = 16.0;
        if (v638)
        {
          v640 = 18.0;
        }

        if (v636 == v637)
        {
          v641 = v640;
        }

        else
        {
          v641 = v639;
        }

        if (v636 == v637)
        {
          v642 = 12.0;
        }

        else
        {
          v642 = 8.0;
        }

        v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
        v644 = v633 + *(v643 + 48);
        v1049 = v643;
        v645 = *(v643 + 64);
        v646 = sub_1E65DF838();
        v648 = v647;
        sub_1E64FC0F0(v644);
        v649 = sub_1E64FAA2C(v635);

        v650 = sub_1E600ACF0(v649);

        sub_1E5DFE50C(v634, &qword_1ED0758D8, &qword_1E65F1FE0);
        v651 = type metadata accessor for ArtworkDescriptor();
        *(v644 + v651[5]) = v650;
        v652 = v644 + v651[6];
        *v652 = 0;
        *(v652 + 8) = v641;
        *(v652 + 16) = v641;
        *(v652 + 24) = v642;
        *(v644 + v651[7]) = 1;
        v653 = (v644 + v651[8]);
        *v653 = v646;
        v653[1] = v648;
        v654 = v988;
        sub_1E65DF938();
        v655 = sub_1E65D72D8();
        v656 = *(v655 - 8);
        v1048 = *(v656 + 48);
        v657 = (v1048)(v654, 1, v655);
        v658 = v1053;
        if (v657 == 1)
        {
          sub_1E5DFE50C(v654, &qword_1ED072D90, &qword_1E66040F0);
          v659 = 1;
          v660 = v645;
          v661 = v1055;
        }

        else
        {
          v1047 = v656;
          v660 = v645;
          if (qword_1EE2D7250 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v658, qword_1EE2EA220);
          v885 = v1052;
          v886 = v1050;
          v887 = v658;
          v888 = v1051;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v661 = v1055;
          v889 = v988;
          sub_1E65D73C8();
          v890 = v888;
          v658 = v887;
          (*(v885 + 8))(v886, v890);
          v656 = v1047;
          (*(v1047 + 8))(v889, v655);
          v659 = 0;
        }

        v1047 = *(v656 + 56);
        (v1047)(v661 + v660, v659, 1, v655);
        v891 = *(v1049 + 80);
        v892 = v990;
        sub_1E65DF958();
        if ((v1048)(v892, 1, v655) == 1)
        {
          sub_1E5DFE50C(v892, &qword_1ED072D90, &qword_1E66040F0);
          v893 = 1;
          v894 = v1055;
        }

        else
        {
          if (qword_1EE2D7248 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v658, qword_1EE2EA208);
          v903 = v1051;
          v904 = v1052;
          v905 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v894 = v1055;
          v906 = v990;
          sub_1E65D73C8();
          (*(v904 + 8))(v905, v903);
          (*(v656 + 8))(v906, v655);
          v893 = 0;
        }

        (v1047)(v894 + v891, v893, 1, v655);
        v907 = *(v1049 + 96);
        v908 = v981;
        sub_1E65DF948();
        if ((v1048)(v908, 1, v655) == 1)
        {
          sub_1E5DFE50C(v908, &qword_1ED072D90, &qword_1E66040F0);
          v909 = 1;
          v910 = v1055;
        }

        else
        {
          if (qword_1ED0719F8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1ED096378);
          v917 = v1051;
          v916 = v1052;
          v918 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v910 = v1055;
          sub_1E65D73C8();
          (*(v916 + 8))(v918, v917);
          (*(v656 + 8))(v908, v655);
          v909 = 0;
        }

        (v1047)(v910 + v907, v909, 1, v655);
      }

      else
      {
        sub_1E65E0598();
        sub_1E65E0768();
        v470 = v1055;
        sub_1E65E0AB8();
        v471 = v975;
        sub_1E65DF898();
        v472 = sub_1E65DF8A8();
        v473 = sub_1E65DAE38();
        v474 = sub_1E65DAE38();
        v475 = sub_1E65E4B48();
        v476 = 4.0;
        if (v475)
        {
          v476 = 8.0;
        }

        v477 = 16.0;
        if (v475)
        {
          v477 = 18.0;
        }

        if (v473 == v474)
        {
          v478 = v477;
        }

        else
        {
          v478 = v476;
        }

        if (v473 == v474)
        {
          v479 = 12.0;
        }

        else
        {
          v479 = 8.0;
        }

        v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B8, &qword_1E65EDD48);
        v481 = v470 + *(v480 + 48);
        v1049 = v480;
        v1046 = *(v480 + 64);
        v482 = sub_1E65DF838();
        v484 = v483;
        sub_1E64FC0F0(v481);
        v485 = sub_1E64FAA2C(v472);

        v486 = sub_1E600ACF0(v485);

        sub_1E5DFE50C(v471, &qword_1ED0758D8, &qword_1E65F1FE0);
        v487 = type metadata accessor for ArtworkDescriptor();
        *(v481 + v487[5]) = v486;
        v488 = v481 + v487[6];
        *v488 = 0;
        *(v488 + 8) = v478;
        *(v488 + 16) = v478;
        *(v488 + 24) = v479;
        *(v481 + v487[7]) = 1;
        v489 = (v481 + v487[8]);
        *v489 = v482;
        v489[1] = v484;
        v490 = v989;
        sub_1E65DF938();
        v491 = sub_1E65D72D8();
        v492 = *(v491 - 8);
        v493 = *(v492 + 48);
        v294 = v493(v490, 1, v491) == 1;
        v494 = v1053;
        v1047 = v493;
        v1048 = v492;
        if (v294)
        {
          sub_1E5DFE50C(v490, &qword_1ED072D90, &qword_1E66040F0);
          v495 = 1;
          v496 = v1055;
          v497 = v987;
          v498 = v1046;
        }

        else
        {
          v497 = v987;
          if (qword_1EE2D7250 != -1)
          {
            v968 = v1053;
            swift_once();
            v494 = v968;
          }

          __swift_project_value_buffer(v494, qword_1EE2EA220);
          v878 = v1051;
          v877 = v1052;
          v879 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v496 = v1055;
          v498 = v1046;
          v880 = v989;
          sub_1E65D73C8();
          (*(v877 + 8))(v879, v878);
          v492 = v1048;
          (*(v1048 + 8))(v880, v491);
          v495 = 0;
          v493 = v1047;
        }

        v881 = *(v492 + 56);
        v881(v496 + v498, v495, 1, v491);
        v882 = *(v1049 + 80);
        sub_1E65DF958();
        if (v493(v497, 1, v491) == 1)
        {
          sub_1E5DFE50C(v497, &qword_1ED072D90, &qword_1E66040F0);
          v883 = 1;
          v884 = v1055;
        }

        else
        {
          if (qword_1EE2D7248 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1EE2EA208);
          v895 = v1051;
          v896 = v1052;
          v897 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v884 = v1055;
          v898 = v987;
          sub_1E65D73C8();
          (*(v896 + 8))(v897, v895);
          (*(v1048 + 8))(v898, v491);
          v883 = 0;
          v493 = v1047;
        }

        v881(v884 + v882, v883, 1, v491);
        v899 = *(v1049 + 96);
        v900 = v982;
        sub_1E65DF948();
        if (v493(v900, 1, v491) == 1)
        {
          sub_1E5DFE50C(v900, &qword_1ED072D90, &qword_1E66040F0);
          v901 = 1;
          v902 = v1055;
        }

        else
        {
          if (qword_1ED0719F8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1ED096378);
          v912 = v1051;
          v911 = v1052;
          v913 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v902 = v1055;
          sub_1E65D73C8();
          (*(v911 + 8))(v913, v912);
          (*(v1048 + 8))(v900, v491);
          v901 = 0;
        }

        v881(v902 + v899, v901, 1, v491);
        v914 = *(v1049 + 128);
        v881(v902 + *(v1049 + 112), 1, 1, v491);
        v915 = type metadata accessor for ActionButtonDescriptor(0);
        (*(*(v915 - 8) + 56))(v902 + v914, 1, 1, v915);
      }

      goto LABEL_418;
    case 7u:
      sub_1E65DF898();
      v499 = sub_1E65DAE38();
      v500 = sub_1E65DAE38();
      v501 = sub_1E65E4B48();
      v502 = 4.0;
      if (v501)
      {
        v502 = 8.0;
      }

      v503 = 16.0;
      if (v501)
      {
        v503 = 18.0;
      }

      if (v499 == v500)
      {
        v504 = v503;
      }

      else
      {
        v504 = v502;
      }

      if (v499 == v500)
      {
        v505 = 12.0;
      }

      else
      {
        v505 = 8.0;
      }

      v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A90, &qword_1E65FEF78);
      v507 = v506[12];
      v508 = sub_1E65DF838();
      v510 = v509;
      v511 = v1055;
      sub_1E64FC0F0(v1055);
      v512 = sub_1E64FAA2C(MEMORY[0x1E69E7CD0]);
      v513 = sub_1E600ACF0(v512);

      sub_1E5DFE50C(v185, &qword_1ED0758D8, &qword_1E65F1FE0);
      v514 = type metadata accessor for ArtworkDescriptor();
      *(v511 + v514[5]) = v513;
      v515 = v511 + v514[6];
      *v515 = 0;
      *(v515 + 8) = v504;
      *(v515 + 16) = v504;
      *(v515 + 24) = v505;
      *(v511 + v514[7]) = 1;
      v516 = (v511 + v514[8]);
      *v516 = v508;
      v516[1] = v510;
      v517 = v1013;
      sub_1E65DF948();
      v518 = sub_1E65D72D8();
      v519 = *(v518 - 8);
      v520 = *(v519 + 48);
      if (v520(v517, 1, v518) == 1)
      {
        sub_1E5DFE50C(v517, &qword_1ED072D90, &qword_1E66040F0);
        (*(v519 + 56))(v511 + v507, 1, 1, v518);
      }

      else
      {
        v1046 = v520;
        v662 = v979;
        sub_1E65DF8D8();
        v663 = sub_1E65DFD08();
        v664 = *(v663 - 8);
        if ((*(v664 + 48))(v662, 1, v663) == 1)
        {
          sub_1E5DFE50C(v662, &qword_1ED0758C0, &qword_1E65F1FC8);
          v665 = 1;
          v666 = v1053;
          v667 = v970;
        }

        else
        {
          v667 = v970;
          sub_1E6394570();
          (*(v664 + 8))(v662, v663);
          v665 = 0;
          v666 = v1053;
        }

        (*(v1047 + 56))(v667, v665, 1, v666);
        v920 = v1051;
        v919 = v1052;
        v921 = v667;
        v922 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        v923 = v1013;
        sub_1E65D7248();
        (*(v919 + 8))(v922, v920);
        sub_1E5DFE50C(v921, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v519 + 8))(v923, v518);
        v520 = v1046;
      }

      v924 = v506[16];
      v925 = sub_1E65DF908();
      if (v925 <= 1)
      {
        if (v925)
        {
          v926 = MEMORY[0x1E699DAC8];
        }

        else
        {
          v926 = MEMORY[0x1E699DAB8];
        }
      }

      else if (v925 == 2)
      {
        v926 = MEMORY[0x1E699DAC0];
      }

      else
      {
        if (v925 != 3)
        {
          v945 = sub_1E65E09D8();
          v946 = *(v945 - 8);
          (*(v946 + 56))(v1006, 1, 1, v945);
          (*(v946 + 104))(v1055 + v924, *MEMORY[0x1E699DAB0], v945);
          goto LABEL_410;
        }

        v926 = MEMORY[0x1E699DAB0];
      }

      v947 = *v926;
      v948 = sub_1E65E09D8();
      v949 = *(v948 - 8);
      v950 = v1006;
      (*(v949 + 104))(v1006, v947, v948);
      (*(v949 + 56))(v950, 0, 1, v948);
      (*(v949 + 32))(v1055 + v924, v950, v948);
LABEL_410:
      v951 = v999;
      v952 = v506[20];
      v953 = sub_1E65DAE38();
      if (v953 != sub_1E65DAE38())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
        sub_1E65E0708();
      }

      sub_1E65E0938();
      v954 = v506[24];
      sub_1E65DF938();
      if (v520(v951, 1, v518) == 1)
      {
        sub_1E5DFE50C(v951, &qword_1ED072D90, &qword_1E66040F0);
        (*(v519 + 56))(v1055 + v954, 1, 1, v518);
      }

      else
      {
        v955 = v983;
        sub_1E65DF8B8();
        v956 = sub_1E65DFD08();
        v957 = *(v956 - 8);
        if ((*(v957 + 48))(v955, 1, v956) == 1)
        {
          sub_1E5DFE50C(v955, &qword_1ED0758C0, &qword_1E65F1FC8);
          v958 = 1;
          v959 = v972;
        }

        else
        {
          v959 = v972;
          sub_1E6394570();
          (*(v957 + 8))(v955, v956);
          v958 = 0;
        }

        (*(v1047 + 56))(v959, v958, 1, v1053);
        v961 = v1051;
        v960 = v1052;
        v962 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E65D7248();
        (*(v960 + 8))(v962, v961);
        sub_1E5DFE50C(v959, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v519 + 8))(v951, v518);
      }

      goto LABEL_418;
    case 8u:
    case 9u:
      sub_1E65DF898();
      v241 = sub_1E65DF8A8();
      v242 = sub_1E65DAE38();
      v243 = sub_1E65DAE38();
      v244 = sub_1E65E4B48();
      v245 = 4.0;
      if (v244)
      {
        v245 = 8.0;
      }

      v246 = 16.0;
      if (v244)
      {
        v246 = 18.0;
      }

      if (v242 == v243)
      {
        v247 = v246;
      }

      else
      {
        v247 = v245;
      }

      if (v242 == v243)
      {
        v248 = 12.0;
      }

      else
      {
        v248 = 8.0;
      }

      v1049 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A98, &qword_1E65FEF80);
      v249 = *(v1049 + 48);
      v250 = sub_1E65DF838();
      v252 = v251;
      v253 = v1055;
      sub_1E64FC0F0(v1055);
      v254 = sub_1E64FAA2C(v241);

      v255 = sub_1E600ACF0(v254);

      sub_1E5DFE50C(v176, &qword_1ED0758D8, &qword_1E65F1FE0);
      v256 = type metadata accessor for ArtworkDescriptor();
      *(v253 + v256[5]) = v255;
      v257 = v253 + v256[6];
      *v257 = 0;
      *(v257 + 8) = v247;
      *(v257 + 16) = v247;
      *(v257 + 24) = v248;
      *(v253 + v256[7]) = 0;
      v258 = (v253 + v256[8]);
      *v258 = v250;
      v258[1] = v252;
      v259 = v1027;
      sub_1E65DF948();
      v260 = sub_1E65D72D8();
      v261 = *(v260 - 8);
      v262 = *(v261 + 6);
      v263 = v262(v259, 1, v260);
      v1045 = v262;
      if (v263 == 1)
      {
        sub_1E5DFE50C(v259, &qword_1ED072D90, &qword_1E66040F0);
        v264 = 1;
      }

      else
      {
        v340 = v1046;
        sub_1E62F9720();
        v341 = *MEMORY[0x1E69686E8];
        v342 = v1052;
        v343 = *(v1052 + 104);
        v344 = v1050;
        v1048 = (v261 + 48);
        v345 = v249;
        v346 = v1051;
        v343(v1050, v341, v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        sub_1E65D73C8();
        v347 = v346;
        v249 = v345;
        (*(v342 + 8))(v344, v347);
        v348 = v340;
        v262 = v1045;
        (*(v1047 + 8))(v348, v1053);
        (*(v261 + 1))(v259, v260);
        v264 = 0;
      }

      v349 = v1028;
      v1048 = *(v261 + 7);
      (v1048)(v253 + v249, v264, 1, v260);
      v350 = *(v1049 + 64);
      sub_1E65DF958();
      v351 = v262(v349, 1, v260);
      v352 = v253;
      v1044 = v261;
      if (v351 == 1)
      {
        sub_1E5DFE50C(v349, &qword_1ED072D90, &qword_1E66040F0);
        v353 = 1;
        v354 = v1053;
      }

      else
      {
        v355 = v349;
        v356 = v1046;
        sub_1E62F97B8();
        v357 = *MEMORY[0x1E69686E8];
        v358 = v1052;
        v359 = *(v1052 + 104);
        v360 = v1050;
        v1043 = (v261 + 56);
        v361 = v352;
        v362 = v350;
        v363 = v1051;
        v359(v1050, v357, v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        sub_1E65D73C8();
        v364 = v360;
        v262 = v1045;
        v365 = v363;
        v350 = v362;
        v352 = v361;
        (*(v358 + 8))(v364, v365);
        v354 = v1053;
        (*(v1047 + 8))(v356, v1053);
        (*(v261 + 1))(v355, v260);
        v353 = 0;
      }

      v366 = v1029;
      (v1048)(v352 + v350, v353, 1, v260);
      v367 = *(v1049 + 80);
      sub_1E65DF938();
      if (v262(v366, 1, v260) == 1)
      {
        sub_1E5DFE50C(v366, &qword_1ED072D90, &qword_1E66040F0);
        v368 = 1;
      }

      else
      {
        v369 = v366;
        v370 = v1046;
        sub_1E62F97D0();
        v372 = v1051;
        v371 = v1052;
        v373 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        sub_1E65D73C8();
        (*(v371 + 8))(v373, v372);
        (*(v1047 + 8))(v370, v354);
        v1044[1](v369, v260);
        v368 = 0;
      }

      (v1048)(v352 + v367, v368, 1, v260);
      goto LABEL_418;
    case 0xDu:
    case 0xFu:
    case 0x18u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      sub_1E65E0708();
      if (v1057 <= 1u)
      {
        sub_1E65DF898();
        v188 = sub_1E65DF8A8();
        v189 = sub_1E65DAE38();
        v190 = sub_1E65DAE38();
        v191 = sub_1E65E4B48();
        v192 = 4.0;
        if (v191)
        {
          v192 = 8.0;
        }

        v193 = 16.0;
        if (v191)
        {
          v193 = 18.0;
        }

        if (v189 == v190)
        {
          v194 = v193;
        }

        else
        {
          v194 = v192;
        }

        if (v189 == v190)
        {
          v195 = 12.0;
        }

        else
        {
          v195 = 8.0;
        }

        v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B8, &qword_1E65EDD48);
        v197 = v1055 + *(v196 + 48);
        v1049 = v196;
        v198 = *(v196 + 64);
        v199 = sub_1E65DF838();
        v201 = v200;
        sub_1E64FC0F0(v197);
        v202 = sub_1E64FAA2C(v188);

        v203 = sub_1E600ACF0(v202);

        sub_1E5DFE50C(v160, &qword_1ED0758D8, &qword_1E65F1FE0);
        v204 = type metadata accessor for ArtworkDescriptor();
        *(v197 + v204[5]) = v203;
        v205 = v197 + v204[6];
        *v205 = 0;
        *(v205 + 8) = v194;
        *(v205 + 16) = v194;
        *(v205 + 24) = v195;
        *(v197 + v204[7]) = 1;
        v206 = (v197 + v204[8]);
        *v206 = v199;
        v206[1] = v201;
        v207 = v1036;
        sub_1E65DF938();
        v208 = sub_1E65D72D8();
        v209 = *(v208 - 8);
        v210 = *(v209 + 48);
        v211 = v210(v207, 1, v208);
        v1047 = v210;
        v1048 = v209;
        if (v211 == 1)
        {
          sub_1E5DFE50C(v207, &qword_1ED072D90, &qword_1E66040F0);
          v212 = 1;
          v213 = v198;
          v214 = v1055;
          v215 = v1035;
        }

        else
        {
          v1046 = v198;
          v525 = v1053;
          v215 = v1035;
          if (qword_1EE2D7250 != -1)
          {
            v964 = v1053;
            swift_once();
            v525 = v964;
          }

          __swift_project_value_buffer(v525, qword_1EE2EA220);
          v527 = v1051;
          v526 = v1052;
          v528 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v214 = v1055;
          v213 = v1046;
          v529 = v1036;
          sub_1E65D73C8();
          (*(v526 + 8))(v528, v527);
          v209 = v1048;
          (*(v1048 + 8))(v529, v208);
          v212 = 0;
          v210 = v1047;
        }

        v530 = *(v209 + 56);
        v530(v214 + v213, v212, 1, v208);
        v531 = *(v1049 + 80);
        sub_1E65DF958();
        if (v210(v215, 1, v208) == 1)
        {
          sub_1E5DFE50C(v215, &qword_1ED072D90, &qword_1E66040F0);
          v532 = 1;
          v533 = v1055;
        }

        else
        {
          if (qword_1EE2D7248 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1EE2EA208);
          v544 = v1051;
          v545 = v1052;
          v546 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v533 = v1055;
          v547 = v1035;
          sub_1E65D73C8();
          (*(v545 + 8))(v546, v544);
          (*(v1048 + 8))(v547, v208);
          v532 = 0;
          v210 = v1047;
        }

        v530(v533 + v531, v532, 1, v208);
        v548 = *(v1049 + 96);
        v549 = v1020;
        sub_1E65DF948();
        if (v210(v549, 1, v208) == 1)
        {
          sub_1E5DFE50C(v549, &qword_1ED072D90, &qword_1E66040F0);
          v550 = 1;
          v551 = v1055;
        }

        else
        {
          if (qword_1ED0719F8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1ED096378);
          v557 = v1051;
          v556 = v1052;
          v558 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v551 = v1055;
          sub_1E65D73C8();
          (*(v556 + 8))(v558, v557);
          (*(v1048 + 8))(v549, v208);
          v550 = 0;
        }

        v530(v551 + v548, v550, 1, v208);
        v559 = *(v1049 + 128);
        v530(v551 + *(v1049 + 112), 1, 1, v208);
        v560 = type metadata accessor for ActionButtonDescriptor(0);
        (*(*(v560 - 8) + 56))(v551 + v559, 1, 1, v560);
        sub_1E65E0AC8();
        goto LABEL_418;
      }

      sub_1E65DF898();
      v299 = sub_1E65DF8A8();
      v300 = sub_1E65DAE38();
      v301 = sub_1E65DAE38();
      v302 = sub_1E65E4B48();
      v303 = 4.0;
      if (v302)
      {
        v303 = 8.0;
      }

      v304 = 16.0;
      if (v302)
      {
        v304 = 18.0;
      }

      if (v300 == v301)
      {
        v305 = v304;
      }

      else
      {
        v305 = v303;
      }

      if (v300 == v301)
      {
        v306 = 12.0;
      }

      else
      {
        v306 = 8.0;
      }

      v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
      v308 = v1055 + *(v307 + 48);
      v1049 = v307;
      v309 = *(v307 + 64);
      v310 = sub_1E65DF838();
      v312 = v311;
      sub_1E64FC0F0(v308);
      v313 = sub_1E64FAA2C(v299);

      v314 = sub_1E600ACF0(v313);

      sub_1E5DFE50C(v157, &qword_1ED0758D8, &qword_1E65F1FE0);
      v315 = type metadata accessor for ArtworkDescriptor();
      *(v308 + v315[5]) = v314;
      v316 = v308 + v315[6];
      *v316 = 0;
      *(v316 + 8) = v305;
      *(v316 + 16) = v305;
      *(v316 + 24) = v306;
      *(v308 + v315[7]) = 1;
      v317 = (v308 + v315[8]);
      *v317 = v310;
      v317[1] = v312;
      v318 = v1037;
      sub_1E65DF938();
      v236 = sub_1E65D72D8();
      v237 = *(v236 - 8);
      v1048 = *(v237 + 48);
      v319 = (v1048)(v318, 1, v236);
      v320 = v1053;
      if (v319 == 1)
      {
        sub_1E5DFE50C(v318, &qword_1ED072D90, &qword_1E66040F0);
        v321 = 1;
        v322 = v309;
        v323 = v1055;
      }

      else
      {
        v1047 = v237;
        v322 = v309;
        if (qword_1EE2D7250 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v320, qword_1EE2EA220);
        v534 = v1052;
        v535 = v1050;
        v536 = v320;
        v537 = v1051;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v323 = v1055;
        v538 = v1037;
        sub_1E65D73C8();
        v539 = v537;
        v320 = v536;
        (*(v534 + 8))(v535, v539);
        v237 = v1047;
        (*(v1047 + 8))(v538, v236);
        v321 = 0;
      }

      v1047 = *(v237 + 56);
      (v1047)(v323 + v322, v321, 1, v236);
      v540 = *(v1049 + 80);
      v541 = v1038;
      sub_1E65DF958();
      if ((v1048)(v541, 1, v236) == 1)
      {
        sub_1E5DFE50C(v541, &qword_1ED072D90, &qword_1E66040F0);
        v542 = 1;
        v543 = v1055;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v320, qword_1EE2EA208);
        v552 = v1051;
        v553 = v1052;
        v554 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v543 = v1055;
        v555 = v1038;
        sub_1E65D73C8();
        (*(v553 + 8))(v554, v552);
        (*(v237 + 8))(v555, v236);
        v542 = 0;
      }

      (v1047)(v543 + v540, v542, 1, v236);
      v338 = *(v1049 + 96);
      v339 = &v1053;
LABEL_216:
      v622 = *(v339 - 32);
      sub_1E65DF948();
      if ((v1048)(v622, 1, v236) == 1)
      {
        sub_1E5DFE50C(v622, &qword_1ED072D90, &qword_1E66040F0);
        v623 = 1;
        v624 = v1055;
      }

      else
      {
        if (qword_1ED0719F8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1053, qword_1ED096378);
        v626 = v1051;
        v625 = v1052;
        v627 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v624 = v1055;
        sub_1E65D73C8();
        (*(v625 + 8))(v627, v626);
        (*(v237 + 8))(v622, v236);
        v623 = 0;
      }

      (v1047)(v624 + v338, v623, 1, v236);
      goto LABEL_222;
    case 0x12u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      sub_1E65E0678();
      if (sub_1E65E07C8())
      {
        v521 = v1055;
        v522 = v1053;
        v523 = v1026;
        if (qword_1ED071AF0 != -1)
        {
          swift_once();
        }

        v524 = qword_1ED096630;
      }

      else
      {
        v521 = v1055;
        v522 = v1053;
        v523 = v1026;
        if (qword_1EE2D7268 != -1)
        {
          swift_once();
        }

        v524 = qword_1EE2EA250;
      }

      v668 = __swift_project_value_buffer(v522, v524);
      v669 = v1047;
      (*(v1047 + 16))(v523, v668, v522);
      v670 = sub_1E65DAE38();
      v671 = v670 == sub_1E65DAE38();
      sub_1E6168408(v671);
      v672 = v993;
      sub_1E65DF898();
      v673 = sub_1E65DAE38();
      v674 = sub_1E65DAE38();
      v675 = sub_1E65E4B48();
      v676 = 4.0;
      if (v675)
      {
        v676 = 8.0;
      }

      v677 = 16.0;
      if (v675)
      {
        v677 = 18.0;
      }

      if (v673 == v674)
      {
        v678 = v677;
      }

      else
      {
        v678 = v676;
      }

      if (v673 == v674)
      {
        v679 = 12.0;
      }

      else
      {
        v679 = 8.0;
      }

      v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072620, &qword_1E65EB938);
      v681 = v521 + v680[12];
      v1054 = v680[16];
      v682 = sub_1E65DF838();
      v684 = v683;
      sub_1E64FC0F0(v681);
      v685 = sub_1E64FAA2C(MEMORY[0x1E69E7CD0]);
      v686 = sub_1E600ACF0(v685);

      sub_1E5DFE50C(v672, &qword_1ED0758D8, &qword_1E65F1FE0);
      v687 = type metadata accessor for ArtworkDescriptor();
      *(v681 + v687[5]) = v686;
      v688 = v681 + v687[6];
      *v688 = 0;
      *(v688 + 8) = v678;
      *(v688 + 16) = v678;
      *(v688 + 24) = v679;
      *(v681 + v687[7]) = 1;
      v689 = (v681 + v687[8]);
      *v689 = v682;
      v689[1] = v684;
      v690 = v995;
      sub_1E65DF938();
      v691 = sub_1E65D72D8();
      v692 = *(v691 - 8);
      if ((*(v692 + 48))(v690, 1, v691) == 1)
      {
        (*(v669 + 8))(v1026, v1053);
        sub_1E5DFE50C(v690, &qword_1ED072D90, &qword_1E66040F0);
        v693 = 1;
      }

      else
      {
        v694 = v690;
        v696 = v1051;
        v695 = v1052;
        v697 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v698 = v1026;
        sub_1E65D73C8();
        (*(v695 + 8))(v697, v696);
        (*(v669 + 8))(v698, v1053);
        (*(v692 + 8))(v694, v691);
        v693 = 0;
      }

      (*(v692 + 56))(v1054 + v521, v693, 1, v691);
      v699 = v680[20];
      v700 = *MEMORY[0x1E699DB20];
      v701 = sub_1E65E0B08();
      (*(*(v701 - 8) + 104))(v521 + v699, v700, v701);
      goto LABEL_418;
    case 0x15u:
      sub_1E65DF898();
      v398 = sub_1E65DAE38();
      v399 = sub_1E65DAE38();
      v400 = sub_1E65E4B48();
      v401 = 4.0;
      if (v400)
      {
        v401 = 8.0;
      }

      v402 = 16.0;
      if (v400)
      {
        v402 = 18.0;
      }

      if (v398 == v399)
      {
        v403 = v402;
      }

      else
      {
        v403 = v401;
      }

      if (v398 == v399)
      {
        v404 = 12.0;
      }

      else
      {
        v404 = 8.0;
      }

      v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A90, &qword_1E65FEF78);
      v406 = v405[12];
      v407 = sub_1E65DF838();
      v409 = v408;
      v410 = v1055;
      sub_1E64FC0F0(v1055);
      v411 = sub_1E64FAA2C(MEMORY[0x1E69E7CD0]);
      v412 = sub_1E600ACF0(v411);

      sub_1E5DFE50C(v182, &qword_1ED0758D8, &qword_1E65F1FE0);
      v413 = type metadata accessor for ArtworkDescriptor();
      *(v410 + v413[5]) = v412;
      v414 = v410 + v413[6];
      *v414 = 0;
      *(v414 + 8) = v403;
      *(v414 + 16) = v403;
      *(v414 + 24) = v404;
      *(v410 + v413[7]) = 1;
      v415 = (v410 + v413[8]);
      *v415 = v407;
      v415[1] = v409;
      v416 = v1014;
      sub_1E65DF948();
      v417 = sub_1E65D72D8();
      v418 = *(v417 - 8);
      v419 = *(v418 + 48);
      if (v419(v416, 1, v417) == 1)
      {
        sub_1E5DFE50C(v416, &qword_1ED072D90, &qword_1E66040F0);
        (*(v418 + 56))(v410 + v406, 1, 1, v417);
      }

      else
      {
        v1046 = v419;
        v602 = v980;
        sub_1E65DF8D8();
        v603 = sub_1E65DFD08();
        v604 = *(v603 - 8);
        if ((*(v604 + 48))(v602, 1, v603) == 1)
        {
          sub_1E5DFE50C(v602, &qword_1ED0758C0, &qword_1E65F1FC8);
          v605 = 1;
          v606 = v1053;
          v607 = v971;
        }

        else
        {
          v607 = v971;
          sub_1E6394570();
          (*(v604 + 8))(v602, v603);
          v605 = 0;
          v606 = v1053;
        }

        (*(v1047 + 56))(v607, v605, 1, v606);
        v870 = v1051;
        v869 = v1052;
        v871 = v607;
        v872 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        v873 = v1014;
        sub_1E65D7248();
        (*(v869 + 8))(v872, v870);
        sub_1E5DFE50C(v871, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v418 + 8))(v873, v417);
        v419 = v1046;
      }

      v874 = v405[16];
      v875 = sub_1E65DF908();
      if (v875 <= 1)
      {
        if (v875)
        {
          v876 = MEMORY[0x1E699DAC8];
        }

        else
        {
          v876 = MEMORY[0x1E699DAB8];
        }
      }

      else if (v875 == 2)
      {
        v876 = MEMORY[0x1E699DAC0];
      }

      else
      {
        if (v875 != 3)
        {
          v927 = sub_1E65E09D8();
          v928 = *(v927 - 8);
          (*(v928 + 56))(v1007, 1, 1, v927);
          (*(v928 + 104))(v1055 + v874, *MEMORY[0x1E699DAB0], v927);
          goto LABEL_398;
        }

        v876 = MEMORY[0x1E699DAB0];
      }

      v929 = *v876;
      v930 = sub_1E65E09D8();
      v931 = *(v930 - 8);
      v932 = v1007;
      (*(v931 + 104))(v1007, v929, v930);
      (*(v931 + 56))(v932, 0, 1, v930);
      (*(v931 + 32))(v1055 + v874, v932, v930);
LABEL_398:
      v933 = v1002;
      v934 = v405[20];
      v935 = sub_1E65DAE38();
      if (v935 != sub_1E65DAE38())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
        sub_1E65E0708();
      }

      sub_1E65E0938();
      v936 = v405[24];
      sub_1E65DF938();
      if (v419(v933, 1, v417) == 1)
      {
        sub_1E5DFE50C(v933, &qword_1ED072D90, &qword_1E66040F0);
        (*(v418 + 56))(v1055 + v936, 1, 1, v417);
      }

      else
      {
        v937 = v984;
        sub_1E65DF8B8();
        v938 = sub_1E65DFD08();
        v939 = *(v938 - 8);
        if ((*(v939 + 48))(v937, 1, v938) == 1)
        {
          sub_1E5DFE50C(v937, &qword_1ED0758C0, &qword_1E65F1FC8);
          v940 = 1;
          v941 = v973;
        }

        else
        {
          v941 = v973;
          sub_1E6394570();
          (*(v939 + 8))(v937, v938);
          v940 = 0;
        }

        (*(v1047 + 56))(v941, v940, 1, v1053);
        v943 = v1051;
        v942 = v1052;
        v944 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E65D7248();
        (*(v942 + 8))(v944, v943);
        sub_1E5DFE50C(v941, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v418 + 8))(v933, v417);
      }

      goto LABEL_418;
    case 0x16u:
    case 0x17u:
      sub_1E65DF898();
      v216 = sub_1E65DF8A8();
      v217 = sub_1E65DAE38();
      v218 = sub_1E65DAE38();
      v219 = sub_1E65E4B48();
      v220 = 4.0;
      if (v219)
      {
        v220 = 8.0;
      }

      v221 = 16.0;
      if (v219)
      {
        v221 = 18.0;
      }

      if (v217 == v218)
      {
        v222 = v221;
      }

      else
      {
        v222 = v220;
      }

      if (v217 == v218)
      {
        v223 = 12.0;
      }

      else
      {
        v223 = 8.0;
      }

      v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
      v225 = v1055 + *(v224 + 48);
      v1049 = v224;
      v226 = *(v224 + 64);
      v227 = sub_1E65DF838();
      v229 = v228;
      sub_1E64FC0F0(v225);
      v230 = sub_1E64FAA2C(v216);

      v231 = sub_1E600ACF0(v230);

      sub_1E5DFE50C(v167, &qword_1ED0758D8, &qword_1E65F1FE0);
      v232 = type metadata accessor for ArtworkDescriptor();
      *(v225 + v232[5]) = v231;
      v233 = v225 + v232[6];
      *v233 = 0;
      *(v233 + 8) = v222;
      *(v233 + 16) = v222;
      *(v233 + 24) = v223;
      *(v225 + v232[7]) = 1;
      v234 = (v225 + v232[8]);
      *v234 = v227;
      v234[1] = v229;
      v235 = v1040;
      sub_1E65DF938();
      v236 = sub_1E65D72D8();
      v237 = *(v236 - 8);
      v1048 = *(v237 + 48);
      if ((v1048)(v235, 1, v236) == 1)
      {
        sub_1E5DFE50C(v235, &qword_1ED072D90, &qword_1E66040F0);
        v238 = 1;
        v239 = v1053;
        v240 = v1055;
      }

      else
      {
        v1046 = v237;
        v1047 = v226;
        v324 = v1053;
        if (qword_1EE2D7250 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v324, qword_1EE2EA220);
        v326 = v1051;
        v325 = v1052;
        v327 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v240 = v1055;
        v226 = v1047;
        v328 = v1040;
        sub_1E65D73C8();
        v329 = v326;
        v239 = v324;
        (*(v325 + 8))(v327, v329);
        v237 = v1046;
        (*(v1046 + 8))(v328, v236);
        v238 = 0;
      }

      v1047 = *(v237 + 56);
      (v1047)(v240 + v226, v238, 1, v236);
      v330 = *(v1049 + 80);
      v331 = v1041;
      sub_1E65DF958();
      if ((v1048)(v331, 1, v236) == 1)
      {
        sub_1E5DFE50C(v331, &qword_1ED072D90, &qword_1E66040F0);
        v332 = 1;
        v333 = v1055;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v239, qword_1EE2EA208);
        v334 = v1051;
        v335 = v1052;
        v336 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v333 = v1055;
        v337 = v1041;
        sub_1E65D73C8();
        (*(v335 + 8))(v336, v334);
        (*(v237 + 8))(v337, v236);
        v332 = 0;
      }

      (v1047)(v333 + v330, v332, 1, v236);
      v338 = *(v1049 + 96);
      v339 = &v1059;
      goto LABEL_216;
    case 0x19u:
      v420 = v1049;
      sub_1E6318354(v1049, v1030);
      sub_1E6318BB8(v1031);
      sub_1E65DF928();
      v421 = sub_1E65DFA88();
      v422 = (*(*(v421 - 8) + 48))(v137, 1, v421);
      sub_1E5DFE50C(v137, &qword_1ED0758C8, &qword_1E65F1FD0);
      sub_1E65DF878();
      if (v420 >= 2u)
      {
        v423 = v1055;
        if (v420 != 3)
        {
          v1057 = 0;
          v1058 = 0xE000000000000000;
          sub_1E65E68A8();
          MEMORY[0x1E694D7C0](0xD00000000000003BLL, 0x80000001E6611E00);
          v1056 = 2;
          sub_1E65E69B8();
LABEL_421:
          result = sub_1E65E69D8();
          __break(1u);
          return result;
        }

        sub_1E65E09F8();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
        sub_1E65E0708();
        v423 = v1055;
        sub_1E60787FC(v1057, v422 != 1, v1055);
      }

      v818 = v994;
      sub_1E65DF898();
      v819 = sub_1E65DAE38();
      v820 = sub_1E65DAE38();
      v821 = sub_1E65E4B48();
      v822 = 4.0;
      if (v821)
      {
        v822 = 8.0;
      }

      v823 = 16.0;
      if (v821)
      {
        v823 = 18.0;
      }

      if (v819 == v820)
      {
        v824 = v823;
      }

      else
      {
        v824 = v822;
      }

      if (v819 == v820)
      {
        v825 = 12.0;
      }

      else
      {
        v825 = 8.0;
      }

      v826 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
      v827 = v423 + v826[12];
      v828 = v826[16];
      v1045 = v826[20];
      sub_1E64FC0F0(v827);
      v829 = sub_1E64FAA2C(MEMORY[0x1E69E7CD0]);
      v830 = sub_1E600ACF0(v829);

      sub_1E5DFE50C(v818, &qword_1ED0758D8, &qword_1E65F1FE0);
      v831 = type metadata accessor for ArtworkDescriptor();
      *(v827 + v831[5]) = v830;
      v832 = v827 + v831[6];
      *v832 = 0;
      *(v832 + 8) = v824;
      *(v832 + 16) = v824;
      *(v832 + 24) = v825;
      *(v827 + v831[7]) = 1;
      v833 = (v827 + v831[8]);
      *v833 = 0;
      v833[1] = 0;
      sub_1E60792DC(v420, v423 + v828);
      v834 = v998;
      sub_1E65DF938();
      v835 = sub_1E65D72D8();
      v836 = *(v835 - 8);
      v1044 = *(v836 + 48);
      v837 = (v1044)(v834, 1, v835);
      v1042 = v836;
      if (v837 == 1)
      {
        sub_1E5DFE50C(v834, &qword_1ED072D90, &qword_1E66040F0);
        v838 = 1;
      }

      else
      {
        v839 = v1046;
        sub_1E6078BBC(v420, v1046);
        v841 = v1051;
        v840 = v1052;
        v842 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        sub_1E65D73C8();
        v843 = v842;
        v836 = v1042;
        (*(v840 + 8))(v843, v841);
        (*(v1047 + 8))(v839, v1053);
        (*(v836 + 8))(v834, v835);
        v838 = 0;
      }

      v844 = v1019;
      v845 = &v1045[v423];
      v1045 = *(v836 + 56);
      (v1045)(v845, v838, 1, v835);
      v1043 = v826[24];
      sub_1E65DF958();
      v846 = v1044;
      if ((v1044)(v844, 1, v835) == 1)
      {
        sub_1E5DFE50C(v844, &qword_1ED072D90, &qword_1E66040F0);
        v847 = 1;
        v848 = v1047;
      }

      else
      {
        v849 = v1046;
        sub_1E6078E1C(v1049, v1046);
        v850 = v1051;
        v851 = v1052;
        v852 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v853 = v1019;
        sub_1E65D73C8();
        v854 = v852;
        v846 = v1044;
        v855 = v850;
        v836 = v1042;
        (*(v851 + 8))(v854, v855);
        v848 = v1047;
        (*(v1047 + 8))(v849, v1053);
        (*(v836 + 8))(v853, v835);
        v847 = 0;
      }

      v856 = v1022;
      (v1045)(v423 + v1043, v847, 1, v835);
      v1047 = v826[28];
      sub_1E65DF948();
      if ((v846)(v856, 1, v835) == 1)
      {
        sub_1E5DFE50C(v856, &qword_1ED072D90, &qword_1E66040F0);
        v857 = 1;
      }

      else
      {
        v858 = v1046;
        sub_1E607907C(v1049, v1046);
        v859 = *MEMORY[0x1E69686E8];
        v860 = v1052;
        v861 = *(v1052 + 104);
        v862 = v1050;
        v1054 = v826;
        v863 = v1051;
        v861(v1050, v859, v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v864 = v1022;
        sub_1E65D73C8();
        v865 = v863;
        v826 = v1054;
        (*(v860 + 8))(v862, v865);
        (*(v848 + 8))(v858, v1053);
        (*(v836 + 8))(v864, v835);
        v857 = 0;
      }

      (v1045)(v423 + v1047, v857, 1, v835);
      v866 = v826[36];
      v867 = v826[40];
      sub_1E5FAB460(v1030, v423 + v826[32], &qword_1ED072638, &qword_1E65EB950);
      sub_1E5FAB460(v1031, v423 + v866, &qword_1ED072638, &qword_1E65EB950);
      v868 = type metadata accessor for ViewDescriptor();
      (*(*(v868 - 8) + 56))(v423 + v867, 1, 1, v868);
LABEL_418:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
    case 0x1Cu:
    case 0x1Du:
      v269 = sub_1E65DAE38();
      if (v269 == sub_1E65DAE38())
      {
        v270 = v991;
        sub_1E65DF898();
        v271 = sub_1E65DF8A8();
        v272 = sub_1E65DAE38();
        v273 = sub_1E65DAE38();
        v274 = sub_1E65E4B48();
        v275 = 4.0;
        if (v274)
        {
          v275 = 8.0;
        }

        v276 = 16.0;
        if (v274)
        {
          v276 = 18.0;
        }

        if (v272 == v273)
        {
          v277 = v276;
        }

        else
        {
          v277 = v275;
        }

        if (v272 == v273)
        {
          v278 = 12.0;
        }

        else
        {
          v278 = 8.0;
        }

        v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
        v280 = v1055 + v279[12];
        v281 = v279[16];
        v282 = sub_1E65DF838();
        v284 = v283;
        sub_1E64FC0F0(v280);
        v285 = sub_1E64FAA2C(v271);

        v286 = sub_1E600ACF0(v285);

        sub_1E5DFE50C(v270, &qword_1ED0758D8, &qword_1E65F1FE0);
        v287 = type metadata accessor for ArtworkDescriptor();
        *(v280 + v287[5]) = v286;
        v288 = v280 + v287[6];
        *v288 = 0;
        *(v288 + 8) = v277;
        *(v288 + 16) = v277;
        *(v288 + 24) = v278;
        *(v280 + v287[7]) = 1;
        v289 = (v280 + v287[8]);
        *v289 = v282;
        v289[1] = v284;
        v290 = v1015;
        sub_1E65DF938();
        v291 = sub_1E65D72D8();
        v292 = *(v291 - 8);
        v293 = *(v292 + 48);
        v294 = v293(v290, 1, v291) == 1;
        v295 = v1053;
        v1049 = v293;
        if (v294)
        {
          sub_1E5DFE50C(v290, &qword_1ED072D90, &qword_1E66040F0);
          v296 = 1;
          v297 = v281;
          v298 = v1055;
        }

        else
        {
          v297 = v281;
          v561 = v292;
          v1048 = v279;
          if (qword_1EE2D7250 != -1)
          {
            v966 = v1053;
            swift_once();
            v295 = v966;
          }

          __swift_project_value_buffer(v295, qword_1EE2EA220);
          v563 = v1051;
          v562 = v1052;
          v564 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v298 = v1055;
          v565 = v1015;
          sub_1E65D73C8();
          (*(v562 + 8))(v564, v563);
          v292 = v561;
          (*(v561 + 8))(v565, v291);
          v296 = 0;
          v279 = v1048;
          v293 = v1049;
        }

        v1047 = v292;
        v1048 = *(v292 + 56);
        (v1048)(v298 + v297, v296, 1, v291);
        v566 = v279[20];
        v567 = v1017;
        sub_1E65DF958();
        v568 = v293(v567, 1, v291);
        v569 = v279;
        if (v568 == 1)
        {
          sub_1E5DFE50C(v567, &qword_1ED072D90, &qword_1E66040F0);
          v570 = 1;
          v571 = v1055;
        }

        else
        {
          if (qword_1EE2D7248 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1EE2EA208);
          v584 = v1051;
          v585 = v1052;
          v586 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v571 = v1055;
          v587 = v1017;
          sub_1E65D73C8();
          (*(v585 + 8))(v586, v584);
          (*(v1047 + 8))(v587, v291);
          v570 = 0;
        }

        v588 = v1048;
        (v1048)(v571 + v566, v570, 1, v291);
        v589 = v569[24];
        v590 = v1003;
        sub_1E65DF948();
        if ((v1049)(v590, 1, v291) == 1)
        {
          sub_1E5DFE50C(v590, &qword_1ED072D90, &qword_1E66040F0);
          v591 = 1;
          v592 = v1055;
        }

        else
        {
          if (qword_1ED0719F8 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v1053, qword_1ED096378);
          v600 = v1051;
          v599 = v1052;
          v601 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          v592 = v1055;
          sub_1E65D73C8();
          (*(v599 + 8))(v601, v600);
          (*(v1047 + 8))(v590, v291);
          v591 = 0;
          v588 = v1048;
        }

        v588(v592 + v589, v591, 1, v291);
LABEL_222:
        sub_1E65E0A68();
      }

      else
      {
        v374 = v992;
        sub_1E65DF898();
        v375 = sub_1E65DF8A8();
        v376 = sub_1E65DAE38();
        v377 = sub_1E65DAE38();
        v378 = sub_1E65E4B48();
        v379 = 4.0;
        if (v378)
        {
          v379 = 8.0;
        }

        v380 = 16.0;
        if (v378)
        {
          v380 = 18.0;
        }

        if (v376 == v377)
        {
          v381 = v380;
        }

        else
        {
          v381 = v379;
        }

        if (v376 == v377)
        {
          v382 = 12.0;
        }

        else
        {
          v382 = 8.0;
        }

        v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A80, &qword_1E65FEF68);
        v1049 = *(v383 + 48);
        v384 = sub_1E65DF838();
        v386 = v385;
        v387 = v1055;
        sub_1E64FC0F0(v1055);
        v388 = sub_1E64FAA2C(v375);

        v389 = sub_1E600ACF0(v388);

        sub_1E5DFE50C(v374, &qword_1ED0758D8, &qword_1E65F1FE0);
        v390 = type metadata accessor for ArtworkDescriptor();
        *(v387 + v390[5]) = v389;
        v391 = v387 + v390[6];
        *v391 = 0;
        *(v391 + 8) = v381;
        *(v391 + 16) = v381;
        *(v391 + 24) = v382;
        *(v387 + v390[7]) = 1;
        v392 = (v387 + v390[8]);
        *v392 = v384;
        v392[1] = v386;
        v393 = v996;
        sub_1E65DF958();
        v394 = sub_1E65D72D8();
        v395 = *(v394 - 8);
        v396 = *(v395 + 48);
        if (v396(v393, 1, v394) == 1)
        {
          sub_1E5DFE50C(v393, &qword_1ED072D90, &qword_1E66040F0);
          v397 = 1;
        }

        else
        {
          v572 = v393;
          v573 = v1046;
          sub_1E62FC024();
          v574 = *MEMORY[0x1E69686E8];
          v576 = v1051;
          v575 = v1052;
          v577 = *(v1052 + 104);
          v1048 = v383;
          v578 = v1050;
          v577(v1050, v574, v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          sub_1E65D73C8();
          v579 = v578;
          v383 = v1048;
          (*(v575 + 8))(v579, v576);
          (*(v1047 + 8))(v573, v1053);
          (*(v395 + 8))(v572, v394);
          v397 = 0;
        }

        v580 = v1000;
        v581 = *(v395 + 56);
        v581(v387 + v1049, v397, 1, v394);
        v582 = *(v383 + 64);
        sub_1E65DF938();
        if (v396(v580, 1, v394) == 1)
        {
          sub_1E5DFE50C(v580, &qword_1ED072D90, &qword_1E66040F0);
          v583 = 1;
        }

        else
        {
          v1054 = v582;
          v593 = v1046;
          sub_1E62FC1A8();
          v595 = v1051;
          v594 = v1052;
          v596 = v580;
          v597 = v1050;
          (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
          sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
          sub_1E65D73C8();
          (*(v594 + 8))(v597, v595);
          v598 = v593;
          v582 = v1054;
          (*(v1047 + 8))(v598, v1053);
          (*(v395 + 8))(v596, v394);
          v583 = 0;
        }

        v581(v582 + v387, v583, 1, v394);
      }

      goto LABEL_418;
    default:
      sub_1E65DF898();
      v424 = sub_1E65DF8A8();
      v425 = sub_1E65DAE38();
      v426 = sub_1E65DAE38();
      v427 = sub_1E65E4B48();
      v428 = 4.0;
      if (v427)
      {
        v428 = 8.0;
      }

      v429 = 16.0;
      if (v427)
      {
        v429 = 18.0;
      }

      if (v425 == v426)
      {
        v430 = v429;
      }

      else
      {
        v430 = v428;
      }

      if (v425 == v426)
      {
        v431 = 12.0;
      }

      else
      {
        v431 = 8.0;
      }

      v432 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
      v433 = v1055 + *(v432 + 48);
      v1049 = v432;
      v434 = *(v432 + 64);
      v435 = sub_1E65DF838();
      v437 = v436;
      sub_1E64FC0F0(v433);
      v438 = sub_1E64FAA2C(v424);

      v439 = sub_1E600ACF0(v438);

      sub_1E5DFE50C(v179, &qword_1ED0758D8, &qword_1E65F1FE0);
      v440 = type metadata accessor for ArtworkDescriptor();
      *(v433 + v440[5]) = v439;
      v441 = v433 + v440[6];
      *v441 = 0;
      *(v441 + 8) = v430;
      *(v441 + 16) = v430;
      *(v441 + 24) = v431;
      *(v433 + v440[7]) = 1;
      v442 = (v433 + v440[8]);
      *v442 = v435;
      v442[1] = v437;
      v443 = v1016;
      sub_1E65DF938();
      v236 = sub_1E65D72D8();
      v237 = *(v236 - 8);
      v1048 = *(v237 + 48);
      if ((v1048)(v443, 1, v236) == 1)
      {
        sub_1E5DFE50C(v443, &qword_1ED072D90, &qword_1E66040F0);
        v444 = 1;
        v445 = v1053;
        v446 = v1055;
      }

      else
      {
        v1046 = v237;
        v1047 = v434;
        v608 = v1053;
        if (qword_1EE2D7250 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v608, qword_1EE2EA220);
        v610 = v1051;
        v609 = v1052;
        v611 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v446 = v1055;
        v434 = v1047;
        v612 = v1016;
        sub_1E65D73C8();
        v613 = v610;
        v445 = v608;
        (*(v609 + 8))(v611, v613);
        v237 = v1046;
        (*(v1046 + 8))(v612, v236);
        v444 = 0;
      }

      v1047 = *(v237 + 56);
      (v1047)(v446 + v434, v444, 1, v236);
      v614 = *(v1049 + 80);
      v615 = v1018;
      sub_1E65DF958();
      if ((v1048)(v615, 1, v236) == 1)
      {
        sub_1E5DFE50C(v615, &qword_1ED072D90, &qword_1E66040F0);
        v616 = 1;
        v617 = v1055;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v445, qword_1EE2EA208);
        v618 = v1051;
        v619 = v1052;
        v620 = v1050;
        (*(v1052 + 104))(v1050, *MEMORY[0x1E69686E8], v1051);
        sub_1E651D5E4(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v617 = v1055;
        v621 = v1018;
        sub_1E65D73C8();
        (*(v619 + 8))(v620, v618);
        (*(v237 + 8))(v621, v236);
        v616 = 0;
      }

      (v1047)(v617 + v614, v616, 1, v236);
      v338 = *(v1049 + 96);
      v339 = &v1037;
      goto LABEL_216;
  }
}