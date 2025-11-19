BOOL sub_1D43D8C4C()
{
  v0 = sub_1D44198D4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-v5];
  sub_1D4419864();
  v7 = sub_1D4419724();

  if (v7 >> 62)
  {
LABEL_17:
    v18 = v7 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_1D441A8C4();
  }

  else
  {
    v18 = v7 & 0xFFFFFFFFFFFFFF8;
    v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v19 = v7 & 0xC000000000000001;
  v17 = *MEMORY[0x1E6992178];
  v9 = (v1 + 104);
  v10 = (v1 + 8);
  do
  {
    v1 = v8;
    if (v20 == v8)
    {
      break;
    }

    if (v19)
    {
      MEMORY[0x1DA6D6410](v8, v7);
      if (__OFADD__(v1, 1))
      {
LABEL_13:
        __break(1u);
LABEL_14:

        break;
      }
    }

    else
    {
      if (v8 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (__OFADD__(v1, 1))
      {
        goto LABEL_13;
      }
    }

    sub_1D4419824();
    (*v9)(v4, v17, v0);
    v11 = sub_1D44198C4();
    v12 = *v10;
    (*v10)(v4, v0);
    v12(v6, v0);
    if (v11)
    {
      goto LABEL_14;
    }

    sub_1D4419824();
    v13 = sub_1D44198B4();

    v12(v6, v0);
    v8 = v1 + 1;
  }

  while ((v13 & 1) == 0);
  v14 = v20 != v1;

  return v14;
}

uint64_t sub_1D43D8EC0()
{
  v1 = v0;
  v2 = sub_1D44198D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41[-v7];
  if ((sub_1D4419774() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1D4419894();
  if (v9)
  {
    v10 = v9;
    v48 = v1;
    v11 = MEMORY[0x1DA6D53A0]();
    v12 = v11;
    v43 = v3;
    v47 = v10;
    v13 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v14 = sub_1D441A8C4();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 0;
    while (v14 != v3)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6D6410](v3, v12);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v15 = sub_1D4419874();

      ++v3;
      if (v15)
      {

        v3 = v43;
        goto LABEL_16;
      }
    }

    v16 = sub_1D4419754();

    v3 = v43;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_16:
  sub_1D4419864();
  v17 = sub_1D4419724();

  if (v17 >> 62)
  {
LABEL_50:
    v18 = sub_1D441A8C4();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x1E69921A8];
  if (v18 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CBDD0);
    v20 = *(v3 + 72);
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D44364A0;
    v23 = *v19;
    v24 = *(v3 + 104);
    v24(v22 + v21, v23, v2);
    v24(v22 + v21 + v20, *MEMORY[0x1E6992188], v2);
    sub_1D4419864();
    v25 = sub_1D4419724();

    if ((v25 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA6D6410](0, v25);
    }

    else
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    v19 = MEMORY[0x1E69921A8];

    sub_1D4419824();

    v27 = sub_1D435059C(v8, v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v3 + 8))(v8, v2);
    if (v27)
    {
      return 0;
    }
  }

  if (sub_1D43D7600() & 1) == 0 || (sub_1D4419754() & 1) != 0 || (v50 = &type metadata for CalculatePencilAndPaperFeature, v51 = sub_1D4374F44(), v28 = sub_1D4417E34(), __swift_destroy_boxed_opaque_existential_0(v49), (v28) && (v29 = *(sub_1D44197C4() + 16), , v29) || (result = sub_1D4419794()) != 0)
  {
    sub_1D4419864();
    v30 = sub_1D4419724();

    v46 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v30 >> 62)
    {
      v48 = sub_1D441A8C4();
    }

    else
    {
      v48 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = 0;
    v47 = v30 & 0xC000000000000001;
    v44 = *v19;
    v32 = v3;
    v3 += 104;
    v33 = (v32 + 8);
    LODWORD(v43) = *MEMORY[0x1E6992178];
    v42 = *MEMORY[0x1E6992160];
    v45 = v30;
    while (v48 != v31)
    {
      if (v47)
      {
        MEMORY[0x1DA6D6410](v31, v30);
        if (__OFADD__(v31, 1))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v31 >= *(v46 + 16))
        {
          goto LABEL_49;
        }

        if (__OFADD__(v31, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:

          return 1;
        }
      }

      sub_1D4419824();
      v34 = *v3;
      (*v3)(v6, v44, v2);
      v35 = sub_1D44198C4();
      v36 = *v33;
      (*v33)(v6, v2);
      v36(v8, v2);
      if (v35)
      {
        v37 = *(sub_1D4419834() + 16);

        if (!v37)
        {
          goto LABEL_44;
        }
      }

      sub_1D4419824();
      v34(v6, v43, v2);
      v38 = sub_1D44198C4();
      v36(v6, v2);
      v36(v8, v2);
      if (v38)
      {
        goto LABEL_44;
      }

      sub_1D4419824();
      v39 = sub_1D44198A4();
      v36(v8, v2);
      if (v39)
      {
        goto LABEL_44;
      }

      sub_1D4419824();
      v34(v6, v42, v2);
      v40 = sub_1D44198C4();

      v36(v6, v2);
      v36(v8, v2);
      ++v31;
      v30 = v45;
      if (v40)
      {

        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D43D9574()
{
  v0 = sub_1D4419874();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isTrivial];

    return v2 ^ 1;
  }

  if ((sub_1D43D7600() & 1) == 0)
  {
    result = sub_1D4419854();
    if (!result)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
    sub_1D43DA008();
    if (swift_dynamicCast())
    {
      v4 = [v11 domain];
      v5 = sub_1D4419C54();
      v7 = v6;

      if (v5 == sub_1D4419C54() && v7 == v8)
      {
      }

      else
      {
        v9 = sub_1D441AD84();

        if ((v9 & 1) == 0)
        {
LABEL_11:

          return 0;
        }
      }

      if ([v11 code] != -1000)
      {
        v10 = [v11 code];

        return v10 != -1003;
      }

      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t sub_1D43D96F0()
{
  sub_1D4419864();
  v0 = sub_1D4419724();

  sub_1D4419864();
  sub_1D4419724();

  sub_1D4419844();
  v1 = sub_1D4419E54();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1D4419864();
  v4 = sub_1D4419724();

  if (v4 >> 62)
  {
    goto LABEL_52;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D441A8C4())
  {

    v7 = __OFSUB__(i, 1);
    v1 = i - 1;
    if (v7)
    {
      break;
    }

LABEL_5:
    if ((v1 & 0x8000000000000000) == 0)
    {
      v3 = v0 >> 62;
      if (v0 >> 62)
      {
        goto LABEL_39;
      }

      v8 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v1)
      {
        v9 = v1;
      }

      else
      {
        v9 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v8 >= v10)
      {
        goto LABEL_14;
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    while (1)
    {
      __break(1u);
LABEL_39:
      v35 = sub_1D441A8C4();
      result = sub_1D441A8C4();
      if (result < 0)
      {
        goto LABEL_54;
      }

      if (v35 >= v1)
      {
        v36 = v1;
      }

      else
      {
        v36 = v35;
      }

      if (v35 < 0)
      {
        v36 = v1;
      }

      if (v1)
      {
        v10 = v36;
      }

      else
      {
        v10 = 0;
      }

      if (sub_1D441A8C4() < v10)
      {
        goto LABEL_49;
      }

LABEL_14:
      if ((v0 & 0xC000000000000001) != 0)
      {

        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = v11 + 1;
            sub_1D441A9F4();
            v11 = v12;
          }

          while (v10 != v12);
        }
      }

      else
      {
      }

      if (v3)
      {
        sub_1D441ABE4();
        v3 = v14;
        v13 = v15;
        v17 = v16;

        v10 = v17 >> 1;
      }

      else
      {
        v13 = 0;
        v3 = (v0 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v18 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_50;
      }

      if (!v18)
      {
        swift_unknownObjectRelease();
        v0 = MEMORY[0x1E69E7CC0];
LABEL_36:
        v37[0] = v0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
        sub_1D418BC58();
        v28 = sub_1D4419BB4();
        v30 = v29;

        v31 = [objc_opt_self() ic_calculateEqualsSignString];
        v32 = sub_1D4419C54();
        v34 = v33;

        v37[0] = v28;
        v37[1] = v30;

        MEMORY[0x1DA6D5730](v32, v34);

        return v37[0];
      }

      v37[0] = MEMORY[0x1E69E7CC0];
      v1 = v37;
      sub_1D418BC38(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        break;
      }

      v0 = v37[0];
      if (v10 <= v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = v10;
      }

      v20 = v19 - v13;
      v21 = (v3 + 8 * v13);
      while (v20)
      {
        v1 = *v21;

        v22 = sub_1D4419814();
        v24 = v23;

        v37[0] = v0;
        v26 = *(v0 + 16);
        v25 = *(v0 + 24);
        v3 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v1 = v37;
          sub_1D418BC38((v25 > 1), v26 + 1, 1);
          v0 = v37[0];
        }

        *(v0 + 16) = v3;
        v27 = v0 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        --v20;
        ++v21;
        if (!--v18)
        {
          swift_unknownObjectRelease();
          goto LABEL_36;
        }
      }

      __break(1u);
    }

LABEL_51:
    __break(1u);
LABEL_52:
    ;
  }

  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

char *sub_1D43D9AA4()
{
  v0 = sub_1D44198D4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v28 - v4;
  sub_1D4419864();
  v5 = sub_1D4419724();

  v35 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_30:
    v6 = sub_1D441A8C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = 0;
    v31 = v5 & 0xFFFFFFFFFFFFFF8;
    v32 = v5 & 0xC000000000000001;
    v29 = *MEMORY[0x1E6992168];
    v28 = (v1 + 104);
    v9 = (v1 + 8);
    v30 = v6;
    while (1)
    {
      if (v32)
      {
        v1 = MEMORY[0x1DA6D6410](v8, v5);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v16 = v35;
          v7 = MEMORY[0x1E69E7CC0];
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v1 = *(v5 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_14;
        }
      }

      v11 = v5;
      v12 = v33;
      sub_1D4419824();
      v13 = v34;
      (*v28)(v34, v29, v0);
      sub_1D43DA054();
      v14 = sub_1D4419BE4();
      v15 = *v9;
      (*v9)(v13, v0);
      v15(v12, v0);
      if (v14)
      {
      }

      else
      {
        sub_1D441AA94();
        sub_1D441AAC4();
        sub_1D441AAD4();
        sub_1D441AAA4();
      }

      v5 = v11;
      ++v8;
      if (v10 == v30)
      {
        goto LABEL_15;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_32:

    v20 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v35 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
    sub_1D418BC58();
    v27 = sub_1D4419BB4();

    return v27;
  }

  v17 = sub_1D441A8C4();
  if (!v17)
  {
    goto LABEL_32;
  }

LABEL_20:
  v35 = v7;
  result = sub_1D418BC38(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = v35;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6D6410](v19, v16);
      }

      else
      {
      }

      v21 = sub_1D4419814();
      v23 = v22;

      v35 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D418BC38((v24 > 1), v25 + 1, 1);
        v20 = v35;
      }

      ++v19;
      *(v20 + 16) = v25 + 1;
      v26 = v20 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v17 != v19);

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D43D9EA0()
{
  v0 = sub_1D44198D4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  sub_1D4419824();
  (*(v1 + 104))(v4, *MEMORY[0x1E6992168], v0);
  v7 = sub_1D44198C4();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

unint64_t sub_1D43DA008()
{
  result = qword_1EC7CCA50;
  if (!qword_1EC7CCA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7CCA50);
  }

  return result;
}

unint64_t sub_1D43DA054()
{
  result = qword_1EC7CAFE0;
  if (!qword_1EC7CAFE0)
  {
    sub_1D44198D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CAFE0);
  }

  return result;
}

uint64_t sub_1D43DA0AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43DA11C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D43DA1A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D43DA1E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D43DA254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - v6;
  v51 = sub_1D4419164();
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E18);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v52 = a2;

  v54 = sub_1D4419224();
  sub_1D4419034();

  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0C0) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0C8) + 28);
  sub_1D4418A64();
  v16 = sub_1D4418A74();
  v17 = *(v16 - 8);
  v49 = *(v17 + 56);
  v50 = v17 + 56;
  v49(v14 + v15, 0, 1, v16);
  *v14 = swift_getKeyPath();
  v18 = sub_1D4418DC4();
  v19 = *(v18 - 8);
  v47 = *(v19 + 56);
  v48 = v19 + 56;
  v47(v13, 1, 1, v18);
  v20 = sub_1D4418DF4();
  sub_1D41769C4(v13, &qword_1EC7C9E18);
  KeyPath = swift_getKeyPath();
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0D0) + 36);
  v46 = a3;
  v23 = (a3 + v22);
  *v23 = KeyPath;
  v23[1] = v20;
  v24 = sub_1D44191A4();
  v25 = sub_1D4419154();
  v26 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0D8) + 36));
  *v26 = v24;
  v26[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0E0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D44364A0;
  v28 = *MEMORY[0x1E69814D8];
  v29 = *(v8 + 104);
  v30 = v51;
  v29(v10, v28, v51);
  *(v27 + 32) = sub_1D44191D4();
  v29(v10, v28, v30);
  *(v27 + 40) = sub_1D44191D4();
  sub_1D4419384();
  sub_1D4419394();
  MEMORY[0x1DA6D4D60](v27);
  sub_1D44185B4();
  v31 = v54;
  LOBYTE(v29) = sub_1D4418D04();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0E8);
  v33 = v46;
  v34 = v46 + *(v32 + 36);
  *v34 = v31;
  v35 = v55;
  *(v34 + 24) = v56;
  *(v34 + 8) = v35;
  *(v34 + 40) = v29;
  v36 = sub_1D4419364();
  v38 = v37;

  sub_1D4419224();
  sub_1D4418A64();
  v49(v7, 0, 1, v16);
  v39 = sub_1D4419244();

  sub_1D41769C4(v7, &qword_1EC7CC0B8);
  v47(v13, 1, 1, v18);
  v40 = sub_1D4418DF4();
  sub_1D41769C4(v13, &qword_1EC7C9E18);
  v41 = swift_getKeyPath();
  v42 = sub_1D4419194();
  v43 = sub_1D44191A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0F0);
  v45 = (v33 + *(result + 36));
  *v45 = v36;
  v45[1] = v38;
  v45[2] = v39;
  v45[3] = v41;
  v45[4] = v40;
  v45[5] = v42;
  v45[6] = v43;
  return result;
}

uint64_t sub_1D43DA7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D43DA860(a1, &v5 - v3);
  return sub_1D44187D4();
}

uint64_t sub_1D43DA860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC0B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D43DA8D0()
{
  result = qword_1EDE32B88;
  if (!qword_1EDE32B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC0F0);
    sub_1D43DA988();
    sub_1D417645C(&qword_1EDE32B78, &qword_1EC7CC110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32B88);
  }

  return result;
}

unint64_t sub_1D43DA988()
{
  result = qword_1EDE32B90;
  if (!qword_1EDE32B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC0E8);
    sub_1D43DAA40();
    sub_1D417645C(&qword_1EDE32B68, &qword_1EC7CC108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32B90);
  }

  return result;
}

unint64_t sub_1D43DAA40()
{
  result = qword_1EDE32B98;
  if (!qword_1EDE32B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC0D8);
    sub_1D43DAAF8();
    sub_1D417645C(&qword_1EDE32B60, &qword_1EC7CC100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32B98);
  }

  return result;
}

unint64_t sub_1D43DAAF8()
{
  result = qword_1EDE32BA0;
  if (!qword_1EDE32BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC0D0);
    sub_1D43DABB0();
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BA0);
  }

  return result;
}

unint64_t sub_1D43DABB0()
{
  result = qword_1EDE32BB8;
  if (!qword_1EDE32BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC0C0);
    sub_1D43DAC68();
    sub_1D417645C(&qword_1EDE32B28, &qword_1EC7CC0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BB8);
  }

  return result;
}

unint64_t sub_1D43DAC68()
{
  result = qword_1EDE32BF8;
  if (!qword_1EDE32BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC0F8);
    sub_1D43DACF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BF8);
  }

  return result;
}

unint64_t sub_1D43DACF4()
{
  result = qword_1EC7CABA8;
  if (!qword_1EC7CABA8)
  {
    sub_1D4418CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CABA8);
  }

  return result;
}

unint64_t sub_1D43DAD50(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1D441A8C4();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1D4392874(v19, 0);
      sub_1D42F4528(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1D441A8C4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6D6410]();
          v11 = MEMORY[0x1DA6D6410](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1D43E7D28(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1D43E7D28(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t static ICNoteTimelineControllerInternal.set(timezone:)(uint64_t a1)
{
  v2 = sub_1D44175E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC118);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  if (qword_1EDE32D40 != -1)
  {
    v14 = v7;
    swift_once();
    v7 = v14;
  }

  v10 = __swift_project_value_buffer(v7, qword_1EDE32D48);
  sub_1D4417514();
  v11 = sub_1D4417544();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  swift_beginAccess();
  sub_1D43DB4D4(v9, v10);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v3 + 16))(v5, a1, v2);
    sub_1D4417524();
  }

  return swift_endAccess();
}

id ICNoteTimelineControllerInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICNoteTimelineControllerInternal.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ICNoteTimelineControllerInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D43DB4D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t sub_1D43DB584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D43DB5CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id ICCalculatePreviewBehaviorMenu.init(note:isMathEnabled:)(void *a1, char a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNote:a1 isMathEnabled:a2 & 1];

  return v3;
}

{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICCalculatePreviewBehaviorMenu_allBehaviors] = &unk_1F4F8C128;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR___ICCalculatePreviewBehaviorMenu_isMathEnabled] = a2;
  v7.receiver = v2;
  v7.super_class = ICCalculatePreviewBehaviorMenu;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

UIMenuElement_optional __swiftcall ICCalculatePreviewBehaviorMenu.makeMenu()()
{
  v1 = v0;
  v2 = [v0 note];
  if (!v2)
  {
    goto LABEL_24;
  }

  v4 = v2;
  if (![v0 isMathEnabled])
  {

    v2 = 0;
    goto LABEL_24;
  }

  if (!-[objc_class isEditable](v4, sel_isEditable) || (v5 = -[objc_class deviceManagementRestrictionsManager](v4, sel_deviceManagementRestrictionsManager), v6 = [v5 isMathPaperSolvingAllowed], v5, !v6))
  {
    sub_1D41766C0(0, &qword_1EDE323D0);
    v22 = objc_opt_self();
    v23 = sub_1D4419C14();
    v24 = [v22 localizedFrameworkStringForKey:v23 value:0 table:0 allowSiri:1];

    sub_1D4419C54();
    v25 = sub_1D4419C14();
    v26 = [v22 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:1];

    sub_1D4419C54();
    v27 = sub_1D4419C14();
    v28 = [objc_opt_self() systemImageNamed_];

    v29 = sub_1D441A614();
LABEL_20:
    v30 = v29;

    v2 = v30;
    goto LABEL_24;
  }

  v7 = objc_opt_self();
  v8 = sub_1D4419C14();
  v32 = v7;
  v9 = [v7 localizedFrameworkStringForKey:v8 value:0 table:0 allowSiri:1];

  sub_1D4419C54();
  sub_1D43DBFE4([(objc_class *)v4 calculatePreviewBehavior]);
  v10 = sub_1D4419C14();
  [objc_opt_self() systemImageNamed_];

  v11 = *&v1[OBJC_IVAR___ICCalculatePreviewBehaviorMenu_allBehaviors];
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_19:
    sub_1D41766C0(0, &qword_1EDE32430);
    v29 = sub_1D441A5A4();
    goto LABEL_20;
  }

  v31 = v4;
  v13 = v1;
  sub_1D441AAB4();
  sub_1D41766C0(0, &qword_1EDE323D0);
  type metadata accessor for PreviewBehaviors(0);
  v14 = 0;
  while (v14 < *(v11 + 16))
  {
    v17 = *(v11 + 32 + 8 * v14);
    if (v17 && v17 != 2 && v17 != 1)
    {
      goto LABEL_23;
    }

    v18 = sub_1D4419C14();
    v19 = [v32 localizedFrameworkStringForKey:v18 value:0 table:0 allowSiri:1];

    sub_1D4419C54();
    v20 = [v13 note];
    if (v20)
    {
      v21 = v20;
      [v20 calculatePreviewBehavior];
    }

    ++v14;
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v17;
    v16 = v13;
    sub_1D441A614();
    sub_1D441AA94();
    sub_1D441AAC4();
    sub_1D441AAD4();
    sub_1D441AAA4();
    if (v12 == v14)
    {

      v4 = v31;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  v2 = sub_1D441ADB4();
  __break(1u);
LABEL_24:
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

id ICCalculatePreviewBehaviorMenu.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1D43DBFE4(uint64_t a1)
{
  if (!a1 || a1 == 2 || a1 == 1)
  {
    v1 = objc_opt_self();
    v2 = sub_1D4419C14();
    v3 = [v1 localizedFrameworkStringForKey:v2 value:0 table:0 allowSiri:1];

    v4 = sub_1D4419C54();
    return v4;
  }

  else
  {
    type metadata accessor for PreviewBehaviors(0);
    result = sub_1D441ADB4();
    __break(1u);
  }

  return result;
}

void sub_1D43DC120()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) note];
  [v2 setCalculatePreviewBehavior_];
}

uint64_t sub_1D43DC198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D44188B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E78);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1D417CF94(v2, &v14 - v9, &qword_1EC7C9E78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D4418A14();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1D441A174();
    v13 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ActivityStreamSectionHeaderView.section.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivityStreamSectionHeaderView() + 20);

  return sub_1D43DC428(v3, a1);
}

uint64_t type metadata accessor for ActivityStreamSectionHeaderView()
{
  result = qword_1EC7CC178;
  if (!qword_1EC7CC178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D43DC428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream.Section(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ActivityStreamSectionHeaderView.section.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActivityStreamSectionHeaderView() + 20);

  return sub_1D43DC4D0(a1, v3);
}

uint64_t sub_1D43DC4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream.Section(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ActivityStreamSectionHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC148);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  sub_1D43DC86C(v2, &v36 - v5);
  if (qword_1EC7C92A8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC7CC858;
  KeyPath = swift_getKeyPath();
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC150) + 36)];
  *v9 = KeyPath;
  v9[1] = v7;
  v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC158) + 36)];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC160) + 28);
  v12 = *MEMORY[0x1E6980FD8];
  v13 = sub_1D4418F24();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v10 + v11, v12, v13);
  (*(v14 + 56))(v10 + v11, 0, 1, v13);
  *v10 = swift_getKeyPath();

  LOBYTE(v7) = sub_1D4418CF4();
  sub_1D4418494();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC168) + 36)];
  *v23 = v7;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  LOBYTE(v7) = sub_1D4418D64();
  sub_1D4418494();
  v24 = &v6[*(v4 + 36)];
  *v24 = v7;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  if (_UISolariumEnabled() && ![objc_opt_self() ic_isVision])
  {
    v30 = 0;
  }

  else
  {
    v29 = [objc_opt_self() ICBackgroundColor];
    v30 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
  }

  v31 = sub_1D4419364();
  v33 = v32;
  sub_1D419DC90(v6, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC170);
  v35 = (a1 + *(result + 36));
  *v35 = v30;
  v35[1] = v31;
  v35[2] = v33;
  return result;
}

uint64_t sub_1D43DC86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC1E8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v22 - v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC210);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v22 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC1D8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - v7;
  v9 = sub_1D4418A14();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  sub_1D43DC198(&v22 - v14);
  (*(v10 + 104))(v13, *MEMORY[0x1E697F670], v9);
  v16 = sub_1D43DDD34(v15, v13);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v17(v15, v9);
  v18 = sub_1D4418924();
  if (v16)
  {
    *v8 = v18;
    *(v8 + 1) = 0;
    v8[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC220);
    sub_1D43DCC80(a1, &v8[*(v19 + 44)]);
    sub_1D417CF94(v8, v6, &qword_1EC7CC1D8);
    swift_storeEnumTagMultiPayload();
    sub_1D417645C(&qword_1EC7CC1D0, &qword_1EC7CC1D8);
    sub_1D417645C(&qword_1EC7CC1E0, &qword_1EC7CC1E8);
    sub_1D4418B84();
    return sub_1D41769C4(v8, &qword_1EC7CC1D8);
  }

  else
  {
    *v4 = v18;
    *(v4 + 1) = 0;
    v4[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC218);
    sub_1D43DD274(a1, &v4[*(v21 + 44)]);
    sub_1D417CF94(v4, v6, &qword_1EC7CC1E8);
    swift_storeEnumTagMultiPayload();
    sub_1D417645C(&qword_1EC7CC1D0, &qword_1EC7CC1D8);
    sub_1D417645C(&qword_1EC7CC1E0, &qword_1EC7CC1E8);
    sub_1D4418B84();
    return sub_1D41769C4(v4, &qword_1EC7CC1E8);
  }
}

uint64_t sub_1D43DCC80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v52 = sub_1D4418C94();
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC228);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v47 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC230);
  v7 = MEMORY[0x1EEE9AC00](v55);
  v63 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v47 - v11;
  v12 = a1 + *(type metadata accessor for ActivityStreamSectionHeaderView() + 20);
  v13 = ActivityStream.Section.title.getter();
  v15 = v14;
  v17 = v16;
  v58 = sub_1D4418F34();
  v57 = v18;
  v53 = v19;
  v59 = v20;
  sub_1D430E564(v13, v15, v17 & 1);

  v21 = sub_1D4418924();
  v22 = type metadata accessor for ActivityStream.Section(0);
  v23 = (v12 + *(v22 + 24));
  v24 = *v23;
  v25 = v23[1];
  v27 = v23[2];
  v26 = v23[3];
  v28 = *(v12 + *(v22 + 28));
  sub_1D433E4BC(*v23, v25, v27, v26);

  sub_1D433E4BC(v24, v25, v27, v26);
  sub_1D433E500(v24, v25, v27, v26);
  v70 = 1;
  v29 = sub_1D4418C34();
  v65 = v21;
  LOBYTE(v66) = 1;
  *(&v66 + 1) = v24;
  *&v67 = v25;
  *(&v67 + 1) = v27;
  *&v68 = v26;
  v51 = v28;
  *(&v68 + 1) = v28;
  v69 = v29;
  sub_1D4418C84();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC238);
  v31 = sub_1D43DE14C();
  v56 = v6;
  v50 = v30;
  v48 = v31;
  sub_1D44190B4();
  (*(v49 + 8))(v4, v52);
  v71[2] = v67;
  v71[3] = v68;
  v72 = v69;
  v71[0] = v65;
  v71[1] = v66;
  sub_1D41769C4(v71, &qword_1EC7CC238);
  if (v26)
  {
    v32 = v24;
    v33 = v25;
    v34 = v27;
  }

  else
  {
    sub_1D44189A4();
    v32 = sub_1D4418F64();
    v33 = v35;
    v34 = v36;
  }

  sub_1D433E4BC(v24, v25, v27, v26);
  *&v65 = v50;
  *(&v65 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v37 = v54;
  v38 = v61;
  v39 = v56;
  sub_1D4419094();
  sub_1D430E564(v32, v33, v34 & 1);

  (*(v60 + 8))(v39, v38);
  v40 = v62;
  sub_1D4418604();
  sub_1D41769C4(v37, &qword_1EC7CC230);
  v41 = v63;
  sub_1D417CF94(v40, v63, &qword_1EC7CC230);
  v42 = v64;
  v43 = v58;
  v44 = v57;
  *v64 = v58;
  v42[1] = v44;
  LOBYTE(v38) = v53 & 1;
  *(v42 + 16) = v53 & 1;
  v42[3] = v59;
  v42[4] = 0;
  *(v42 + 40) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC258);
  sub_1D417CF94(v41, v42 + *(v45 + 64), &qword_1EC7CC230);
  sub_1D430E574(v43, v44, v38);

  sub_1D41769C4(v40, &qword_1EC7CC230);
  sub_1D41769C4(v41, &qword_1EC7CC230);
  sub_1D430E564(v43, v44, v38);
}

uint64_t sub_1D43DD274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC260);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-v9 - 8];
  v11 = sub_1D4418A44();
  v26 = 1;
  sub_1D43DD584(a1, &v34);
  v29 = *&v35[16];
  v30 = *&v35[32];
  v31 = *&v35[48];
  v27 = v34;
  v28 = *v35;
  v32[2] = *&v35[16];
  v32[3] = *&v35[32];
  v33 = *&v35[48];
  v32[0] = v34;
  v32[1] = *v35;
  sub_1D417CF94(&v27, v25, &qword_1EC7CC268);
  sub_1D41769C4(v32, &qword_1EC7CC268);
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  *&v25[55] = v30;
  *&v25[71] = v31;
  v34 = v11;
  v35[0] = v26;
  *&v35[60] = *&v25[59];
  *&v35[49] = *&v25[48];
  *&v35[33] = *&v25[32];
  *&v35[17] = *&v25[16];
  *&v35[1] = *v25;
  v12 = (v10 + *(v5 + 44));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC270);
  v14 = *(v13 + 36);
  v15 = *MEMORY[0x1E697F678];
  v16 = sub_1D4418A14();
  (*(*(v16 - 8) + 104))(v12 + v14, v15, v16);
  v17 = (v12 + *(v13 + 40));
  v18 = *&v35[32];
  v17[2] = *&v35[16];
  v17[3] = v18;
  v17[4] = *&v35[48];
  *(v17 + 76) = *&v35[60];
  v19 = *v35;
  *v17 = v34;
  v17[1] = v19;
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E78);
  swift_storeEnumTagMultiPayload();
  v20 = *&v35[32];
  v10[2] = *&v35[16];
  v10[3] = v20;
  v10[4] = *&v35[48];
  *(v10 + 76) = *&v35[60];
  v21 = *v35;
  *v10 = v34;
  v10[1] = v21;
  sub_1D417CF94(v10, v8, &qword_1EC7CC260);
  sub_1D417CF94(v8, a2, &qword_1EC7CC260);
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC278) + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_1D417CF94(&v34, v25, &qword_1EC7CC280);
  sub_1D41769C4(v10, &qword_1EC7CC260);
  return sub_1D41769C4(v8, &qword_1EC7CC260);
}

uint64_t sub_1D43DD584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ActivityStreamSectionHeaderView() + 20);
  v4 = ActivityStream.Section.title.getter();
  v6 = v5;
  v8 = v7;
  v9 = sub_1D4418F34();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1D430E564(v4, v6, v8 & 1);

  v16 = (v3 + *(type metadata accessor for ActivityStream.Section(0) + 24));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  sub_1D433E4BC(*v16, v18, v19, v20);
  v21 = sub_1D4418C34();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  *(a2 + 64) = v21;
  sub_1D430E574(v9, v11, v13 & 1);

  sub_1D433E4BC(v17, v18, v19, v20);
  sub_1D433E500(v17, v18, v19, v20);
  sub_1D430E564(v9, v11, v13 & 1);
}

uint64_t sub_1D43DD6DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4418804();
  *a1 = result;
  return result;
}

uint64_t sub_1D43DD758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC208);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D417CF94(a1, &v5 - v3, &qword_1EC7CC208);
  return sub_1D4418854();
}

void sub_1D43DD844()
{
  sub_1D433D228();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityStream.Section(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D43DD8C8()
{
  result = qword_1EC7CC188;
  if (!qword_1EC7CC188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC170);
    sub_1D43DD9DC(&qword_1EC7CC190, &qword_1EC7CC148, &unk_1D443C3A0, sub_1D43DD9AC);
    sub_1D417645C(&qword_1EC7CC1F8, &qword_1EC7CC200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC188);
  }

  return result;
}

uint64_t sub_1D43DD9DC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1D43DDA60()
{
  result = qword_1EC7CC1A0;
  if (!qword_1EC7CC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC158);
    sub_1D43DDB18();
    sub_1D417645C(&qword_1EC7CC1F0, &qword_1EC7CC160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC1A0);
  }

  return result;
}

unint64_t sub_1D43DDB18()
{
  result = qword_1EC7CC1A8;
  if (!qword_1EC7CC1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC150);
    sub_1D43DDBD0();
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC1A8);
  }

  return result;
}

unint64_t sub_1D43DDBD0()
{
  result = qword_1EC7CC1B0;
  if (!qword_1EC7CC1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC1B8);
    sub_1D43DDC54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC1B0);
  }

  return result;
}

unint64_t sub_1D43DDC54()
{
  result = qword_1EC7CC1C0;
  if (!qword_1EC7CC1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC1C8);
    sub_1D417645C(&qword_1EC7CC1D0, &qword_1EC7CC1D8);
    sub_1D417645C(&qword_1EC7CC1E0, &qword_1EC7CC1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC1C0);
  }

  return result;
}

BOOL sub_1D43DDD34(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1D4418A14();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x1E697F658];
  if (v12 != *MEMORY[0x1E697F658])
  {
    if (v12 == *MEMORY[0x1E697F690])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F698])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x1E697F660])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x1E697F630])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x1E697F670])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x1E697F668])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x1E697F678])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x1E697F640])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x1E697F690])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x1E697F698])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x1E697F680])
    {
      if (v15 == *MEMORY[0x1E697F650])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F660])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F630])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F670])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F668])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F678])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F640])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x1E697F648])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

unint64_t sub_1D43DE14C()
{
  result = qword_1EC7CC240;
  if (!qword_1EC7CC240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC238);
    sub_1D417645C(&qword_1EC7CC248, &qword_1EC7CC250);
    sub_1D417645C(&qword_1EC7CA8D0, &qword_1EC7CA8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC240);
  }

  return result;
}

uint64_t sub_1D43DE230()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7CC288);
  __swift_project_value_buffer(v0, qword_1EC7CC288);
  return sub_1D4418184();
}

id NSAttributedString.withMutations(_:)(void (*a1)(void))
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  a1();
  [v2 copy];
  sub_1D441A804();
  swift_unknownObjectRelease();
  sub_1D43191DC();
  if (swift_dynamicCast())
  {

    return v9;
  }

  else
  {
    if (qword_1EC7C9268 != -1)
    {
      swift_once();
    }

    v4 = sub_1D44181B4();
    __swift_project_value_buffer(v4, qword_1EC7CC288);
    v5 = sub_1D44181A4();
    v6 = sub_1D441A174();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D4171000, v5, v6, "Unexpected return type from [NSMutableAttributedString copy]", v7, 2u);
      MEMORY[0x1DA6D8690](v7, -1, -1);
    }

    return v8;
  }
}

Swift::Void __swiftcall NSMutableAttributedString.formatHashtags(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  rawValue = with._rawValue;
  v59 = sub_1D4416E44();
  v55 = *(v59 - 8);
  v3 = MEMORY[0x1EEE9AC00](v59);
  v49 = &rawValue - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v60 = &rawValue - v6;
  v58 = v7;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &rawValue - v8;
  v10 = [objc_opt_self() ic_hashtagCharacterString];
  sub_1D4419C54();

  v54 = v9;
  sub_1D4416DC4();

  v45 = v2;
  v11 = [v2 string];
  v12 = sub_1D4419C54();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  v50 = v12;
  v51 = v14;
  v66 = v12;
  v67 = v14;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v68 = 0;
  v69 = v15;

  v61 = sub_1D4419D34();
  if (!v16)
  {
LABEL_19:

    (*(v55 + 8))(v54, v59);
    return;
  }

  v17 = v16;
  v18 = 0;
  v46 = 0;
  v56 = v55 + 32;
  v57 = v55 + 16;
  v47 = (v55 + 8);
  v53 = 1;
  while (!__OFADD__(v18, 1))
  {
    v52 = v18 + 1;
    v20 = v55;
    v21 = *(v55 + 16);
    v22 = v59;
    v23 = v60;
    v21(v60, v54, v59);
    v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v25 = swift_allocObject();
    v26 = *(v20 + 32);
    v26(v25 + v24, v23, v22);
    v27 = sub_1D43DEDF0(v61, v17, sub_1D43DEDEC);

    if (v27)
    {

      goto LABEL_18;
    }

    if (v53)
    {

      goto LABEL_6;
    }

    v28 = sub_1D4419CE4();
    if (__OFSUB__(v28, 1))
    {
      goto LABEL_21;
    }

    v48 = v27;
    if (v18 == v28 - 1)
    {

LABEL_16:
      v36 = v50;
      v35 = v51;
      v37 = sub_1D4419D04();
      v38 = sub_1D4419D04();
      if (v38 >> 14 < v37 >> 14)
      {
        goto LABEL_22;
      }

      v64 = v37;
      v65 = v38;
      v62 = v36;
      v63 = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9B8);
      sub_1D4398A14();
      sub_1D42CC920();
      v39 = sub_1D441A6F4();
      v41 = v40;
      type metadata accessor for Key(0);
      sub_1D43DEFF4();
      v42 = sub_1D4419B54();
      [v45 addAttributes:v42 range:{v39, v41}];

      v18 = 0;
      v27 = v48;
LABEL_18:
      v53 = v27 ^ 1;
      v61 = sub_1D4419D34();
      v17 = v43;
      v46 = v18;
      v18 = v52;
      if (!v43)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v29 = [objc_opt_self() ic_hashtagAllowedCharacterSet];
      v30 = v60;
      sub_1D4416DF4();

      v31 = v49;
      v32 = v30;
      v33 = v59;
      v21(v49, v32, v59);
      v34 = swift_allocObject();
      v26(v34 + v24, v31, v33);
      LOBYTE(v31) = sub_1D43DEDF0(v61, v17, sub_1D43DF0B4);

      (*v47)(v60, v33);

      if ((v31 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_6:
      v61 = sub_1D4419D34();
      v17 = v19;
      ++v18;
      if (!v19)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

Swift::Void __swiftcall NSMutableAttributedString.replace(placeholder:with:)(Swift::String placeholder, UIImage with)
{
  v3 = v2;
  object = placeholder._object;
  countAndFlagsBits = placeholder._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  [v10 setImage_];
  v11 = [objc_opt_self() attributedStringWithAttachment_];
  v12 = [v3 string];
  v13 = sub_1D4419C54();
  v15 = v14;

  v29 = v13;
  v30 = v15;
  v27 = countAndFlagsBits;
  v28 = object;
  v16 = sub_1D44174B4();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  sub_1D42CC920();
  v17 = sub_1D441A7E4();
  v19 = v18;
  LOBYTE(v13) = v20;
  sub_1D43DF04C(v9);

  if ((v13 & 1) == 0)
  {
    v29 = v17;
    v30 = v19;
    v21 = [v3 string];
    v22 = sub_1D4419C54();
    v24 = v23;

    v27 = v22;
    v28 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9B8);
    sub_1D4398A14();
    v25 = sub_1D441A6F4();
    [v3 replaceCharactersInRange:v25 withAttributedString:{v26, v11}];
  }
}

Swift::Void __swiftcall NSMutableAttributedString.replace(firstOccurrence:with:)(Swift::String firstOccurrence, NSAttributedString with)
{
  v3 = v2;
  object = firstOccurrence._object;
  countAndFlagsBits = firstOccurrence._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = [v3 string];
  v11 = sub_1D4419C54();
  v13 = v12;

  v27 = v11;
  v28 = v13;
  v25 = countAndFlagsBits;
  v26 = object;
  v14 = sub_1D44174B4();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_1D42CC920();
  v15 = sub_1D441A7E4();
  v17 = v16;
  LOBYTE(v11) = v18;
  sub_1D43DF04C(v9);

  if ((v11 & 1) == 0)
  {
    v27 = v15;
    v28 = v17;
    v19 = [v3 string];
    v20 = sub_1D4419C54();
    v22 = v21;

    v25 = v20;
    v26 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB9B8);
    sub_1D4398A14();
    v23 = sub_1D441A6F4();
    [v3 replaceCharactersInRange:v23 withAttributedString:{v24, with.super.isa}];
  }
}

uint64_t sub_1D43DEDF0(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_1D441A9B4();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v9;
          v12 = v18 + v8;
        }

        else
        {
          v11 = v10;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1D441AA84();
          }

          v12 = (v11 + v8);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

unint64_t sub_1D43DEFF4()
{
  result = qword_1EDE326C0;
  if (!qword_1EDE326C0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE326C0);
  }

  return result;
}

uint64_t sub_1D43DF04C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CABB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ICAttachment.ChangeNotifications.AsyncIterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2A8);
  *v1 = v0;
  v1[1] = sub_1D43DF168;

  return MEMORY[0x1EEE23038](v0 + 16, v2);
}

uint64_t sub_1D43DF168()
{

  return MEMORY[0x1EEE6DFA0](sub_1D43DF264, 0, 0);
}

uint64_t sub_1D43DF27C(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2A8);
  *v2 = v1;
  v2[1] = sub_1D43DF330;

  return MEMORY[0x1EEE23038](v1 + 16, v3);
}

uint64_t sub_1D43DF330()
{

  return MEMORY[0x1EEE6DFA0](sub_1D43DF42C, 0, 0);
}

uint64_t sub_1D43DF450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D43DF50C;

  return sub_1D43DF63C(a2, a3);
}

uint64_t sub_1D43DF50C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v8 = *(v7 + 8);

  return v8();
}

uint64_t sub_1D43DF63C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for ICAttachment.ChangeNotifications.AsyncIterator(0);
  v4 = sub_1D43E0234();
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_1D43DF6FC;

  return MEMORY[0x1EEE6D8C8](v2 + 2, v3, v4);
}

uint64_t sub_1D43DF6FC()
{
  v2 = *(*v1 + 40);
  *(*v1 + 64) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D4419F04();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1D43DF8A8;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D4419F04();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1D43DF88C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1D43DF8A8()
{
  v0[4] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t ICAttachment.ChangeNotifications.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2B0);

  return sub_1D44178B4();
}

uint64_t sub_1D43DF998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2B0);
  sub_1D44178B4();

  return sub_1D43E0530(v0);
}

id sub_1D43DFAA4@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

id sub_1D43DFB00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D4435D30;
  if (qword_1EDE32950 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE32958;
  *(v0 + 32) = qword_1EDE32958;
  v2 = qword_1EDE32928;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDE32930;
  *(v0 + 40) = qword_1EDE32930;
  v5 = qword_1EC7C9270;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC7CC2A0;
  *(v0 + 48) = qword_1EC7CC2A0;
  qword_1EDE32940 = v0;

  return v7;
}

uint64_t static ICAttachment.AttachmentChangeNotification.all.getter()
{
  if (qword_1EDE32938 != -1)
  {
    swift_once();
  }
}

uint64_t static ICAttachment.allChanges(attachment:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  if (qword_1EDE32938 != -1)
  {
    swift_once();
  }

  v10[1] = qword_1EDE32940;
  v10[2] = sub_1D43E00D0;
  v10[3] = 0;

  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2C0);
  sub_1D43E016C();
  sub_1D44178D4();
  return (*(v5 + 32))(a2, v7, v4);
}

uint64_t static ICAttachment.changes<A>(for:attachment:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a2;
  v20 = a5;
  v17 = a1;
  v7 = sub_1D441A9D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  type metadata accessor for Name(255);
  v11 = sub_1D441AB14();
  MEMORY[0x1EEE9AC00](v11);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2B0);
  v12 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v14 = &v17 - v13;
  MEMORY[0x1DA6D57F0](a3, a4);
  swift_getWitnessTable();
  sub_1D441AC34();
  (*(v8 + 8))(v10, v7);
  v15 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2B8);
  swift_getWitnessTable();
  sub_1D44178D4();
  return (*(v12 + 32))(v20, v14, v18);
}

id sub_1D43E00D0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_1D43E00DC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D4416E74();
  if (v6)
  {
    sub_1D43E058C();
    if (swift_dynamicCast())
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_1D418D074(v5);
    v2 = 0;
  }

  result = sub_1D4416E64();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1D43E016C()
{
  result = qword_1EDE323A8;
  if (!qword_1EDE323A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE323A8);
  }

  return result;
}

uint64_t ICAttachment.imageOrientation.getter()
{
  if ([v0 hasOrientation])
  {
    return [v0 orientation];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D43E0234()
{
  result = qword_1EC7CC2C8;
  if (!qword_1EC7CC2C8)
  {
    type metadata accessor for ICAttachment.ChangeNotifications.AsyncIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC2C8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void sub_1D43E0440(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1D43E04B4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D43E04B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CC2B8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D43E0530(uint64_t a1)
{
  v2 = type metadata accessor for ICAttachment.ChangeNotifications(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D43E058C()
{
  result = qword_1EDE32768;
  if (!qword_1EDE32768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE32768);
  }

  return result;
}

double sub_1D43E05DC(uint64_t a1)
{
  [v1 contentOffset];
  v4 = v3;
  v6 = v5;
  [v1 bounds];
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D40;
  [v1 verticalScrollIndicatorInsets];
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  *(inited + 56) = v15;

  sub_1D42F04C4(inited);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = (a1 + 56);
    do
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v4 = v4 + v19;
      v6 = v6 + v18;
      v8 = v8 - (v19 + *v17);
      v10 = v10 - (v18 + *(v17 - 1));
      v17 += 4;
      --v16;
    }

    while (v16);
  }

  return v4;
}

id UIScrollView.ic_scrollRectToVisible(_:animated:insets:)(char a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v35.origin.x = sub_1D43E05DC(a2);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  result = CGRectContainsRect(v35, v39);
  if (result)
  {
    return result;
  }

  [v6 contentOffset];
  v19 = *(a2 + 16);
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = 0;
      v21 = 0.0;
    }

    else
    {
      v20 = v19 & 0x7FFFFFFFFFFFFFFELL;
      v22 = (a2 + 64);
      v21 = 0.0;
      v23 = v19 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v24 = *(v22 - 4);
        v25 = *v22;
        v22 += 8;
        v21 = v21 + v24 + v25;
        v23 -= 2;
      }

      while (v23);
      if (v19 == v20)
      {
        goto LABEL_11;
      }
    }

    v26 = v19 - v20;
    v27 = (a2 + 32 * v20 + 32);
    do
    {
      v28 = *v27;
      v27 += 4;
      v21 = v21 + v28;
      --v26;
    }

    while (v26);
  }

  else
  {
    v21 = 0.0;
  }

LABEL_11:
  if (y <= a4)
  {
    v32 = -v21;
    v33 = v18;
    v36.origin.x = a3;
    v36.origin.y = a4;
    v36.size.width = a5;
    v36.size.height = a6;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v30 = CGRectGetHeight(v37);
    v38.origin.x = a3;
    v38.origin.y = a4;
    v38.size.width = a5;
    v38.size.height = a6;
    v29 = MinY - (v30 - CGRectGetHeight(v38));
    v18 = v33;
    if (v29 < v32)
    {
      v29 = v32;
    }
  }

  else
  {
    v29 = a4 - v21;
  }

  return [v6 setContentOffset:a1 & 1 animated:{v18, v29}];
}

void ActivityStream.apply(state:)(void **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v185 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v186 = &v178 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v184 = &v178 - v8;
  v199 = type metadata accessor for ActivityStream.Section(0);
  v195 = *(v199 - 8);
  v9 = MEMORY[0x1EEE9AC00](v199);
  v11 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v207 = &v178 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v194 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v182 = &v178 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v183 = &v178 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v187 = &v178 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v198 = (&v178 - v22);
  v23 = sub_1D4417434();
  v203 = *(v23 - 8);
  v204 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v192 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v196 = &v178 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v181 = &v178 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v188 = &v178 - v30;
  v193 = type metadata accessor for ActivityStream(0);
  MEMORY[0x1EEE9AC00](v193);
  v190 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v202 = (&v178 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v178 - v35;
  v37 = type metadata accessor for ActivityStream.Item(0);
  v38 = *(v37 - 8);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v189 = &v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v191 = &v178 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v197 = &v178 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v178 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v180 = &v178 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v179 = &v178 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v178 - v52;
  v200 = type metadata accessor for ActivityStream.State();
  v54 = v200[5];
  v205 = a1;
  sub_1D417CF94(a1 + v54, v36, &qword_1EC7CA640);
  v55 = *(v38 + 48);
  v209 = v37;
  v201 = v55;
  v56 = v55(v36, 1, v37);
  v206 = v1;
  v208 = v38;
  if (v56 == 1)
  {
    sub_1D41769C4(v36, &qword_1EC7CA640);
  }

  else
  {
    sub_1D43E1F2C(v36, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFC0);
    v57 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1D4435D40;
    sub_1D43E2000(v53, v58 + v57, type metadata accessor for ActivityStream.Item);
    sub_1D43E2B98(v58);
    sub_1D43E2068(v53, type metadata accessor for ActivityStream.Item);
  }

  v59 = v204;
  v60 = *v205;
  v61 = v198;
  if (!*v205)
  {
    (*(v203 + 56))(v198, 1, 1, v204);
    goto LABEL_26;
  }

  v62 = [v60 itemIDs];
  if (!v62)
  {
    v86 = [v60 filter];
    v87 = [v86 fromDate];

    if (v87)
    {
      v88 = v187;
      sub_1D44173F4();

      v89 = 0;
      v90 = v203;
    }

    else
    {
      v89 = 1;
      v90 = v203;
      v88 = v187;
    }

    v91 = *(v90 + 56);
    v91(v88, v89, 1, v59);
    v61 = v198;
    sub_1D43E1F90(v88, v198);
    v92 = *(v90 + 48);
    if (v92(v61, 1, v59) != 1)
    {
      v201 = *(v203 + 32);
      v202 = (v203 + 32);
      v201(v188, v61, v59);
      v125 = [v60 filter];
      v126 = [v125 toDate];

      if (v126)
      {
        v127 = v182;
        sub_1D44173F4();

        v128 = 0;
      }

      else
      {
        v128 = 1;
        v127 = v182;
      }

      v91(v127, v128, 1, v59);
      v165 = v183;
      sub_1D43E1F90(v127, v183);
      if (v92(v165, 1, v59) == 1)
      {
        v85 = v203;
        (*(v203 + 8))(v188, v59);
        sub_1D41769C4(v165, &qword_1EC7C98F0);
        v84 = v206;
      }

      else
      {
        v166 = v181;
        v201(v181, v165, v59);
        v167 = ActivityStream.items(from:to:)(v188, v166);
        v168 = *(v167 + 16);
        if (v168)
        {
          v169 = 0;
          v170 = MEMORY[0x1E69E7CC0];
          v171 = v208;
          v202 = *(v167 + 16);
          do
          {
            if (v169 >= *(v167 + 16))
            {
              goto LABEL_106;
            }

            v172 = (*(v171 + 80) + 32) & ~*(v171 + 80);
            v173 = *(v171 + 72);
            sub_1D43E2000(v167 + v172 + v173 * v169, v47, type metadata accessor for ActivityStream.Item);
            if (v47[*(v209 + 24)] == 1)
            {
              sub_1D43E1F2C(v47, v197);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v210 = v170;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D43CF294(0, *(v170 + 16) + 1, 1);
                v170 = v210;
              }

              v176 = *(v170 + 16);
              v175 = *(v170 + 24);
              if (v176 >= v175 >> 1)
              {
                sub_1D43CF294(v175 > 1, v176 + 1, 1);
                v170 = v210;
              }

              *(v170 + 16) = v176 + 1;
              sub_1D43E1F2C(v197, v170 + v172 + v176 * v173);
              v168 = v202;
            }

            else
            {
              sub_1D43E2068(v47, type metadata accessor for ActivityStream.Item);
            }

            ++v169;
            v171 = v208;
          }

          while (v168 != v169);
        }

        else
        {
          v170 = MEMORY[0x1E69E7CC0];
        }

        v84 = v206;
        sub_1D43E2BB0(v170);
        v85 = v203;
        v177 = *(v203 + 8);
        v177(v181, v59);
        v177(v188, v59);
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_1D41769C4(v61, &qword_1EC7C98F0);
    v84 = v206;
    v85 = v203;
    goto LABEL_27;
  }

  v63 = v62;
  v64 = sub_1D441A064();

  v65 = v190;
  sub_1D43E2000(v206, v190, type metadata accessor for ActivityStream);
  v66 = v64 + 56;
  v67 = 1 << *(v64 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v64 + 56);
  v70 = (v67 + 63) >> 6;
  v71 = v64;

  v72 = 0;
  v198 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v73 = v72;
    if (!v69)
    {
      break;
    }

LABEL_13:
    v74 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v75 = (*(v71 + 48) + ((v72 << 10) | (16 * v74)));
    v77 = *v75;
    v76 = v75[1];

    v78 = v77;
    v79 = v202;
    ActivityStream.item(with:)(v78, v76, v202);

    if (v201(v79, 1, v209) == 1)
    {
      sub_1D41769C4(v79, &qword_1EC7CA640);
    }

    else
    {
      v80 = v179;
      sub_1D43E1F2C(v79, v179);
      sub_1D43E1F2C(v80, v180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = sub_1D438D550(0, v198[2] + 1, 1, v198);
      }

      v82 = v198[2];
      v81 = v198[3];
      if (v82 >= v81 >> 1)
      {
        v198 = sub_1D438D550(v81 > 1, v82 + 1, 1, v198);
      }

      v83 = v198;
      v198[2] = v82 + 1;
      sub_1D43E1F2C(v180, v83 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v82);
    }
  }

  while (1)
  {
    v72 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_99;
    }

    if (v72 >= v70)
    {
      break;
    }

    v69 = *(v66 + 8 * v72);
    ++v73;
    if (v69)
    {
      goto LABEL_13;
    }
  }

  sub_1D43E2068(v65, type metadata accessor for ActivityStream);

  v84 = v206;
  sub_1D43E2BB0(v198);
  v85 = v203;
  v59 = v204;
LABEL_27:
  v93 = v194;
  sub_1D417CF94(v205 + v200[7], v194, &qword_1EC7C98F0);
  if ((*(v85 + 48))(v93, 1, v59) == 1)
  {
    sub_1D41769C4(v93, &qword_1EC7C98F0);
    goto LABEL_51;
  }

  v94 = v192;
  sub_1D4417324();
  v202 = *(v85 + 8);
  v203 = v85 + 8;
  (v202)(v93, v59);
  v95 = v196;
  (*(v85 + 32))(v196, v94, v59);
  v96 = *(v193 + 20);
  sub_1D41769C4(v84 + v96, &qword_1EC7C98F0);
  (*(v85 + 16))(v84 + v96, v95, v59);
  (*(v85 + 56))(v84 + v96, 0, 1, v59);
  v97 = *v84;
  v98 = *(*v84 + 16);
  v99 = MEMORY[0x1E69E7CC0];
  v201 = *v84;
  if (v98)
  {
    v100 = *(v199 + 36);
    v101 = v97 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
    v102 = *(v195 + 72);
    do
    {
      v103 = v207;
      sub_1D43E2000(v101, v207, type metadata accessor for ActivityStream.Section);
      v104 = *(v103 + v100);

      sub_1D43E2068(v103, type metadata accessor for ActivityStream.Section);
      v105 = *(v104 + 16);
      v106 = v99[2];
      v107 = v106 + v105;
      if (__OFADD__(v106, v105))
      {
        goto LABEL_101;
      }

      v108 = swift_isUniquelyReferenced_nonNull_native();
      if (v108 && v107 <= v99[3] >> 1)
      {
        if (*(v104 + 16))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v106 <= v107)
        {
          v109 = v106 + v105;
        }

        else
        {
          v109 = v106;
        }

        v99 = sub_1D438D550(v108, v109, 1, v99);
        if (*(v104 + 16))
        {
LABEL_42:
          if ((v99[3] >> 1) - v99[2] < v105)
          {
            goto LABEL_104;
          }

          swift_arrayInitWithCopy();

          if (v105)
          {
            v110 = v99[2];
            v111 = __OFADD__(v110, v105);
            v112 = v110 + v105;
            if (v111)
            {
              goto LABEL_105;
            }

            v99[2] = v112;
          }

          goto LABEL_32;
        }
      }

      if (v105)
      {
        goto LABEL_102;
      }

LABEL_32:
      v101 += v102;
      --v98;
    }

    while (v98);
  }

  if (v99[2])
  {
    v113 = v189;
    sub_1D43E2000(v99 + ((*(v208 + 80) + 32) & ~*(v208 + 80)), v189, type metadata accessor for ActivityStream.Item);

    v114 = v191;
    sub_1D43E1F2C(v113, v191);
    v115 = v196;
    v116 = sub_1D44173C4();
    v84 = v206;
    v117 = v199;
    v118 = v204;
    if (v116)
    {
      v119 = v184;
      sub_1D4419E64();
      v120 = *(v195 + 48);
      if (v120(v119, 1, v117))
      {
        v121 = v185;
        sub_1D417CF94(v119, v185, &qword_1EC7CC2F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC60);
        sub_1D4419E74();
        sub_1D41769C4(v119, &qword_1EC7CC2F0);
        v122 = v186;
      }

      else
      {
        v129 = objc_opt_self();
        v130 = sub_1D4419C14();
        v131 = [v129 localizedFrameworkStringForKey:v130 value:0 table:0 allowSiri:1];

        v132 = sub_1D4419C54();
        v134 = v133;

        v135 = (v119 + v117[6]);
        v136 = *v135;
        v137 = v135[1];
        v138 = v135[2];
        v139 = v135[3];
        *v135 = v132;
        v135[1] = v134;
        v135[2] = 0;
        v135[3] = MEMORY[0x1E69E7CC0];
        sub_1D433E500(v136, v137, v138, v139);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC60);
        sub_1D4419E74();
        v122 = v186;
        v121 = v185;
      }

      sub_1D4419E64();
      if (v120(v122, 1, v117))
      {
        sub_1D417CF94(v122, v121, &qword_1EC7CC2F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC60);
        sub_1D4419E74();
        sub_1D43E2068(v191, type metadata accessor for ActivityStream.Item);
        (v202)(v196, v204);
        sub_1D41769C4(v122, &qword_1EC7CC2F0);
        goto LABEL_60;
      }

      *(v122 + v117[7]) = sub_1D4419224();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAC60);
      sub_1D4419E74();
      sub_1D43E2068(v191, type metadata accessor for ActivityStream.Item);
      v123 = v196;
      v124 = v204;
    }

    else
    {
      sub_1D43E2068(v114, type metadata accessor for ActivityStream.Item);
      v123 = v115;
      v124 = v118;
    }

    (v202)(v123, v124);
    goto LABEL_60;
  }

  (v202)(v196, v204);

  v84 = v206;
LABEL_51:
  v117 = v199;
LABEL_60:
  v140 = *v84;
  v141 = *(*v84 + 16);
  if (!v141)
  {
    v145 = MEMORY[0x1E69E7CC0];
LABEL_78:
    v154 = v145[2];

    if (v154 <= 1)
    {
      v155 = v205 + v200[6];
      v156 = *v155;
      v157 = *(v155 + 1);
      v158 = v155[16];
      v159 = *(v155 + 3);
      v160 = (v206 + *(v193 + 24));
      v161 = *v160;
      v162 = v160[1];
      v163 = v160[2];
      v164 = v160[3];
      sub_1D430E574(*v155, v157, v155[16]);

      sub_1D433E500(v161, v162, v163, v164);
      *v160 = v156;
      v160[1] = v157;
      v160[2] = v158;
      v160[3] = v159;
    }

    ActivityStream.updateDividers()();
    return;
  }

  v142 = v117[9];
  v143 = v140 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
  v144 = *(v195 + 72);
  v145 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D43E2000(v143, v11, type metadata accessor for ActivityStream.Section);
    v146 = *&v11[v142];

    sub_1D43E2068(v11, type metadata accessor for ActivityStream.Section);
    v147 = *(v146 + 16);
    v148 = v145[2];
    v149 = v148 + v147;
    if (__OFADD__(v148, v147))
    {
      break;
    }

    v150 = swift_isUniquelyReferenced_nonNull_native();
    if (v150 && v149 <= v145[3] >> 1)
    {
      if (*(v146 + 16))
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v148 <= v149)
      {
        v151 = v148 + v147;
      }

      else
      {
        v151 = v148;
      }

      v145 = sub_1D438D550(v150, v151, 1, v145);
      if (*(v146 + 16))
      {
LABEL_73:
        if ((v145[3] >> 1) - v145[2] < v147)
        {
          goto LABEL_100;
        }

        swift_arrayInitWithCopy();

        if (v147)
        {
          v152 = v145[2];
          v111 = __OFADD__(v152, v147);
          v153 = v152 + v147;
          if (v111)
          {
            goto LABEL_103;
          }

          v145[2] = v153;
        }

        goto LABEL_63;
      }
    }

    if (v147)
    {
      goto LABEL_98;
    }

LABEL_63:
    v143 += v144;
    if (!--v141)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
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
}

uint64_t type metadata accessor for ActivityStream.State()
{
  result = qword_1EC7CC2F8;
  if (!qword_1EC7CC2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ActivityStream.State.selection.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ActivityStream.State.placeholder.getter()
{
  v1 = v0 + *(type metadata accessor for ActivityStream.State() + 24);
  v2 = *v1;
  sub_1D430E574(*v1, *(v1 + 8), *(v1 + 16));

  return v2;
}

uint64_t sub_1D43E1F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStream.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43E1F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43E2000(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D43E2068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s7NotesUI14ActivityStreamV5StateV2eeoiySbAE_AEtFZ_0(void **a1, void **a2)
{
  v4 = sub_1D4417434();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v46 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D28);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v46 - v8;
  v9 = type metadata accessor for ActivityStream.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v46 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC320);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v53 = a1;
  v19 = *a1;
  v20 = a2;
  v21 = *a2;
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }

    v47 = v4;
    sub_1D43D128C();
    v22 = v21;
    v23 = v19;
    v24 = sub_1D441A5E4();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v47 = v4;
    if (v21)
    {
      return 0;
    }
  }

  v46 = type metadata accessor for ActivityStream.State();
  v25 = *(v46 + 20);
  v26 = *(v16 + 48);
  sub_1D417CF94(v53 + v25, v18, &qword_1EC7CA640);
  sub_1D417CF94(v20 + v25, &v18[v26], &qword_1EC7CA640);
  v27 = *(v10 + 48);
  if (v27(v18, 1, v9) != 1)
  {
    sub_1D417CF94(v18, v15, &qword_1EC7CA640);
    if (v27(&v18[v26], 1, v9) != 1)
    {
      sub_1D43E1F2C(&v18[v26], v12);
      v30 = _s7NotesUI14ActivityStreamV4ItemV2eeoiySbAE_AEtFZ_0(v15, v12);
      sub_1D43E2068(v12, type metadata accessor for ActivityStream.Item);
      sub_1D43E2068(v15, type metadata accessor for ActivityStream.Item);
      sub_1D41769C4(v18, &qword_1EC7CA640);
      if (!v30)
      {
        return 0;
      }

      goto LABEL_14;
    }

    sub_1D43E2068(v15, type metadata accessor for ActivityStream.Item);
LABEL_11:
    v28 = &qword_1EC7CC320;
    v29 = v18;
LABEL_12:
    sub_1D41769C4(v29, v28);
    return 0;
  }

  if (v27(&v18[v26], 1, v9) != 1)
  {
    goto LABEL_11;
  }

  sub_1D41769C4(v18, &qword_1EC7CA640);
LABEL_14:
  v31 = v46;
  v32 = v53;
  if ((sub_1D4418F14() & 1) == 0)
  {
    return 0;
  }

  v33 = *(v31 + 28);
  v34 = *(v50 + 48);
  v35 = v32 + v33;
  v36 = v51;
  sub_1D417CF94(v35, v51, &qword_1EC7C98F0);
  sub_1D417CF94(v20 + v33, v36 + v34, &qword_1EC7C98F0);
  v37 = v52;
  v38 = *(v52 + 48);
  v39 = v47;
  if (v38(v36, 1, v47) == 1)
  {
    if (v38(v36 + v34, 1, v39) == 1)
    {
      sub_1D41769C4(v36, &qword_1EC7C98F0);
      return 1;
    }

    goto LABEL_20;
  }

  v40 = v49;
  sub_1D417CF94(v36, v49, &qword_1EC7C98F0);
  if (v38(v36 + v34, 1, v39) == 1)
  {
    (*(v37 + 8))(v40, v39);
LABEL_20:
    v28 = &qword_1EC7C9D28;
    v29 = v36;
    goto LABEL_12;
  }

  v41 = v36 + v34;
  v42 = v48;
  (*(v37 + 32))(v48, v41, v39);
  sub_1D43E2898();
  v43 = sub_1D4419BE4();
  v44 = *(v37 + 8);
  v44(v42, v39);
  v44(v40, v39);
  sub_1D41769C4(v36, &qword_1EC7C98F0);
  return (v43 & 1) != 0;
}

void sub_1D43E274C()
{
  sub_1D43E2844(319, &qword_1EC7CC308, sub_1D43D128C);
  if (v0 <= 0x3F)
  {
    sub_1D43E2844(319, &qword_1EC7CC310, type metadata accessor for ActivityStream.Item);
    if (v1 <= 0x3F)
    {
      sub_1D43E2844(319, &qword_1EC7CC318, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D43E2844(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D441A784();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D43E2898()
{
  result = qword_1EC7C9800;
  if (!qword_1EC7C9800)
  {
    sub_1D4417434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9800);
  }

  return result;
}

uint64_t ActivityStream.Item.showsTimestamp.getter()
{
  type metadata accessor for ActivityStream.Item(0);
  if (sub_1D4417314())
  {
    return 1;
  }

  else
  {
    return sub_1D44172E4() & 1;
  }
}

uint64_t sub_1D43E2964()
{
  v1 = type metadata accessor for ActivityStream.Section(0) - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7 = *(v2 + 72);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D43E7C18(v6, v4, type metadata accessor for ActivityStream.Section);
    v10 = sub_1D43E5DF0();
    result = sub_1D43E7C80(v4, type metadata accessor for ActivityStream.Section);
    v11 = *(v10 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_1D438D550(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 16))
      {
LABEL_14:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for ActivityStream.Item(0);
        if (v16 < v11)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_23;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_21;
    }

LABEL_4:
    v6 += v7;
    if (!--v5)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D43E2BC8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5)
  {
    v7 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v4 = sub_1D43E7B94(v4);
    }

    for (i = 0; i != v5; ++i)
    {
      v9 = v4[2];

      if (i >= v9)
      {
        __break(1u);
        goto LABEL_11;
      }

      type metadata accessor for ActivityStream.Section(0);
      a2(a1);
    }

    *v7 = v4;
  }

  else
  {
  }

  return result;
}

Swift::Void __swiftcall ActivityStream.updateDividers()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v21 - v5;
  v6 = type metadata accessor for ActivityStream.Section(0);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v27 = *(*v0 + 16);
  if (v27)
  {
    v12 = 0;
    v25 = *(type metadata accessor for ActivityStream(0) + 20);
    v23 = v6;
    while (1)
    {
      v14 = *v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D43E7B94(v14);
      }

      if (v12 >= v14[2])
      {
        break;
      }

      v15 = v14 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v12;
      sub_1D43E7BA8(v1 + v25, v15 + *(v6 + 32));
      if (v12 >= v14[2])
      {
        goto LABEL_17;
      }

      v16 = v12 + 1;
      ActivityStream.Section.updateDividers()();
      *v1 = v14;
      sub_1D4419E64();
      if (v12 >= v14[2])
      {
        goto LABEL_18;
      }

      sub_1D43E7C18(v15, v8, type metadata accessor for ActivityStream.Section);
      v17 = sub_1D43E70B0(v8, v11, v1);
      sub_1D43E7C80(v8, type metadata accessor for ActivityStream.Section);
      if (v17)
      {
        if (v12 >= v14[2])
        {
          goto LABEL_19;
        }

        v24 = sub_1D43E3150(v29, v12);
        v18 = v26;
        v19 = type metadata accessor for ActivityStream.Item(0);
        sub_1D4419E64();
        if ((*(*(v19 - 8) + 48))(v18, 1, v19))
        {
          v13 = v26;
          sub_1D417CF94(v26, v22, &qword_1EC7CA640);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACE8);
          sub_1D4419E74();
          sub_1D41769C4(v13, &qword_1EC7CA640);
        }

        else
        {
          v20 = v26 + *(v19 + 48);
          *v20 = 1;
          *(v20 + 8) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CACE8);
          sub_1D4419E74();
        }

        v24(v29, 0);
        v6 = v23;
      }

      sub_1D41769C4(v11, &qword_1EC7CC2F0);
      ++v12;
      if (v27 == v16)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

size_t sub_1D43E3150(void *a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1D43E7B94(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    type metadata accessor for ActivityStream.Section(0);
    return sub_1D43E3234;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ActivityStream.Section.title.getter()
{
  v1 = v0;
  v36 = sub_1D4417534();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4417544();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1D4417434();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = *(type metadata accessor for ActivityStream.Section(0) + 20);
  sub_1D44172D4();
  v17 = sub_1D4417304();
  v35 = *(v11 + 8);
  v35(v15, v10);
  if (v17 & 1) == 0 || (sub_1D4417314() & 1) != 0 || (v30 = v1, (sub_1D44172E4()))
  {
    v18 = objc_opt_self();
    v19 = sub_1D4419C14();
    v20 = [v18 localizedFrameworkStringForKey:v19 value:0 table:0 allowSiri:1];

    v21 = sub_1D4419C54();
    return v21;
  }

  sub_1D4417514();
  v23 = v34;
  (*(v34 + 104))(v3, *MEMORY[0x1E6969A68], v36);
  sub_1D4417424();
  sub_1D4417504();
  v35(v15, v10);
  (*(v23 + 8))(v3, v36);
  (*(v32 + 8))(v6, v33);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D41769C4(v9, &qword_1EC7C98F0);
    v24 = v30;
LABEL_13:
    (*(v11 + 16))(v15, v24 + v16, v10);
    if (qword_1EC7C9288 != -1)
    {
      swift_once();
    }

    v28 = qword_1EC7CC330;
    sub_1D43E869C(&qword_1EC7CAA98, MEMORY[0x1E6969530]);
    v29 = v28;
    return sub_1D4418F54();
  }

  v25 = v31;
  (*(v11 + 32))(v31, v9, v10);
  v24 = v30;
  if ((sub_1D44173C4() & 1) == 0)
  {
    v35(v25, v10);
    goto LABEL_13;
  }

  (*(v11 + 16))(v15, v24 + v16, v10);
  if (qword_1EC7C9290 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC7CC338;
  sub_1D43E869C(&qword_1EC7CAA98, MEMORY[0x1E6969530]);
  v27 = v26;
  v21 = sub_1D4418F54();
  v35(v25, v10);
  return v21;
}

uint64_t ActivityStream.item(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v32 = a3;
  v36 = type metadata accessor for ActivityStream.Item(0);
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityStream.Section(0);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = *(*v3 + 16);
  if (v12)
  {
    v37 = *(result + 36);
    v13 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    v15 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D43E7C18(v13, v10, type metadata accessor for ActivityStream.Section);
      v16 = *&v10[v37];

      result = sub_1D43E7C80(v10, type metadata accessor for ActivityStream.Section);
      v17 = *(v16 + 16);
      v18 = v15[2];
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v19 <= v15[3] >> 1)
      {
        if (*(v16 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v20 = v18 + v17;
        }

        else
        {
          v20 = v18;
        }

        result = sub_1D438D550(result, v20, 1, v15);
        v15 = result;
        if (*(v16 + 16))
        {
LABEL_14:
          if ((v15[3] >> 1) - v15[2] < v17)
          {
            goto LABEL_33;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v21 = v15[2];
            v22 = __OFADD__(v21, v17);
            v23 = v21 + v17;
            if (v22)
            {
              goto LABEL_34;
            }

            v15[2] = v23;
          }

          goto LABEL_4;
        }
      }

      if (v17)
      {
        goto LABEL_32;
      }

LABEL_4:
      v13 += v14;
      if (!--v12)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v24 = v15[2];
  v26 = v34;
  v25 = v35;
  v27 = v33;
  if (v24)
  {
    v28 = 0;
    while (v28 < v15[2])
    {
      sub_1D43E7C18(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v27, type metadata accessor for ActivityStream.Item);
      v29 = *v27 == v26 && v27[1] == v25;
      if (v29 || (sub_1D441AD84() & 1) != 0)
      {

        v31 = v32;
        sub_1D43E8F70(v27, v32, type metadata accessor for ActivityStream.Item);
        v30 = 0;
        return (*(v4 + 56))(v31, v30, 1, v36);
      }

      ++v28;
      result = sub_1D43E7C80(v27, type metadata accessor for ActivityStream.Item);
      if (v24 == v28)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_35;
  }

LABEL_28:

  v30 = 1;
  v31 = v32;
  return (*(v4 + 56))(v31, v30, 1, v36);
}

uint64_t ActivityStream.items(from:to:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = type metadata accessor for ActivityStream.Section(0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = *(*v2 + 16);
  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_19:
    MEMORY[0x1EEE9AC00](result);
    v24 = v27;
    *(&v25 - 2) = v26;
    *(&v25 - 1) = v24;
    return sub_1D4381F1C(sub_1D43E7CE0, (&v25 - 4), v13);
  }

  v10 = *(result + 36);
  v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v12 = *(v5 + 72);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D43E7C18(v11, v7, type metadata accessor for ActivityStream.Section);
    v14 = *&v7[v10];

    result = sub_1D43E7C80(v7, type metadata accessor for ActivityStream.Section);
    v15 = *(v14 + 16);
    v16 = v13[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v13[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v13 = sub_1D438D550(isUniquelyReferenced_nonNull_native, v19, 1, v13);
      if (*(v14 + 16))
      {
LABEL_14:
        v20 = (v13[3] >> 1) - v13[2];
        result = type metadata accessor for ActivityStream.Item(0);
        if (v20 < v15)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v21 = v13[2];
          v22 = __OFADD__(v21, v15);
          v23 = v21 + v15;
          if (v22)
          {
            goto LABEL_23;
          }

          v13[2] = v23;
        }

        goto LABEL_4;
      }
    }

    if (v15)
    {
      goto LABEL_21;
    }

LABEL_4:
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t ActivityStream.Item.Styles.hashValue.getter()
{
  v1 = *v0;
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](v1);
  return sub_1D441AF04();
}

uint64_t static ActivityStream.Item.DividerStyles.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D43E3FF4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t ActivityStream.Item.SelectionStyles.hashValue.getter()
{
  v1 = *v0;
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](v1);
  return sub_1D441AF04();
}

uint64_t ActivityStream.Item.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityStream.Item.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ActivityStream.Item.style.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityStream.Item(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ActivityStream.Item.style.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ActivityStream.Item(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t ActivityStream.Item.title.getter()
{
  v1 = v0 + *(type metadata accessor for ActivityStream.Item(0) + 28);
  v2 = *v1;
  sub_1D430E574(*v1, *(v1 + 8), *(v1 + 16));

  return v2;
}

uint64_t ActivityStream.Item.title.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = v4 + *(type metadata accessor for ActivityStream.Item(0) + 28);
  sub_1D430E564(*v9, *(v9 + 8), *(v9 + 16));

  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  *(v9 + 24) = a4;
  return result;
}

uint64_t ActivityStream.Item.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityStream.Item(0) + 32));
  v2 = *v1;
  sub_1D433E4BC(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

uint64_t ActivityStream.Item.subtitle.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + *(type metadata accessor for ActivityStream.Item(0) + 32));
  result = sub_1D433E500(*v9, v9[1], v9[2], v9[3]);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t ActivityStream.Item.highlightColor.getter()
{
  type metadata accessor for ActivityStream.Item(0);
}

uint64_t ActivityStream.Item.highlightColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityStream.Item(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ActivityStream.Item.dividerStyle.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ActivityStream.Item(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t ActivityStream.Item.dividerStyle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for ActivityStream.Item(0);
  v5 = v1 + *(result + 48);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t ActivityStream.Item.isHighlighted.setter(char a1)
{
  result = type metadata accessor for ActivityStream.Item(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ActivityStream.Item.selectionStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityStream.Item(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t ActivityStream.Item.selectionStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ActivityStream.Item(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

id sub_1D43E48D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EC7CC328 = v0;
  return result;
}

uint64_t ActivityStream.Item.animatesTransition(from:)(uint64_t a1)
{
  v3 = type metadata accessor for ActivityStream.Item(0);
  if (sub_1D4418F14())
  {
    v4 = *(v3 + 32);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 24);
    v7 = (v1 + v4);
    v8 = v7[3];
    v9 = (v6 | v8) == 0;
    if (v6)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v12 = v7[1];
      v11 = v7[2];
      v13 = *v7;
      v15 = v5[1];
      v14 = v5[2];
      v16 = *v5;
      sub_1D433E4BC(*v7, v12, v11, v7[3]);
      sub_1D433E4BC(v16, v15, v14, v6);
      v17 = v11 & 1;
      v9 = sub_1D4418F14();
      sub_1D430E564(v13, v12, v17);

      sub_1D433E500(v16, v15, v14, v6);
    }

    v18 = v9 ^ 1;
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t sub_1D43E4B50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1D4417434();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D43E4BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1D4417434();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ActivityStream.Section.subtitleIcon.getter()
{
  type metadata accessor for ActivityStream.Section(0);
}

uint64_t ActivityStream.Section.subtitleIcon.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityStream.Section(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D43E4ED8(void (*a1)(void))
{
  a1(0);
}

uint64_t sub_1D43E4F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t static ActivityStream.Section.< infix(_:_:)()
{
  type metadata accessor for ActivityStream.Section(0);

  return sub_1D44173B4();
}

void sub_1D43E5058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = sub_1D4419C14();
  [v5 setLocalizedDateFormatFromTemplate_];

  *a4 = v5;
}

id sub_1D43E50F4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

Swift::Void __swiftcall ActivityStream.Section.updateDividers()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v63 = &v51 - v2;
  v68 = sub_1D4417434();
  v3 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityStream.Item(0);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v51 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v62 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v51 - v19;
  v20 = type metadata accessor for ActivityStream.Section(0);
  v21 = *(v20 + 36);
  v74 = v0;
  v61 = v21;
  v22 = *(v0 + v21);
  v60 = v22[2];
  if (!v60)
  {
    return;
  }

  v23 = 0;
  v76 = v7 + 48;
  v24 = *(v20 + 32);
  v58 = (v3 + 48);
  v59 = v24;
  v54 = (v3 + 32);
  v53 = (v3 + 8);
  v25 = &unk_1D4438270;
  v26 = &qword_1EC7C98F0;
  v66 = v6;
  v56 = v5;
  v55 = v7;
  v52 = v10;
  while (v23 < v22[2])
  {
    v70 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v71 = v23 + 1;
    v69 = *(v7 + 72) * v23;
    v30 = v22 + v70 + v69;
    v65 = *(v30 + v6[14]);
    v31 = v78;
    sub_1D4419E64();
    v32 = v62;
    sub_1D417CF94(v31, v62, &qword_1EC7CA640);
    v75 = *(v7 + 48);
    if (v75(v32, 1, v6) == 1)
    {
      sub_1D41769C4(v32, &qword_1EC7CA640);
      v33 = 1;
    }

    else
    {
      v34 = *(v32 + v6[14]);
      sub_1D43E7C80(v32, type metadata accessor for ActivityStream.Item);
      v33 = v34 == 4;
    }

    v64 = v33;
    v35 = v63;
    v37 = v67;
    v36 = v68;
    if (v23 >= v22[2])
    {
      goto LABEL_52;
    }

    v72 = v22;
    sub_1D43E7C18(v30, v67, type metadata accessor for ActivityStream.Item);
    sub_1D417CF94(v74 + v59, v35, v26);
    v38 = (*v58)(v35, 1, v36);
    v77 = v23;
    if (v38 == 1)
    {
      sub_1D43E7C80(v37, type metadata accessor for ActivityStream.Item);
      v39 = v26;
      sub_1D41769C4(v35, v26);
      v40 = 0;
    }

    else
    {
      v41 = v56;
      (*v54)(v56, v35, v36);
      v42 = v57;
      sub_1D417CF94(v78, v57, &qword_1EC7CA640);
      if (v75(v42, 1, v6) == 1)
      {
        (*v53)(v41, v36);
        sub_1D43E7C80(v37, type metadata accessor for ActivityStream.Item);
        sub_1D41769C4(v42, &qword_1EC7CA640);
        v40 = 0;
        v7 = v55;
        v39 = &qword_1EC7C98F0;
      }

      else
      {
        v43 = v52;
        sub_1D43E8F70(v42, v52, type metadata accessor for ActivityStream.Item);
        sub_1D43E869C(&qword_1EC7CB840, MEMORY[0x1E6969530]);
        if (sub_1D4419BD4())
        {
          v40 = 0;
        }

        else
        {
          v40 = sub_1D44173C4();
        }

        v39 = &qword_1EC7C98F0;
        sub_1D43E7C80(v43, type metadata accessor for ActivityStream.Item);
        (*v53)(v41, v68);
        sub_1D43E7C80(v67, type metadata accessor for ActivityStream.Item);
        v7 = v55;
        v6 = v66;
      }
    }

    v22 = v72;
    if (v77 >= v72[2])
    {
      goto LABEL_53;
    }

    v44 = *(v30 + v6[6]);
    v45 = v6;
    v46 = v25;
    v47 = v73;
    sub_1D417CF94(v78, v73, &qword_1EC7CA640);
    if (v75(v47, 1, v45) == 1)
    {
      sub_1D41769C4(v73, &qword_1EC7CA640);
      v48 = 2;
    }

    else
    {
      v48 = *(v73 + v45[6]);
      sub_1D43E7C80(v73, type metadata accessor for ActivityStream.Item);
    }

    v25 = v46;
    v26 = v39;
    v49 = v77;
    if (v40)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = v66;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_1D43E7B80(v22);
      }

      sub_1D41769C4(v78, &qword_1EC7CA640);
      if (v49 >= v22[2])
      {
        goto LABEL_54;
      }

      v28 = 1;
      v27 = 1;
    }

    else
    {
      v6 = v66;
      if (v44)
      {
        if (v48 == 2)
        {
          if (v65 != 4)
          {
            goto LABEL_42;
          }

LABEL_30:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1D43E7B80(v22);
          }

          sub_1D41769C4(v78, &qword_1EC7CA640);
          if (v49 >= v22[2])
          {
            goto LABEL_56;
          }

          v28 = 0;
          v27 = 1;
          goto LABEL_4;
        }

        if (v48)
        {
          if (v65 != 4 || !v64)
          {
LABEL_42:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_1D43E7B80(v22);
            }

            sub_1D41769C4(v78, &qword_1EC7CA640);
            if (v49 >= v22[2])
            {
              goto LABEL_57;
            }

            v28 = 0;
            v27 = 0;
            goto LABEL_4;
          }

          goto LABEL_30;
        }
      }

      else if (v48 != 2 && (v48 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1D43E7B80(v22);
        }

        sub_1D41769C4(v78, &qword_1EC7CA640);
        if (v49 >= v22[2])
        {
          goto LABEL_58;
        }

        v27 = 0;
        v28 = 0x4024000000000000;
        goto LABEL_4;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D43E7B80(v22);
      }

      sub_1D41769C4(v78, &qword_1EC7CA640);
      if (v49 >= v22[2])
      {
        goto LABEL_55;
      }

      v27 = 0;
      v28 = 0x4030000000000000;
    }

LABEL_4:
    v29 = v22 + v70 + v6[12] + v69;
    *v29 = v28;
    v29[8] = v27;
    *(v74 + v61) = v22;
    v23 = v71;
    if (v60 == v71)
    {
      return;
    }
  }

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
}

uint64_t sub_1D43E5A84(uint64_t a1)
{
  v3 = type metadata accessor for ActivityStream.Item(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v40 = v5;
  v41 = v4;
  v39 = v1;
  if (v8)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D418BC38(0, v8, 0);
    v9 = v42;
    v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v11 = v4;
    v38 = a1;
    v12 = a1 + v10;
    v13 = *(v11 + 72);
    do
    {
      sub_1D43E7C18(v12, v7, type metadata accessor for ActivityStream.Item);
      v14 = *v7;
      v15 = v7[1];

      sub_1D43E7C80(v7, type metadata accessor for ActivityStream.Item);
      v42 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D418BC38((v16 > 1), v17 + 1, 1);
        v9 = v42;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v12 += v13;
      --v8;
    }

    while (v8);

    v1 = v39;
    v3 = v40;
    v4 = v41;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1D4391694(v9);

  v20 = *(type metadata accessor for ActivityStream.Section(0) + 36);
  v21 = *(v1 + v20);
  v22 = v21[2];
  if (!v22)
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_34:
    v21 = sub_1D43E7B80(v21);
  }

  v24 = 0;
  v25 = v19 + 56;
  do
  {
    if (v24 == v22)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v24 >= v21[2])
    {
      goto LABEL_32;
    }

    v26 = (v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24);
    if (*(v19 + 16))
    {
      v28 = *v26;
      v27 = v26[1];
      sub_1D441AEB4();

      sub_1D4419CD4();
      v29 = sub_1D441AF04();
      v30 = -1 << *(v19 + 32);
      v31 = v29 & ~v30;
      if ((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        while (1)
        {
          v33 = (*(v19 + 48) + 16 * v31);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_1D441AD84() & 1) != 0)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            v35 = 0;
            v3 = v40;
            goto LABEL_26;
          }
        }

        v35 = 1;
        v3 = v40;
      }

      else
      {
        v35 = 0;
      }

LABEL_26:

      v4 = v41;
    }

    else
    {
      v35 = 0;
    }

    if (v24 >= v21[2])
    {
      goto LABEL_33;
    }

    ++v24;
    *(v26 + *(v3 + 52)) = v35;
  }

  while (v24 != v22);

  *(v39 + v38) = v21;
  return result;
}

uint64_t sub_1D43E5DF0()
{
  v1 = type metadata accessor for ActivityStream.Item(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  result = type metadata accessor for ActivityStream.Section(0);
  v9 = *(v0 + *(result + 36));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v19 = v5;
    v20 = v1;
    while (v11 < *(v9 + 16))
    {
      v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v14 = *(v2 + 72);
      sub_1D43E7C18(v9 + v13 + v14 * v11, v7, type metadata accessor for ActivityStream.Item);
      if (v7[*(v1 + 56)] == 4)
      {
        result = sub_1D43E7C80(v7, type metadata accessor for ActivityStream.Item);
      }

      else
      {
        sub_1D43E8F70(v7, v5, type metadata accessor for ActivityStream.Item);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D43CF294(0, *(v12 + 16) + 1, 1);
          v12 = v21;
        }

        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D43CF294(v16 > 1, v17 + 1, 1);
          v12 = v21;
        }

        *(v12 + 16) = v17 + 1;
        v5 = v19;
        result = sub_1D43E8F70(v19, v12 + v13 + v17 * v14, type metadata accessor for ActivityStream.Item);
        v1 = v20;
      }

      if (v10 == ++v11)
      {
        return v12;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D43E6030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v79 = &v71 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v75 = &v71 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71 - v10;
  v12 = type metadata accessor for ActivityStream.Item(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 16);
  v80 = v5;
  v77 = v11;
  v82 = v14;
  v76 = v13;
  v74 = v16;
  if (v17)
  {
    v89 = MEMORY[0x1E69E7CC0];
    sub_1D418BC38(0, v17, 0);
    v18 = v89;
    v19 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = *(v13 + 72);
    do
    {
      sub_1D43E7C18(v19, v16, type metadata accessor for ActivityStream.Item);
      v21 = *v16;
      v22 = v16[1];

      sub_1D43E7C80(v16, type metadata accessor for ActivityStream.Item);
      v89 = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D418BC38((v23 > 1), v24 + 1, 1);
        v18 = v89;
      }

      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v19 += v20;
      --v17;
    }

    while (v17);

    v11 = v77;
    v12 = v82;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v26 = sub_1D4391694(v18);

  v73 = *(type metadata accessor for ActivityStream.Section(0) + 36);
  v27 = *(v78 + v73);
  v28 = v79;
  v72 = *(v27 + 2);
  if (!v72)
  {
  }

  v29 = 0;
  v88 = (v76 + 48);
  v30 = v26 + 56;
  while (1)
  {
    v31 = v29;
    sub_1D4419E64();
    v32 = v75;
    sub_1D417CF94(v11, v75, &qword_1EC7CA640);
    v33 = v12;
    v34 = v11;
    v86 = *v88;
    v35 = v86(v32, 1, v33);
    v87 = v31;
    if (v35 == 1)
    {
      result = sub_1D41769C4(v11, &qword_1EC7CA640);
      v37 = 0;
LABEL_24:
      v47 = v80;
      goto LABEL_27;
    }

    v38 = v74;
    sub_1D43E8F70(v32, v74, type metadata accessor for ActivityStream.Item);
    v40 = *v38;
    v39 = v38[1];

    sub_1D43E7C80(v38, type metadata accessor for ActivityStream.Item);
    sub_1D41769C4(v34, &qword_1EC7CA640);
    if (!*(v26 + 16))
    {

      v37 = 0;
      v31 = v87;
      goto LABEL_24;
    }

    sub_1D441AEB4();

    sub_1D4419CD4();
    v41 = sub_1D441AF04();
    v42 = -1 << *(v26 + 32);
    v43 = v41 & ~v42;
    v31 = v87;
    if ((*(v30 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
    {
      v44 = ~v42;
      while (1)
      {
        v45 = (*(v26 + 48) + 16 * v43);
        v46 = *v45 == v40 && v45[1] == v39;
        if (v46 || (sub_1D441AD84() & 1) != 0)
        {
          break;
        }

        v43 = (v43 + 1) & v44;
        if (((*(v30 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      result = swift_bridgeObjectRelease_n();
      v37 = 1;
    }

    else
    {
LABEL_22:

      result = swift_bridgeObjectRelease_n();
      v37 = 0;
    }

    v28 = v79;
    v47 = v80;
LABEL_27:
    v12 = v82;
    if (v31 >= *(v27 + 2))
    {
      break;
    }

    v48 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v49 = *(v76 + 72) * v31;
    v50 = *(v26 + 16);
    v83 = v49;
    v84 = v48;
    v81 = v37;
    if (v50)
    {
      v51 = v47;
      v52 = (v27 + v48 + v49);
      v54 = *v52;
      v53 = v52[1];
      sub_1D441AEB4();

      sub_1D4419CD4();
      v55 = sub_1D441AF04();
      v56 = -1 << *(v26 + 32);
      v57 = v55 & ~v56;
      if ((*(v30 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        v58 = ~v56;
        while (1)
        {
          v59 = (*(v26 + 48) + 16 * v57);
          v60 = *v59 == v54 && v59[1] == v53;
          if (v60 || (sub_1D441AD84() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & v58;
          if (((*(v30 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
            v85 = 0;
            goto LABEL_40;
          }
        }

        v85 = 1;
LABEL_40:
        v47 = v80;
        v12 = v82;
      }

      else
      {
        v85 = 0;
        v47 = v51;
      }

      v28 = v79;
    }

    else
    {
      v85 = 0;
    }

    v29 = v31 + 1;
    sub_1D4419E64();
    sub_1D417CF94(v28, v47, &qword_1EC7CA640);
    if (v86(v47, 1, v12) == 1)
    {
      sub_1D41769C4(v28, &qword_1EC7CA640);
      if (v85)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v71 = v31 + 1;
      v86 = v27;
      v61 = v74;
      sub_1D43E8F70(v47, v74, type metadata accessor for ActivityStream.Item);
      v62 = *v61;
      v63 = v61[1];

      sub_1D43E7C80(v61, type metadata accessor for ActivityStream.Item);
      sub_1D41769C4(v28, &qword_1EC7CA640);
      if (*(v26 + 16))
      {
        sub_1D441AEB4();

        sub_1D4419CD4();
        v64 = sub_1D441AF04();
        v65 = -1 << *(v26 + 32);
        v66 = v64 & ~v65;
        v27 = v86;
        v29 = v71;
        if ((*(v30 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
        {
          v67 = ~v65;
          while (1)
          {
            v68 = (*(v26 + 48) + 16 * v66);
            v69 = *v68 == v62 && v68[1] == v63;
            if (v69 || (sub_1D441AD84() & 1) != 0)
            {
              break;
            }

            v66 = (v66 + 1) & v67;
            if (((*(v30 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          swift_bridgeObjectRelease_n();
          v28 = v79;
          v12 = v82;
          v31 = v87;
          if (v85)
          {
            v11 = v77;
            if (v81)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D43E7B80(v27);
                v27 = result;
              }

              if (v31 >= *(v27 + 2))
              {
                goto LABEL_86;
              }

              v70 = 2;
            }

            else
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1D43E7B80(v27);
                v27 = result;
              }

              if (v31 >= *(v27 + 2))
              {
                goto LABEL_87;
              }

              v70 = 1;
            }

            goto LABEL_10;
          }
        }

        else
        {
LABEL_55:

          swift_bridgeObjectRelease_n();
          v28 = v79;
          v12 = v82;
          v31 = v87;
          if (v85)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {

        v27 = v86;
        v31 = v87;
        v29 = v71;
        if (v85)
        {
LABEL_58:
          v11 = v77;
          if (v81)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1D43E7B80(v27);
              v27 = result;
            }

            if (v31 >= *(v27 + 2))
            {
              goto LABEL_85;
            }

            v70 = 3;
          }

          else
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1D43E7B80(v27);
              v27 = result;
            }

            if (v31 >= *(v27 + 2))
            {
              goto LABEL_84;
            }

            v70 = 0;
          }

          goto LABEL_10;
        }
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v11 = v77;
    if ((result & 1) == 0)
    {
      result = sub_1D43E7B80(v27);
      v27 = result;
    }

    if (v31 >= *(v27 + 2))
    {
      goto LABEL_83;
    }

    v70 = 4;
LABEL_10:
    *(v27 + v84 + v83 + *(v12 + 56)) = v70;
    *(v78 + v73) = v27;
    if (v29 == v72)
    {
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t ActivityStream.Section.animatesTransition(from:)(uint64_t a1)
{
  v3 = type metadata accessor for ActivityStream.Item(0);
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC340);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v34 - v6;
  v8 = *(type metadata accessor for ActivityStream.Section(0) + 36);
  v9 = *(a1 + v8);
  v10 = *(v9 + 16);
  v11 = *(v1 + v8);
  if (v10 != *(v11 + 16))
  {
    return 1;
  }

  if (v10)
  {
    v13 = 0;
    v38 = v11;
    v39 = v7;
    v35 = v9;
    v36 = v3;
    v34 = v5;
    v37 = v10;
    while (v13 < *(v9 + 16))
    {
      v14 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v15 = *(v41 + 72) * v13;
      result = sub_1D43E7C18(v9 + v14 + v15, v5, type metadata accessor for ActivityStream.Item);
      v16 = *(v11 + 16);
      if (v13 == v16)
      {

        sub_1D43E7C80(v5, type metadata accessor for ActivityStream.Item);
        return 0;
      }

      if (v13 >= v16)
      {
        goto LABEL_25;
      }

      v17 = &v7[*(v40 + 48)];
      sub_1D43E8F70(v5, v7, type metadata accessor for ActivityStream.Item);
      sub_1D43E7C18(v11 + v14 + v15, v17, type metadata accessor for ActivityStream.Item);
      if ((sub_1D4418F14() & 1) == 0)
      {
        v33 = v7;
LABEL_20:
        sub_1D41769C4(v33, &qword_1EC7CC340);
LABEL_21:

        return 1;
      }

      v18 = *(v3 + 32);
      v19 = (v17 + v18);
      v20 = *(v17 + v18 + 24);
      v21 = &v7[v18];
      v22 = v21[3];
      if (v20)
      {
        if (!v22)
        {
          goto LABEL_19;
        }

        v24 = *v19;
        v23 = v19[1];
        v25 = v19[2];
        v26 = *v21;
        v27 = v21[1];
        v28 = v21[2];
        sub_1D433E4BC(*v21, v27, v28, v21[3]);
        sub_1D433E4BC(v24, v23, v25, v20);
        v43 = v25 & 1;
        LOBYTE(v28) = v28 & 1;
        v42 = v28;
        v29 = sub_1D4418F14();
        v30 = v27;
        v3 = v36;
        sub_1D430E564(v26, v30, v28);

        v31 = v24;
        v32 = v23;
        v5 = v34;
        v9 = v35;
        sub_1D433E500(v31, v32, v25, v20);
        v7 = v39;
        result = sub_1D41769C4(v39, &qword_1EC7CC340);
        if ((v29 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v22)
        {
LABEL_19:
          v33 = v39;
          goto LABEL_20;
        }

        v7 = v39;
        result = sub_1D41769C4(v39, &qword_1EC7CC340);
      }

      ++v13;
      v11 = v38;
      if (v37 == v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_15:

    return 0;
  }

  return result;
}

uint64_t ActivityStream.sections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1D43E6F84(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  v3 = *v2;
  sub_1D433E4BC(*v2, v2[1], v2[2], v2[3]);
  return v3;
}

uint64_t sub_1D43E7004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = (v5 + *(a5(0) + 24));
  result = sub_1D433E500(*v10, v10[1], v10[2], v10[3]);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t sub_1D43E70B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC2F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA640);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v37 - v8;
  v41 = type metadata accessor for ActivityStream.Item(0);
  v9 = *(v41 - 8);
  v10 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v37 - v15;
  v17 = sub_1D4417434();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ActivityStream(0);
  sub_1D417CF94(a3 + *(v21 + 20), v16, &qword_1EC7C98F0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = &qword_1EC7C98F0;
    v23 = v16;
LABEL_13:
    sub_1D41769C4(v23, v22);
    goto LABEL_14;
  }

  (*(v18 + 32))(v20, v16, v17);
  v24 = type metadata accessor for ActivityStream.Section(0);
  v25 = *(v42 + *(v24 + 36));
  v26 = *(v25 + 16);
  if (!v26)
  {
    (*(v18 + 8))(v20, v17);
LABEL_14:
    v34 = 0;
    return v34 & 1;
  }

  v27 = v24;
  v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v29 = v13;
  sub_1D43E7C18(v25 + v28 + *(v9 + 72) * (v26 - 1), v13, type metadata accessor for ActivityStream.Item);
  sub_1D417CF94(v39, v6, &qword_1EC7CC2F0);
  if ((*(*(v27 - 8) + 48))(v6, 1, v27) == 1)
  {
    sub_1D43E7C80(v13, type metadata accessor for ActivityStream.Item);
    (*(v18 + 8))(v20, v17);
    sub_1D41769C4(v6, &qword_1EC7CC2F0);
    v30 = v40;
    (*(v9 + 56))(v40, 1, 1, v41);
LABEL_12:
    v22 = &qword_1EC7CA640;
    v23 = v30;
    goto LABEL_13;
  }

  v31 = *&v6[*(v27 + 36)];

  sub_1D43E7C80(v6, type metadata accessor for ActivityStream.Section);
  v30 = v40;
  if (*(v31 + 16))
  {
    sub_1D43E7C18(v31 + v28, v40, type metadata accessor for ActivityStream.Item);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v41;
  (*(v9 + 56))(v30, v32, 1, v41);
  if ((*(v9 + 48))(v30, 1, v33) == 1)
  {
    sub_1D43E7C80(v29, type metadata accessor for ActivityStream.Item);
    (*(v18 + 8))(v20, v17);
    goto LABEL_12;
  }

  v36 = v38;
  sub_1D43E8F70(v30, v38, type metadata accessor for ActivityStream.Item);
  sub_1D43E869C(&qword_1EC7CB840, MEMORY[0x1E6969530]);
  if (sub_1D4419BD4())
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_1D44173C4();
  }

  sub_1D43E7C80(v36, type metadata accessor for ActivityStream.Item);
  sub_1D43E7C80(v29, type metadata accessor for ActivityStream.Item);
  (*(v18 + 8))(v20, v17);
  return v34 & 1;
}

uint64_t sub_1D43E76AC()
{
  type metadata accessor for ActivityStream.Item(0);
  sub_1D4417434();
  sub_1D43E869C(&qword_1EC7CB840, MEMORY[0x1E6969530]);
  if (sub_1D4419BD4())
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1D4419BD4() ^ 1;
  }

  return v0 & 1;
}

uint64_t ActivityStream.animatesTransition(from:)(uint64_t a1)
{
  v2 = type metadata accessor for ActivityStream.Section(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC348);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC350);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ActivityStream(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D417CF94(a1, v10, &qword_1EC7CC350);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D41769C4(v10, &qword_1EC7CC350);
    return 1;
  }

  sub_1D43E8F70(v10, v14, type metadata accessor for ActivityStream);
  v16 = *v14;
  v17 = *(*v14 + 16);
  v18 = *v26;
  if (v17 != *(*v26 + 16))
  {
    v15 = 1;
LABEL_16:
    sub_1D43E7C80(v14, type metadata accessor for ActivityStream);
    return v15;
  }

  v26 = v14;

  v20 = 0;
  while (1)
  {
    if (v17 == v20)
    {

LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    if (v20 >= *(v16 + 16))
    {
      break;
    }

    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = *(v3 + 72) * v20;
    result = sub_1D43E7C18(v16 + v21 + v22, v5, type metadata accessor for ActivityStream.Section);
    v23 = *(v18 + 16);
    if (v20 == v23)
    {

      sub_1D43E7C80(v5, type metadata accessor for ActivityStream.Section);
      goto LABEL_14;
    }

    if (v20++ >= v23)
    {
      goto LABEL_19;
    }

    v24 = *(v27 + 48);
    sub_1D43E8F70(v5, v7, type metadata accessor for ActivityStream.Section);
    sub_1D43E7C18(v18 + v21 + v22, &v7[v24], type metadata accessor for ActivityStream.Section);
    v25 = ActivityStream.Section.animatesTransition(from:)(&v7[v24]);
    result = sub_1D41769C4(v7, &qword_1EC7CC348);
    if (v25)
    {

      v15 = 1;
LABEL_15:
      v14 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D43E7BA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43E7C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D43E7C80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D43E7D28(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D441A8C4();
  }

  return sub_1D441AA14();
}

BOOL _s7NotesUI14ActivityStreamV4ItemV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ActivityStream.Destinations();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAFB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC3D8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D441AD84() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for ActivityStream.Item(0);
  if ((sub_1D44173E4() & 1) == 0 || *(a1 + v14[6]) != *(a2 + v14[6]) || (sub_1D4418F14() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 24);
  v18 = (a2 + v15);
  v19 = v18[3];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v45 = *v16;
    v21 = v16[1];
    v20 = v16[2];
    v43 = v17;
    v44 = v21;
    v42 = v20;
    v22 = v18[1];
    v47 = *v18;
    v48 = v22;
    v46 = v18[2];
    sub_1D430E574(v47, v22, v46 & 1);

    v49 = v42 & 1;
    LODWORD(v45) = sub_1D4418F14();
    sub_1D430E564(v47, v48, v46 & 1);

    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if ((sub_1D434FDE8(*(a1 + v14[9]), *(a2 + v14[9])) & 1) == 0)
  {
    return 0;
  }

  v23 = v14[10];
  v24 = *(a2 + v23);
  if (*(a1 + v23))
  {
    if (!v24)
    {
      return 0;
    }

    v48 = *(a1 + v23);

    LODWORD(v48) = sub_1D4419174();

    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = v14[11];
  v26 = *(v11 + 48);
  sub_1D417CF94(a1 + v25, v13, &qword_1EC7CAFB8);
  v27 = a2 + v25;
  v28 = v26;
  sub_1D417CF94(v27, &v13[v26], &qword_1EC7CAFB8);
  v29 = *(v5 + 48);
  if (v29(v13, 1, v4) == 1)
  {
    if (v29(&v13[v28], 1, v4) == 1)
    {
      sub_1D41769C4(v13, &qword_1EC7CAFB8);
      goto LABEL_26;
    }

LABEL_23:
    sub_1D41769C4(v13, &qword_1EC7CC3D8);
    return 0;
  }

  sub_1D417CF94(v13, v10, &qword_1EC7CAFB8);
  if (v29(&v13[v28], 1, v4) == 1)
  {
    sub_1D43E7C80(v10, type metadata accessor for ActivityStream.Destinations);
    goto LABEL_23;
  }

  sub_1D43E8F70(&v13[v28], v7, type metadata accessor for ActivityStream.Destinations);
  v31 = _s7NotesUI14ActivityStreamV12DestinationsO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1D43E7C80(v7, type metadata accessor for ActivityStream.Destinations);
  sub_1D43E7C80(v10, type metadata accessor for ActivityStream.Destinations);
  sub_1D41769C4(v13, &qword_1EC7CAFB8);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v32 = v14[12];
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = *v35;
  v37 = *(v35 + 8);
  if (v34 == 1)
  {
    if (v33 == 0.0)
    {
      if (v36 != 0.0)
      {
        LOBYTE(v37) = 0;
      }

      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v36 == 0.0)
      {
        v37 = 0;
      }

      if (v37 != 1)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v33 != v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  if (*(a1 + v14[13]) != *(a2 + v14[13]))
  {
    return 0;
  }

  v38 = v14[14];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 == 4)
  {
    return v40 == 4;
  }

  return v39 == v40;
}

uint64_t _s7NotesUI14ActivityStreamV4ItemV1loiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D44188B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityStream.Item(0);
  sub_1D4417434();
  sub_1D43E869C(&qword_1EC7C9800, MEMORY[0x1E6969530]);
  if (sub_1D4419BE4())
  {
    v36 = a1;
    sub_1D44188A4();
    v37 = sub_1D4418ED4();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v7, v4);
    v34 = a2;
    sub_1D44188A4();
    v12 = v37;
    v13 = sub_1D4418ED4();
    v15 = v14;
    v33 = v4;
    v35 = v11;
    v11(v7, v4);
    v16 = v12 == v13 && v10 == v15;
    if (v16 || (sub_1D441AD84() & 1) != 0)
    {

      v17 = v36;
      v18 = v36 + *(v8 + 32);
      v19 = v34;
      if (!*(v18 + 3))
      {
LABEL_18:
        if (*v17 == *v19 && v17[1] == v19[1])
        {
          v31 = 0;
        }

        else
        {
          v31 = sub_1D441AD84();
        }

        return v31 & 1;
      }

      v20 = *(v18 + 4);
      sub_1D44188A4();
      v39 = v20 & 1;
      v21 = sub_1D4418ED4();
      v23 = v22;
      v24 = v33;
      v35(v7, v33);
      v25 = v19 + *(v8 + 32);
      if (!*(v25 + 3))
      {
LABEL_17:

        goto LABEL_18;
      }

      v26 = *(v25 + 4);
      sub_1D44188A4();
      v38 = v26 & 1;
      v27 = sub_1D4418ED4();
      v29 = v28;
      v35(v7, v24);
      if (v21 == v27 && v23 == v29 || (sub_1D441AD84() & 1) != 0)
      {

        v17 = v36;
        goto LABEL_17;
      }
    }

    v31 = sub_1D441AD84();

    return v31 & 1;
  }

  return sub_1D44173B4();
}

uint64_t sub_1D43E869C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7NotesUI14ActivityStreamV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1D4417434();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D28);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if ((sub_1D434FBA0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for ActivityStream(0);
  v15 = a1;
  v16 = a2;
  v35 = v14;
  v36 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_1D417CF94(v15 + v17, v13, &qword_1EC7C98F0);
  v19 = v16 + v17;
  v20 = v16;
  sub_1D417CF94(v19, &v13[v18], &qword_1EC7C98F0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_1D417CF94(v13, v10, &qword_1EC7C98F0);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_1D43E869C(&qword_1EC7C9800, MEMORY[0x1E6969530]);
      v23 = sub_1D4419BE4();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      v20 = v16;
      sub_1D41769C4(v13, &qword_1EC7C98F0);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D41769C4(v13, &qword_1EC7C9D28);
    return 0;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1D41769C4(v13, &qword_1EC7C98F0);
LABEL_11:
  v25 = *(v35 + 24);
  v26 = v36 + v25;
  v27 = *(v36 + v25 + 24);
  v28 = (v20 + v25);
  v29 = v28[3];
  if (v27)
  {
    if (v29)
    {
      v30 = *(v26 + 16);
      v31 = *v28;
      v32 = v28[1];
      v33 = v28[2];
      sub_1D430E574(*v28, v32, v28[2] & 1);

      v37 = v30 & 1;
      v34 = sub_1D4418F14();
      sub_1D430E564(v31, v32, v33 & 1);

      if (v34)
      {
        return 1;
      }
    }
  }

  else if (!v29)
  {
    return 1;
  }

  return 0;
}

uint64_t _s7NotesUI14ActivityStreamV7SectionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D4417434();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D28);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D441AD84() & 1) == 0)
  {
    goto LABEL_21;
  }

  v14 = type metadata accessor for ActivityStream.Section(0);
  if ((sub_1D44173E4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v50 = v10;
  v51 = v5;
  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 24);
  v18 = (a2 + v15);
  v19 = v18[3];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_21;
    }

    v20 = *v16;
    v46 = v16[1];
    v47 = v20;
    v45 = v16[2];
    v48 = v4;
    v49 = v7;
    v21 = *v18;
    v22 = v18[1];
    v23 = v18[2];
    sub_1D430E574(*v18, v22, v18[2] & 1);

    v52 = v45 & 1;
    v24 = sub_1D4418F14();
    v25 = v23 & 1;
    v26 = v22;
    v4 = v48;
    v7 = v49;
    sub_1D430E564(v21, v26, v25);

    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v19)
  {
    goto LABEL_21;
  }

  v27 = v14[7];
  v28 = *(a2 + v27);
  if (*(a1 + v27))
  {
    if (!v28)
    {
      goto LABEL_21;
    }

    v29 = sub_1D4419254();

    if ((v29 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v28)
  {
    goto LABEL_21;
  }

  v49 = v7;
  v30 = v4;
  v31 = v14[8];
  v32 = *(v11 + 48);
  sub_1D417CF94(a1 + v31, v13, &qword_1EC7C98F0);
  v33 = a2 + v31;
  v34 = v30;
  sub_1D417CF94(v33, &v13[v32], &qword_1EC7C98F0);
  v35 = v51;
  v36 = *(v51 + 48);
  if (v36(v13, 1, v34) == 1)
  {
    if (v36(&v13[v32], 1, v34) == 1)
    {
      sub_1D41769C4(v13, &qword_1EC7C98F0);
LABEL_24:
      v38 = sub_1D434FD94(*(a1 + v14[9]), *(a2 + v14[9]));
      return v38 & 1;
    }

    goto LABEL_20;
  }

  v37 = v50;
  sub_1D417CF94(v13, v50, &qword_1EC7C98F0);
  if (v36(&v13[v32], 1, v34) == 1)
  {
    (*(v35 + 8))(v37, v34);
LABEL_20:
    sub_1D41769C4(v13, &qword_1EC7C9D28);
    goto LABEL_21;
  }

  v40 = &v13[v32];
  v41 = v49;
  (*(v35 + 32))(v49, v40, v34);
  sub_1D43E869C(&qword_1EC7C9800, MEMORY[0x1E6969530]);
  v42 = sub_1D4419BE4();
  v43 = *(v35 + 8);
  v43(v41, v34);
  v43(v37, v34);
  sub_1D41769C4(v13, &qword_1EC7C98F0);
  if (v42)
  {
    goto LABEL_24;
  }

LABEL_21:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_1D43E8F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D43E8FDC()
{
  result = qword_1EC7CC358;
  if (!qword_1EC7CC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC358);
  }

  return result;
}

unint64_t sub_1D43E9034()
{
  result = qword_1EC7CC360;
  if (!qword_1EC7CC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC360);
  }

  return result;
}

void sub_1D43E914C()
{
  sub_1D43E9258(319, &qword_1EC7CC388, type metadata accessor for ActivityStream.Section, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D43E9258(319, &qword_1EC7CC318, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D43E96E4(319, &qword_1EC7CC390);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D43E9258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D43E92E4()
{
  sub_1D4417434();
  if (v0 <= 0x3F)
  {
    sub_1D43E96E4(319, &qword_1EC7CC390);
    if (v1 <= 0x3F)
    {
      sub_1D43E9258(319, &qword_1EC7CC398, sub_1D436A11C, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1D43E96E4(319, &qword_1EC7CC3A0);
        if (v3 <= 0x3F)
        {
          sub_1D43E9258(319, &qword_1EC7CC3A8, type metadata accessor for ActivityStream.Destinations, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D43E96E4(319, &qword_1EC7CC3B0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityStream.Item.DividerStyles(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ActivityStream.Item.DividerStyles(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D43E9504(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D43E9520(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1D43E9588()
{
  sub_1D4417434();
  if (v0 <= 0x3F)
  {
    sub_1D43E96E4(319, &qword_1EC7CC390);
    if (v1 <= 0x3F)
    {
      sub_1D43E96E4(319, &qword_1EC7CC3C8);
      if (v2 <= 0x3F)
      {
        sub_1D43E9258(319, &qword_1EC7CC318, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D43E9258(319, &qword_1EC7CC3D0, type metadata accessor for ActivityStream.Item, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D43E96E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D441A784();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t Text.init(format:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4416F94();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D4416FA4();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4416FC4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA040);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v28 - v16;
  v18 = sub_1D4417014();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v28 - v23;

  v36 = a3;
  v28[1] = sub_1D43506EC(a3, a1, a2);
  v35 = a2;

  v25 = sub_1D4417234();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  (*(v8 + 104))(v29, *MEMORY[0x1E6968750], v31);
  (*(v33 + 104))(v32, *MEMORY[0x1E6968728], v34);

  sub_1D4416FB4();
  sub_1D4417004();

  (*(v19 + 56))(v17, 0, 1, v18);
  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v22, v24, v18);
  v26 = sub_1D4418F74();
  (*(v19 + 8))(v24, v18);
  return v26;
}

char *Text.init(_:)(void *a1)
{
  v3 = sub_1D4417014();
  v16 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  swift_getKeyPath();
  sub_1D4416F74();
  sub_1D43EA2D0();
  v12 = a1;
  sub_1D4417024();
  if (v1)
  {
  }

  else
  {
    sub_1D4380E38();
    sub_1D4380E8C();
    sub_1D4416FD4();
    v13 = v16;
    v15 = *(v16 + 8);
    v15(v9, v3);
    (*(v13 + 16))(v6, v11, v3);
    v9 = sub_1D4418F74();

    v15(v11, v3);
  }

  return v9;
}

void sub_1D43E9E70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC3E0);
  sub_1D4416FE4();
  if (v2)
  {
    v0 = v2;
    v2 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
    sub_1D43EA37C();
    sub_1D4416FF4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC3E8);
  sub_1D4416FE4();
  if (v2)
  {
    v1 = v2;
    sub_1D4418E64();
    sub_1D43EA328();
    sub_1D4416FF4();
  }
}

uint64_t Text.tableCellDescription.getter()
{
  v0 = sub_1D44188B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D44188A4();
  v4 = sub_1D4418ED4();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v9[5] = v4;
  v9[6] = v6;
  v9[3] = 10;
  v9[4] = 0xE100000000000000;
  v9[1] = 32;
  v9[2] = 0xE100000000000000;
  sub_1D42CC920();
  v7 = sub_1D441A7D4();

  return v7;
}

uint64_t sub_1D43EA0F8()
{
  v0 = sub_1D44188B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D44188A4();
  v4 = sub_1D4418ED4();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v9[5] = v4;
  v9[6] = v6;
  v9[3] = 10;
  v9[4] = 0xE100000000000000;
  v9[1] = 32;
  v9[2] = 0xE100000000000000;
  sub_1D42CC920();
  v7 = sub_1D441A7D4();

  return v7;
}

uint64_t sub_1D43EA268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D43EA2D0()
{
  result = qword_1EC7CB7F0;
  if (!qword_1EC7CB7F0)
  {
    sub_1D4416F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CB7F0);
  }

  return result;
}

unint64_t sub_1D43EA328()
{
  result = qword_1EC7CC3F0;
  if (!qword_1EC7CC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC3F0);
  }

  return result;
}

unint64_t sub_1D43EA37C()
{
  result = qword_1EC7CC3F8;
  if (!qword_1EC7CC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC3F8);
  }

  return result;
}

void sub_1D43EA3D0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    sub_1D41766C0(0, &qword_1EDE32440);
    sub_1D43ECCB4();
    sub_1D441A0A4();
    v1 = v25;
    v2 = v26;
    v3 = v27;
    v4 = v28;
    v5 = v29;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v24 = v1;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D441A8F4() || (sub_1D41766C0(0, &qword_1EDE32440), swift_dynamicCast(), v14 = v30, v12 = v4, v13 = v5, !v30))
      {
LABEL_31:
        sub_1D419FA48();
        return;
      }

      goto LABEL_18;
    }

    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_14:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
      goto LABEL_31;
    }

LABEL_18:
    v15 = sub_1D441A474();

    v16 = *(v15 + 16);
    v17 = v9[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v18 <= v9[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_27;
      }

LABEL_8:

      v4 = v12;
      v5 = v13;
      v1 = v24;
      if (v16)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v9 = sub_1D438D3C0(isUniquelyReferenced_nonNull_native, v20, 1, v9);
      if (!*(v15 + 16))
      {
        goto LABEL_8;
      }

LABEL_27:
      if ((v9[3] >> 1) - v9[2] < v16)
      {
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B28);
      swift_arrayInitWithCopy();

      v4 = v12;
      v5 = v13;
      v1 = v24;
      if (v16)
      {
        v21 = v9[2];
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_36;
        }

        v9[2] = v23;
        v4 = v12;
        v5 = v13;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
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
}

void __swiftcall ICActivityStreamSelection.init(mentions:)(ICActivityStreamSelection_optional *__return_ptr retstr, Swift::OpaquePointer mentions)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1D41766C0(0, &qword_1EC7CB660);
  v3 = sub_1D4419E24();

  [v2 objc:v3 initWithMentions:?];
}

id ICActivityStreamSelection.init(mentions:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v72 - v3;
  v5 = sub_1D4417434();
  v80 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v72 - v8;
  *&v86 = MEMORY[0x1E69E7CC0];
  v77 = v4;
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_79:
    v10 = sub_1D441A8C4();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v79 = 0;
  v81 = a1;
  v12 = a1 & 0xC000000000000001;
  v13 = MEMORY[0x1E69E7CC0];
  while (v10 != v11)
  {
    if (v12)
    {
      v14 = MEMORY[0x1DA6D6410](v11, v81);
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_75;
      }

      v14 = *(v81 + 8 * v11 + 32);
    }

    a1 = v14;
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v16 = [v14 note];

    ++v11;
    if (v16)
    {
      a1 = &v86;
      MEMORY[0x1DA6D5820]();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D4419E94();
      }

      sub_1D4419EB4();
      v13 = v86;
      v11 = v15;
    }
  }

  v76 = sub_1D4391B48(v13);

  v17 = v81;
  if (v10)
  {
    v18 = 0;
    a1 = MEMORY[0x1E69E7CC0];
    do
    {
      v19 = v18;
      while (1)
      {
        if (v12)
        {
          v20 = MEMORY[0x1DA6D6410](v19, v17);
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v19 >= *(v9 + 16))
          {
            goto LABEL_77;
          }

          v20 = *(v17 + 8 * v19 + 32);
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_76;
          }
        }

        v21 = v20;
        v22 = [v21 identifier];
        if (v22)
        {
          break;
        }

        ++v19;
        if (v18 == v10)
        {
          goto LABEL_33;
        }
      }

      v23 = v22;
      v24 = sub_1D4419C54();
      v73 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_1D438D2B4(0, *(a1 + 16) + 1, 1, a1);
      }

      v27 = *(a1 + 16);
      v26 = *(a1 + 24);
      if (v27 >= v26 >> 1)
      {
        a1 = sub_1D438D2B4((v26 > 1), v27 + 1, 1, a1);
      }

      *(a1 + 16) = v27 + 1;
      v28 = (a1 + 16 * v27);
      v29 = v73;
      *(v28 + 4) = v24;
      *(v28 + 5) = v29;
      v17 = v81;
    }

    while (v18 != v10);
  }

  else
  {
    a1 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:
  v30 = sub_1D4391694(a1);

  sub_1D43EA3D0(v76);
  v32 = v31;

  v33 = *(v32 + 16);
  v79 = v5;
  if (v33)
  {
    v9 = 0;
    v34 = v32 + 32;
    v35 = MEMORY[0x1E69E7CC0];
    while (v9 < *(v32 + 16))
    {
      sub_1D42D73C8(v34, &v86);
      __swift_project_boxed_opaque_existential_1(&v86, v87);
      a1 = sub_1D4417774();
      v36 = sub_1D43EB108(v30, a1);

      if (v36)
      {
        __swift_destroy_boxed_opaque_existential_0(&v86);
      }

      else
      {
        sub_1D419FAA8(&v86, v85);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v82 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a1 = &v82;
          sub_1D43CF3C4(0, *(v35 + 16) + 1, 1);
          v35 = v82;
        }

        v39 = *(v35 + 16);
        v38 = *(v35 + 24);
        if (v39 >= v38 >> 1)
        {
          a1 = &v82;
          sub_1D43CF3C4((v38 > 1), v39 + 1, 1);
          v35 = v82;
        }

        *(v35 + 16) = v39 + 1;
        sub_1D419FAA8(v85, v35 + 40 * v39 + 32);
        v5 = v79;
      }

      ++v9;
      v34 += 40;
      if (v33 == v9)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_78;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_45:

  v40 = *(v35 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v42 = v35 + 32;
    do
    {
      sub_1D42D73C8(v42, &v86);
      sub_1D419FAA8(&v86, v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B48);
      if (swift_dynamicCast())
      {
        if (*(&v83 + 1))
        {
          sub_1D419FAA8(&v82, v85);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1D438D3E4(0, v41[2] + 1, 1, v41);
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_1D438D3E4((v43 > 1), v44 + 1, 1, v41);
          }

          v41[2] = v44 + 1;
          sub_1D419FAA8(v85, &v41[5 * v44 + 4]);
          v5 = v79;
          goto LABEL_49;
        }
      }

      else
      {
        v84 = 0;
        v82 = 0u;
        v83 = 0u;
      }

      sub_1D41769C4(&v82, &qword_1EC7C9B50);
LABEL_49:
      v42 += 40;
      --v40;
    }

    while (v40);
  }

  v45 = v41[2];
  if (v45)
  {
    *&v85[0] = MEMORY[0x1E69E7CC0];
    sub_1D418BC38(0, v45, 0);
    v46 = *&v85[0];
    v47 = (v41 + 4);
    do
    {
      sub_1D42D73C8(v47, &v86);
      v48 = v87;
      v49 = v88;
      __swift_project_boxed_opaque_existential_1(&v86, v87);
      v50 = (*(v49 + 8))(v48, v49);
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_0(&v86);
      *&v85[0] = v46;
      v54 = *(v46 + 16);
      v53 = *(v46 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1D418BC38((v53 > 1), v54 + 1, 1);
        v46 = *&v85[0];
      }

      *(v46 + 16) = v54 + 1;
      v55 = v46 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v47 += 40;
      --v45;
    }

    while (v45);

    v5 = v79;
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v56 = *(v35 + 16);
  v57 = v80;
  if (v56)
  {
    v58 = v35;
    v59 = v5;
    *&v85[0] = MEMORY[0x1E69E7CC0];
    sub_1D43CF380(0, v56, 0);
    v60 = *&v85[0];
    v79 = v58;
    v61 = v58 + 32;
    v62 = v75;
    do
    {
      sub_1D42D73C8(v61, &v86);
      __swift_project_boxed_opaque_existential_1(&v86, v87);
      _s7NotesUI29ActivityStreamItemConvertiblePAA0A6Shared0C5EventRzrlE08activityE9Timestamp10Foundation4DateVvg_0();
      __swift_destroy_boxed_opaque_existential_0(&v86);
      *&v85[0] = v60;
      v64 = *(v60 + 16);
      v63 = *(v60 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1D43CF380(v63 > 1, v64 + 1, 1);
        v60 = *&v85[0];
      }

      *(v60 + 16) = v64 + 1;
      v57 = v80;
      (*(v80 + 32))(v60 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v80 + 72) * v64, v62, v59);
      v61 += 40;
      --v56;
    }

    while (v56);

    v5 = v59;
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
  }

  v65 = v77;
  sub_1D43EB2F0(v60, v77);

  if ((*(v57 + 48))(v65, 1, v5) == 1)
  {

    sub_1D41769C4(v65, &qword_1EC7C98F0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v67 = v74;
    (*(v57 + 32))(v74, v65, v5);
    sub_1D4391694(v46);

    v68 = sub_1D441A054();

    sub_1D41766C0(0, &qword_1EC7C9770);
    v69 = sub_1D441A384();
    v70 = sub_1D44173A4();
    v71 = [v78 initWithItemIDs:v68 filter:v69 displayDate:v70];

    (*(v57 + 8))(v67, v5);
    return v71;
  }
}

uint64_t sub_1D43EB108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_1D441AEB4();

      sub_1D4419CD4();
      v19 = sub_1D441AF04();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_1D441AD84() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D43EB2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D4417434();
  v5 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_1D43EC5F0(&qword_1EC7CB840, MEMORY[0x1E6969530]);
        v20 = sub_1D4419BD4();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

void ICActivityStreamSelection.Model.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 itemIDs];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D441A064();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  v7 = [a1 filter];
  type metadata accessor for ICActivityStreamSelection.Model();
  sub_1D441A354();
  v8 = [a1 displayDate];
  sub_1D44173F4();
}

id ICActivityStreamSelection.Model.selection.getter()
{
  v1 = sub_1D4417434();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = type metadata accessor for ICActivityStreamSelection.Model();
  v7 = sub_1D441A364();
  (*(v2 + 16))(v4, v0 + *(v6 + 24), v1);
  if (v5)
  {
    v5 = sub_1D441A054();
  }

  v8 = objc_allocWithZone(ICActivityStreamSelection);
  v9 = sub_1D44173A4();
  v10 = [v8 initWithItemIDs:v5 filter:v7 displayDate:v9];

  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_1D43EB858()
{
  v1 = 0x7265746C6966;
  if (*v0 != 1)
  {
    v1 = 0x4479616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7344496D657469;
  }
}

uint64_t sub_1D43EB8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D43EC6F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D43EB8E0(uint64_t a1)
{
  v2 = sub_1D43EC59C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D43EB91C(uint64_t a1)
{
  v2 = sub_1D43EC59C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ICActivityStreamSelection.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC400);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D43EC59C();
  sub_1D441AF94();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB7A8);
  sub_1D437F284(&qword_1EDE32A28);
  sub_1D441ACD4();
  if (!v2)
  {
    type metadata accessor for ICActivityStreamSelection.Model();
    v10[6] = 1;
    sub_1D441A374();
    sub_1D43EC5F0(&qword_1EC7CC410, MEMORY[0x1E69B7370]);
    sub_1D441AD24();
    v10[5] = 2;
    sub_1D4417434();
    sub_1D43EC5F0(&qword_1EDE33828, MEMORY[0x1E6969530]);
    sub_1D441AD24();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ICActivityStreamSelection.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1D4417434();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D441A374();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CC418);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v20 - v10;
  v29 = type metadata accessor for ICActivityStreamSelection.Model();
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D43EC59C();
  sub_1D441AF84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v21 = v6;
    v22 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB7A8);
    v33 = 0;
    sub_1D437F284(&qword_1EC7CB7B8);
    v14 = v25;
    sub_1D441AC64();
    *v30 = v34;
    v32 = 1;
    sub_1D43EC5F0(&qword_1EC7CC420, MEMORY[0x1E69B7370]);
    v15 = v8;
    v16 = v28;
    sub_1D441ACB4();
    v17 = v30;
    (*(v26 + 32))(&v30[*(v29 + 20)], v15, v16);
    v31 = 2;
    sub_1D43EC5F0(&qword_1EDE33820, MEMORY[0x1E6969530]);
    v18 = v21;
    sub_1D441ACB4();
    (*(v22 + 8))(v11, v14);
    (*(v23 + 32))(v17 + *(v29 + 24), v18, v4);
    sub_1D43EC638(v17, v24);
    __swift_destroy_boxed_opaque_existential_0(v27);
    return sub_1D43EC69C(v17);
  }
}

uint64_t ICActivityStreamSelection.encoded()()
{
  v1 = type metadata accessor for ICActivityStreamSelection.Model();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D4416DA4();
  swift_allocObject();
  sub_1D4416D94();
  v4 = v0;
  v5 = [v4 itemIDs];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D441A064();
  }

  else
  {
    v7 = 0;
  }

  *v3 = v7;
  v8 = [v4 filter];
  sub_1D441A354();
  v9 = [v4 displayDate];
  sub_1D44173F4();

  sub_1D43EC5F0(&qword_1EC7CC428, type metadata accessor for ICActivityStreamSelection.Model);
  v10 = sub_1D4416D84();
  sub_1D43EC69C(v3);

  return v10;
}

uint64_t type metadata accessor for ICActivityStreamSelection.Model()
{
  result = qword_1EC7CC430;
  if (!qword_1EC7CC430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D43EC59C()
{
  result = qword_1EC7CC408;
  if (!qword_1EC7CC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC408);
  }

  return result;
}

uint64_t sub_1D43EC5F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D43EC638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICActivityStreamSelection.Model();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43EC69C(uint64_t a1)
{
  v2 = type metadata accessor for ICActivityStreamSelection.Model();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D43EC6F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7344496D657469 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D441AD84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_1D441AD84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEB00000000657461)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D441AD84();

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

id _sSo25ICActivityStreamSelectionC7NotesUIE4from4dataABSg10Foundation4DataV_tFZ_0()
{
  v0 = sub_1D4417434();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ICActivityStreamSelection.Model();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4416D74();
  swift_allocObject();
  sub_1D4416D64();
  sub_1D43EC5F0(qword_1EC7CC460, type metadata accessor for ICActivityStreamSelection.Model);
  sub_1D4416D54();

  v7 = *v6;
  v8 = sub_1D441A364();
  (*(v1 + 16))(v3, v6 + *(v4 + 24), v0);
  if (v7)
  {
    v7 = sub_1D441A054();
  }

  v9 = objc_allocWithZone(ICActivityStreamSelection);
  v10 = sub_1D44173A4();
  v11 = [v9 initWithItemIDs:v7 filter:v8 displayDate:v10];

  (*(v1 + 8))(v3, v0);
  sub_1D43EC69C(v6);
  return v11;
}

void sub_1D43ECA9C()
{
  sub_1D43ECB38();
  if (v0 <= 0x3F)
  {
    sub_1D441A374();
    if (v1 <= 0x3F)
    {
      sub_1D4417434();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D43ECB38()
{
  if (!qword_1EC7CC440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CB7A8);
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7CC440);
    }
  }
}

unint64_t sub_1D43ECBB0()
{
  result = qword_1EC7CC448;
  if (!qword_1EC7CC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC448);
  }

  return result;
}

unint64_t sub_1D43ECC08()
{
  result = qword_1EC7CC450;
  if (!qword_1EC7CC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC450);
  }

  return result;
}

unint64_t sub_1D43ECC60()
{
  result = qword_1EC7CC458;
  if (!qword_1EC7CC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CC458);
  }

  return result;
}

unint64_t sub_1D43ECCB4()
{
  result = qword_1EDE32438;
  if (!qword_1EDE32438)
  {
    sub_1D41766C0(255, &qword_1EDE32440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32438);
  }

  return result;
}

uint64_t sub_1D43ECD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4418B74();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1D4418B84();
}

uint64_t sub_1D43ECE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D4418B74();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1D4418B84();
}

void ThumbnailView.init(thumbnailService:configuration:content:placeholder:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB560);
  sub_1D4419284();
  *(a7 + 48) = v16;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  v14 = a1;
  v15 = a2;
  sub_1D417C7B4(a3);
  sub_1D417C7B4(a5);
  type metadata accessor for ThumbnailView();
  sub_1D43ED0D4();
  sub_1D43ED13C();
  sub_1D417BCA0(a5);
  sub_1D417BCA0(a3);
}

uint64_t ThumbnailView.content.getter()
{
  v1 = *(v0 + 16);
  sub_1D417C7B4(v1);
  return v1;
}

uint64_t ThumbnailView.placeholder.getter()
{
  v1 = *(v0 + 32);
  sub_1D417C7B4(v1);
  return v1;
}

uint64_t sub_1D43ED0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB568);
  sub_1D4419294();
  return v1;
}

uint64_t ThumbnailView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v31 = *(a1 + 16);
  v4 = v31;
  v32 = sub_1D4418B94();
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAA10);
  v33 = sub_1D4418B94();
  v34 = sub_1D4418B94();
  v6 = sub_1D4419204();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = sub_1D4418614();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v29 - v14;
  v15 = v2[1];
  v51 = *v2;
  v52 = v15;
  v16 = v2[3];
  v53 = v2[2];
  v54 = v16;
  v17 = *(a1 + 32);
  *&v18 = v4;
  *(&v18 + 1) = v5;
  v38 = v18;
  v39 = v17;
  v29 = v17;
  v40 = &v51;
  v30 = v17;
  v49 = v17;
  v50 = MEMORY[0x1E6981710];
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1D417645C(&qword_1EC7CAA08, &qword_1EC7CAA10);
  v21 = *(&v29 + 1);
  v47 = *(&v29 + 1);
  v48 = v20;
  v22 = swift_getWitnessTable();
  v45 = WitnessTable;
  v46 = v22;
  v23 = swift_getWitnessTable();
  sub_1D44191F4();
  v44[0] = v51;
  v44[1] = v52;
  v44[2] = v53;
  v44[3] = v54;
  sub_1D43EDF88(v44, v31, v5, v30, v21);
  v43 = v23;
  v24 = swift_getWitnessTable();
  sub_1D4419114();

  (*(v36 + 8))(v8, v6);
  v41 = v24;
  v42 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v25 = *(v10 + 16);
  v26 = v35;
  v25(v35, v13, v9);
  v27 = *(v10 + 8);
  v27(v13, v9);
  v25(v37, v26, v9);
  return (v27)(v26, v9);
}

uint64_t sub_1D43ED590@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a6;
  v71 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v70 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v69 = &v69 - v14;
  v75 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v69 - v18;
  v19 = sub_1D4418B94();
  v78 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v77 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CAA10);
  v24 = sub_1D4418B94();
  v72 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v69 - v28;
  v84 = v19;
  v82 = v30;
  v81 = sub_1D4418B94();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v69 - v31;
  v32 = a1[6];
  v33 = a1[7];
  v101 = a2;
  v102 = a3;
  v85 = a5;
  v86 = a4;
  v103 = a4;
  v104 = a5;
  type metadata accessor for ThumbnailView();
  v101 = v32;
  v102 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB568);
  sub_1D4419294();
  v34 = v105;
  if (v105)
  {
    v35 = a1[2];
    if (v35)
    {

      v36 = v73;
      v35(v34);
      v37 = v75;
      v38 = *(v75 + 16);
      v72 = v34;
      v39 = v74;
      v38(v74, v36, a2);
      v40 = *(v37 + 8);
      v40(v36, a2);
      v38(v36, v39, a2);
      v41 = v76;
      sub_1D43ECD54(v36, a2);
      sub_1D417BCA0(v35);
      v40(v36, a2);
      v40(v39, a2);
    }

    else
    {
      v101 = v105;
      v41 = v76;
      sub_1D43ECE4C(&v101, a2, MEMORY[0x1E6981748]);
    }

    v89 = v86;
    v49 = MEMORY[0x1E6981710];
    v90 = MEMORY[0x1E6981710];
    v50 = v84;
    swift_getWitnessTable();
    v51 = v78;
    v52 = v77;
    v78[2](v77, v41, v50);
    v53 = sub_1D417645C(&qword_1EC7CAA08, &qword_1EC7CAA10);
    v87 = v85;
    v88 = v53;
    swift_getWitnessTable();
    v54 = v79;
    sub_1D43ECD54(v52, v50);

    v55 = v51[1];
    (v55)(v52, v50);
    (v55)(v41, v50);
  }

  else
  {
    v77 = v23;
    v42 = v70;
    v43 = v71;
    v78 = v27;
    v44 = a1[4];
    if (v44)
    {

      v44(v45);
      v46 = *(v43 + 16);
      v47 = v69;
      v46(v69, v42, a3);
      v48 = *(v43 + 8);
      v48(v42, a3);
      v46(v42, v47, a3);
      sub_1D417645C(&qword_1EC7CAA08, &qword_1EC7CAA10);
      sub_1D43ECD54(v42, a3);
      sub_1D417BCA0(v44);
      v48(v42, a3);
      v48(v47, a3);
    }

    else
    {
      v56 = [objc_opt_self() quaternaryLabelColor];
      v101 = _s7SwiftUI5ColorV05NotesB0EyACSo7UIColorCcfC_0();
      LOWORD(v102) = 256;
      sub_1D417645C(&qword_1EC7CAA08, &qword_1EC7CAA10);
      sub_1D43ECE4C(&v101, a3, v77);
    }

    v57 = v78;
    v58 = sub_1D417645C(&qword_1EC7CAA08, &qword_1EC7CAA10);
    v99 = v85;
    v100 = v58;
    v59 = v82;
    swift_getWitnessTable();
    v60 = v72;
    (*(v72 + 16))(v57, v29, v59);
    v97 = v86;
    v49 = MEMORY[0x1E6981710];
    v98 = MEMORY[0x1E6981710];
    v61 = v84;
    swift_getWitnessTable();
    v54 = v79;
    sub_1D43ECE4C(v57, v61, v59);
    v62 = *(v60 + 8);
    v62(v57, v59);
    v62(v29, v59);
  }

  v95 = v86;
  v96 = v49;
  WitnessTable = swift_getWitnessTable();
  v64 = sub_1D417645C(&qword_1EC7CAA08, &qword_1EC7CAA10);
  v93 = v85;
  v94 = v64;
  v65 = swift_getWitnessTable();
  v91 = WitnessTable;
  v92 = v65;
  v66 = v81;
  swift_getWitnessTable();
  v67 = v80;
  (*(v80 + 16))(v83, v54, v66);
  return (*(v67 + 8))(v54, v66);
}

void (*sub_1D43EDF88(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v11 = a1[3];
  v18[2] = a1[2];
  v18[3] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = a1[1];
  *(v12 + 48) = *a1;
  *(v12 + 64) = v13;
  v14 = a1[3];
  *(v12 + 80) = a1[2];
  *(v12 + 96) = v14;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v15 = type metadata accessor for ThumbnailView();
  (*(*(v15 - 8) + 16))(v17, v18, v15);
  return sub_1D43EE864;
}

void sub_1D43EE070(uint64_t a1)
{
  v2 = v1;
  v4 = v1[1];
  *v20 = *v1;
  v21 = v4;
  v5 = v1[3];
  v22 = v1[2];
  v23 = v5;
  v6 = v20[0];
  v7 = v20[1];
  v8 = [objc_msgSend(v20[0] cache)];
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = v23;
    v10 = *(a1 - 8);
    (*(v10 + 16))(v18, v20, a1);
    v11 = [v8 image];
    if (v11)
    {
      v11 = _s7SwiftUI5ImageV05NotesB0EyACSo7UIImageCcfC_0();
    }

    v18[0] = v9;
    aBlock[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB568);
    sub_1D44192A4();

    v12 = v2[1];
    v18[0] = *v2;
    v18[1] = v12;
    v18[2] = v2[2];
    v18[3] = v9;
    (*(v10 + 8))(v18, a1);
  }

  else
  {
    v13 = swift_allocObject();
    v14 = *(a1 + 32);
    v13[1] = *(a1 + 16);
    v13[2] = v14;
    v15 = v2[1];
    v13[3] = *v2;
    v13[4] = v15;
    v16 = v2[3];
    v13[5] = v2[2];
    v13[6] = v16;
    aBlock[4] = sub_1D43EE8B4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D4315880;
    aBlock[3] = &block_descriptor_26;
    v17 = _Block_copy(aBlock);
    (*(*(a1 - 8) + 16))(v18, v20, a1);

    [v6 thumbnailWithConfiguration:v7 completion:v17];
    _Block_release(v17);
  }
}

uint64_t sub_1D43EE328(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = sub_1D4419444();
  v30 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D4419484();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D430C100();
  v27 = sub_1D441A2C4();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  v18 = a2[1];
  *(v17 + 48) = *a2;
  *(v17 + 64) = v18;
  v19 = a2[3];
  *(v17 + 80) = a2[2];
  *(v17 + 96) = v19;
  *(v17 + 112) = a1;
  aBlock[4] = sub_1D43EE8C4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_10;
  v20 = _Block_copy(aBlock);
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v21 = type metadata accessor for ThumbnailView();
  (*(*(v21 - 8) + 16))(v31, a2, v21);
  v22 = a1;

  sub_1D4419464();
  v31[0] = MEMORY[0x1E69E7CC0];
  sub_1D43EE8D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
  v23 = v26;
  sub_1D441A814();
  v24 = v27;
  MEMORY[0x1DA6D5D00](0, v16, v13, v20);
  _Block_release(v20);

  (*(v30 + 8))(v13, v23);
  return (*(v28 + 8))(v16, v29);
}

uint64_t sub_1D43EE650(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[1];
  v20 = *a1;
  v21 = v8;
  v22 = a1[2];
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  v11 = type metadata accessor for ThumbnailView();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v15, a1, v11);
  v13 = [a2 image];
  if (v13)
  {
    v13 = _s7SwiftUI5ImageV05NotesB0EyACSo7UIImageCcfC_0();
  }

  *&v15 = v9;
  *(&v15 + 1) = v10;
  v23 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CB568);
  sub_1D44192A4();
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v9;
  v19 = v10;
  return (*(v12 + 8))(&v15, v11);
}

uint64_t sub_1D43EE77C()
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

uint64_t sub_1D43EE7CC(uint64_t *a1, int a2)
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

uint64_t sub_1D43EE814(uint64_t result, int a2, int a3)
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

unint64_t sub_1D43EE8D8()
{
  result = qword_1EDE32AD0;
  if (!qword_1EDE32AD0)
  {
    sub_1D4419444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32AD0);
  }

  return result;
}

uint64_t sub_1D43EE950()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EDE32CC0);
  __swift_project_value_buffer(v0, qword_1EDE32CC0);
  return sub_1D4418104();
}

id sub_1D43EE99C()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = [objc_opt_self() sharedThumbnailService];
  v2 = objc_allocWithZone(type metadata accessor for SystemPaperThumbnailService());
  result = sub_1D43F891C(v0, v1, v2);
  qword_1EDE32DD8 = result;
  return result;
}

id SystemPaperThumbnailService.__allocating_init(fileManager:thumbnailService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_1D43F8C3C(a1, a3, v7, ObjectType, a2);
}

id static SystemPaperThumbnailService.shared.getter()
{
  if (qword_1EDE32DD0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE32DD8;

  return v1;
}

void *SystemPaperThumbnailService.traitCollection.getter()
{
  v1 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_traitCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SystemPaperThumbnailService.traitCollection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_traitCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SystemPaperThumbnailService.init(fileManager:thumbnailService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1D43F8C3C(a1, a3, v3, ObjectType, a2);
}

id SystemPaperThumbnailService.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  SystemPaperThumbnailService.cancel()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall SystemPaperThumbnailService.cancel()()
{
  v1 = v0;
  if (qword_1EDE32CB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D44181B4();
  __swift_project_value_buffer(v2, qword_1EDE32CC0);
  v3 = sub_1D44181A4();
  v4 = sub_1D441A154();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D4171000, v3, v4, "Cancelled observing System Paper notes for changes", v5, 2u);
    MEMORY[0x1DA6D8690](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_observations) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D43EF0AC(uint64_t a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = MEMORY[0x1E69E7CC0];
  if (v4 > 4)
  {
    if (v4 != 5 && v4 != 6)
    {
      return v5;
    }

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D443CE00;
    v6 = objc_opt_self();
    v23 = [v6 appearanceInfoWithType_];
    v24 = [objc_allocWithZone(ICThumbnailConfiguration) initForSystemPaperPreviewWithNote:a1 appearanceInfo:v23];

    *(v5 + 32) = v24;
    v25 = [v6 appearanceInfoWithType_];
    v26 = [objc_allocWithZone(ICThumbnailConfiguration) initForSystemPaperPreviewWithNote:a1 appearanceInfo:v25];

    *(v5 + 40) = v26;
    v27 = [v6 appearanceInfoWithType_];
    v16 = (v1 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_traitCollection);
    swift_beginAccess();
    v28 = [objc_allocWithZone(ICThumbnailConfiguration) initForLargeQuickNoteWidgetWithNote:a1 appearanceInfo:v27 traitCollection:*v16];

    *(v5 + 48) = v28;
    v29 = [v6 appearanceInfoWithType_];
    v30 = [objc_allocWithZone(ICThumbnailConfiguration) initForLargeQuickNoteWidgetWithNote:a1 appearanceInfo:v29 traitCollection:*v16];

    *(v5 + 56) = v30;
    v31 = [v6 appearanceInfoWithType_];
    v32 = [objc_allocWithZone(ICThumbnailConfiguration) initForSmallQuickNoteWidgetWithNote:a1 appearanceInfo:v31 traitCollection:*v16];

    *(v5 + 64) = v32;
    v22 = (v5 + 72);
    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CAE70);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D443CE10;
    v6 = objc_opt_self();
    v7 = [v6 appearanceInfoWithType_];
    v8 = [objc_allocWithZone(ICThumbnailConfiguration) initForSystemPaperChromeWithNote:a1 appearanceInfo:v7];

    *(v5 + 32) = v8;
    v9 = [v6 appearanceInfoWithType_];
    v10 = [objc_allocWithZone(ICThumbnailConfiguration) initForSystemPaperChromeWithNote:a1 appearanceInfo:v9];

    *(v5 + 40) = v10;
    v11 = [v6 appearanceInfoWithType_];
    v12 = [objc_allocWithZone(ICThumbnailConfiguration) initForSystemPaperPreviewWithNote:a1 appearanceInfo:v11];

    *(v5 + 48) = v12;
    v13 = [v6 appearanceInfoWithType_];
    v14 = [objc_allocWithZone(ICThumbnailConfiguration) initForSystemPaperPreviewWithNote:a1 appearanceInfo:v13];

    *(v5 + 56) = v14;
    v15 = [v6 appearanceInfoWithType_];
    v16 = (v1 + OBJC_IVAR___ICSystemPaperThumbnailServiceInternal_traitCollection);
    swift_beginAccess();
    v17 = [objc_allocWithZone(ICThumbnailConfiguration) initForLargeQuickNoteWidgetWithNote:a1 appearanceInfo:v15 traitCollection:*v16];

    *(v5 + 64) = v17;
    v18 = [v6 appearanceInfoWithType_];
    v19 = [objc_allocWithZone(ICThumbnailConfiguration) initForLargeQuickNoteWidgetWithNote:a1 appearanceInfo:v18 traitCollection:*v16];

    *(v5 + 72) = v19;
    v20 = [v6 appearanceInfoWithType_];
    v21 = [objc_allocWithZone(ICThumbnailConfiguration) initForSmallQuickNoteWidgetWithNote:a1 appearanceInfo:v20 traitCollection:*v16];

    *(v5 + 80) = v21;
    v22 = (v5 + 88);
LABEL_8:
    v33 = [v6 appearanceInfoWithType_];
    v34 = [objc_allocWithZone(ICThumbnailConfiguration) initForSmallQuickNoteWidgetWithNote:a1 appearanceInfo:v33 traitCollection:*v16];

    *v22 = v34;
  }

  return v5;
}

unint64_t SystemPaperThumbnailService.updateIfNeeded(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v5 = sub_1D4419444();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1D4419484();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4419454();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch_group_create();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  result = sub_1D43EF0AC(a1);
  v13 = result;
  if (!(result >> 62))
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1D41766C0(0, &qword_1EDE33D70);
    v20 = v31;
    v19 = v32;
    v21 = v33;
    (*(v32 + 104))(v31, *MEMORY[0x1E69E7FA0], v33);
    v22 = sub_1D441A324();
    (*(v19 + 8))(v20, v21);
    v23 = swift_allocObject();
    v23[2] = v11;
    v23[3] = a1;
    v25 = v34;
    v24 = v35;
    v23[4] = v34;
    v23[5] = v24;
    aBlock[4] = sub_1D43F99F8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D417BEE4;
    aBlock[3] = &block_descriptor_27;
    v26 = _Block_copy(aBlock);
    v27 = a1;

    sub_1D417C7B4(v25);
    v28 = v36;
    sub_1D4419464();
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D418D62C(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
    v29 = v38;
    v30 = v41;
    sub_1D441A814();
    sub_1D441A244();
    _Block_release(v26);

    (*(v40 + 8))(v29, v30);
    (*(v37 + 8))(v28, v39);
  }

  result = sub_1D441A8C4();
  v14 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA6D6410](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      dispatch_group_enter(v10);

      v18 = v10;
      sub_1D43F9290(a1, v17, v3, v11, v18);
    }

    while (v14 != v15);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1D43EFC48(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  LOBYTE(a1) = *(a2 + 16) | (a1 != 0);
  swift_beginAccess();
  *(a2 + 16) = a1 & 1;
  dispatch_group_leave(a3);
}

void sub_1D43EFCC8(uint64_t a1, void *a2, void (*a3)(void))
{
  swift_beginAccess();
  if (*(a1 + 16) == 1 && a2 != 0)
  {
    v7 = [a2 objectID];
    if (v7)
    {
      v8 = v7;
      if (qword_1EDE32CB8 != -1)
      {
        swift_once();
      }

      v9 = sub_1D44181B4();
      __swift_project_value_buffer(v9, qword_1EDE32CC0);
      v10 = v8;
      v11 = sub_1D44181A4();
      v12 = sub_1D441A154();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v10;
        *v14 = v8;
        v15 = v10;
        _os_log_impl(&dword_1D4171000, v11, v12, "Updated System Paper thumbnails {objectID: %@}", v13, 0xCu);
        sub_1D41769C4(v14, &qword_1EC7C9918);
        MEMORY[0x1DA6D8690](v14, -1, -1);
        MEMORY[0x1DA6D8690](v13, -1, -1);
        v10 = v11;
        v11 = v15;
      }
    }
  }

  if (a3)
  {
    a3();
  }
}

void SystemPaperThumbnailService.updateIfNeeded(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v58 = a2;
  v6 = sub_1D4419444();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D4419484();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D4419454();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = v10;
  SystemPaperThumbnailService.updateIfNeeded(for:completion:)(0, sub_1D43FA1CC, v11);

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    sub_1D41766C0(0, &qword_1EDE32440);
    sub_1D4333044(&qword_1EDE32438, &qword_1EDE32440);
    sub_1D441A0A4();
    a1 = v78;
    v13 = v79;
    v15 = v80;
    v14 = v81;
    v16 = v82;
  }

  else
  {
    v17 = -1 << *(a1 + 32);
    v13 = a1 + 56;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(a1 + 56);

    v14 = 0;
  }

  v54 = v15;
  v20 = (v15 + 64) >> 6;
  v66 = &v74;
  v67 = "ailDescription8";
  v69 = v12;
  v70 = v4;
  v68 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v26 = sub_1D441A8F4();
  if (!v26 || (v71 = v26, sub_1D41766C0(0, &qword_1EDE32440), swift_dynamicCast(), v25 = aBlock, v23 = v14, v24 = v16, !aBlock))
  {
LABEL_27:
    sub_1D419FA48();
    sub_1D41766C0(0, &qword_1EDE33D70);
    v43 = v56;
    v44 = v55;
    v45 = v57;
    (*(v56 + 104))(v55, *MEMORY[0x1E69E7FA0], v57);
    v46 = sub_1D441A324();
    (*(v43 + 8))(v44, v45);
    v47 = swift_allocObject();
    v48 = v58;
    v47[2] = v4;
    v47[3] = v48;
    v47[4] = v59;
    v76 = sub_1D43F9A04;
    v77 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1D417BEE4;
    v75 = &block_descriptor_12_2;
    v49 = _Block_copy(&aBlock);
    v50 = v4;
    sub_1D417C7B4(v48);
    v51 = v60;
    sub_1D4419464();
    v71 = MEMORY[0x1E69E7CC0];
    sub_1D418D62C(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
    v52 = v62;
    v53 = v65;
    sub_1D441A814();
    sub_1D441A244();
    _Block_release(v49);

    (*(v64 + 8))(v52, v53);
    (*(v61 + 8))(v51, v63);

    return;
  }

  while (1)
  {
    if ([v25 isEmpty])
    {

      goto LABEL_10;
    }

    if (([v25 isDeletedOrInTrash] & 1) == 0)
    {
      dispatch_group_enter(v12);
      v33 = swift_allocObject();
      *(v33 + 16) = v12;
      v34 = v12;
      v35 = v25;
      SystemPaperThumbnailService.updateIfNeeded(for:completion:)(v25, sub_1D43F9A10, v33);

LABEL_10:
      v14 = v23;
      v16 = v24;
      if (a1 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v27 = v25;
    SystemPaperThumbnailService.immediatelyClearPaperSystemPaperPreview()();
    v28 = [v27 identifier];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1D4419C54();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v36 = objc_opt_self();
    v37 = sub_1D4419C14();
    v38 = swift_allocObject();
    v39 = v70;
    v38[2] = v70;
    v38[3] = v30;
    v38[4] = v32;
    v76 = sub_1D43F9A18;
    v77 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v73 = 1107296256;
    v74 = sub_1D43239B0;
    v75 = &block_descriptor_21_2;
    v40 = _Block_copy(&aBlock);
    v41 = v39;

    [v36 sharedPerformCriticalBackgroundActivityWithReason:v37 block:v40];
    v42 = v40;
    v4 = v39;
    _Block_release(v42);

    v14 = v23;
    v16 = v24;
    a1 = v68;
    v12 = v69;
    if (v68 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v21 = v14;
    v22 = v16;
    v23 = v14;
    if (!v16)
    {
      break;
    }

LABEL_15:
    v24 = (v22 - 1) & v22;
    v25 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_27;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_27;
    }

    v22 = *(v13 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

{
  v7 = objc_opt_self();
  v8 = sub_1D4419C14();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v12[4] = sub_1D43F9A64;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D43239B0;
  v12[3] = &block_descriptor_40_1;
  v10 = _Block_copy(v12);
  v11 = v3;
  sub_1D417C7B4(a2);

  [v7 sharedPerformCriticalBackgroundActivityWithReason:v8 block:v10];
  _Block_release(v10);
}