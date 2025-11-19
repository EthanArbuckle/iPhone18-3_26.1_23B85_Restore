id sub_1B639E778(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_1B639E7FC(char *a1, int64_t a2, char a3)
{
  result = sub_1B639E83C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B639E81C(void *a1, int64_t a2, char a3)
{
  result = sub_1B639E948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B639E83C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943700, &unk_1B63C3EE0);
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

void *sub_1B639E948(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9430B0, &unk_1B63C3EC0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1B639EA7C(char *a1, uint64_t a2, char *a3)
{
  v6 = OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy;
  *(v3 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy) = 0;
  if (a3)
  {
    v7 = *&a3[OBJC_IVAR____TtC8MapsSync18MapsSyncExpression_expression];
    v16 = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
    *&v15 = v7;
    v9 = a3;
    v10 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1B62B1E6C(0, *(a1 + 2) + 1, 1, a1);
    }

    v12 = *(a1 + 2);
    v11 = *(a1 + 3);
    if (v12 >= v11 >> 1)
    {
      a1 = sub_1B62B1E6C((v11 > 1), v12 + 1, 1, a1);
    }

    *(a1 + 2) = v12 + 1;
    sub_1B628E928(&v15, &a1[32 * v12 + 32]);
  }

  *(v3 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToFetch) = a1;
  v13 = *(v3 + v6);
  *(v3 + v6) = a2;

  return sub_1B62895F4(0, 0, 0);
}

unint64_t sub_1B639EBAC()
{
  result = qword_1EB943638;
  if (!qword_1EB943638)
  {
    sub_1B63BE994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943638);
  }

  return result;
}

uint64_t sub_1B639EC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943628, &unk_1B63C6860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MapsSyncDateRange()
{
  result = qword_1EB9436B0;
  if (!qword_1EB9436B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B639ECC0(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B639ECD0(unint64_t result)
{
  if (result > 0xF)
  {
    return 0;
  }

  return result;
}

id sub_1B639ECE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v7 setExpression_];
  v8 = v7;
  v9 = sub_1B63BEBC4();

  [v8 setName_];

  [v8 setExpressionResultType_];
  *&v4[OBJC_IVAR____TtC8MapsSync18MapsSyncExpression_expression] = v8;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for MapsSyncExpression();
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1B639EE1C()
{
  result = qword_1EB9436A0;
  if (!qword_1EB9436A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9436A0);
  }

  return result;
}

unint64_t sub_1B639EE74()
{
  result = qword_1EB9436A8;
  if (!qword_1EB9436A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9436A8);
  }

  return result;
}

id keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_1B639EFC8()
{
  sub_1B639F084();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B639F084()
{
  if (!qword_1EB9436C0)
  {
    sub_1B63BE994();
    sub_1B639EBAC();
    v0 = sub_1B63BED84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB9436C0);
    }
  }
}

void sub_1B639F524(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v58 = *MEMORY[0x1E69E9840];
  v52 = MEMORY[0x1E69E7CC0];
  *&v53 = a2;
  *(&v53 + 1) = a3;

  v12 = MEMORY[0x1E69E6158];
  v13 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v55 = 0u;
  }

  v56 = v53;
  v57 = v55;
  if (!*(&v55 + 1))
  {
    sub_1B62B0364(&v56);
    goto LABEL_40;
  }

  v14 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    v45 = *MEMORY[0x1E69E9840];
    return;
  }

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B63C3D80;
  *(v15 + 56) = v12;
  v48 = sub_1B6281318();
  *(v15 + 64) = v48;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 96) = v14;
  v16 = sub_1B634E7B8();
  *(v15 + 104) = v16;
  *(v15 + 72) = v51;

  v49 = v51;
  sub_1B63BED94();
  MEMORY[0x1B8C92370]();
  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B63BECC4();
  }

  sub_1B63BECE4();
  *&v54 = a4;
  *(&v54 + 1) = a5;

  v17 = MEMORY[0x1E69E6158];
  v18 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v19 = v6;
  v56 = v54;
  v57 = v55;
  if (!*(&v55 + 1))
  {
    sub_1B62B0364(&v56);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B63C3D80;
  *(v20 + 56) = v17;
  *(v20 + 64) = v48;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 96) = v14;
  *(v20 + 104) = v16;
  *(v20 + 72) = v51;

  v21 = v51;
  sub_1B63BED94();
  MEMORY[0x1B8C92370]();
  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    sub_1B63BECE4();

LABEL_17:
    v22 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v23 = sub_1B63BEBC4();
    v24 = [v22 initWithEntityName_];

    v25 = sub_1B63BEC94();

    v26 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v24 setPredicate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B63C3D70;
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    swift_getKeyPath();
    *(v27 + 32) = sub_1B63BEDE4();
    v28 = sub_1B63BEC94();

    [v24 setSortDescriptors_];

    type metadata accessor for MapsSyncManagedCachedMapItemStorage();
    v29 = sub_1B63BEEA4();
    if (v19)
    {
      goto LABEL_38;
    }

    v19 = v29;
    v30 = v29 >> 62;
    if (!(v29 >> 62))
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v31 != 0;
      if (v31 < v21)
      {
        goto LABEL_46;
      }

      goto LABEL_20;
    }

    v47 = sub_1B63BF044();
    if (v47 < 0)
    {
      break;
    }

    v31 = v47;
    v21 = v47 != 0;
    if (sub_1B63BF044() < v21)
    {
      goto LABEL_46;
    }

    if (sub_1B63BF044() < v31)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_20:
    if ((v19 & 0xC000000000000001) != 0)
    {

      if (v31 >= 2)
      {
        v32 = v21;
        do
        {
          v33 = v32 + 1;
          sub_1B63BF134();
          v32 = v33;
        }

        while (v31 != v33);
      }

      if (!v30)
      {
LABEL_25:
        v34 = (v19 & 0xFFFFFFFFFFFFFF8) + 32;
        v35 = __OFSUB__(v31, v21);
        v37 = v31 - v21;
        v36 = (v37 < 0) ^ v35 | (v37 == 0);
        if (!v37)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }

    else
    {

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    sub_1B63BF2C4();
    v21 = v38;
    v37 = (v39 >> 1) - v38;
    v36 = (v39 >> 1) <= v38;
    if (v39 >> 1 == v38)
    {
      goto LABEL_32;
    }

LABEL_29:
    if (v36)
    {
      __break(1u);
    }

    v40 = (v34 + 8 * v21);
    do
    {
      v41 = *v40++;
      [a6 deleteObject_];
      --v37;
    }

    while (v37);
LABEL_32:
    swift_unknownObjectRelease();
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    *&v56 = 0x20646567727550;
    *(&v56 + 1) = 0xE700000000000000;
    if (v30)
    {
      v21 = sub_1B63BF044();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFSUB__(v21, 1))
    {
      v42 = sub_1B63BF344();
      MEMORY[0x1B8C92330](v42);

      MEMORY[0x1B8C92330](0xD000000000000027, 0x80000001B63CC370);
      _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v56, *(&v56 + 1));

      *&v56 = 0;
      if ([a6 save_])
      {
        v43 = v56;
LABEL_38:
        v44 = v49;
      }

      else
      {
        v46 = v56;
        sub_1B63BE824();

        swift_willThrow();
        v44 = v24;
        v24 = v49;
      }

      goto LABEL_40;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    sub_1B63BECC4();
  }

  __break(1u);
}

void sub_1B639FCD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  *&v58 = a6;
  *(&v58 + 1) = a7;
  v68 = *MEMORY[0x1E69E9840];
  v61 = MEMORY[0x1E69E7CC0];
  *&v62 = a2;
  *(&v62 + 1) = a3;

  v15 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v65 = 0u;
  }

  v66 = v62;
  v67 = v65;
  if (!*(&v65 + 1))
  {
    sub_1B62B0364(&v66);
    goto LABEL_49;
  }

  v16 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v52 = *MEMORY[0x1E69E9840];
    return;
  }

  v57 = a8;
  *&v63 = a4;
  *(&v63 + 1) = a5;

  v17 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v65 = 0u;
  }

  v66 = v63;
  v67 = v65;
  if (!*(&v65 + 1))
  {

    sub_1B62B0364(&v66);
    goto LABEL_49;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_49;
  }

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B63C5270;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1B6281318();
  *(v18 + 64) = v19;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 96) = v16;
  v20 = sub_1B634E7B8();
  *(v18 + 72) = v59;
  *(v18 + 136) = MEMORY[0x1E69E6158];
  *(v18 + 144) = v19;
  *(v18 + 104) = v20;
  *(v18 + 112) = a4;
  *(v18 + 120) = a5;
  *(v18 + 176) = v16;
  *(v18 + 184) = v20;
  *(v18 + 152) = v59;

  v56 = v59;
  v21 = v59;
  sub_1B63BED94();
  MEMORY[0x1B8C92370]();
  if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v53 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B63BECC4();
  }

  sub_1B63BECE4();
  v64 = v58;

  v22 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  if (!*(&v65 + 1))
  {
    sub_1B62B0364(&v66);
    goto LABEL_24;
  }

  v23 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B63C3D80;
  *(v24 + 56) = v23;
  *(v24 + 64) = v19;
  *(v24 + 32) = v58;
  *(v24 + 96) = v23;
  *(v24 + 104) = v19;
  *(v24 + 72) = v59;
  *(v24 + 80) = v60;

  sub_1B63BED94();
  MEMORY[0x1B8C92370]();
  if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    sub_1B63BECE4();
LABEL_24:
    v25 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v26 = sub_1B63BEBC4();
    v27 = [v25 initWithEntityName_];

    v28 = sub_1B63BEC94();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v27 setPredicate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B63C3D70;
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    swift_getKeyPath();
    *(v30 + 32) = sub_1B63BEDE4();
    v31 = sub_1B63BEC94();

    [v27 setSortDescriptors_];

    type metadata accessor for MapsSyncManagedCachedMapItemStorage();
    v32 = sub_1B63BEEA4();
    if (v8)
    {
      v33 = v56;
      v34 = v27;
LABEL_48:

      goto LABEL_49;
    }

    v35 = v32;
    v36 = v32 >> 62;
    if (!(v32 >> 62))
    {
      v37 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v37 != 0;
      if (v37 < v38)
      {
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    v54 = sub_1B63BF044();
    if (v54 < 0)
    {
      break;
    }

    v37 = v54;
    v38 = v54 != 0;
    if (sub_1B63BF044() < v38)
    {
      goto LABEL_54;
    }

    if (sub_1B63BF044() < v37)
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_28:
    if ((v35 & 0xC000000000000001) != 0)
    {

      if (v37 >= 2)
      {
        v39 = v38;
        do
        {
          v40 = v39 + 1;
          sub_1B63BF134();
          v39 = v40;
        }

        while (v37 != v40);
      }
    }

    else
    {
    }

    if (v36)
    {

      sub_1B63BF2C4();
      v38 = v42;
      v37 = v43 >> 1;
    }

    else
    {
      v41 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v44 = __OFSUB__(v37, v38);
    v45 = v37 - v38;
    if (v45)
    {
      if ((v45 < 0) ^ v44 | (v45 == 0))
      {
        __break(1u);
      }

      v46 = (v41 + 8 * v38);
      do
      {
        v47 = *v46++;
        [v57 deleteObject_];
        --v45;
      }

      while (v45);
    }

    swift_unknownObjectRelease();
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    *&v66 = 0x20646567727550;
    *(&v66 + 1) = 0xE700000000000000;
    if (v36)
    {
      v48 = sub_1B63BF044();
    }

    else
    {
      v48 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v56;

    if (!__OFSUB__(v48, 1))
    {
      v49 = sub_1B63BF344();
      MEMORY[0x1B8C92330](v49);

      MEMORY[0x1B8C92330](0xD000000000000027, 0x80000001B63CC370);
      _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v66, *(&v66 + 1));

      *&v66 = 0;
      if ([v57 save_])
      {
        v50 = v66;

        goto LABEL_49;
      }

      v51 = v66;
      sub_1B63BE824();

      swift_willThrow();
      v33 = v27;
      goto LABEL_48;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    sub_1B63BECC4();
  }

  __break(1u);
}

uint64_t sub_1B63A064C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CachedMapItemStorageRequest();
  v7 = objc_allocWithZone(v6);
  v8 = type metadata accessor for CachedMapItemStorage();
  *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = a1;
  *&v7[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v8;
  v9 = type metadata accessor for MapsSyncRequest();
  v58.receiver = v7;
  v58.super_class = v9;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v58, sel_init);
  v12 = a2;
  sub_1B63B3BCC(1684632941, 0xE400000000000000, v12, &unk_1F2DA56A8, v11, 1684632941, 0xE400000000000000, 0x5073746C75736572, 0xEF72656469766F72, v12);

  result = sub_1B63A0E84(&unk_1F2DA56C8);
  if (!v2)
  {
    v14 = objc_allocWithZone(v6);
    *&v14[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = v10;
    *&v14[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v8;
    v57.receiver = v14;
    v57.super_class = v9;
    v15 = v10;
    v52 = objc_msgSendSuper2(&v57, sel_init);
    (*(*&v52[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] + 544))();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = v12;
    v17 = [ObjCClassFromMetadata entityName];
    if (!v17)
    {
      sub_1B63BEBD4();
      v17 = sub_1B63BEBC4();
    }

    v18 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

    [v18 setResultType_];
    v19 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) &selRef_version];
    v20 = sub_1B63BEBC4();
    [v19 setName_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B63C3D50;
    v22 = sub_1B63BEBC4();
    v23 = objc_opt_self();
    v24 = [v23 expressionForKeyPath_];

    *(v21 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
    *(v21 + 32) = v24;
    v25 = sub_1B63BEBC4();
    v26 = sub_1B63BEC94();

    v27 = v23;
    v28 = 0x656475746974616CLL;
    v29 = [v27 expressionForFunction:v25 arguments:v26];

    [v19 setExpression_];
    [v19 setExpressionResultType_];
    sub_1B639C584(&unk_1F2DA5718);
    sub_1B639CA54(&unk_1F2DA56D8);

    v30 = sub_1B63BEC94();

    [v18 setPropertiesToGroupBy_];

    v31 = sub_1B639CA54(&unk_1F2DA56D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D80;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 32) = 0x656475746974616CLL;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
    *(inited + 64) = v19;
    *&v56[0] = v31;
    v33 = v19;
    sub_1B639C48C(inited);
    v34 = sub_1B63BEC94();

    [v18 setPropertiesToFetch_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B63C3D70;
    v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v37 = sub_1B63BEBC4();
    v38 = [v36 initWithKey:v37 ascending:0];

    *(v35 + 32) = v38;
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    v39 = sub_1B63BEC94();

    [v18 setSortDescriptors_];

    sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
    v40 = v53;
    v41 = sub_1B63BEEA4();
    v42 = v41;
    v51 = v33;
    if (v41 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
    {
      v50 = v18;
      v44 = 0;
      while (1)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x1B8C92830](v44, v42);
        }

        else
        {
          if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v45 = *(v42 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v18 = v42;
        v40 = v3;
        v48 = v28;
        *&v54 = 0x746E756F63;
        *(&v54 + 1) = 0xE500000000000000;
        v49 = [v45 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v49)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
        }

        v28 = v48;
        v56[0] = v54;
        v56[1] = v55;
        v3 = v40;
        if (*(&v55 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v59 < 2)
            {

              v40 = v52;
              v18 = v51;
              v52 = v50;
              goto LABEL_28;
            }

            sub_1B639FCD8(v46, v28, 0xE800000000000000, 0x64757469676E6F6CLL, 0xE900000000000065, 0x614E6D6F74737563, 0xEA0000000000656DLL, v53);
          }
        }

        else
        {

          sub_1B62B0364(v56);
        }

        ++v44;
        if (v47 == i)
        {
          v18 = v50;
          v46 = v51;
          v40 = v53;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v46 = v51;
LABEL_28:

    return swift_arrayDestroy();
  }

  return result;
}

id sub_1B63A0F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedRAPRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63A0F88@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCommunityID();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

id sub_1B63A1024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryMarkedLocation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63A1058@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedServerEvaluationStatus();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

id sub_1B63A109C()
{
  result = [objc_allocWithZone(type metadata accessor for MapsSyncKeyedStore()) init];
  qword_1EB942FA0 = result;
  return result;
}

id static MapsSyncKeyedStore.shared.getter()
{
  if (qword_1EB942F98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB942FA0;

  return v1;
}

double sub_1B63A123C@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1B63BEF84();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_1B63A12D8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *&a1[OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store];
  v5 = a1;
  if ([v4 objectForKey_])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {

    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  v6 = *(&v15 + 1);
  if (*(&v15 + 1))
  {
    v7 = __swift_project_boxed_opaque_existential_0(&v16, *(&v17 + 1));
    v8 = *(*(&v15 + 1) - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1B63BF354();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_1B63A1468()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v2 = sub_1B63BEBC4();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B63BEBD4();

  return v4;
}

uint64_t sub_1B63A159C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v2 = sub_1B63BEBC4();
  v3 = [v1 arrayForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B63BECA4();

  return v4;
}

uint64_t sub_1B63A16D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v2 = sub_1B63BEBC4();
  v3 = [v1 dictionaryForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B63BEB74();

  return v4;
}

uint64_t sub_1B63A183C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v2 = sub_1B63BEBC4();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1B63BE924();

  return v4;
}

id sub_1B63A1974()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v2 = sub_1B63BEBC4();
  v3 = [v1 longLongForKey_];

  return v3;
}

double sub_1B63A19DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v2 = sub_1B63BEBC4();
  [v1 doubleForKey_];
  v4 = v3;

  return v4;
}

id sub_1B63A1A4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v2 = sub_1B63BEBC4();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_1B63A1B78()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store) dictionaryRepresentation];
  v2 = sub_1B63BEB74();

  return v2;
}

id sub_1B63A1BE4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  sub_1B634C588(a1, v12);
  v3 = v13;
  if (v13)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_1B63BF354();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1B63BEBC4();
  [v2 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  return [v2 synchronize];
}

uint64_t sub_1B63A1D60(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a4;
    v7 = a1;
    swift_unknownObjectRetain();
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v8 = a4;
    v9 = a1;
  }

  sub_1B63BEBD4();

  sub_1B63A1BE4(v11);

  return sub_1B62B0364(v11);
}

id sub_1B63A1E08(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  if (a2)
  {
    v4 = sub_1B63BEBC4();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1B63BEBC4();
  [v3 setString:v4 forKey:v5];

  return [v3 synchronize];
}

id sub_1B63A1F7C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B63BE904();
  }

  v5 = sub_1B63BEBC4();
  [v3 setData:v4 forKey:v5];

  return [v3 synchronize];
}

id sub_1B63A212C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  if (a1)
  {
    v3 = sub_1B63BEC94();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1B63BEBC4();
  [v2 setArray:v3 forKey:v4];

  return [v2 synchronize];
}

id sub_1B63A22B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  if (a1)
  {
    v3 = sub_1B63BEB54();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1B63BEBC4();
  [v2 setDictionary:v3 forKey:v4];

  return [v2 synchronize];
}

id sub_1B63A2478(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  [v3 setLongLong:a1 forKey:v4];

  return [v3 synchronize];
}

id sub_1B63A2584(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  [v3 setDouble:v4 forKey:a1];

  return [v3 synchronize];
}

id sub_1B63A2688(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v4 = sub_1B63BEBC4();
  [v3 setBool:a1 & 1 forKey:v4];

  return [v3 synchronize];
}

id sub_1B63A2794()
{
  v1 = *(v0 + OBJC_IVAR____TtC8MapsSync18MapsSyncKeyedStore_store);
  v2 = sub_1B63BEBC4();
  [v1 removeObjectForKey_];

  return [v1 synchronize];
}

id MapsSyncKeyedStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncKeyedStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B63A2DE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistorySearchItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63A2E3C(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1B63BF044();
    sub_1B63BF184();
    v3 = sub_1B63BF044();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B63BF184();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8C92830](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MapsSyncManagedContactHandle();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1B63BF164();
        v7 = *(v9 + 16);
        sub_1B63BF194();
        sub_1B63BF1A4();
        sub_1B63BF174();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_1B63A2FAC(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1B63BF044();
    sub_1B63BF184();
    v3 = sub_1B63BF044();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B63BF184();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8C92830](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1B63BF164();
        v7 = *(v9 + 16);
        sub_1B63BF194();
        sub_1B63BF1A4();
        sub_1B63BF174();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_1B63A3120(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B639E81C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B629E3F0(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943550, qword_1B63C6340);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B639E81C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B63A3248(unint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_1B63BF184();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8C92830](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for MapsSyncManagedFavoriteItem();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_1B63BF164();
      v8 = *(v10 + 16);
      sub_1B63BF194();
      sub_1B63BF1A4();
      sub_1B63BF174();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1B63BF044();
    sub_1B63BF184();
  }

  return v10;
}

uint64_t sub_1B63A33AC(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = sub_1B63BE994();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = sub_1B63BEBC4();
  v21 = [v19 valueForKey_];

  if (v21)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (*(&v41 + 1))
  {
    v37 = v15;
    v38 = v17;
    v22 = swift_dynamicCast();
    v23 = v11[7];
    v23(v9, v22 ^ 1u, 1, v10);
    v24 = v11[6];
    if (v24(v9, 1, v10) != 1)
    {
      v36 = v23;
      v25 = v9;
      v26 = v11[4];
      v26(v38, v25, v10);
      v27 = sub_1B63BEBC4();
      v28 = [v18 valueForKey_];

      if (v28)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v30 = v39;
      v42 = v40;
      v43 = v41;
      if (*(&v41 + 1))
      {
        v31 = swift_dynamicCast();
        v36(v30, v31 ^ 1u, 1, v10);
        if (v24(v30, 1, v10) != 1)
        {
          v32 = v37;
          v26(v37, v30, v10);
          v33 = v38;
          v29 = sub_1B63BE964();
          v34 = v11[1];
          v34(v32, v10);
          v34(v33, v10);
          return v29 & 1;
        }
      }

      else
      {
        sub_1B6284EAC(&v42, &unk_1EB943740, &qword_1B63C5030);
        v36(v30, 1, 1, v10);
      }

      (v11[1])(v38, v10);
      sub_1B6284EAC(v30, &unk_1EB943210, &unk_1B63C3F50);
      v29 = 0;
      return v29 & 1;
    }
  }

  else
  {
    sub_1B6284EAC(&v42, &unk_1EB943740, &qword_1B63C5030);
    (v11[7])(v9, 1, 1, v10);
  }

  sub_1B6284EAC(v9, &unk_1EB943210, &unk_1B63C3F50);
  v29 = 1;
  return v29 & 1;
}

unint64_t sub_1B63A38A0(void *a1)
{
  v116 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v110 = &v92 - v4;
  v5 = sub_1B63BEA04();
  v108 = *(v5 - 8);
  v6 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v109 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B63BEBC4();
  v9 = objc_opt_self();
  v10 = [v9 expressionForKeyPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v11 = swift_allocObject();
  v117 = xmmword_1B63C3D50;
  *(v11 + 16) = xmmword_1B63C3D50;
  *(v11 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
  *(v11 + 32) = v10;
  v12 = v10;
  v13 = sub_1B63BEBC4();
  v14 = sub_1B63BEC94();

  v15 = [v9 expressionForFunction:v13 arguments:v14];

  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v17 setExpression_];
  v18 = v17;
  v19 = sub_1B63BEBC4();
  [v18 setName_];

  (*(v1 + 544))([v18 setExpressionResultType_]);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [ObjCClassFromMetadata entity];
  v21 = [v20 name];

  if (!v21)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v111 = v16;
  v113 = v12;
  v107 = v5;
  v22 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v22 setReturnsObjectsAsFaults_];
  v23 = swift_allocObject();
  *(v23 + 16) = v117;
  v24 = MEMORY[0x1E69E6158];
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 32) = 0x696669746E656469;
  *(v23 + 40) = 0xEA00000000007265;
  v25 = sub_1B63BEC94();

  [v22 setPropertiesToGroupBy_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B63C3D80;
  *(v26 + 56) = v24;
  *(v26 + 32) = 0x696669746E656469;
  *(v26 + 40) = 0xEA00000000007265;
  *(v26 + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
  *(v26 + 64) = v18;
  v27 = v18;
  v28 = sub_1B63BEC94();

  [v22 setPropertiesToFetch_];

  [v22 setResultType_];
  v29 = sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v30 = sub_1B63BED94();
  [v22 setPredicate_];

  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = swift_allocObject();
  v33 = v116;
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v22;

  v34 = v33;
  v35 = v22;
  v36 = 0;
  MapsSyncCatchObjC(_:)(sub_1B63A487C, v32);

  v103 = v34;
  v102 = v35;
  v104 = "per.ubiquity-kvstore-identifier";
  swift_beginAccess();
  v37 = v113;
  if (!*(v31 + 16) || (v38 = , v39 = sub_1B63A3120(v38), , !v39))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v94 = v31;
  v101 = v29;
  v95 = v27;
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v39 + 32;
    v106 = MEMORY[0x1E69E7CC0];
    v42 = v107;
    do
    {
      v43 = *v41;
      if (*(*v41 + 16))
      {
        v44 = *v41;

        v45 = sub_1B6380EF4(0x746E756F63, 0xE500000000000000);
        if (v46 & 1) != 0 && (sub_1B629E3F0(*(v43 + 56) + 32 * v45, &v119), (swift_dynamicCast()) && v118 >= 2)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_1B62B24C0(0, v106[2] + 1, 1, v106);
          }

          v48 = v106[2];
          v47 = v106[3];
          if (v48 >= v47 >> 1)
          {
            v106 = sub_1B62B24C0((v47 > 1), v48 + 1, 1, v106);
          }

          v49 = v106;
          v106[2] = v48 + 1;
          v49[v48 + 4] = v43;
          v42 = v107;
        }

        else
        {
        }
      }

      v41 += 8;
      --v40;
    }

    while (v40);
  }

  else
  {
    v106 = MEMORY[0x1E69E7CC0];
    v42 = v107;
  }

  v51 = v106;
  v116 = v106[2];
  if (v116)
  {
    v52 = 0;
    v114 = (v108 + 56);
    v115 = v106 + 4;
    v105 = (v108 + 48);
    v99 = (v108 + 32);
    v97 = (v108 + 8);
    v93 = 0x80000001B63CC540;
    v98 = xmmword_1B63C4B90;
    v100 = MEMORY[0x1E69E7CC0];
    v53 = v109;
    v54 = v110;
    while (1)
    {
      if (v52 >= v51[2])
      {
LABEL_68:
        __break(1u);
        return result;
      }

      v55 = v115[v52];
      if (!*(v55 + 16))
      {
        goto LABEL_25;
      }

      v56 = v115[v52];

      v57 = sub_1B6380EF4(0x696669746E656469, 0xEA00000000007265);
      if ((v58 & 1) == 0)
      {
        break;
      }

      sub_1B629E3F0(*(v55 + 56) + 32 * v57, &v119);

      v59 = swift_dynamicCast();
      (*v114)(v54, v59 ^ 1u, 1, v42);
      if ((*v105)(v54, 1, v42) == 1)
      {
        goto LABEL_26;
      }

      (*v99)(v53, v54, v42);
      v60 = [ObjCClassFromMetadata fetchRequest];
      v108 = v36;
      v61 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
      v62 = swift_allocObject();
      *(v62 + 16) = v117;
      v63 = sub_1B63BE9C4();
      *(v62 + 56) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
      *(v62 + 64) = sub_1B63A489C();
      *(v62 + 32) = v63;
      v64 = sub_1B63BED94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
      v65 = swift_allocObject();
      *(v65 + 16) = v98;
      v66 = v64;
      *(v65 + 32) = sub_1B63BED94();
      *(v65 + 40) = v66;
      v67 = objc_allocWithZone(MEMORY[0x1E696AB28]);
      v68 = v66;
      v69 = v53;
      v70 = sub_1B63BEC94();

      v71 = v67;
      v72 = v61;
      v73 = [v71 initWithType:1 subpredicates:v70];

      [v61 setPredicate_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
      v74 = v108;
      result = sub_1B63BEEA4();
      if (!v74)
      {
        v75 = result;
        v108 = 0;
        v96 = v72;
        v76 = MEMORY[0x1E69E7CC0];
        v119 = MEMORY[0x1E69E7CC0];
        v77 = result & 0xFFFFFFFFFFFFFF8;
        if (result >> 62)
        {
          result = sub_1B63BF044();
          v78 = result;
          if (result)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v78 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v78)
          {
LABEL_36:
            v79 = 0;
            do
            {
              v80 = v79;
              while (1)
              {
                if ((v75 & 0xC000000000000001) != 0)
                {
                  result = MEMORY[0x1B8C92830](v80, v75);
                  v79 = v80 + 1;
                  if (__OFADD__(v80, 1))
                  {
                    goto LABEL_66;
                  }
                }

                else
                {
                  if (v80 >= *(v77 + 16))
                  {
                    goto LABEL_67;
                  }

                  v81 = *(v75 + 8 * v80 + 32);
                  result = swift_unknownObjectRetain();
                  v79 = v80 + 1;
                  if (__OFADD__(v80, 1))
                  {
LABEL_66:
                    __break(1u);
LABEL_67:
                    __break(1u);
                    goto LABEL_68;
                  }
                }

                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  break;
                }

                result = swift_unknownObjectRelease();
                ++v80;
                if (v79 == v78)
                {
                  goto LABEL_52;
                }
              }

              MEMORY[0x1B8C92370]();
              if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v82 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1B63BECC4();
              }

              result = sub_1B63BECE4();
              v76 = v119;
            }

            while (v79 != v78);
          }
        }

LABEL_52:

        v54 = v110;
        if (v76 >> 62)
        {
          v83 = sub_1B63BF044();
        }

        else
        {
          v83 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v42 = v107;
        v53 = v109;
        v51 = v106;
        if (v83 >= 2)
        {
          v119 = 0;
          v120 = 0xE000000000000000;
          sub_1B63BF114();

          v119 = 0xD000000000000012;
          v120 = v93;
          v84 = sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
          v85 = MEMORY[0x1B8C923A0](v76, v84);
          MEMORY[0x1B8C92330](v85);

          _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v119, v120);

          v86 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_1B62B25E8(0, v86[2] + 1, 1, v86);
          }

          v88 = v86[2];
          v87 = v86[3];
          if (v88 >= v87 >> 1)
          {
            v100 = sub_1B62B25E8((v87 > 1), v88 + 1, 1, v86);
          }

          else
          {
            v100 = v86;
          }

          v89 = v107;
          result = (*v97)(v53, v107);
          v90 = v100;
          v100[2] = v88 + 1;
          v91 = &v90[v88];
          v42 = v89;
          v91[4] = v76;
          v51 = v106;
        }

        else
        {
          (*v97)(v109, v107);
        }

        v36 = v108;
        goto LABEL_27;
      }

      result = (*v97)(v69, v42);
      v36 = 0;
      v53 = v69;
      v51 = v106;
LABEL_27:
      if (++v52 == v116)
      {
        goto LABEL_65;
      }
    }

LABEL_25:
    (*v114)(v54, 1, 1, v42);
LABEL_26:
    result = sub_1B6284EAC(v54, &unk_1EB943680, qword_1B63C4070);
    goto LABEL_27;
  }

  v100 = MEMORY[0x1E69E7CC0];
LABEL_65:

  return v100;
}

unint64_t sub_1B63A475C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
  result = sub_1B63BEEA4();
  if (!v1)
  {
    v4 = sub_1B639CB54(result);

    swift_beginAccess();
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;
  }

  return result;
}

unint64_t sub_1B63A487C()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_1B63A475C(v0[2]);
}

unint64_t sub_1B63A489C()
{
  result = qword_1EB943730;
  if (!qword_1EB943730)
  {
    sub_1B6281C60(255, &qword_1EB943690, 0x1E696AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB943730);
  }

  return result;
}

uint64_t sub_1B63A4904(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B63BD8C4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B63A4980(v6);
  return sub_1B63BF174();
}

void sub_1B63A4980(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B63BF334();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
        v6 = sub_1B63BECD4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1B63A500C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B63A4A94(0, v2, 1, a1);
  }
}

void sub_1B63A4A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v46 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v39[-v12];
  v13 = sub_1B63BE994();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v44 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v39[-v18];
  v40 = a2;
  if (a3 != a2)
  {
    v52 = *a4;
    v53 = (v17 + 56);
    v50 = (v17 + 48);
    v48 = (v17 + 32);
    v45 = (v17 + 8);
    v19 = v52 + 8 * a3 - 8;
    v20 = a1 - a3;
LABEL_7:
    v43 = a3;
    v21 = *(v52 + 8 * a3);
    v41 = v20;
    v42 = v19;
    while (1)
    {
      v22 = *v19;
      v58 = v21;
      v23 = v22;
      v24 = sub_1B63BEBC4();
      v25 = [v23 valueForKey_];

      if (v25)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v56 = v54;
      v57 = v55;
      v26 = v51;
      if (!*(&v55 + 1))
      {
        break;
      }

      v27 = swift_dynamicCast();
      v28 = *v53;
      (*v53)(v26, v27 ^ 1u, 1, v13);
      v29 = *v50;
      if ((*v50)(v26, 1, v13) == 1)
      {
        goto LABEL_16;
      }

      v47 = *v48;
      v47(v49, v26, v13);
      v30 = sub_1B63BEBC4();
      v31 = [v58 valueForKey_];

      if (v31)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v32 = v46;
      v56 = v54;
      v57 = v55;
      if (!*(&v55 + 1))
      {
        sub_1B6284EAC(&v56, &unk_1EB943740, &qword_1B63C5030);
        v28(v32, 1, 1, v13);
LABEL_5:
        (*v45)(v49, v13);
        sub_1B6284EAC(v32, &unk_1EB943210, &unk_1B63C3F50);

LABEL_6:
        a3 = v43 + 1;
        v19 = v42 + 8;
        v20 = v41 - 1;
        if (v43 + 1 == v40)
        {
          return;
        }

        goto LABEL_7;
      }

      v33 = swift_dynamicCast();
      v28(v32, v33 ^ 1u, 1, v13);
      if (v29(v32, 1, v13) == 1)
      {
        goto LABEL_5;
      }

      v34 = v44;
      v47(v44, v32, v13);
      v35 = v49;
      LODWORD(v47) = sub_1B63BE964();
      v36 = *v45;
      (*v45)(v34, v13);
      v36(v35, v13);

      if ((v47 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_21:
      if (!v52)
      {
        __break(1u);
        return;
      }

      v37 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v37;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_6;
      }
    }

    sub_1B6284EAC(&v56, &unk_1EB943740, &qword_1B63C5030);
    (*v53)(v26, 1, 1, v13);
LABEL_16:
    sub_1B6284EAC(v26, &unk_1EB943210, &unk_1B63C3F50);

    goto LABEL_21;
  }
}

void sub_1B63A500C(char ***a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v6 = v5;
  v143 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v155 = &v138 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v145 = &v138 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v138 - v18;
  v162 = sub_1B63BE994();
  v19 = *(*(v162 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v162);
  v153 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v157 = &v138 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v140 = &v138 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v138 - v27;
  v28 = a3[1];
  if (v28 >= 1)
  {
    v29 = 0;
    v161 = (v26 + 56);
    v158 = (v26 + 32);
    v159 = (v26 + 48);
    v156 = (v26 + 8);
    v30 = MEMORY[0x1E69E7CC0];
    v149 = a3;
    v142 = a4;
    v154 = v13;
    while (1)
    {
      v31 = v29;
      v32 = v29 + 1;
      if (v29 + 1 >= v28)
      {
        v56 = &selRef_powerByConnector;
        goto LABEL_38;
      }

      v141 = v30;
      v4 = *a3;
      *&v166 = *(*a3 + 8 * v32);
      *&v164 = *(v4 + 8 * v29);
      v33 = v164;
      v34 = v166;
      v35 = v33;
      LODWORD(v160) = sub_1B63A33AC(&v166, &v164);
      if (v6)
      {

        return;
      }

      v32 = v29 + 2;
      if (v29 + 2 >= v28)
      {
        goto LABEL_29;
      }

      v139 = v29;
      v4 += 8 * v29 + 16;
      v36 = v146;
      v144 = 0;
      v152 = v28;
      do
      {
        v37 = v32;
        v38 = *(v4 - 8);
        v163 = *v4;
        v39 = v38;
        v40 = sub_1B63BEBC4();
        v41 = [v39 valueForKey_];

        if (v41)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v164 = 0u;
          v165 = 0u;
        }

        v166 = v164;
        v167 = v165;
        v32 = v37;
        if (!*(&v165 + 1))
        {
          sub_1B6284EAC(&v166, &unk_1EB943740, &qword_1B63C5030);
          (*v161)(v36, 1, 1, v162);
LABEL_9:
          sub_1B6284EAC(v36, &unk_1EB943210, &unk_1B63C3F50);

          a3 = v149;
          if ((v160 & 1) == 0)
          {
            v30 = v141;
            a4 = v142;
            v56 = &selRef_powerByConnector;
            v31 = v139;
            goto LABEL_38;
          }

          goto LABEL_10;
        }

        v42 = v162;
        v43 = swift_dynamicCast();
        v44 = *v161;
        (*v161)(v36, v43 ^ 1u, 1, v42);
        v45 = *v159;
        if ((*v159)(v36, 1, v42) == 1)
        {
          goto LABEL_9;
        }

        v46 = *v158;
        (*v158)(v147, v36, v162);
        v47 = sub_1B63BEBC4();
        v48 = [v163 valueForKey_];

        if (v48)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v164 = 0u;
          v165 = 0u;
        }

        v166 = v164;
        v167 = v165;
        v32 = v37;
        if (*(&v165 + 1))
        {
          v49 = v145;
          v50 = v162;
          v51 = swift_dynamicCast();
          v44(v49, v51 ^ 1u, 1, v50);
          if (v45(v49, 1, v50) != 1)
          {
            v52 = v140;
            v46(v140, v49, v50);
            v53 = v147;
            v54 = sub_1B63BE964();
            v55 = *v156;
            (*v156)(v52, v50);
            v55(v53, v50);
            v32 = v37;

            v6 = v144;
            a3 = v149;
            v36 = v146;
            if ((v160 ^ v54))
            {
              goto LABEL_28;
            }

            goto LABEL_10;
          }
        }

        else
        {
          sub_1B6284EAC(&v166, &unk_1EB943740, &qword_1B63C5030);
          v49 = v145;
          v50 = v162;
          v44(v145, 1, 1, v162);
        }

        (*v156)(v147, v50);
        sub_1B6284EAC(v49, &unk_1EB943210, &unk_1B63C3F50);

        v6 = v144;
        a3 = v149;
        v36 = v146;
        if (v160)
        {
          v30 = v141;
          a4 = v142;
          v56 = &selRef_powerByConnector;
          v31 = v139;
          goto LABEL_30;
        }

LABEL_10:
        ++v32;
        v4 += 8;
      }

      while (v152 != v32);
      v32 = v152;
LABEL_28:
      a4 = v142;
      v31 = v139;
LABEL_29:
      v30 = v141;
      v56 = &selRef_powerByConnector;
      if (v160)
      {
LABEL_30:
        if (v32 >= v31)
        {
          if (v31 < v32)
          {
            v57 = 8 * v32 - 8;
            v58 = 8 * v31;
            v59 = v32;
            v60 = v31;
            while (1)
            {
              if (v60 != --v59)
              {
                v61 = *a3;
                if (!*a3)
                {
                  goto LABEL_160;
                }

                v62 = *(v61 + v58);
                *(v61 + v58) = *(v61 + v57);
                *(v61 + v57) = v62;
              }

              ++v60;
              v57 -= 8;
              v58 += 8;
              if (v60 >= v59)
              {
                goto LABEL_38;
              }
            }
          }

          goto LABEL_38;
        }

LABEL_156:
        __break(1u);
LABEL_157:
        v133 = sub_1B63BCE9C(v4);
        goto LABEL_125;
      }

LABEL_38:
      v63 = a3[1];
      if (v32 >= v63)
      {
        goto LABEL_69;
      }

      if (__OFSUB__(v32, v31))
      {
        goto LABEL_153;
      }

      if (v32 - v31 >= a4)
      {
        goto LABEL_69;
      }

      v64 = v31 + a4;
      if (__OFADD__(v31, a4))
      {
        goto LABEL_154;
      }

      if (v64 >= v63)
      {
        v64 = a3[1];
      }

      v65 = v155;
      if (v64 < v31)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      if (v32 == v64)
      {
        goto LABEL_69;
      }

      v141 = v30;
      v144 = v6;
      v160 = *a3;
      v66 = (v160 + 8 * v32 - 8);
      v139 = v31;
      v67 = v31 - v32;
      v148 = v64;
      while (2)
      {
        v152 = v32;
        v68 = *(v160 + 8 * v32);
        v150 = v67;
        v151 = v66;
        while (2)
        {
          v4 = *v66;
          v163 = v68;
          v69 = v4;
          v70 = sub_1B63BEBC4();
          v71 = [v69 v56[127]];

          if (v71)
          {
            sub_1B63BEF84();
            swift_unknownObjectRelease();
          }

          else
          {
            v164 = 0u;
            v165 = 0u;
          }

          v166 = v164;
          v167 = v165;
          v72 = v162;
          if (!*(&v165 + 1))
          {
            sub_1B6284EAC(&v166, &unk_1EB943740, &qword_1B63C5030);
            (*v161)(v65, 1, 1, v72);
LABEL_59:
            sub_1B6284EAC(v65, &unk_1EB943210, &unk_1B63C3F50);

            goto LABEL_64;
          }

          v73 = swift_dynamicCast();
          v74 = *v161;
          (*v161)(v65, v73 ^ 1u, 1, v72);
          v4 = *v159;
          if ((*v159)(v65, 1, v72) == 1)
          {
            goto LABEL_59;
          }

          v75 = v65;
          v76 = *v158;
          (*v158)(v157, v75, v72);
          v77 = sub_1B63BEBC4();
          v78 = [v163 v56[127]];

          if (v78)
          {
            sub_1B63BEF84();
            swift_unknownObjectRelease();
          }

          else
          {
            v164 = 0u;
            v165 = 0u;
          }

          v79 = v154;
          v166 = v164;
          v167 = v165;
          v80 = v162;
          if (*(&v165 + 1))
          {
            v81 = swift_dynamicCast();
            v74(v79, v81 ^ 1u, 1, v80);
            if ((v4)(v79, 1, v80) == 1)
            {
              goto LABEL_48;
            }

            v82 = v153;
            v76(v153, v79, v80);
            v83 = v157;
            v84 = sub_1B63BE964();
            v4 = *v156;
            (*v156)(v82, v80);
            (v4)(v83, v80);
            v56 = &selRef_powerByConnector;

            v65 = v155;
            if ((v84 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_64:
            if (v160)
            {
              v85 = *v66;
              v68 = v66[1];
              *v66 = v68;
              v66[1] = v85;
              --v66;
              if (__CFADD__(v67++, 1))
              {
                goto LABEL_49;
              }

              continue;
            }

            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
            return;
          }

          break;
        }

        sub_1B6284EAC(&v166, &unk_1EB943740, &qword_1B63C5030);
        v74(v79, 1, 1, v80);
LABEL_48:
        (*v156)(v157, v80);
        sub_1B6284EAC(v79, &unk_1EB943210, &unk_1B63C3F50);

        v65 = v155;
LABEL_49:
        v32 = v152 + 1;
        v66 = v151 + 1;
        v67 = v150 - 1;
        if (v152 + 1 != v148)
        {
          continue;
        }

        break;
      }

      v32 = v148;
      v6 = v144;
      a3 = v149;
      v30 = v141;
      v31 = v139;
LABEL_69:
      if (v32 < v31)
      {
        goto LABEL_152;
      }

      v87 = v30;
      v29 = v32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = v87;
      }

      else
      {
        v30 = sub_1B62B24E4(0, *(v87 + 2) + 1, 1, v87);
      }

      v4 = *(v30 + 2);
      v88 = *(v30 + 3);
      v89 = v4 + 1;
      if (v4 >= v88 >> 1)
      {
        v30 = sub_1B62B24E4((v88 > 1), v4 + 1, 1, v30);
      }

      *(v30 + 2) = v89;
      v90 = &v30[16 * v4];
      *(v90 + 4) = v31;
      *(v90 + 5) = v29;
      v56 = *v143;
      if (!*v143)
      {
        goto LABEL_162;
      }

      if (v4)
      {
        while (2)
        {
          v91 = v89 - 1;
          if (v89 >= 4)
          {
            v96 = &v30[16 * v89 + 32];
            v97 = *(v96 - 64);
            v98 = *(v96 - 56);
            v102 = __OFSUB__(v98, v97);
            v99 = v98 - v97;
            if (v102)
            {
              goto LABEL_139;
            }

            v101 = *(v96 - 48);
            v100 = *(v96 - 40);
            v102 = __OFSUB__(v100, v101);
            v94 = v100 - v101;
            v95 = v102;
            if (v102)
            {
              goto LABEL_140;
            }

            v103 = &v30[16 * v89];
            v105 = *v103;
            v104 = *(v103 + 1);
            v102 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v102)
            {
              goto LABEL_142;
            }

            v102 = __OFADD__(v94, v106);
            v107 = v94 + v106;
            if (v102)
            {
              goto LABEL_145;
            }

            if (v107 >= v99)
            {
              v125 = &v30[16 * v91 + 32];
              v127 = *v125;
              v126 = *(v125 + 1);
              v102 = __OFSUB__(v126, v127);
              v128 = v126 - v127;
              if (v102)
              {
                goto LABEL_149;
              }

              if (v94 < v128)
              {
                v91 = v89 - 2;
              }
            }

            else
            {
LABEL_89:
              if (v95)
              {
                goto LABEL_141;
              }

              v108 = &v30[16 * v89];
              v110 = *v108;
              v109 = *(v108 + 1);
              v111 = __OFSUB__(v109, v110);
              v112 = v109 - v110;
              v113 = v111;
              if (v111)
              {
                goto LABEL_144;
              }

              v114 = &v30[16 * v91 + 32];
              v116 = *v114;
              v115 = *(v114 + 1);
              v102 = __OFSUB__(v115, v116);
              v117 = v115 - v116;
              if (v102)
              {
                goto LABEL_147;
              }

              if (__OFADD__(v112, v117))
              {
                goto LABEL_148;
              }

              if (v112 + v117 < v94)
              {
                goto LABEL_103;
              }

              if (v94 < v117)
              {
                v91 = v89 - 2;
              }
            }
          }

          else
          {
            if (v89 == 3)
            {
              v92 = *(v30 + 4);
              v93 = *(v30 + 5);
              v102 = __OFSUB__(v93, v92);
              v94 = v93 - v92;
              v95 = v102;
              goto LABEL_89;
            }

            v118 = &v30[16 * v89];
            v120 = *v118;
            v119 = *(v118 + 1);
            v102 = __OFSUB__(v119, v120);
            v112 = v119 - v120;
            v113 = v102;
LABEL_103:
            if (v113)
            {
              goto LABEL_143;
            }

            v121 = &v30[16 * v91];
            v123 = *(v121 + 4);
            v122 = *(v121 + 5);
            v102 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v102)
            {
              goto LABEL_146;
            }

            if (v124 < v112)
            {
              break;
            }
          }

          v4 = v91 - 1;
          if (v91 - 1 >= v89)
          {
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
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
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          if (!*a3)
          {
            goto LABEL_159;
          }

          v129 = v30;
          v130 = *&v30[16 * v4 + 32];
          v131 = *&v30[16 * v91 + 40];
          sub_1B63A5FC8((*a3 + 8 * v130), (*a3 + 8 * *&v30[16 * v91 + 32]), (*a3 + 8 * v131), v56);
          if (v6)
          {
            goto LABEL_133;
          }

          if (v131 < v130)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_1B63BCE9C(v129);
          }

          if (v4 >= *(v129 + 2))
          {
            goto LABEL_138;
          }

          v132 = &v129[16 * v4];
          *(v132 + 4) = v130;
          *(v132 + 5) = v131;
          v168 = v129;
          v4 = &v168;
          sub_1B63BCE10(v91);
          v30 = v168;
          v89 = *(v168 + 2);
          if (v89 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v28 = a3[1];
      a4 = v142;
      if (v29 >= v28)
      {
        goto LABEL_122;
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_122:
  v56 = *v143;
  if (!*v143)
  {
    goto LABEL_163;
  }

  v4 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_157;
  }

  v133 = v4;
LABEL_125:
  v168 = v133;
  v4 = *(v133 + 2);
  if (v4 >= 2)
  {
    while (*a3)
    {
      v134 = *&v133[16 * v4];
      v135 = v133;
      v136 = *&v133[16 * v4 + 24];
      sub_1B63A5FC8((*a3 + 8 * v134), (*a3 + 8 * *&v133[16 * v4 + 16]), (*a3 + 8 * v136), v56);
      if (v6)
      {
        goto LABEL_133;
      }

      if (v136 < v134)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = sub_1B63BCE9C(v135);
      }

      if (v4 - 2 >= *(v135 + 2))
      {
        goto LABEL_151;
      }

      v137 = &v135[16 * v4];
      *v137 = v134;
      *(v137 + 1) = v136;
      v168 = v135;
      sub_1B63BCE10(v4 - 1);
      v133 = v168;
      v4 = *(v168 + 2);
      if (v4 <= 1)
      {
        goto LABEL_133;
      }
    }

    goto LABEL_161;
  }

LABEL_133:
}

uint64_t sub_1B63A5FC8(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B63A33AC(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B63A33AC(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1B63A6364(uint64_t a1)
{
  sub_1B63BF114();

  v16 = 0x80000001B63CC560;
  v2 = sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
  v3 = MEMORY[0x1B8C923A0](a1, v2);
  MEMORY[0x1B8C92330](v3);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000023, 0x80000001B63CC560);

  v15 = sub_1B63BCFE4(v4);
  sub_1B63A4904(&v15);
  v5 = v15;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1B63BF114();

  v15 = 0xD000000000000010;
  v16 = 0x80000001B63CC590;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B8C92830](0, v5);
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;
  v8 = [v6 description];
  v9 = sub_1B63BEBD4();
  v11 = v10;

  MEMORY[0x1B8C92330](v9, v11);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v15, v16);

  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8C92830](0, v5);
  }

  else
  {
    v12 = *(v5 + 32);
  }

  v13 = v12;

  return v13;
}

id static MapsSyncService.shared.getter()
{
  if (qword_1EB942F30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB942F38;

  return v1;
}

uint64_t sub_1B63A6598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B63C3D50;
  sub_1B63BF114();
  MEMORY[0x1B8C92330](0xD000000000000021, 0x80000001B63CC660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
  sub_1B63BF1B4();
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_1B63BF424();
}

void sub_1B63A66A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B63A6708()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B628E340;

  return sub_1B63A7850();
}

uint64_t sub_1B63A67A8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1B63A69C8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1B63A6A70;

  return sub_1B63A7850();
}

uint64_t sub_1B63A6A70()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;

  v7 = *(v3 + 16);
  if (v2)
  {
    v8 = sub_1B63BE814();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 16));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1B63A6BD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B63A6C74;

  return sub_1B629E0C4();
}

uint64_t sub_1B63A6C74(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_1B63A6D9C()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B63BEBC4();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v0[14] = sub_1B63A6598;
  v0[15] = 0;
  v5 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B63A66A0;
  v0[13] = &block_descriptor_27;
  v6 = _Block_copy(v0 + 10);
  v7 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_1B63BEF84();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943750, &qword_1B63C6D68);
  if (swift_dynamicCast())
  {
    v9 = v0[18];
    v8 = v0[19];
    v0[20] = v9;
    v0[2] = v0;
    v0[7] = v8;
    v0[3] = sub_1B63A7094;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943758, &qword_1B63C6D70);
    v0[10] = v5;
    v0[11] = 1107296256;
    v0[12] = sub_1B63A727C;
    v0[13] = &block_descriptor_7;
    v0[14] = v10;
    [v9 getLastSyncDateWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1B634DB54();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B63A7094()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1B63A7208;
  }

  else
  {
    v3 = sub_1B63A71A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B63A71A4()
{
  v1 = *(v0 + 160);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B63A7208()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[21];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B63A727C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B63BE994();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return MEMORY[0x1EEE6DEE8](v10, v11);
  }

  else
  {
    sub_1B63BE974();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1B63A7560(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = sub_1B63BE994();
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[5] = v8;
  v2[6] = _Block_copy(a1);
  v9 = a2;
  v10 = swift_task_alloc();
  v2[7] = v10;
  *v10 = v2;
  v10[1] = sub_1B63A767C;

  return sub_1B63A6D7C(v8);
}

uint64_t sub_1B63A767C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
    v6 = sub_1B63BE814();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v10 = v2[4];
    v9 = v2[5];
    v11 = v2[3];
    v12 = sub_1B63BE954();
    (*(v10 + 8))(v9, v11);
    v8 = v12;
    v7 = 0;
    v6 = v12;
  }

  v13 = v2[6];
  (v13)[2](v13, v8, v7);

  _Block_release(v13);

  v14 = *(v5 + 8);

  return v14();
}

id MapsSyncService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63A786C()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B63BEBC4();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v0[14] = sub_1B63A6598;
  v0[15] = 0;
  v5 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B63A66A0;
  v0[13] = &block_descriptor_63;
  v6 = _Block_copy(v0 + 10);
  v7 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_1B63BEF84();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943750, &qword_1B63C6D68);
  if (swift_dynamicCast())
  {
    v8 = v0[18];
    v0[19] = v8;
    v0[2] = v0;
    v0[3] = sub_1B63A7B60;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943768, &unk_1B63C6E10);
    v0[10] = v5;
    v0[11] = 1107296256;
    v0[12] = sub_1B63A67A8;
    v0[13] = &block_descriptor_66_1;
    v0[14] = v9;
    [v8 prepareLibraryWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1B634DB54();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1B63A7B60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1B63A7CD4;
  }

  else
  {
    v3 = sub_1B63A7C70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B63A7C70()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B63A7CD4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[20];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B63A7D48()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[20];
  v4 = v0[1];

  return v4(0);
}

uint64_t dispatch thunk of MapsSyncService.prepareLibrary()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return v6();
}

uint64_t dispatch thunk of MapsSyncService.cloudKitSyncAllowed()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628FBFC;

  return v6();
}

uint64_t dispatch thunk of MapsSyncService.lastSyncDate()(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628E340;

  return v8(a1);
}

uint64_t sub_1B63A814C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628E340;

  return sub_1B63A7560(v2, v3);
}

uint64_t sub_1B63A81F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B63A69C8(v2);
}

id sub_1B63A8310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B63A8368()
{
  v1 = v0;
  v2 = sub_1B63BEA04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MapsSyncHashing();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B639A52C(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = *v10;
      MEMORY[0x1B8C92B30](0);
      MEMORY[0x1B8C92B30](v13);

      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v25 = *v10;
      v26 = *(v10 + 2);
      MEMORY[0x1B8C92B30](2);
      MEMORY[0x1B8C92B70](v25);
      sub_1B63BF474();
      return;
    }

    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1B8C92B30](1);
    sub_1B63AACB0(&qword_1EB942FA8, MEMORY[0x1E69695A8]);
    sub_1B63BEB94();
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v12 = *v10;
      MEMORY[0x1B8C92B30](4);
      MEMORY[0x1B8C92B70](v12);
      return;
    }

    v27 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943780, &qword_1B63C6F38) + 48)];
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1B8C92B30](5);
    sub_1B63AACB0(&qword_1EB942FA8, MEMORY[0x1E69695A8]);
    sub_1B63BEB94();
    sub_1B63BF464();
LABEL_19:
    (*(v3 + 8))(v6, v2);
    return;
  }

  v15 = *v10;
  v14 = *(v10 + 1);
  v16 = *(v10 + 2);
  v17 = *(v10 + 3);
  v18 = *MEMORY[0x1E69A1670];
  v19 = *MEMORY[0x1E69A1670] / 111319.491;
  v20 = cos(v16 * 3.14159265 / 180.0);
  v21 = round(v16 / v19);
  v22 = round(v17 / (v18 / (v20 * 111319.491)));
  MEMORY[0x1B8C92B30](3);
  if (v21 == 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v21;
  }

  MEMORY[0x1B8C92B70](*&v23);
  if (v22 == 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v22;
  }

  MEMORY[0x1B8C92B70](*&v24);
  sub_1B63BF454();
  if (v14)
  {
    sub_1B63BEC24();
  }
}

uint64_t sub_1B63A8714()
{
  sub_1B63BF434();
  sub_1B63A8368();
  return sub_1B63BF494();
}

uint64_t sub_1B63A8758()
{
  sub_1B63BF434();
  sub_1B63A8368();
  return sub_1B63BF494();
}

id sub_1B63A87CC()
{
  v0 = sub_1B63AA55C();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B63C3D80;
  *(v3 + 32) = type metadata accessor for CuratedCollection();
  *(v3 + 40) = type metadata accessor for CachedCuratedCollection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v4 = sub_1B63BEC94();

  return v4;
}

uint64_t sub_1B63A8870@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = type metadata accessor for MapsSyncHashing();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v3 + v18, v9, &qword_1EB9435F0, &qword_1B63C6610);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v19 = 0x1FAA2A000;
    sub_1B6284EAC(v9, &qword_1EB9435F0, &qword_1B63C6610);
  }

  else
  {
    sub_1B639A148(v9, v17);
    v20 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    [v20 lock];
    v21 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v22 = *(*(v3 + v21) + 16);
    v19 = &unk_1E7C32000;
    [v20 unlock];
    if (!v22)
    {
      v30 = v35;
      sub_1B639A148(v17, v35);
      return (*(v11 + 56))(v30, 0, 1, v10);
    }

    sub_1B639A0EC(v17);
  }

  v23 = *(v3 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v23 &selRef_setTitleLocale_];
  v24 = *(v3 + *v33);
  [v23 v19 + 376];
  [v23 &selRef_setTitleLocale_];
  v25 = *(v3 + *v34);
  [v23 v19 + 376];
  *v15 = v24;
  *(v15 + 2) = v25;
  swift_storeEnumTagMultiPayload();
  v26 = v32;
  sub_1B639A52C(v15, v32);
  v27 = *(v11 + 56);
  v27(v26, 0, 1, v10);
  swift_beginAccess();
  sub_1B63AACF8(v26, v3 + v18);
  swift_endAccess();
  v28 = v35;
  sub_1B639A148(v15, v35);
  return (v27)(v28, 0, 1, v10);
}

uint64_t sub_1B63A8BE4()
{
  v1 = [*v0 allowedClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v2 = sub_1B63BECA4();

  return v2;
}

uint64_t sub_1B63A8C7C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for MapsSyncHashing();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v1 + v16, v7, &qword_1EB9435F0, &qword_1B63C6610);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B6284EAC(v7, &qword_1EB9435F0, &qword_1B63C6610);
  }

  else
  {
    sub_1B639A148(v7, v15);
    v17 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    [v17 lock];
    v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v19 = *(*(v1 + v18) + 16);
    [v17 property descriptor for VisitedLocation.hidden];
    if (!v19)
    {
      v26 = v29;
      sub_1B639A148(v15, v29);
      return (*(v9 + 56))(v26, 0, 1, v8);
    }

    sub_1B639A0EC(v15);
  }

  v20 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v20 lock];
  v21 = *(v1 + OBJC_IVAR___MSCollectionTransitItem__muid);
  [v20 unlock];
  *v13 = v21;
  swift_storeEnumTagMultiPayload();
  v22 = v28;
  sub_1B639A52C(v13, v28);
  v23 = *(v9 + 56);
  v23(v22, 0, 1, v8);
  swift_beginAccess();
  sub_1B63AACF8(v22, v1 + v16);
  swift_endAccess();
  v24 = v29;
  sub_1B639A148(v13, v29);
  return (v23)(v24, 0, 1, v8);
}

Swift::Bool __swiftcall CollectionTransitItem.isEqualTo(muid:)(Swift::UInt64 muid)
{
  v26 = muid;
  v1 = type metadata accessor for MapsSyncHashing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943770, qword_1B63C6E48);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v25 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  sub_1B63A8C7C(&v25 - v18);
  *v17 = v26;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v17, 0, 1, v1);
  v20 = *(v6 + 56);
  sub_1B628C510(v19, v9, &qword_1EB9435F0, &qword_1B63C6610);
  sub_1B628C510(v17, &v9[v20], &qword_1EB9435F0, &qword_1B63C6610);
  v21 = *(v2 + 48);
  if (v21(v9, 1, v1) != 1)
  {
    sub_1B628C510(v9, v14, &qword_1EB9435F0, &qword_1B63C6610);
    if (v21(&v9[v20], 1, v1) != 1)
    {
      v23 = v25;
      sub_1B639A148(&v9[v20], v25);
      v22 = sub_1B63AA5D4(v14, v23);
      sub_1B639A0EC(v23);
      sub_1B6284EAC(v17, &qword_1EB9435F0, &qword_1B63C6610);
      sub_1B6284EAC(v19, &qword_1EB9435F0, &qword_1B63C6610);
      sub_1B639A0EC(v14);
      sub_1B6284EAC(v9, &qword_1EB9435F0, &qword_1B63C6610);
      return v22 & 1;
    }

    sub_1B6284EAC(v17, &qword_1EB9435F0, &qword_1B63C6610);
    sub_1B6284EAC(v19, &qword_1EB9435F0, &qword_1B63C6610);
    sub_1B639A0EC(v14);
    goto LABEL_6;
  }

  sub_1B6284EAC(v17, &qword_1EB9435F0, &qword_1B63C6610);
  sub_1B6284EAC(v19, &qword_1EB9435F0, &qword_1B63C6610);
  if (v21(&v9[v20], 1, v1) != 1)
  {
LABEL_6:
    sub_1B6284EAC(v9, &qword_1EB943770, qword_1B63C6E48);
    v22 = 0;
    return v22 & 1;
  }

  sub_1B6284EAC(v9, &qword_1EB9435F0, &qword_1B63C6610);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1B63A93C4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = type metadata accessor for MapsSyncHashing();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v1 + v17, v8, &qword_1EB9435F0, &qword_1B63C6610);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B6284EAC(v8, &qword_1EB9435F0, &qword_1B63C6610);
    v18 = sub_1B6290B60();
    if (v18)
    {
      goto LABEL_3;
    }

    return (*(v10 + 56))(v34, 1, 1, v9);
  }

  sub_1B639A148(v8, v16);
  v30 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v30 lock];
  v31 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v32 = *(*(v1 + v31) + 16);
  [v30 unlock];
  if (!v32)
  {
    v33 = v34;
    sub_1B639A148(v16, v34);
    return (*(v10 + 56))(v33, 0, 1, v9);
  }

  sub_1B639A0EC(v16);
  v18 = sub_1B6290B60();
  if (!v18)
  {
    return (*(v10 + 56))(v34, 1, 1, v9);
  }

LABEL_3:
  v19 = v18;
  v20 = sub_1B6294630();
  v22 = v21;
  if ([v19 _hasMUID])
  {
    v23 = [v19 _placeDisplayType];
    if (v23 == 4 || v23 == 1)
    {
      [v19 _muid];
    }
  }

  [v19 coordinate];
  v25 = v24;
  [v19 coordinate];
  *v14 = v20;
  v14[1] = v22;
  v14[2] = v25;
  v14[3] = v26;
  swift_storeEnumTagMultiPayload();

  sub_1B639A52C(v14, v6);
  v27 = *(v10 + 56);
  v27(v6, 0, 1, v9);
  swift_beginAccess();
  sub_1B63AACF8(v6, v1 + v17);
  swift_endAccess();
  v28 = v34;
  sub_1B639A148(v14, v34);
  return (v27)(v28, 0, 1, v9);
}

uint64_t CollectionPlaceItem.isEqualTo(mapItem:name:)(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = type metadata accessor for MapsSyncHashing();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943770, qword_1B63C6E48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v33 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  sub_1B63A93C4(&v33 - v21);

  if ([swift_unknownObjectRetain() _hasMUID])
  {
    v23 = [a1 _placeDisplayType];
    if (v23 == 4 || v23 == 1)
    {
      [a1 _muid];
    }
  }

  [a1 coordinate];
  v25 = v24;
  [a1 coordinate];
  v27 = v26;
  swift_unknownObjectRelease();
  *v20 = v34;
  v20[1] = a3;
  v20[2] = v25;
  v20[3] = v27;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 56))(v20, 0, 1, v5);
  v28 = *(v9 + 48);
  sub_1B628C510(v22, v12, &qword_1EB9435F0, &qword_1B63C6610);
  sub_1B628C510(v20, &v12[v28], &qword_1EB9435F0, &qword_1B63C6610);
  v29 = *(v6 + 48);
  if (v29(v12, 1, v5) != 1)
  {
    sub_1B628C510(v12, v17, &qword_1EB9435F0, &qword_1B63C6610);
    if (v29(&v12[v28], 1, v5) != 1)
    {
      v31 = v33;
      sub_1B639A148(&v12[v28], v33);
      v30 = sub_1B63AA5D4(v17, v31);
      sub_1B639A0EC(v31);
      sub_1B6284EAC(v20, &qword_1EB9435F0, &qword_1B63C6610);
      sub_1B6284EAC(v22, &qword_1EB9435F0, &qword_1B63C6610);
      sub_1B639A0EC(v17);
      sub_1B6284EAC(v12, &qword_1EB9435F0, &qword_1B63C6610);
      return v30 & 1;
    }

    sub_1B6284EAC(v20, &qword_1EB9435F0, &qword_1B63C6610);
    sub_1B6284EAC(v22, &qword_1EB9435F0, &qword_1B63C6610);
    sub_1B639A0EC(v17);
    goto LABEL_10;
  }

  sub_1B6284EAC(v20, &qword_1EB9435F0, &qword_1B63C6610);
  sub_1B6284EAC(v22, &qword_1EB9435F0, &qword_1B63C6610);
  if (v29(&v12[v28], 1, v5) != 1)
  {
LABEL_10:
    sub_1B6284EAC(v12, &qword_1EB943770, qword_1B63C6E48);
    v30 = 0;
    return v30 & 1;
  }

  sub_1B6284EAC(v12, &qword_1EB9435F0, &qword_1B63C6610);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_1B63A9C54@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = type metadata accessor for MapsSyncHashing();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v1 + v17, v8, &qword_1EB9435F0, &qword_1B63C6610);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B6284EAC(v8, &qword_1EB9435F0, &qword_1B63C6610);
    v18 = sub_1B6344B7C();
    if (v18)
    {
      goto LABEL_3;
    }

    return (*(v10 + 56))(v32, 1, 1, v9);
  }

  sub_1B639A148(v8, v16);
  v28 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v28 lock];
  v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v30 = *(*(v1 + v29) + 16);
  [v28 unlock];
  if (!v30)
  {
    v31 = v32;
    sub_1B639A148(v16, v32);
    return (*(v10 + 56))(v31, 0, 1, v9);
  }

  sub_1B639A0EC(v16);
  v18 = sub_1B6344B7C();
  if (!v18)
  {
    return (*(v10 + 56))(v32, 1, 1, v9);
  }

LABEL_3:
  v19 = v18;
  if ([v18 _hasMUID])
  {
    v20 = [v19 _placeDisplayType];
    if (v20 == 4 || v20 == 1)
    {
      [v19 _muid];
    }
  }

  [v19 coordinate];
  v22 = v21;
  [v19 coordinate];
  v24 = v23;

  *v14 = 0;
  v14[1] = 0;
  v14[2] = v22;
  v14[3] = v24;
  swift_storeEnumTagMultiPayload();
  sub_1B639A52C(v14, v6);
  v25 = *(v10 + 56);
  v25(v6, 0, 1, v9);
  swift_beginAccess();
  sub_1B63AACF8(v6, v1 + v17);
  swift_endAccess();
  v26 = v32;
  sub_1B639A148(v14, v32);
  return (v25)(v26, 0, 1, v9);
}

uint64_t sub_1B63AA008@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_1B63BEA04();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for MapsSyncHashing();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject_cachedHashingDescriptor;
  swift_beginAccess();
  sub_1B628C510(v1 + v23, v14, &qword_1EB9435F0, &qword_1B63C6610);
  v24 = *(v16 + 48);
  v46 = v15;
  if (v24(v14, 1, v15) == 1)
  {
    sub_1B6284EAC(v14, &qword_1EB9435F0, &qword_1B63C6610);
  }

  else
  {
    sub_1B639A148(v14, v22);
    v25 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    [v25 lock];
    v26 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
    swift_beginAccess();
    v27 = *(*(v1 + v26) + 16);
    [v25 unlock];
    if (!v27)
    {
      v41 = v47;
      sub_1B639A148(v22, v47);
      return (*(v16 + 56))(v41, 0, 1, v46);
    }

    sub_1B639A0EC(v22);
  }

  v28 = *(v1 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v28 &selRef_setTitleLocale_];
  v29 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v1 + v29, v5, &unk_1EB943680, qword_1B63C4070);
  [v28 unlock];
  v30 = v44;
  v31 = v45;
  if ((*(v44 + 48))(v5, 1, v45) == 1)
  {
    sub_1B6284EAC(v5, &unk_1EB943680, qword_1B63C4070);
    return (*(v16 + 56))(v47, 1, 1, v46);
  }

  else
  {
    v33 = v42;
    (*(v30 + 32))(v42, v5, v31);
    v34 = v30;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943780, &qword_1B63C6F38) + 48);
    (*(v34 + 16))(v20, v33, v31);
    [v28 &selRef_setTitleLocale_];
    v36 = *(v1 + OBJC_IVAR___MSVisit__visitClassification);
    [v28 unlock];
    (*(v34 + 8))(v33, v31);
    *&v20[v35] = v36;
    v37 = v46;
    swift_storeEnumTagMultiPayload();
    v38 = v43;
    sub_1B639A52C(v20, v43);
    v39 = *(v16 + 56);
    v39(v38, 0, 1, v37);
    swift_beginAccess();
    sub_1B63AACF8(v38, v1 + v23);
    swift_endAccess();
    v40 = v47;
    sub_1B639A148(v20, v47);
    return (v39)(v40, 0, 1, v37);
  }
}

uint64_t sub_1B63AA55C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EB943788;
    v3 = &unk_1B63C6F40;
  }

  else
  {
    v2 = &unk_1EB943670;
    v3 = qword_1B63C3F60;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_1B63AA5D4(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v3 = sub_1B63BEA04();
  v75 = *(v3 - 8);
  v76 = v3;
  v4 = *(v75 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v70 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v72 = &v70 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v70 - v11;
  v12 = type metadata accessor for MapsSyncHashing();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v70 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v70 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v70 - v24);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v70 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v70 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943790, qword_1B63C6F48);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v70 - v34;
  v36 = &v70 + *(v33 + 56) - v34;
  sub_1B639A52C(a1, &v70 - v34);
  sub_1B639A52C(v77, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B639A52C(v35, v28);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v39 = v75;
          v38 = v76;
          v40 = *(v75 + 32);
          v41 = v71;
          v40(v71, v28, v76);
          v42 = v72;
          v40(v72, v36, v38);
          v43 = sub_1B63BE9D4();
          v44 = *(v39 + 8);
          v44(v42, v38);
          v44(v41, v38);
LABEL_40:
          sub_1B639A0EC(v35);
          return v43 & 1;
        }

        (*(v75 + 8))(v28, v76);
      }

      else
      {
        sub_1B639A52C(v35, v22);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v43 = *v22 == *v36 && *(v22 + 2) == *(v36 + 2);
          goto LABEL_40;
        }
      }
    }

    else
    {
      sub_1B639A52C(v35, v30);
      v45 = *v30;
      if (!swift_getEnumCaseMultiPayload())
      {
        v66 = *v36;
        sub_1B6282B88();
        v43 = sub_1B63BEF24();

        goto LABEL_40;
      }
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1B639A52C(v35, v19);
    v47 = *v19;
    v46 = v19[1];
    v48 = v19[2];
    v49 = v19[3];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_33;
    }

    v50 = *(v36 + 1);
    v51 = *(v36 + 2);
    v52 = *(v36 + 3);
    if (v46)
    {
      if (v50)
      {
        if (v47 == *v36 && v46 == v50)
        {
        }

        else
        {
          v54 = *(v36 + 1);
          v55 = sub_1B63BF364();

          v43 = 0;
          if ((v55 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (!v50)
      {
LABEL_39:
        GEOCalculateDistance();
        v43 = v68 < *MEMORY[0x1E69A1670];
        goto LABEL_40;
      }

      v67 = *(v36 + 1);
    }

    v43 = 0;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_1B639A52C(v35, v25);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v43 = *v25 == *v36;
      goto LABEL_40;
    }
  }

  else
  {
    sub_1B639A52C(v35, v16);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943780, &qword_1B63C6F38) + 48);
      LODWORD(v77) = *&v16[v57];
      v58 = *&v36[v57];
      v60 = v75;
      v59 = v76;
      v61 = *(v75 + 32);
      v62 = v73;
      v61(v73, v16, v76);
      v63 = v74;
      v61(v74, v36, v59);
      v64 = sub_1B63BE9D4();
      v65 = *(v60 + 8);
      v65(v63, v59);
      v65(v62, v59);
      v43 = v64 & (v77 == v58);
      goto LABEL_40;
    }

    (*(v75 + 8))(v16, v76);
  }

LABEL_33:
  sub_1B6284EAC(v35, &unk_1EB943790, qword_1B63C6F48);
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1B63AACB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B63AACF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9435F0, &qword_1B63C6610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B63AAD74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedMixinMapItem();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B63AADB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCollection();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t VisitRequest.fetch(searchTerm:topLevelCategories:regions:dateRanges:sortDescriptors:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 16) = v7;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1B63AAEDC;

  return sub_1B63ACAF8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B63AAEDC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;
  v3[4] = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v5;
  v6[1] = sub_1B62AC0B0;
  v7 = v3[2];

  return sub_1B637C948(a1);
}

uint64_t sub_1B63AB1F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *aBlock, void *a8)
{
  v9 = a8;
  v8[2] = a6;
  v8[3] = a8;
  v8[4] = _Block_copy(aBlock);
  if (a1)
  {
    v28 = sub_1B63BEBD4();
    a1 = v16;
    v8[5] = v16;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v28 = 0;
  v8[5] = 0;
  if (a2)
  {
LABEL_3:
    a2 = sub_1B63BECA4();
  }

LABEL_4:
  v8[6] = a2;
  if (a3)
  {
    sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    a3 = sub_1B63BECA4();
    v17 = a4;
    v18 = a5;
    v19 = a6;
  }

  else
  {
    v17 = a6;
    v18 = v9;
    v19 = a4;
    v9 = a5;
  }

  v8[7] = a3;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v9;
  if (a4)
  {
    type metadata accessor for MapsSyncDateRange();
    v24 = sub_1B63BECA4();

    v8[8] = v24;
    if (a5)
    {
LABEL_11:
      sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
      v25 = sub_1B63BECA4();

      goto LABEL_14;
    }
  }

  else
  {
    v24 = 0;
    v8[8] = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  v25 = 0;
LABEL_14:
  v8[9] = v25;
  v26 = swift_task_alloc();
  v8[10] = v26;
  *v26 = v8;
  v26[1] = sub_1B63AB3FC;

  return sub_1B63ACAF8(v28, a1, a2, a3, v24, v25, a6);
}

uint64_t sub_1B63AB3FC(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 40);
  v10 = *v1;
  v3[11] = a1;

  v11 = a1;
  v12 = swift_task_alloc();
  v3[12] = v12;
  *v12 = v10;
  v12[1] = sub_1B63AB5F4;
  v13 = v3[3];

  return sub_1B637C948(a1);
}

uint64_t sub_1B63AB5F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1B62ACA58;
  }

  else
  {

    *(v4 + 112) = a1;
    v7 = sub_1B63AB724;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B63AB724()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  type metadata accessor for Visit();
  v4 = sub_1B63BEC94();

  v5 = *(v0 + 32);
  (v5)[2](v5, v4, 0);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t VisitRequest.count(searchTerm:topLevelCategories:regions:dateRanges:sortDescriptors:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = v7;
  v8[3] = swift_getObjectType();
  v16 = swift_task_alloc();
  v8[4] = v16;
  *v16 = v8;
  v16[1] = sub_1B63AB8D0;

  return sub_1B63ACAF8(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B63AB8D0(void *a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 40) = a1;

  v4 = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B63AB9DC, 0, 0);
}

uint64_t sub_1B63AB9DC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = v1;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B62ACE18;

  return sub_1B629CD38(sub_1B629D160, v4);
}

uint64_t sub_1B63ABCB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *aBlock, void *a8)
{
  v9 = a8;
  v8[2] = a6;
  v8[3] = a8;
  v8[4] = _Block_copy(aBlock);
  if (a1)
  {
    v28 = sub_1B63BEBD4();
    a1 = v16;
    v8[5] = v16;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v28 = 0;
  v8[5] = 0;
  if (a2)
  {
LABEL_3:
    a2 = sub_1B63BECA4();
  }

LABEL_4:
  v8[6] = a2;
  if (a3)
  {
    sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
    a3 = sub_1B63BECA4();
    v17 = a4;
    v18 = a5;
    v19 = a6;
  }

  else
  {
    v17 = a6;
    v18 = v9;
    v19 = a4;
    v9 = a5;
  }

  v8[7] = a3;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = v9;
  if (a4)
  {
    type metadata accessor for MapsSyncDateRange();
    v24 = sub_1B63BECA4();

    v8[8] = v24;
    if (a5)
    {
LABEL_11:
      sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
      v25 = sub_1B63BECA4();

      goto LABEL_14;
    }
  }

  else
  {
    v24 = 0;
    v8[8] = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  v25 = 0;
LABEL_14:
  v8[9] = v25;
  v26 = swift_task_alloc();
  v8[10] = v26;
  *v26 = v8;
  v26[1] = sub_1B62AD410;

  return VisitRequest.count(searchTerm:topLevelCategories:regions:dateRanges:sortDescriptors:range:)(v28, a1, a2, a3, v24, v25, a6);
}

uint64_t sub_1B63ABEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[62] = a2;
  v3[63] = a3;
  v3[61] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B63ABEE0, 0, 0);
}

uint64_t sub_1B63ABEE0()
{
  v2 = v0[61];
  v1 = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 16) = xmmword_1B63C3D50;
  *(v3 + 56) = v4;
  *(v3 + 32) = 1684632941;
  *(v3 + 40) = 0xE400000000000000;
  v5 = objc_allocWithZone(type metadata accessor for MapsSyncDictionaryQueryOptions());
  v6 = OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy;
  *&v5[OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy] = 0;
  *&v5[OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToFetch] = v3;
  *&v5[v6] = 0;
  v7 = sub_1B62895F4(0, 0, 0);
  v0[64] = v7;
  v0[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  *(inited + 56) = v4;
  v9 = sub_1B6281318();
  v0[66] = v9;
  *(inited + 64) = v9;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  v10 = v7;

  v11 = sub_1B628E52C(0xD00000000000001DLL, 0x80000001B63C81A0, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v12 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v10[v12] = v11;

  v14 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
  if (qword_1EDB0F2A0 != -1)
  {
    v17 = v14;
    swift_once();
    v14 = v17;
  }

  v0[67] = [v14 initWithStore_];
  v15 = swift_task_alloc();
  v0[68] = v15;
  *v15 = v0;
  v15[1] = sub_1B63AC150;

  return sub_1B63AFE34(v10);
}

uint64_t sub_1B63AC150(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 544);
  v5 = *(*v2 + 536);
  v8 = *v2;
  *(v3 + 552) = a1;
  *(v3 + 560) = v1;

  if (v1)
  {
    v6 = sub_1B62AED84;
  }

  else
  {
    v6 = sub_1B63AC284;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B63AC284()
{
  super_class = v0[34].super_class;
  receiver = v0[33].receiver;
  v2 = v0[32].super_class;
  v4 = v0[30].super_class;
  v3 = v0[31].receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B63C3D60;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = receiver;
  *(inited + 32) = v4;
  *(inited + 40) = v3;

  v8 = sub_1B628E52C(0xD000000000000024, 0x80000001B63CC920, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  *(v5 + 32) = v8;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1B63C3D50;
  *(v9 + 56) = v7;
  *(v9 + 64) = receiver;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;

  v10 = sub_1B628E52C(0xD000000000000027, 0x80000001B63CC950, v9);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v9 + 32));
  *(v5 + 40) = v10;
  v11 = "Address CONTAINS[cd] %@";
  v58 = v0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1B63C3D50;
  *(v12 + 56) = v7;
  *(v12 + 64) = receiver;
  *(v12 + 32) = v4;
  v13 = v12 + 32;
  *(v12 + 40) = v3;

  v14 = sub_1B628E52C(0xD000000000000028, 0x80000001B63CC980, v12);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v12 + 32));
  *(v5 + 48) = v14;
  v63 = v5;
  if (super_class >> 62)
  {
    v16 = v0;
    if (v0[34].super_class < 0)
    {
      v35 = v0[34].super_class;
    }

    v15 = sub_1B63BF044();
    v61 = v5;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v0;
    v61 = v5;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v17 = 0;
  v18 = (v16 + 376);
  v10 = super_class & 0xC000000000000001;
  v60 = *(v16 + 552) + 32;
  v5 = 1684632941;
  v59 = v15;
  do
  {
    if (v10)
    {
      v19 = MEMORY[0x1B8C92830](v17, *(v16 + 552));
    }

    else
    {
      v19 = *(v60 + 8 * v17);
    }

    v20 = v19;
    *(v16 + 432) = 1684632941;
    *(v16 + 440) = 0xE400000000000000;
    v21 = [v19 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v21)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    *v18 = v64;
    *(v18 + 1) = v65;
    if (*(v16 + 400))
    {
      v22 = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v23 = *(v16 + 520);
        v24 = *(v16 + 480);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_1B63C3D50;
        *(v25 + 56) = v22;
        *(v25 + 64) = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
        *(v25 + 32) = v24;
        v26 = v24;
        sub_1B628E67C(v25);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1((v25 + 32));
        Predicate = type metadata accessor for MapsSyncQueryPredicate();
        v28 = objc_allocWithZone(Predicate);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1B63C3D70;
        v30 = sub_1B63BEBC4();
        v31 = sub_1B63BEC94();

        v32 = [objc_opt_self() predicateWithFormat:v30 argumentArray:v31];

        *(v29 + 32) = v32;
        sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
        v33 = sub_1B63BEC94();

        *(v16 + 464) = v28;
        *(v16 + 472) = Predicate;
        objc_msgSendSuper2((v16 + 464), sel_initWithType_subpredicates_, 1, v33);

        MEMORY[0x1B8C92370]();
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B63BECC4();
        }

        sub_1B63BECE4();

        v61 = v63;
        v10 = super_class & 0xC000000000000001;
        v15 = v59;
        v5 = 1684632941;
      }

      else
      {
      }

      v18 = (v16 + 376);
    }

    else
    {

      sub_1B62B0364(v18);
    }

    ++v17;
  }

  while (v15 != v17);
LABEL_23:
  v36 = *(v16 + 552);
  v16 = *(v16 + 504);

  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v61;
    v16 = v61 & 0xFFFFFFFFFFFFFF8;
    v10 = v61 >> 62;
    if (!(v61 >> 62))
    {
      v37 = v58[31].super_class;
      v38 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38 >= v37)
      {
        v39 = v58[31].super_class;
      }

      else
      {
        v39 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v37)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      if (v38 >= v40)
      {
        goto LABEL_32;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);

      sub_1B63BF2A4();

      goto LABEL_53;
    }
  }

  if (v5 < 0)
  {
    v15 = v5;
  }

  else
  {
    v15 = v16;
  }

  v55 = sub_1B63BF044();
  result = sub_1B63BF044();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v56 = v58[31].super_class;
  if (v55 >= v56)
  {
    v57 = v58[31].super_class;
  }

  else
  {
    v57 = v55;
  }

  if (v55 < 0)
  {
    v57 = v58[31].super_class;
  }

  if (v56)
  {
    v40 = v57;
  }

  else
  {
    v40 = 0;
  }

  if (sub_1B63BF044() < v40)
  {
    goto LABEL_70;
  }

LABEL_32:
  if ((v5 & 0xC000000000000001) != 0)
  {

    if (v40)
    {
      type metadata accessor for MapsSyncQueryPredicate();
      v41 = 0;
      do
      {
        v42 = v41 + 1;
        sub_1B63BF134();
        v41 = v42;
      }

      while (v40 != v42);
    }
  }

  else
  {
  }

  if (v10)
  {
    v16 = sub_1B63BF2C4();
    v13 = v43;
    v15 = v44;
    v11 = v45;

    if (v11)
    {
      goto LABEL_43;
    }

LABEL_42:
    sub_1B62B7940(v16, v13, v15, v11);
    v47 = v46;
LABEL_49:
    swift_unknownObjectRelease();
    goto LABEL_50;
  }

  v15 = 0;
  v13 = v16 + 32;
  v11 = (2 * v40) | 1;
  if ((v11 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_43:
  sub_1B63BF384();
  swift_unknownObjectRetain_n();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v48 + 16);

  if (__OFSUB__(v11 >> 1, v15))
  {
    goto LABEL_73;
  }

  if (v49 != (v11 >> 1) - v15)
  {
LABEL_74:
    swift_unknownObjectRelease_n();
    goto LABEL_42;
  }

  v47 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v47)
  {
    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

LABEL_50:
  v16 = type metadata accessor for MapsSyncQueryPredicate();
  v15 = objc_allocWithZone(v16);
  if (v47 < 0 || (v47 & 0x4000000000000000) != 0)
  {
    goto LABEL_71;
  }

  sub_1B63BF374();
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
LABEL_53:
  v50 = v58[32].receiver;

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v51 = sub_1B63BEC94();

  v58[28].receiver = v15;
  v58[28].super_class = v16;
  v52 = objc_msgSendSuper2(v58 + 28, sel_initWithType_subpredicates_, 2, v51);

  v53 = v58->super_class;

  return v53(v52);
}

uint64_t sub_1B63ACAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[49] = a6;
  v7[50] = a7;
  v7[47] = a4;
  v7[48] = a5;
  v7[45] = a2;
  v7[46] = a3;
  v7[44] = a1;
  v8 = sub_1B63BE994();
  v7[51] = v8;
  v9 = *(v8 - 8);
  v7[52] = v9;
  v10 = *(v9 + 64) + 15;
  v7[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B63ACBC4, 0, 0);
}

uint64_t sub_1B63ACBC4()
{
  v2 = v0;
  receiver = v0[23].receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B63C3D70;
  *(v4 + 32) = sub_1B628E52C(0xD00000000000007BLL, 0x80000001B63CC810, MEMORY[0x1E69E7CC0]);
  v0[21].receiver = v4;
  if (receiver)
  {
    v5 = v0[23].receiver;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943078, &qword_1B63C3E28);
    *(inited + 64) = sub_1B62B0310(&qword_1EB943080, &qword_1EB943078, &qword_1B63C3E28);
    *(inited + 32) = v5;
    v1 = (inited + 32);

    sub_1B628E52C(0xD000000000000026, 0x80000001B63CC8F0, inited);
    swift_setDeallocating();
    v7 = __swift_destroy_boxed_opaque_existential_1((inited + 32));
    MEMORY[0x1B8C92370](v7);
    if (*((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v73 = *((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v4 = v0[21].receiver;
    v8 = 998;
    super_class = v0[23].super_class;
    if (!super_class)
    {
LABEL_5:
      v10 = v0[24].receiver;
      if (!v10)
      {
        goto LABEL_53;
      }

LABEL_11:
      if (v10 >> 62)
      {
        v13 = sub_1B63BF044();
      }

      else
      {
        v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v85 = MEMORY[0x1E69E7CC0];
        sub_1B63BF184();
        if (v13 < 0)
        {
          __break(1u);
LABEL_78:
          sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);

          sub_1B63BF2A4();

          goto LABEL_59;
        }

        v77 = v8;
        v15 = v2[26].receiver;
        v16 = 0;
        v80 = v2[24].receiver & 0xC000000000000001;
        v81 = objc_opt_self();
        v79 = (v15 + 16);
        v78 = (v15 + 8);
        v82 = v13;
        v83 = v10;
        do
        {
          if (v80)
          {
            v17 = MEMORY[0x1B8C92830](v16, v10);
          }

          else
          {
            v17 = *(v10 + 8 * v16 + 32);
          }

          v84 = v17;
          v18 = v2[26].super_class;
          v19 = v2[25].super_class;
          ++v16;
          v20 = &v17[OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range];
          v21 = *v79;
          (*v79)(v18, &v17[OBJC_IVAR____TtC8MapsSync17MapsSyncDateRange__range], v19);
          v22 = sub_1B63BE954();
          v23 = *v78;
          (*v78)(v18, v19);
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943630, &qword_1B63C3E10);
          v21(v18, &v20[*(v24 + 36)], v19);
          v25 = sub_1B63BE954();
          v23(v18, v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
          v26 = swift_initStackObject();
          *(v26 + 16) = xmmword_1B63C3D80;
          v27 = sub_1B6281C60(0, &qword_1EDB0E6D0, 0x1E695DF00);
          *(v26 + 56) = v27;
          v28 = sub_1B62B03CC(&qword_1EDB0E6C8, &qword_1EDB0E6D0, 0x1E695DF00);
          v29 = v2;
          *(v26 + 32) = v22;
          *(v26 + 96) = v27;
          *(v26 + 104) = v28;
          *(v26 + 64) = v28;
          *(v26 + 72) = v25;
          v30 = v22;
          v31 = v25;
          sub_1B628E67C(v26);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943060, &qword_1B63C3E18);
          swift_arrayDestroy();
          Predicate = type metadata accessor for MapsSyncQueryPredicate();
          v33 = objc_allocWithZone(Predicate);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_1B63C3D70;
          v35 = sub_1B63BEBC4();
          v36 = sub_1B63BEC94();

          v37 = [v81 predicateWithFormat:v35 argumentArray:v36];

          *(v34 + 32) = v37;
          sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
          v38 = sub_1B63BEC94();
          v2 = v29;

          v29[19].receiver = v33;
          v29[19].super_class = Predicate;
          objc_msgSendSuper2(v29 + 19, sel_initWithType_subpredicates_, 1, v38);

          sub_1B63BF164();
          v39 = *(v85 + 16);
          sub_1B63BF194();
          sub_1B63BF1A4();
          sub_1B63BF174();
          v10 = v83;
        }

        while (v82 != v16);
        v14 = v85;
        v8 = v77;
      }

      v40 = v14 >> 62;
      if (!(v14 >> 62))
      {
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8)
        {
          v41 = v8;
        }

        else
        {
          v41 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        goto LABEL_25;
      }

      result = sub_1B63BF044();
      if (result >= v8)
      {
        v75 = v8;
      }

      else
      {
        v75 = result;
      }

      if (result >= 0)
      {
        v41 = v75;
      }

      else
      {
        v41 = v8;
      }

      if (v41 < 0)
      {
        __break(1u);
      }

      else
      {
        result = sub_1B63BF044();
        if ((result & 0x8000000000000000) == 0)
        {
          if (sub_1B63BF044() < v41)
          {
            __break(1u);
            goto LABEL_73;
          }

LABEL_25:
          if ((v14 & 0xC000000000000001) != 0)
          {

            if (v41)
            {
              type metadata accessor for MapsSyncQueryPredicate();
              v42 = 0;
              do
              {
                v43 = v42 + 1;
                sub_1B63BF134();
                v42 = v43;
              }

              while (v41 != v43);
            }
          }

          else
          {
          }

          if (v40)
          {
            v45 = sub_1B63BF2C4();
            v46 = v48;
            v44 = v49;
            v47 = v50;

            if ((v47 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v44 = 0;
            v45 = v14 & 0xFFFFFFFFFFFFFF8;
            v46 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
            v47 = (2 * v41) | 1;
            if ((v47 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          sub_1B63BF384();
          swift_unknownObjectRetain_n();
          v53 = swift_dynamicCastClass();
          if (!v53)
          {
            swift_unknownObjectRelease();
            v53 = MEMORY[0x1E69E7CC0];
          }

          v54 = *(v53 + 16);

          if (__OFSUB__(v47 >> 1, v44))
          {
            __break(1u);
          }

          else if (v54 == (v47 >> 1) - v44)
          {
            v52 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v52)
            {
              goto LABEL_43;
            }

            v52 = MEMORY[0x1E69E7CC0];
LABEL_42:
            swift_unknownObjectRelease();
LABEL_43:
            LODWORD(v40) = v52 < 0 || (v52 & 0x4000000000000000) != 0;
            if (v40 != 1)
            {
              v55 = *(v52 + 16);
              v56 = __OFSUB__(v8, v55);
              v8 -= v55;
              if (!v56)
              {
                goto LABEL_48;
              }

              goto LABEL_75;
            }

LABEL_73:
            v76 = sub_1B63BF044();
            v56 = __OFSUB__(v8, v76);
            v8 -= v76;
            if (!v56)
            {
LABEL_48:
              v57 = type metadata accessor for MapsSyncQueryPredicate();
              v58 = objc_allocWithZone(v57);
              if (v40)
              {
                sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);

                sub_1B63BF2A4();
              }

              else
              {

                sub_1B63BF374();
                sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
              }

              sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
              v59 = sub_1B63BEC94();

              v2[20].receiver = v58;
              v2[20].super_class = v57;
              objc_msgSendSuper2(v2 + 20, sel_initWithType_subpredicates_, 2, v59);

              MEMORY[0x1B8C92370]();
              if (*((v2[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v2[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_52;
              }

              goto LABEL_76;
            }

LABEL_75:
            __break(1u);
LABEL_76:
            sub_1B63BECC4();
LABEL_52:
            sub_1B63BECE4();
            v4 = v2[21].receiver;
            goto LABEL_53;
          }

          swift_unknownObjectRelease_n();
LABEL_35:
          sub_1B62B7940(v45, v46, v44, v47);
          v52 = v51;
          goto LABEL_42;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
    v8 = 999;
    super_class = v0[23].super_class;
    if (!super_class)
    {
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1B63C3D50;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943068, &qword_1B63C3E20);
  *(v11 + 64) = sub_1B62B0310(&qword_1EB943070, &qword_1EB943068, &qword_1B63C3E20);
  *(v11 + 32) = super_class;
  v1 = (v11 + 32);

  sub_1B628E52C(0xD000000000000022, 0x80000001B63CC8C0, v11);
  swift_setDeallocating();
  v12 = __swift_destroy_boxed_opaque_existential_1((v11 + 32));
  MEMORY[0x1B8C92370](v12);
  if (*((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v74 = *((v0[21].receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B63BECC4();
  }

  sub_1B63BECE4();
  v4 = v2[21].receiver;
  --v8;
  v10 = v2[24].receiver;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_53:
  v2[27].receiver = v4;
  v60 = v2[22].super_class;
  if (v60)
  {
    v61 = swift_task_alloc();
    v2[27].super_class = v61;
    *v61 = v2;
    *(v61 + 1) = sub_1B62AFA24;
    v62 = v2[22].receiver;

    return sub_1B63ABEBC(v62, v60, v8);
  }

  v10 = type metadata accessor for MapsSyncQueryPredicate();
  v1 = objc_allocWithZone(v10);
  if (v4 >> 62)
  {
    goto LABEL_78;
  }

  sub_1B63BF374();
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
LABEL_59:
  v64 = v2[26].super_class;
  v66 = v2[24].super_class;
  v65 = v2[25].receiver;

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v67 = sub_1B63BEC94();

  v2[17].receiver = v1;
  v2[17].super_class = v10;
  v68 = objc_msgSendSuper2(v2 + 17, sel_initWithType_subpredicates_, 1, v67);

  v69 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
  v70 = v65;

  v71 = sub_1B62895F4(v68, v66, v65);

  v72 = v2->super_class;

  return v72(v71);
}

uint64_t sub_1B63AD734()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B628E340;

  return sub_1B63ABCB4(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B63AD81C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B628CAA0;

  return sub_1B63AB1F8(v2, v3, v4, v5, v6, v7, v9, v8);
}

id sub_1B63AD904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B63AD990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCollectionTransitItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FavoriteItemRequest.fetch(searchTerm:sortDescriptors:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[76] = v4;
  v5[75] = a4;
  v5[74] = a3;
  v5[73] = a2;
  v5[72] = a1;
  v5[77] = swift_getObjectType();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64) + 15;
  v5[78] = swift_task_alloc();
  v7 = sub_1B63BEA04();
  v5[79] = v7;
  v8 = *(v7 - 8);
  v5[80] = v8;
  v9 = *(v8 + 64) + 15;
  v5[81] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B63ADAD8, 0, 0);
}

uint64_t sub_1B63ADAD8()
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = qword_1EDB0F2A8;
  v6 = type metadata accessor for CollectionPlaceItem();
  *(v0 + 656) = v6;
  v7 = type metadata accessor for MapsSyncRequest();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store] = v5;
  *&v8[OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type] = v6;
  *(v0 + 536) = v8;
  *(v0 + 544) = v7;
  v9 = v5;
  *(v0 + 664) = objc_msgSendSuper2((v0 + 536), sel_init);
  *(v0 + 672) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D80;
  *(inited + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1B6281318();
  *(v0 + 680) = v11;
  *(inited + 64) = v11;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  v12 = MEMORY[0x1E69E72E8];
  *(inited + 96) = MEMORY[0x1E69E7290];
  *(inited + 104) = v12;
  *(inited + 72) = 2;

  v13 = sub_1B628E52C(0xD000000000000050, 0x80000001B63CC9D0, inited);
  *(v0 + 688) = v13;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943060, &qword_1B63C3E18);
  swift_arrayDestroy();
  Options = type metadata accessor for MapsSyncQueryOptions();
  *(v0 + 696) = Options;
  v15 = objc_allocWithZone(Options);
  v16 = v1;
  v17 = v13;

  v18 = sub_1B62895F4(v13, v2, v1);
  *(v0 + 704) = v18;

  v19 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  v18[v19] = 1;
  v20 = swift_task_alloc();
  *(v0 + 712) = v20;
  *v20 = v0;
  v20[1] = sub_1B63ADD70;

  return sub_1B63AF410(v18);
}

uint64_t sub_1B63ADD70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 712);
  v7 = *v2;
  *(v3 + 720) = a1;
  *(v3 + 728) = v1;

  if (v1)
  {
    v5 = sub_1B63AEDD0;
  }

  else
  {
    v5 = sub_1B63ADE88;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

int64_t sub_1B63ADE88()
{
  v1 = *(v0 + 720);
  v95 = MEMORY[0x1E69E7CC0];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = *(v0 + 720);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1B63BF044();
  v4 = *(v0 + 720);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v1 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x1B8C92830](v1, *(v0 + 720));
      }

      else
      {
        if (v1 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v1);
      }

      v10 = v9;
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v11 = *(v0 + 656);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v1;
      if (v5 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v8 = v95;
  }

  while (v5 != v3);
LABEL_21:
  v92 = v8;
  v13 = *(v0 + 720);
  v14 = *(v0 + 680);
  v15 = *(v0 + 672);
  v16 = *(v0 + 584);
  v17 = *(v0 + 576);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B63C7050;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  v20 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = v14;
  *(inited + 32) = v17;
  *(inited + 40) = v16;

  v21 = sub_1B628E52C(0xD00000000000001ALL, 0x80000001B63CA370, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  *(v18 + 32) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1B63C3D50;
  *(v22 + 56) = v20;
  *(v22 + 64) = v14;
  *(v22 + 32) = v17;
  *(v22 + 40) = v16;

  v23 = sub_1B628E52C(0xD00000000000001BLL, 0x80000001B63C81C0, v22);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v22 + 32));
  *(v18 + 40) = v23;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1B63C3D50;
  *(v24 + 56) = v20;
  *(v24 + 64) = v14;
  *(v24 + 32) = v17;
  *(v24 + 40) = v16;

  v25 = sub_1B628E52C(0xD00000000000001ELL, 0x80000001B63C81E0, v24);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v24 + 32));
  *(v18 + 48) = v25;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1B63C3D50;
  *(v26 + 56) = v20;
  *(v26 + 64) = v14;
  v27 = v92;
  *(v26 + 32) = v17;
  v28 = v26 + 32;
  *(v26 + 40) = v16;

  v29 = sub_1B628E52C(0xD00000000000001FLL, 0x80000001B63C8200, v26);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v26 + 32));
  *(v18 + 56) = v29;
  *(v0 + 568) = v18;
  if (v92 >> 62)
  {
    v30 = sub_1B63BF044();
    if (!v30)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v30 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_35;
    }
  }

  if (v30 < 1)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v31 = 0;
  v32 = *(v0 + 640);
  v33 = (v32 + 48);
  v90 = (v32 + 32);
  v89 = (v32 + 8);
  v91 = v30;
  v88 = (v32 + 48);
  do
  {
    if ((v92 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1B8C92830](v31, v27);
    }

    else
    {
      v35 = *(v27 + 8 * v31 + 32);
    }

    v36 = v35;
    v37 = *(v0 + 632);
    v38 = *(v0 + 624);
    sub_1B62D4AD4(v38);
    if ((*v33)(v38, 1, v37) == 1)
    {
      v34 = *(v0 + 624);

      sub_1B62B2DF0(v34);
    }

    else
    {
      v39 = *(v0 + 672);
      (*v90)(*(v0 + 648), *(v0 + 624), *(v0 + 632));
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_1B63C3D50;
      v41 = sub_1B63BE9C4();
      *(v40 + 56) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
      *(v40 + 64) = sub_1B63A489C();
      *(v40 + 32) = v41;
      sub_1B628E67C(v40);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v40 + 32));
      Predicate = type metadata accessor for MapsSyncQueryPredicate();
      v43 = objc_allocWithZone(Predicate);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1B63C3D70;
      v45 = sub_1B63BEBC4();
      v46 = sub_1B63BEC94();

      v47 = [objc_opt_self() predicateWithFormat:v45 argumentArray:v46];

      *(v44 + 32) = v47;
      sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
      v48 = sub_1B63BEC94();

      *(v0 + 552) = v43;
      *(v0 + 560) = Predicate;
      objc_msgSendSuper2((v0 + 552), sel_initWithType_subpredicates_, 1, v48);

      MEMORY[0x1B8C92370]();
      if (*((*(v0 + 568) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 568) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v51 = *((*(v0 + 568) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B63BECC4();
      }

      v49 = *(v0 + 648);
      v50 = *(v0 + 632);
      sub_1B63BECE4();

      (*v89)(v49, v50);
      v18 = *(v0 + 568);
      v27 = v92;
      v30 = v91;
      v33 = v88;
    }

    ++v31;
  }

  while (v30 != v31);
LABEL_35:
  *(v0 + 736) = v18;

  v52 = v18 >> 62;
  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 0x3B6)
    {
      v54 = 950;
    }

    else
    {
      v54 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v54)
    {
      goto LABEL_40;
    }

LABEL_76:
    __break(1u);
    return result;
  }

  v86 = sub_1B63BF044();
  if (sub_1B63BF044() < 0)
  {
    __break(1u);
LABEL_65:
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);

    sub_1B63BF2A4();

    goto LABEL_60;
  }

  if (v86 >= 0x3B6)
  {
    v87 = 950;
  }

  else
  {
    v87 = v86;
  }

  if (v86 >= 0)
  {
    v54 = v87;
  }

  else
  {
    v54 = 950;
  }

  result = sub_1B63BF044();
  if (result < v54)
  {
    goto LABEL_76;
  }

LABEL_40:
  if ((v18 & 0xC000000000000001) == 0)
  {

    if (!v52)
    {
      goto LABEL_45;
    }

LABEL_48:

    v29 = sub_1B63BF2C4();
    v26 = v58;
    v27 = v59;
    if (v59)
    {
      goto LABEL_50;
    }

LABEL_49:
    sub_1B62B7940(v29, v57, v26, v27);
    v61 = v60;
LABEL_56:
    swift_unknownObjectRelease();
    goto LABEL_57;
  }

  if (v54)
  {
    type metadata accessor for MapsSyncQueryPredicate();
    v55 = 0;
    do
    {
      v56 = v55 + 1;
      sub_1B63BF134();
      v55 = v56;
    }

    while (v54 != v56);
  }

  if (v52)
  {
    goto LABEL_48;
  }

LABEL_45:
  v26 = 0;
  v29 = v18 & 0xFFFFFFFFFFFFFF8;
  v57 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
  v27 = (2 * v54) | 1;
  if ((v27 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_50:
  v28 = v57;
  sub_1B63BF384();
  swift_unknownObjectRetain_n();
  v62 = swift_dynamicCastClass();
  if (!v62)
  {
    swift_unknownObjectRelease();
    v62 = MEMORY[0x1E69E7CC0];
  }

  v63 = *(v62 + 16);

  if (__OFSUB__(v27 >> 1, v26))
  {
    goto LABEL_67;
  }

  if (v63 != (v27 >> 1) - v26)
  {
LABEL_68:
    swift_unknownObjectRelease();
    v57 = v28;
    goto LABEL_49;
  }

  v61 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v61)
  {
    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

LABEL_57:
  if (v61 < 0 || (v61 & 0x4000000000000000) != 0)
  {
    goto LABEL_65;
  }

  sub_1B63BF374();
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
LABEL_60:
  v93 = *(v0 + 696);
  v94 = *(v0 + 616);
  v64 = *(v0 + 608);
  v65 = *(v0 + 600);
  v66 = *(v0 + 592);

  v67 = type metadata accessor for MapsSyncQueryPredicate();
  v68 = objc_allocWithZone(v67);
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v69 = sub_1B63BEC94();

  v70 = [v68 initWithType:2 subpredicates:v69];
  *(v0 + 744) = v70;

  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1B63C4B90;
  *(v71 + 32) = _s8MapsSync0aB14QueryPredicateC013mapsFavoritesD06hidden20includeNearbyTransitACSb_SbtFZ_0(0, 1);
  *(v71 + 40) = v70;
  v72 = objc_allocWithZone(v67);
  v73 = v70;
  v74 = sub_1B63BEC94();

  v75 = [v72 initWithType:1 subpredicates:v74];
  *(v0 + 752) = v75;

  v76 = objc_allocWithZone(v93);

  v77 = v65;
  v78 = v75;
  v79 = sub_1B62895F4(v75, v66, v65);
  *(v0 + 760) = v79;

  v80 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_lazyLoad;
  swift_beginAccess();
  v79[v80] = 1;
  v81 = v79;
  *(v0 + 768) = sub_1B62835B4();
  v82 = swift_allocObject();
  *(v0 + 776) = v82;
  v82[2] = v64;
  v82[3] = v79;
  v82[4] = v94;
  v83 = v81;
  v84 = v64;
  v85 = swift_task_alloc();
  *(v0 + 784) = v85;
  *v85 = v0;
  v85[1] = sub_1B63AE9A0;

  return sub_1B62857BC(sub_1B6283660, v82);
}

uint64_t sub_1B63AE9A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 784);
  v9 = *v2;
  v3[99] = a1;
  v3[100] = v1;

  if (v1)
  {
    v5 = sub_1B63AECE8;
  }

  else
  {
    v6 = v3[97];
    v7 = v3[96];

    v5 = sub_1B63AEACC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63AEACC()
{
  v1 = *(v0 + 792);

  v24 = MEMORY[0x1E69E7CC0];
  if (!(v1 >> 62))
  {
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_19:
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (*(v0 + 792) < 0)
  {
    v11 = *(v0 + 792);
  }

  v3 = sub_1B63BF044();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = *(v0 + 792) + 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v4;
    while (1)
    {
      if (v5)
      {
        v8 = MEMORY[0x1B8C92830](v7, *(v0 + 792));
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v6 + 8 * v7);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for FavoriteItem();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    MEMORY[0x1B8C92370]();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B63BECC4();
    }

    sub_1B63BECE4();
    v1 = v24;
  }

  while (v4 != v3);
LABEL_23:
  v23 = v1;
  v12 = *(v0 + 792);
  v13 = *(v0 + 760);
  v14 = *(v0 + 752);
  v15 = *(v0 + 744);
  v16 = *(v0 + 736);
  v17 = *(v0 + 704);
  v18 = *(v0 + 688);
  v19 = *(v0 + 648);
  v20 = *(v0 + 624);

  v21 = *(v0 + 8);

  return v21(v23);
}

uint64_t sub_1B63AECE8()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[92];
  v7 = v0[88];
  v8 = v0[86];
  v9 = v0[83];

  v10 = v0[100];
  v11 = v0[81];
  v12 = v0[78];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B63AEDD0()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 664);

  v3 = *(v0 + 728);
  v4 = *(v0 + 648);
  v5 = *(v0 + 624);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B63AEFFC(int a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_1B63BEBD4();
  v11 = v10;
  v5[5] = v10;
  if (a2)
  {
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    a2 = sub_1B63BECA4();
  }

  v5[6] = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1B63AF120;

  return FavoriteItemRequest.fetch(searchTerm:sortDescriptors:range:)(v9, v11, a2, a3);
}

uint64_t sub_1B63AF120()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 48);

  if (v2)
  {
    v11 = sub_1B63BE814();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    type metadata accessor for FavoriteItem();
    v11 = sub_1B63BEC94();

    v13 = v11;
    v12 = 0;
  }

  v14 = *(v4 + 32);
  (v14)[2](v14, v13, v12);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t sub_1B63AF304()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B628E340;

  return sub_1B63AEFFC(v2, v3, v4, v5, v6);
}

uint64_t sub_1B63AF3CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedIncidentReport();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B63AF410(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B629DA68, 0, 0);
}

uint64_t sub_1B63AF480(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  v5[8] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B63AF5DC, 0, 0);
  }

  else
  {
    v7 = v5[5];
    v6 = v5[6];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_1B63AF5DC()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

void sub_1B63AF648(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_45:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = a2;
  v4 = 0;
  v5 = a1 + 32;
  v28 = *(a1 + 16);
  v30 = a1 + 32;
  v31 = OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type;
  do
  {
    v6 = *(v5 + 8 * v4);
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v20 = *(v5 + 8 * v4);
      }

      if (sub_1B63BF044() < 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_4;
    }

    v7 = *(v32 + v31);
    sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);

    v8 = sub_1B63BEC94();
    v34 = [v7 mergeWithDuplicates_];

    v35 = MEMORY[0x1E69E7CC0];
    if (v6 >> 62)
    {
      v9 = sub_1B63BF044();
      if (v9)
      {
LABEL_9:
        v33 = v4;
        v10 = 0;
        v11 = (v6 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1B8C92830](v10, v6);
          }

          else
          {
            if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v12 = *(v6 + 8 * v10 + 32);
          }

          v13 = v12;
          v2 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (sub_1B63BEF24())
          {
          }

          else
          {
            sub_1B63BF164();
            v3 = *(v35 + 2);
            sub_1B63BF194();
            sub_1B63BF1A4();
            sub_1B63BF174();
          }

          ++v10;
          if (v2 == v9)
          {
            v14 = v35;
            v2 = v28;
            v3 = a2;
            v4 = v33;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        swift_once();
LABEL_44:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1B63C3D50;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1B6281318();
        *(v26 + 32) = v3;
        *(v26 + 40) = v2;
        sub_1B63BEA14();

        goto LABEL_45;
      }
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_22:

    if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
    {
      v15 = sub_1B63BF044();
      if (v15)
      {
LABEL_25:
        v16 = 0;
        v11 = (v14 & 0xC000000000000001);
        do
        {
          if (v11)
          {
            v17 = MEMORY[0x1B8C92830](v16, v14);
          }

          else
          {
            if (v16 >= *(v14 + 16))
            {
              goto LABEL_49;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_48;
          }

          [v3 deleteObject_];

          ++v16;
        }

        while (v19 != v15);
      }
    }

    else
    {
      v15 = *(v14 + 16);
      if (v15)
      {
        goto LABEL_25;
      }
    }

    v5 = v30;
LABEL_4:
    ++v4;
  }

  while (v4 != v2);
  v35 = 0;
  v21 = [v3 save_];
  v22 = v35;
  if (!v21)
  {
    v25 = v35;
    v11 = sub_1B63BE824();

    swift_willThrow();
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1B63BF114();
    MEMORY[0x1B8C92330](0x616620656772654DLL, 0xEE00203A64656C69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    sub_1B63BF1B4();
    v3 = v35;
    v2 = v36;
    sub_1B63BEDC4();
    if (qword_1EDB0F690 != -1)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  v23 = *MEMORY[0x1E69E9840];

  v24 = v22;
}

uint64_t sub_1B63AFAF8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63AFB68, 0, 0);
}

uint64_t sub_1B63AFB68()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[4] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B63AFC6C;

  return sub_1B629CD38(sub_1B629D160, v3);
}

uint64_t sub_1B63AFC6C(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B63AFDC8, 0, 0);
  }

  else
  {
    v7 = v5[4];
    v6 = v5[5];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_1B63AFDC8()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_1B63AFE34(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1B63AFEA4, 0, 0);
}

uint64_t sub_1B63AFEA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[5] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v1;
  v6 = v3;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B629D880;

  return sub_1B62AD654(sub_1B63B10C8, v4);
}

uint64_t sub_1B63B0128(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = swift_getObjectType();
  v2[4] = _Block_copy(a1);
  v5 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B63B01B4, 0, 0);
}

uint64_t sub_1B63B01B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[5] = sub_1B62835B4();
  v3 = swift_allocObject();
  v0[6] = v3;
  v3[2] = v1;
  v3[3] = 0;
  v3[4] = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B63B02B8;

  return sub_1B629CD38(sub_1B629D148, v3);
}

uint64_t sub_1B63B02B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1B63B0478;
  }

  else
  {
    v9 = v4[5];
    v8 = v4[6];

    v4[9] = a1;
    v7 = sub_1B63B03F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B63B03F0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 32));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B63B0478()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  v6 = sub_1B63BE814();
  (*(v4 + 16))(v4, 0, v6);

  _Block_release(*(v0 + 32));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B63B06B8(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = swift_getObjectType();
  v3[5] = _Block_copy(a2);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B63B0754, 0, 0);
}

uint64_t sub_1B63B0754()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v3;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B63B0864;

  return sub_1B629CD38(sub_1B629D148, v4);
}

uint64_t sub_1B63B0864(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1B63B0A30;
  }

  else
  {
    v9 = v4[6];
    v8 = v4[7];

    v4[10] = a1;
    v7 = sub_1B63B099C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B63B099C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 40));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B63B0A30()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  v7 = sub_1B63BE814();
  (*(v4 + 16))(v4, 0, v7);

  _Block_release(*(v0 + 40));
  v8 = *(v0 + 8);

  return v8();
}

void sub_1B63B0AF4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type);
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    (*(v9 + 8))(*(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store), a1, v8);
    if (v43)
    {
      return;
    }

    v43 = 0;
  }

  if (*(*(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store) + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_shouldDeleteDuplicates) == 1)
  {
    v11 = [v8 findDuplicatesWithContext_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
    v12 = sub_1B63BECA4();

    sub_1B63AF648(v12, a1);
  }

  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v8 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = (*(v13 + 8))(a3, v8, v13);
    sub_1B639E494(v15);
  }

  v8[68]();
  v16 = [swift_getObjCClassFromMetadata() entityName];
  if (!v16)
  {
    sub_1B63BEBD4();
    v16 = sub_1B63BEBC4();
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v17 setResultType_];
  v18 = *(a3 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToFetch);
  v19 = sub_1B63BEC94();
  [v17 setPropertiesToFetch_];

  v20 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v21 = *(a3 + v20);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B63C4B90;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v23 = v21;
    *(v22 + 32) = sub_1B63BED94();
    *(v22 + 40) = v23;
    v24 = objc_allocWithZone(MEMORY[0x1E696AB28]);
    v25 = v23;
    v26 = sub_1B63BEC94();

    v27 = [v24 initWithType:1 subpredicates:v26];
  }

  else
  {
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v27 = sub_1B63BED94();
  }

  [v17 setPredicate_];

  v28 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  if (*(a3 + v28))
  {
    v29 = *(a3 + v28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B63C3D70;
    v31 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v32 = sub_1B63BEBC4();
    v33 = [v31 initWithKey:v32 ascending:1];

    *(v30 + 32) = v33;
  }

  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);

  v34 = sub_1B63BEC94();

  [v17 setSortDescriptors_];

  v35 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v36 = *(a3 + v35);
  if (v36)
  {
    v37 = &v36[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
    v38 = *&v36[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
    v39 = v36;
    [v17 setFetchOffset_];
    [v17 setFetchLimit_];
  }

  if (*(a3 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy))
  {
    v40 = *(a3 + OBJC_IVAR____TtC8MapsSync30MapsSyncDictionaryQueryOptions_propertiesToGroupBy);

    v41 = sub_1B63BEC94();

    [v17 setPropertiesToGroupBy_];
  }

  sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
  v42 = sub_1B63BEEA4();

  if (!v43)
  {
    *a4 = v42;
  }
}

uint64_t sub_1B63B1270(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = swift_getObjectType();
  v3[5] = _Block_copy(a2);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B63B130C, 0, 0);
}

uint64_t sub_1B63B130C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v3;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B63B141C;

  return sub_1B62AD654(sub_1B63B45AC, v4);
}

uint64_t sub_1B63B141C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1B63B1614;
  }

  else
  {
    v9 = v4[6];
    v8 = v4[7];

    v4[10] = a1;
    v7 = sub_1B63B1554;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B63B1554()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
  v3 = sub_1B63BEC94();

  v4 = *(v0 + 40);
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B63B1614()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  v6 = sub_1B63BE814();
  v7 = v0[5];
  (v7)[2](v7, 0, v6);

  _Block_release(v7);
  v8 = v0[1];

  return v8();
}

void sub_1B63B16D0(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type);
  (*(v6 + 544))();
  v7 = [swift_getObjCClassFromMetadata() entityName];
  if (!v7)
  {
    sub_1B63BEBD4();
    v7 = sub_1B63BEBC4();
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E695D560]) initWithEntityName_];

  [v8 setResultType_];
  *&v39 = 0;
  sub_1B63BEB64();
  [v8 setPropertiesToUpdate_];

  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = (*(v9 + 8))(a4, v6, v9);
  }

  else
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v10 = a4;
  }

  a4 = v10;
  v11 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v12 = *&a4[v11];
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B63C4B90;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v14 = v12;
    *(v13 + 32) = sub_1B63BED94();
    *(v13 + 40) = v14;
    v15 = objc_allocWithZone(MEMORY[0x1E696AB28]);
    v16 = v14;
    v17 = sub_1B63BEC94();

    v18 = [v15 initWithType:1 subpredicates:v17];
  }

  else
  {
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v18 = sub_1B63BED94();
  }

  [v8 setPredicate_];

LABEL_11:
  *&v39 = 0;
  v19 = [a1 executeRequest:v8 error:&v39];
  v20 = v39;
  if (v19)
  {
    v21 = v19;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v23 = v20;
    if (v22)
    {
      if ([v22 result])
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39 = v37;
      v40 = v38;
      if (*(&v38 + 1))
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437B8, &qword_1B63C7120);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_27;
        }

        *&v39 = 0;
        *(&v39 + 1) = 0xE000000000000000;
        sub_1B63BF114();

        *&v39 = 0xD000000000000018;
        *(&v39 + 1) = 0x80000001B63CCC10;
        if (v37 >> 62)
        {
          sub_1B63BF044();
        }

        else
        {
          v26 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v27 = sub_1B63BF344();
        MEMORY[0x1B8C92330](v27);

        MEMORY[0x1B8C92330](0x287463656A626F20, 0xEA00000000002973);
        _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v39, *(&v39 + 1));

        v28 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9437C0, &qword_1B63C7128);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B63C3D50;
        v30 = *MEMORY[0x1E695D2F8];
        *&v39 = sub_1B63BEBD4();
        *(&v39 + 1) = v31;
        sub_1B63BF0C4();
        *(inited + 96) = v25;
        *(inited + 72) = v37;
        sub_1B6382C3C(inited);
        swift_setDeallocating();
        sub_1B6284EAC(inited + 32, &qword_1EB9434F0, &qword_1B63C61A8);
        v32 = sub_1B63BEB54();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1B63C3D70;
        *(v33 + 32) = a1;
        sub_1B6281C60(0, &unk_1EDB0EF80, 0x1E695D628);
        v34 = a1;
        v35 = sub_1B63BEC94();

        [v28 mergeChangesFromRemoteContextSave:v32 intoContexts:v35];

        goto LABEL_23;
      }
    }

    else
    {

      v39 = 0u;
      v40 = 0u;
    }

    sub_1B6284EAC(&v39, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_27;
  }

  v24 = v39;
  sub_1B63BE824();

  swift_willThrow();
LABEL_23:

LABEL_27:
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B63B1F3C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B63B1FD4, 0, 0);
}

uint64_t sub_1B63B1FD4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1B63B20EC;

  return (sub_1B62ADB40)();
}

uint64_t sub_1B63B20EC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1B63B22A0;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_1B63B2210;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63B2210()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 40));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B63B22A0()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  v7 = sub_1B63BE814();
  (*(v4 + 16))(v4, v7);

  _Block_release(*(v0 + 40));
  v8 = *(v0 + 8);

  return v8();
}

void sub_1B63B2368(void *a1, uint64_t a2, char *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type);
  (*(v5 + 544))();
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  v7 = swift_conformsToProtocol2();
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    v9 = a3;
  }

  else
  {
    v9 = (*(v7 + 8))(a3, v5, v7);
  }

  a3 = v9;
  v10 = a1;
  v11 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_predicate;
  swift_beginAccess();
  v12 = *&a3[v11];
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B63C4B90;
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v14 = v12;
    *(v13 + 32) = sub_1B63BED94();
    *(v13 + 40) = v14;
    v15 = objc_allocWithZone(MEMORY[0x1E696AB28]);
    v16 = v14;
    v17 = sub_1B63BEC94();

    v18 = [v15 initWithType:1 subpredicates:v17];
  }

  else
  {
    sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
    v18 = sub_1B63BED94();
  }

  [v6 setPredicate_];

  v19 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_sortDescriptors;
  swift_beginAccess();
  if (*&a3[v19])
  {
    v20 = *&a3[v19];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B63C3D70;
    v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v23 = sub_1B63BEBC4();
    v24 = [v22 initWithKey:v23 ascending:1];

    *(v21 + 32) = v24;
  }

  a1 = v10;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);

  v25 = sub_1B63BEC94();

  [v6 setSortDescriptors_];

  v26 = OBJC_IVAR____TtC8MapsSync20MapsSyncQueryOptions_range;
  swift_beginAccess();
  v27 = *&a3[v26];
  if (v27)
  {
    v28 = &v27[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
    v29 = *&v27[OBJC_IVAR____TtC8MapsSync13MapsSyncRange__range];
    v30 = v27;
    [v6 setFetchOffset_];
    [v6 setFetchLimit_];
  }

LABEL_17:
  v31 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v31 setResultType_];
  *&v53 = 0;
  v32 = [a1 executeRequest:v31 error:&v53];
  v33 = v53;
  if (!v32)
  {
    v37 = v53;
    sub_1B63BE824();

    swift_willThrow();
    goto LABEL_33;
  }

  v34 = v32;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  v36 = v33;
  if (!v35)
  {

    v53 = 0u;
    v54 = 0u;
LABEL_30:
    sub_1B6284EAC(&v53, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_33;
  }

  if ([v35 result])
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {

    goto LABEL_30;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437B8, &qword_1B63C7120);
  if (swift_dynamicCast())
  {
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_1B63BF114();

    *&v53 = 0xD000000000000018;
    *(&v53 + 1) = 0x80000001B63CCBF0;
    v39 = a1;
    if (v51 >> 62)
    {
      sub_1B63BF044();
    }

    else
    {
      v40 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = sub_1B63BF344();
    MEMORY[0x1B8C92330](v41);

    MEMORY[0x1B8C92330](0x287463656A626F20, 0xEA00000000002973);
    _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v53, *(&v53 + 1));

    v50 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9437C0, &qword_1B63C7128);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    v43 = *MEMORY[0x1E695D2F8];
    *&v53 = sub_1B63BEBD4();
    *(&v53 + 1) = v44;
    sub_1B63BF0C4();
    *(inited + 96) = v38;
    *(inited + 72) = v51;
    sub_1B6382C3C(inited);
    swift_setDeallocating();
    sub_1B6284EAC(inited + 32, &qword_1EB9434F0, &qword_1B63C61A8);
    v45 = sub_1B63BEB54();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1B63C3D70;
    *(v46 + 32) = v39;
    sub_1B6281C60(0, &unk_1EDB0EF80, 0x1E695D628);
    v47 = v39;
    v48 = sub_1B63BEC94();

    [v50 mergeChangesFromRemoteContextSave:v45 intoContexts:v48];
  }

  else
  {
  }

LABEL_33:
  v49 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B63B2CCC(void *a1, const void *a2, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = swift_getObjectType();
  v3[5] = _Block_copy(a2);
  v7 = a1;
  v8 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B63B2D68, 0, 0);
}

uint64_t sub_1B63B2D68()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[6] = sub_1B62835B4();
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = v3;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1B63B2E78;

  return sub_1B62ADB40(sub_1B62ADB40, sub_1B63B34C8, v4);
}

uint64_t sub_1B63B2E78()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1B63B3020;
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    v4 = sub_1B63B2F9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B63B2F9C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B63B3020()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  v6 = sub_1B63BE814();
  (*(v4 + 16))(v4, v6);

  _Block_release(*(v0 + 40));
  v7 = *(v0 + 8);

  return v7();
}

id MapsSyncRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of MapsSyncRequest.count()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B629DD18;

  return v6();
}

uint64_t dispatch thunk of MapsSyncRequest.fetchProperties(options:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628FBFC;

  return v8(a1);
}

uint64_t sub_1B63B3414()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628E340;

  return sub_1B63B2CCC(v2, v3, v4);
}

void sub_1B63B3540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t))
{
  (*(*(a5 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type) + 544))();
  v10 = [swift_getObjCClassFromMetadata() entityName];
  if (!v10)
  {
    sub_1B63BEBD4();
    v10 = sub_1B63BEBC4();
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v41 setResultType_];
  v11 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v12 = sub_1B63BEBC4();
  [v11 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B63C3D50;
  v14 = sub_1B63BEBC4();
  v15 = objc_opt_self();
  v16 = [v15 expressionForKeyPath_];

  *(v13 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
  *(v13 + 32) = v16;
  v17 = sub_1B63BEBC4();
  v18 = sub_1B63BEC94();

  v19 = [v15 expressionForFunction:v17 arguments:v18];

  [v11 setExpression_];
  [v11 setExpressionResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943700, &unk_1B63C3EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1B639C584(inited);
  sub_1B639CA54(a4);

  v21 = sub_1B63BEC94();

  v22 = v41;
  [v41 setPropertiesToGroupBy_];

  v23 = sub_1B639CA54(a4);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1B63C3D80;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 32) = a1;
  *(v24 + 40) = a2;
  *(v24 + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
  *(v24 + 64) = v11;
  *&v46[0] = v23;
  v25 = v11;

  sub_1B639C48C(v24);
  v26 = sub_1B63BEC94();

  [v41 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B63C3D70;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = sub_1B63BEBC4();
  v30 = [v28 initWithKey:v29 ascending:0];

  *(v27 + 32) = v30;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
  v31 = sub_1B63BEC94();

  [v41 setSortDescriptors_];

  sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
  v32 = sub_1B63BEEA4();
  if (v40)
  {
  }

  else
  {
    v33 = v32;
    if (v32 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
    {
      v39 = v25;
      v25 = 0;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1B8C92830](v25, v33);
        }

        else
        {
          if (v25 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v35 = *(v33 + 8 * v25 + 32);
        }

        v36 = v35;
        v37 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        *&v44 = 0x746E756F63;
        *(&v44 + 1) = 0xE500000000000000;
        v22 = [v35 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v22)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v44 = 0u;
          v45 = 0u;
        }

        v46[0] = v44;
        v46[1] = v45;
        if (*(&v45 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v47 < 2)
            {

              v38 = v39;
              goto LABEL_25;
            }

            a7(v36, a6);
          }
        }

        else
        {

          sub_1B6284EAC(v46, &unk_1EB943740, &qword_1B63C5030);
        }

        ++v25;
        if (v37 == i)
        {

          v38 = v41;
LABEL_25:

          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_30:
  }
}

void sub_1B63B3BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  (*(*(a5 + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type) + 544))();
  v12 = [swift_getObjCClassFromMetadata() entityName];
  if (!v12)
  {
    sub_1B63BEBD4();
    v12 = sub_1B63BEBC4();
  }

  v41 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v41 setResultType_];
  v13 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  v14 = sub_1B63BEBC4();
  [v13 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B63C3D50;
  v16 = sub_1B63BEBC4();
  v17 = objc_opt_self();
  v18 = [v17 expressionForKeyPath_];

  *(v15 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
  *(v15 + 32) = v18;
  v19 = sub_1B63BEBC4();
  v20 = sub_1B63BEC94();

  v21 = [v17 expressionForFunction:v19 arguments:v20];

  [v13 setExpression_];
  [v13 setExpressionResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943700, &unk_1B63C3EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1B639C584(inited);
  sub_1B639CA54(a4);

  v23 = sub_1B63BEC94();

  [v41 setPropertiesToGroupBy_];

  v24 = sub_1B639CA54(a4);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1B63C3D80;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 32) = a1;
  *(v25 + 40) = a2;
  *(v25 + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
  *(v25 + 64) = v13;
  *&v49[0] = v24;
  v26 = v13;

  sub_1B639C48C(v25);
  v27 = sub_1B63BEC94();

  [v41 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B63C3D70;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = sub_1B63BEBC4();
  v31 = [v29 initWithKey:v30 ascending:0];

  v32 = v41;
  *(v28 + 32) = v31;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
  v33 = sub_1B63BEC94();

  [v41 setSortDescriptors_];

  sub_1B6281C60(0, &qword_1EB942B90, 0x1E695DF20);
  v34 = v45;
  v46 = sub_1B63BEEA4();
  if (v34)
  {
  }

  else
  {
    if (v46 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B63BF044())
    {
      v32 = 0;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1B8C92830](v32, v46);
        }

        else
        {
          if (v32 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v36 = *(v46 + 8 * v32 + 32);
        }

        v37 = v36;
        v38 = (v32 + 1);
        if (__OFADD__(v32, 1))
        {
          break;
        }

        *&v47 = 0x746E756F63;
        *(&v47 + 1) = 0xE500000000000000;
        v39 = [v36 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v39)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
        }

        else
        {
          v47 = 0u;
          v48 = 0u;
        }

        v49[0] = v47;
        v49[1] = v48;
        if (*(&v48 + 1))
        {
          if (swift_dynamicCast())
          {
            if (v50 < 2)
            {

              goto LABEL_29;
            }

            sub_1B639F524(v37, a6, a7, a8, a9, a10);
          }
        }

        else
        {

          sub_1B6284EAC(v49, &unk_1EB943740, &qword_1B63C5030);
        }

        ++v32;
        if (v38 == i)
        {

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_29:
  }
}

uint64_t sub_1B63B4298()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B628CAA0;

  return sub_1B63B1F3C(v2, v3, v5, v4);
}

uint64_t sub_1B63B4378()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B63B1270(v2, v3, v4);
}

uint64_t sub_1B63B442C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B63B06B8(v2, v3, v4);
}

uint64_t sub_1B63B44E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628CAA0;

  return sub_1B63B0128(v2, v3);
}

id sub_1B63B4620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedAnalyticsIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B63B46D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63B472C(uint64_t a1)
{
  result = 0xD000000000000010;
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        return 0xD00000000000001BLL;
      }

      return result;
    }

    if (a1 == 5)
    {
      return 0xD000000000000016;
    }

    if (a1 == 6)
    {
      return 0xD00000000000002ALL;
    }

LABEL_16:
    result = sub_1B63BF3A4();
    __break(1u);
    return result;
  }

  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  if (a1 != 2)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B63B4880()
{
  v2 = *v0;
  sub_1B63BF434();
  sub_1B63BEB94();
  return sub_1B63BF494();
}

uint64_t sub_1B63B48E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B63B4C4C();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1B63B4930()
{
  v2 = *v0;
  sub_1B63BF434();
  sub_1B63BEB94();
  return sub_1B63BF494();
}

uint64_t sub_1B63B4990(uint64_t a1)
{
  v2 = sub_1B63B4C4C();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1B63B49CC(uint64_t a1)
{
  v2 = sub_1B63B4C4C();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1B63B4A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B63B4C4C();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

unint64_t sub_1B63B4A84()
{
  result = qword_1EB942F50;
  if (!qword_1EB942F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F50);
  }

  return result;
}

unint64_t sub_1B63B4ADC()
{
  result = qword_1EB942F68;
  if (!qword_1EB942F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F68);
  }

  return result;
}

unint64_t sub_1B63B4B34()
{
  result = qword_1EB942F58;
  if (!qword_1EB942F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F58);
  }

  return result;
}

unint64_t sub_1B63B4B8C()
{
  result = qword_1EB942F48;
  if (!qword_1EB942F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F48);
  }

  return result;
}

unint64_t sub_1B63B4BE4()
{
  result = qword_1EB942BA8;
  if (!qword_1EB942BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942BA8);
  }

  return result;
}

unint64_t sub_1B63B4C4C()
{
  result = qword_1EB942F60;
  if (!qword_1EB942F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F60);
  }

  return result;
}

id sub_1B63B4D00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedSharedTripBlockedItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63B4DDC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64756F6C43;
  }

  else
  {
    v2 = 0x6C61636F4CLL;
  }

  if (*a2)
  {
    v3 = 0x64756F6C43;
  }

  else
  {
    v3 = 0x6C61636F4CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B63BF364();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B63B4E5C()
{
  v1 = *v0;
  sub_1B63BF434();
  sub_1B63BEC24();

  return sub_1B63BF494();
}

uint64_t sub_1B63B4ECC()
{
  *v0;
  sub_1B63BEC24();
}

uint64_t sub_1B63B4F20()
{
  v1 = *v0;
  sub_1B63BF434();
  sub_1B63BEC24();

  return sub_1B63BF494();
}

uint64_t sub_1B63B4F8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B63BF314();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B63B4FEC(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636F4CLL;
  if (*v1)
  {
    v2 = 0x64756F6C43;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

unint64_t sub_1B63B5038@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B63B5264(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static MapsSyncStoreConfig.withConfig(primary:cache:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsSyncStoreConfig();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8MapsSync19MapsSyncStoreConfig_primary] = a1;
  *&v5[OBJC_IVAR____TtC8MapsSync19MapsSyncStoreConfig_cache] = a2;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id MapsSyncStoreConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapsSyncStoreConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncStoreConfig();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B63B5264(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B63B52A0()
{
  result = qword_1EB942F88;
  if (!qword_1EB942F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB942F88);
  }

  return result;
}

id MapsSyncManagedCachedMapItemStorage.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id MapsSyncManagedCachedMapItemStorage.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id MapsSyncManagedCachedMapItemStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedCachedMapItemStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CollectionItem.__allocating_init(collection:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollection_];

  return v3;
}

id CollectionItem.init(collection:)(void *a1)
{
  v3 = [v1 init];
  sub_1B62CDF2C(a1);

  return v3;
}

id sub_1B63B55A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedHistoryTransitItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63B55FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedCuratedCollection();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B63B5640@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedReviewedPlace();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

uint64_t sub_1B63B5728(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;
  v8 = a2;
  MapsSyncCatchObjC(_:)(sub_1B63B5BD8, v6);
}

void sub_1B63B5910(void *a1, uint64_t a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v5 = [a1 countForFetchRequest:a2 error:v19];
  if (v19[0])
  {
    swift_willThrow();
  }

  else if (v5 > a3)
  {
    v6 = v5;
    type metadata accessor for MapsSyncManagedHistoryItem();
    v7 = [swift_getObjCClassFromMetadata() fetchRequest];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B63C3D70;
    v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v10 = sub_1B63BEBC4();
    v11 = [v9 initWithKey:v10 ascending:1];

    *(v8 + 32) = v11;
    sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
    v12 = sub_1B63BEC94();

    [v7 setSortDescriptors_];

    if (__OFSUB__(v6, a3))
    {
      __break(1u);
    }

    [v7 setFetchLimit_];
    v13 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
    v19[0] = 0;
    v14 = [a1 executeRequest:v13 error:v19];
    if (v14)
    {
      v15 = v14;
      v16 = v19[0];
    }

    else
    {
      v18 = v19[0];
      sub_1B63BE824();

      swift_willThrow();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1B63B5BF8(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = result;
  v2 = sub_1B63BF044();
  result = v1;
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1B8C92830](0, result);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B63B5C84(id a1, uint64_t a2, char a3, uint64_t a4, char a5, void *a6)
{
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v8 = [swift_getObjCClassFromMetadata() entityName];
  if (!v8)
  {
    sub_1B63BEBD4();
    v8 = sub_1B63BEBC4();
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B63C4B90;
  v11 = (a5 & 1) == 0;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1B63BEBC4();
  v14 = [v12 initWithKey:v13 ascending:v11];

  *(v10 + 32) = v14;
  v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v16 = sub_1B63BEBC4();
  v17 = [v15 initWithKey:v16 ascending:v11];

  *(v10 + 40) = v17;
  sub_1B6281C60(0, &qword_1EDB0F638, 0x1E696AEB0);
  v18 = sub_1B63BEC94();

  [v9 setSortDescriptors_];

  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
  v20 = sub_1B63BED94();
  [v9 setPredicate_];

  if (a1)
  {
    a1 = a1;
    v21 = sub_1B63BEBC4();
    v22 = [a1 valueForKey_];

    if (v22)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
    }

    aBlock = v70;
    v73 = v71;
    if (*(&v71 + 1))
    {
      if (swift_dynamicCast())
      {
        v64 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
        if (a5)
        {
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1B63C3D50;
          v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
          *(v23 + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
          *(v23 + 64) = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
          *(v23 + 32) = v24;
          v25 = sub_1B63BED94();
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1B63C4B90;
          v27 = v25;
          *(v26 + 32) = sub_1B63BED94();
          *(v26 + 40) = v27;
          v28 = objc_allocWithZone(MEMORY[0x1E696AB28]);
          v29 = v27;
          v30 = sub_1B63BEC94();

          v31 = [v28 initWithType:1 subpredicates:v30];

          [v9 setPredicate_];
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1B63C4B90;
          v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
          v34 = sub_1B63BEBC4();
          v35 = [v33 initWithKey:v34 ascending:0];

          *(v32 + 32) = v35;
          v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
          v37 = sub_1B63BEBC4();
          isEscapingClosureAtFileLocation = MEMORY[0x1E69E7CC0];
          v38 = [v36 initWithKey:v37 ascending:0];

          *(v32 + 40) = v38;
        }

        else
        {
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1B63C3D50;
          v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
          *(v40 + 56) = sub_1B6281C60(0, &qword_1EDB0F620, 0x1E696AD98);
          *(v40 + 64) = sub_1B62B03CC(&qword_1EB942B80, &qword_1EDB0F620, 0x1E696AD98);
          *(v40 + 32) = v41;
          v42 = sub_1B63BED94();
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1B63C4B90;
          v44 = v42;
          *(v43 + 32) = sub_1B63BED94();
          *(v43 + 40) = v44;
          v45 = objc_allocWithZone(MEMORY[0x1E696AB28]);
          v46 = v44;
          v47 = sub_1B63BEC94();

          v48 = [v45 initWithType:1 subpredicates:v47];

          [v9 setPredicate_];
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1B63C4B90;
          v50 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
          v51 = sub_1B63BEBC4();
          v52 = [v50 initWithKey:v51 ascending:1];

          *(v49 + 32) = v52;
          v53 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
          v54 = sub_1B63BEBC4();
          v55 = [v53 initWithKey:v54 ascending:0];

          *(v49 + 40) = v55;
        }

        v39 = sub_1B63BEC94();

        [v9 setSortDescriptors_];

        goto LABEL_13;
      }
    }

    else
    {
      sub_1B6284EAC(&aBlock, &unk_1EB943740, &qword_1B63C5030);
    }

    v59 = 0x80000001B63CD2F0;
    sub_1B63BEDC4();
    if (qword_1EDB0F690 == -1)
    {
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1B63C3D50;
      *(v62 + 56) = MEMORY[0x1E69E6158];
      *(v62 + 64) = sub_1B6281318();
      *(v62 + 32) = 0xD000000000000036;
      *(v62 + 40) = v59;
      sub_1B63BEA14();

      return isEscapingClosureAtFileLocation;
    }

LABEL_22:
    swift_once();
    goto LABEL_19;
  }

LABEL_13:
  if ((a3 & 1) == 0)
  {
    [v9 setFetchOffset_];
  }

  [v9 setFetchLimit_];
  *&v70 = isEscapingClosureAtFileLocation;
  v56 = swift_allocObject();
  v56[2] = a6;
  v56[3] = v9;
  v56[4] = &v70;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1B63BD808;
  *(v57 + 24) = v56;
  v74 = sub_1B62B8284;
  v75 = v57;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_1B62B1294;
  *(&v73 + 1) = &block_descriptor_29;
  v58 = _Block_copy(&aBlock);
  v59 = v75;
  v60 = a6;
  v61 = v9;

  [v60 performBlockAndWait_];

  _Block_release(v58);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = v70;

  return isEscapingClosureAtFileLocation;
}

unint64_t sub_1B63B66F4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
  result = sub_1B63BEEA4();
  v5 = result;
  if (result >> 62)
  {
    result = sub_1B63BF044();
    v6 = result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      MEMORY[0x1B8C92830](i, v5);
      type metadata accessor for MapsSyncManagedFavoriteItem();
      if (swift_dynamicCastClass())
      {
        v8 = swift_unknownObjectRetain();
        MEMORY[0x1B8C92370](v8);
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B63BECC4();
        }

        sub_1B63BECE4();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    type metadata accessor for MapsSyncManagedFavoriteItem();
    v10 = 32;
    do
    {
      v11 = *(v5 + v10);
      if (swift_dynamicCastClass())
      {
        v12 = swift_unknownObjectRetain_n();
        MEMORY[0x1B8C92370](v12);
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B63BECC4();
        }

        sub_1B63BECE4();
        swift_unknownObjectRelease();
      }

      v10 += 8;
      --v6;
    }

    while (v6);
  }

LABEL_18:
}

void sub_1B63B6938(unint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  if (a4)
  {
    v7 = 2147483646;
    if (v6 >= 0x7FFFFFFE)
    {
      return;
    }
  }

  else
  {
    v7 = a3;
    if (a3 < 0 || (v6 & 0x8000000000000000) != 0 || v6 >= a3)
    {
      return;
    }
  }

  v8 = pow((v7 - v6), 0.492063492);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = v8;
  if (a5)
  {
    v12 = v7 - v9;
    if (__OFSUB__(v7, v9))
    {
LABEL_36:
      __break(1u);
      return;
    }

    v11 = v7;
  }

  else
  {
    v10 = __OFADD__(v6, v9);
    v11 = v6 + v9;
    if (v10)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v12 = v6;
  }

  v13 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    goto LABEL_30;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(v13))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = arc4random_uniform(v13);
  if (__OFADD__(v12, v14))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = 1;
  if (a5)
  {
    v15 = -1;
  }

  if (__OFADD__(v12 + v14, v15))
  {
    goto LABEL_34;
  }
}

void sub_1B63B6A80(void *a1, char a2, void *a3, unint64_t a4)
{
  if (a4 < 0x11)
  {
    v7 = a2 & 1;
    v8 = sub_1B63B5C84(a1, 0, 1, 1, !(a2 & 1), a3);
    v9 = sub_1B63B5BF8(v8);

    if (v9)
    {
      v10 = sub_1B63BEBC4();
      v39 = v9;
      v11 = [v9 valueForKey_];

      if (v11)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
        sub_1B628E928(v42, v43);
        swift_dynamicCast();
        v12 = sub_1B63BEBC4();
        v13 = [a1 valueForKey_];

        if (v13)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
          sub_1B628E928(v42, v43);
          swift_dynamicCast();
          *&v43[0] = 0;
          *(&v43[0] + 1) = 0xE000000000000000;
          sub_1B63BF114();

          *&v43[0] = 0xD000000000000021;
          *(&v43[0] + 1) = 0x80000001B63CD190;
          *&v42[0] = v41;
          v14 = sub_1B63BF344();
          MEMORY[0x1B8C92330](v14);

          MEMORY[0x1B8C92330](0x7463656A626F202CLL, 0xEC00000020746120);
          *&v42[0] = v41;
          v15 = sub_1B63BF344();
          MEMORY[0x1B8C92330](v15);

          _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v43[0], *(&v43[0] + 1));

          sub_1B63B6938(v41, 0, v41, 0, v7 != 0);
          if ((v21 & 1) == 0)
          {
            v30 = v20;
            *&v43[0] = 0;
            *(&v43[0] + 1) = 0xE000000000000000;
            sub_1B63BF114();

            *&v43[0] = 0xD000000000000021;
            *(&v43[0] + 1) = 0x80000001B63CD290;
            *&v42[0] = v30;
            v31 = sub_1B63BF344();
            MEMORY[0x1B8C92330](v31);

            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v43[0], *(&v43[0] + 1));

            v29 = sub_1B63BF414();
            goto LABEL_21;
          }

          *&v43[0] = 0;
          *(&v43[0] + 1) = 0xE000000000000000;
          sub_1B63BF114();
          MEMORY[0x1B8C92330](0xD000000000000029, 0x80000001B63CD1C0);
          *&v42[0] = v41;
          v22 = sub_1B63BF344();
          MEMORY[0x1B8C92330](v22);

          MEMORY[0x1B8C92330](0x656B616D206F7420, 0xED00006D6F6F7220);
          _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v43[0], *(&v43[0] + 1));

          if ((sub_1B63B6A80(v9, v7, a3, a4 + 1) & 1) == 0)
          {
            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD00000000000002FLL, 0x80000001B63CD1F0);

            return;
          }

          v23 = sub_1B63BEBC4();
          v24 = [v39 valueForKey_];

          if (v24)
          {
            sub_1B63BEF84();
            swift_unknownObjectRelease();
            sub_1B628E928(v42, v43);
            swift_dynamicCast();
            if (v7)
            {
              sub_1B63B6938(v41, 0, v41, 0, v7);
              if ((v36 & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            else
            {
              sub_1B63B6938(v41, 0, v41, 0, 0);
              if ((v26 & 1) == 0)
              {
LABEL_19:
                v27 = v25;
                *&v43[0] = 0;
                *(&v43[0] + 1) = 0xE000000000000000;
                sub_1B63BF114();

                *&v43[0] = 0xD00000000000002CLL;
                *(&v43[0] + 1) = 0x80000001B63CD260;
                *&v42[0] = v27;
                v28 = sub_1B63BF344();
                MEMORY[0x1B8C92330](v28);

                _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v43[0], *(&v43[0] + 1));

                v29 = sub_1B63BF414();
LABEL_21:
                v32 = sub_1B63BEBC4();
                [a1 setValue:v29 forKey:v32];

                goto LABEL_24;
              }
            }

            *&v43[0] = 0;
            *(&v43[0] + 1) = 0xE000000000000000;
            sub_1B63BF114();
            MEMORY[0x1B8C92330](0xD000000000000039, 0x80000001B63CD220);
            *&v42[0] = v41;
            v37 = sub_1B63BF344();
            MEMORY[0x1B8C92330](v37);

            MEMORY[0x1B8C92330](8236, 0xE200000000000000);
            *&v42[0] = v41;
            v38 = sub_1B63BF344();
            MEMORY[0x1B8C92330](v38);

            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v43[0], *(&v43[0] + 1));

            return;
          }

LABEL_31:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v16 = sub_1B63BEBC4();
      v17 = [a1 valueForKey_];

      if (v17)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
        sub_1B628E928(v42, v43);
        swift_dynamicCast();
        if (v7)
        {
          sub_1B63B6938(v41, 0, 0x7FFFFFFFFFFFFFFFLL, 0, 1);
          if (v33)
          {
            return;
          }
        }

        else
        {
          sub_1B63B6938(0, 0, v41, 0, 0);
          if (v19)
          {
            return;
          }
        }

        v34 = v18;
        *&v43[0] = 0;
        *(&v43[0] + 1) = 0xE000000000000000;
        sub_1B63BF114();
        MEMORY[0x1B8C92330](0xD000000000000032, 0x80000001B63CD150);
        *&v42[0] = v34;
        v35 = sub_1B63BF344();
        MEMORY[0x1B8C92330](v35);

        _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v43[0], *(&v43[0] + 1));

        v29 = sub_1B63BF414();
        v32 = sub_1B63BEBC4();
        [a1 setValue:v29 forKey:v32];
LABEL_24:

        return;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  sub_1B63BEDC4();
  if (qword_1EDB0F690 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B63C3D50;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B6281318();
  *(v4 + 32) = 0xD000000000000026;
  *(v4 + 40) = 0x80000001B63CD2C0;
  sub_1B63BEA14();
}

void sub_1B63B73A8(void *a1, char a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    goto LABEL_9;
  }

  v3 = 0;
  v7 = sub_1B63B5C84(0, 0, 1, 1, (a2 & 1) == 0, a3);
  if (v7 >> 62)
  {
    v46 = v7;
    v47 = sub_1B63BF044();
    v7 = v46;
    if (v47)
    {
      goto LABEL_5;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B8C92830](0, v7);

      swift_unknownObjectRetain();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_58;
      }

      v8 = *(v7 + 32);

      v6 = v8;
    }

    a1 = 0;
LABEL_9:
    v9 = a1;
    v10 = sub_1B63BEBC4();
    v11 = &selRef_powerByConnector;
    v12 = [v6 valueForKey_];

    if (!v12)
    {
      memset(v51, 0, sizeof(v51));
      sub_1B6284EAC(v51, &unk_1EB943740, &qword_1B63C5030);
      v3 = 0x80000001B63CD050;
      sub_1B63BEDC4();
      if (qword_1EDB0F690 == -1)
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1B63C3D50;
        *(v18 + 56) = MEMORY[0x1E69E6158];
        *(v18 + 64) = sub_1B6281318();
        *(v18 + 32) = 0xD000000000000032;
        *(v18 + 40) = v3;
        sub_1B63BEA14();

        return;
      }

LABEL_55:
      swift_once();
      goto LABEL_17;
    }

    sub_1B63BEF84();
    swift_unknownObjectRelease();
    sub_1B6284EAC(v51, &unk_1EB943740, &qword_1B63C5030);
    v13 = a2 & 1;
    v14 = v6;
    v15 = sub_1B63B5C84(v6, 0, 1, 1, v13, a3);

    if (v15 >> 62)
    {
      if (sub_1B63BF044())
      {
        goto LABEL_12;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B8C92830](0, v15);
        goto LABEL_15;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v15 + 32);
LABEL_15:
        v17 = v16;

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_55;
    }

    v17 = 0;
LABEL_20:
    v19 = sub_1B63BEBC4();
    v20 = [v14 valueForKey_];

    if (v20)
    {
      sub_1B63BEF84();
      swift_unknownObjectRelease();
      sub_1B628E928(v50, v51);
      swift_dynamicCast();
      if (!v17)
      {
        if (v13)
        {
          v24 = 0;
        }

        else
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (!v13)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

      v21 = v17;
      v22 = sub_1B63BEBC4();
      v23 = [v21 &selRef:v22 initWithOffset:? limit:?];

      if (v23)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();

        sub_1B628E928(v50, v51);
        swift_dynamicCast();
        v24 = v49;
        v11 = &selRef_powerByConnector;
        if (!v13)
        {
LABEL_24:
          v25 = v49;
          v26 = 0;
          goto LABEL_30;
        }

LABEL_29:
        v25 = v24;
        v24 = v49;
        v26 = v13;
LABEL_30:
        sub_1B63B6938(v25, 0, v24, 0, v26);
        if ((v28 & 1) == 0)
        {
          v39 = v27;
          *&v51[0] = 0;
          *(&v51[0] + 1) = 0xE000000000000000;
          sub_1B63BF114();

          v40 = 0x80000001B63CD130;
          v41 = 0xD000000000000015;
LABEL_49:
          *&v51[0] = v41;
          *(&v51[0] + 1) = v40;
          *&v50[0] = v39;
          v45 = sub_1B63BF344();
          MEMORY[0x1B8C92330](v45);

          _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(*&v51[0], *(&v51[0] + 1));

          return;
        }

        sub_1B63B6A80(v14, v13, a3, 0);
        if ((v29 & 1) == 0)
        {
          if (!v17 || (v30 = v17, sub_1B63B6A80(v30, v13, a3, 0), v32 = v31, v30, (v32 & 1) == 0))
          {
            _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000021, 0x80000001B63CD090);

            return;
          }
        }

        v33 = sub_1B63BEBC4();
        v34 = [v14 v11[127]];

        if (v34)
        {
          sub_1B63BEF84();
          swift_unknownObjectRelease();
          sub_1B628E928(v50, v51);
          swift_dynamicCast();
          if (!v17)
          {
            if (v13)
            {
              v38 = 0;
LABEL_45:
              v42 = v38;
              v38 = v49;
              goto LABEL_46;
            }

            v38 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_43:
            v42 = v49;
LABEL_46:
            sub_1B63B6938(v42, 0, v38, 0, v13);
            if (v44)
            {
              _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD000000000000037, 0x80000001B63CD0C0);

              return;
            }

            v39 = v43;
            *&v51[0] = 0;
            *(&v51[0] + 1) = 0xE000000000000000;
            sub_1B63BF114();

            v40 = 0x80000001B63CD100;
            v41 = 0xD000000000000022;
            goto LABEL_49;
          }

          v35 = v17;
          v36 = sub_1B63BEBC4();
          v37 = [v35 v11[127]];

          if (v37)
          {
            sub_1B63BEF84();
            swift_unknownObjectRelease();

            sub_1B628E928(v50, v51);
            swift_dynamicCast();
            v38 = v49;
            if (v13)
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }

          goto LABEL_62;
        }

        goto LABEL_60;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1B63B6938(0, 0, 0x7FFFFFFFFFFFFFFFLL, 0, 0);
  if (v48)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }
}

void sub_1B63B7B48(void *a1, void *a2)
{
  swift_getObjectType();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    v7 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
    v10 = a1;
    [v7 lock];
    v8 = *(v5 + OBJC_IVAR___MSFavoriteItem__positionIndex);
    [*(v5 + v6) unlock];
    if (!v8)
    {
      sub_1B63B73A8(0, 0, a2);
      sub_1B62E5EBC(v9);
    }
  }
}

uint64_t sub_1B63B7D68(void **a1, void **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = sub_1B63BE994();
  v46 = *(v11 - 8);
  v12 = v46[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v42 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v39 - v15;
  v16 = *a1;
  v17 = *a2;
  v18 = sub_1B63BEBC4();
  v43 = v16;
  v19 = [v16 valueForKey_];

  if (v19)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = v51;
  v21 = sub_1B63BEBC4();
  v22 = [v17 valueForKey_];

  if (v22)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49 = v47;
  v50 = v48;
  if (!*(&v48 + 1))
  {
LABEL_13:
    sub_1B6284EAC(&v49, &unk_1EB943740, &qword_1B63C5030);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) != 0 && v51 != v20)
  {
    v23 = v20 < v51;
    return v23 & 1;
  }

LABEL_14:
  v24 = sub_1B63BEBC4();
  v25 = [v17 valueForKey_];

  if (v25)
  {
    sub_1B63BEF84();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v26 = v46;
  v49 = v47;
  v50 = v48;
  if (*(&v48 + 1))
  {
    v27 = swift_dynamicCast();
    v28 = v26[7];
    v28(v10, v27 ^ 1u, 1, v11);
    v29 = v26[6];
    if (v29(v10, 1, v11) != 1)
    {
      v41 = v2;
      v40 = v26[4];
      v40(v45, v10, v11);
      v30 = sub_1B63BEBC4();
      v31 = [v43 valueForKey_];

      if (v31)
      {
        sub_1B63BEF84();
        swift_unknownObjectRelease();
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
      }

      v32 = v44;
      v49 = v47;
      v50 = v48;
      v33 = v46;
      if (*(&v48 + 1))
      {
        v34 = swift_dynamicCast();
        v28(v32, v34 ^ 1u, 1, v11);
        if (v29(v32, 1, v11) != 1)
        {
          v35 = v42;
          v40(v42, v32, v11);
          v36 = v45;
          v23 = sub_1B63BE964();
          v37 = v33[1];
          v37(v35, v11);
          v37(v36, v11);
          return v23 & 1;
        }
      }

      else
      {
        sub_1B6284EAC(&v49, &unk_1EB943740, &qword_1B63C5030);
        v28(v32, 1, 1, v11);
      }

      (v33[1])(v45, v11);
      sub_1B6284EAC(v32, &unk_1EB943210, &unk_1B63C3F50);
      v23 = 0;
      return v23 & 1;
    }
  }

  else
  {
    sub_1B6284EAC(&v49, &unk_1EB943740, &qword_1B63C5030);
    (v26[7])(v10, 1, 1, v11);
  }

  sub_1B6284EAC(v10, &unk_1EB943210, &unk_1B63C3F50);
  v23 = 1;
  return v23 & 1;
}

void sub_1B63B83B0(uint64_t a1)
{
  v3 = (*MEMORY[0x1E69E7D40] & *type metadata accessor for FavoriteItem());
  v85.receiver = v1;
  v85.super_class = v3;
  v4 = objc_msgSendSuper2(&v85, sel_findDuplicatesWithContext_, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
  v80 = sub_1B63BECA4();

  v5 = sub_1B63BEBC4();
  v6 = objc_opt_self();
  v7 = [v6 expressionForKeyPath_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943720, &qword_1B63C6B20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B63C3D50;
  *(v8 + 56) = sub_1B6281C60(0, &qword_1EDB0F2F0, 0x1E696ABC8);
  *(v8 + 32) = v7;
  v78 = v7;
  v9 = sub_1B63BEBC4();
  v10 = sub_1B63BEC94();

  v11 = [v6 expressionForFunction:v9 arguments:v10];

  v12 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v12 setExpression_];
  v13 = v12;
  v14 = sub_1B63BEBC4();
  [v13 setName_];

  [v13 setExpressionResultType_];
  type metadata accessor for MapsSyncManagedFavoriteItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [ObjCClassFromMetadata entityName];
  if (!v15)
  {
    sub_1B63BEBD4();
    v15 = sub_1B63BEBC4();
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v16 setReturnsObjectsAsFaults_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B63C3D50;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 32) = 0xD000000000000018;
  *(v17 + 40) = 0x80000001B63C8DA0;
  v19 = sub_1B63BEC94();

  [v16 setPropertiesToGroupBy_];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B63C3D80;
  *(v20 + 56) = v18;
  *(v20 + 32) = 0xD000000000000018;
  *(v20 + 40) = 0x80000001B63C8DA0;
  *(v20 + 88) = sub_1B6281C60(0, &unk_1EDB0F2E0, 0x1E695D5C8);
  *(v20 + 64) = v13;
  v21 = v13;
  v22 = sub_1B63BEC94();

  [v16 setPropertiesToFetch_];

  [v16 setResultType_];
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v23 = sub_1B63BED94();
  [v16 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9432A0, qword_1B63C43B0);
  v24 = sub_1B63BEEA4();
  v72 = v21;
  v73 = v16;
  v74 = v11;
  v25 = v80;
  v26 = sub_1B639CB54(v24);

  v27 = sub_1B639CD4C(v26);

  v28 = *(v27 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  if (!v28)
  {
LABEL_17:

    v41 = v29[2];
    if (!v41)
    {
LABEL_53:

      return;
    }

    v42 = 0;
    v81 = v29 + 4;
    v43 = MEMORY[0x1E69E6158];
    v77 = v29;
    v76 = v29[2];
    while (1)
    {
      if (v42 >= v29[2])
      {
        goto LABEL_59;
      }

      v44 = v81[v42];
      if (*(v44 + 16))
      {
        v45 = v81[v42];

        v46 = sub_1B6380EF4(0xD000000000000018, 0x80000001B63C8DA0);
        if (v47)
        {
          sub_1B629E3F0(*(v44 + 56) + 32 * v46, v84);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_21;
          }

          v49 = *(&v83[0] + 1);
          v48 = *&v83[0];
          v50 = [ObjCClassFromMetadata fetchRequest];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1B63C3D50;
          *(v51 + 56) = v43;
          *(v51 + 64) = sub_1B6281318();
          *(v51 + 32) = __PAIR128__(v49, v48);
          v52 = sub_1B63BED94();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_1B63C4B90;
          v54 = v52;
          v55 = MEMORY[0x1E69E7CC0];
          *(v53 + 32) = sub_1B63BED94();
          *(v53 + 40) = v54;
          v56 = objc_allocWithZone(MEMORY[0x1E696AB28]);
          v57 = v54;
          v58 = sub_1B63BEC94();

          v59 = [v56 initWithType:1 subpredicates:v58];

          [v50 setPredicate_];
          v60 = sub_1B63BEEA4();
          v61 = v60;
          v84[0].receiver = v55;
          receiver = v55;
          v63 = v60 & 0xFFFFFFFFFFFFFF8;
          if (v60 >> 62)
          {
            v64 = sub_1B63BF044();
          }

          else
          {
            v64 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v75 = v50;
          if (v64)
          {
            v65 = 0;
            do
            {
              v66 = v65;
              while (1)
              {
                if ((v61 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1B8C92830](v66, v61);
                  v65 = v66 + 1;
                  if (__OFADD__(v66, 1))
                  {
                    goto LABEL_54;
                  }
                }

                else
                {
                  if (v66 >= *(v63 + 16))
                  {
                    goto LABEL_55;
                  }

                  v67 = *(v61 + 8 * v66 + 32);
                  swift_unknownObjectRetain();
                  v65 = v66 + 1;
                  if (__OFADD__(v66, 1))
                  {
LABEL_54:
                    __break(1u);
LABEL_55:
                    __break(1u);
                    goto LABEL_56;
                  }
                }

                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  break;
                }

                swift_unknownObjectRelease();
                ++v66;
                if (v65 == v64)
                {
                  goto LABEL_43;
                }
              }

              MEMORY[0x1B8C92370]();
              if (*((v84[0].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84[0].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v68 = *((v84[0].receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1B63BECC4();
              }

              sub_1B63BECE4();
              receiver = v84[0].receiver;
            }

            while (v65 != v64);
          }

LABEL_43:

          if (receiver >> 62)
          {
            v69 = sub_1B63BF044();
          }

          else
          {
            v69 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v43 = MEMORY[0x1E69E6158];
          v29 = v77;
          v41 = v76;
          if (v69 >= 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1B62B25E8(0, v25[2] + 1, 1, v25);
            }

            v71 = v25[2];
            v70 = v25[3];
            if (v71 >= v70 >> 1)
            {
              v25 = sub_1B62B25E8((v70 > 1), v71 + 1, 1, v25);
            }

            v25[2] = v71 + 1;
            v25[v71 + 4] = receiver;
            v29 = v77;
            goto LABEL_21;
          }
        }
      }

LABEL_21:
      if (++v42 == v41)
      {
        goto LABEL_53;
      }
    }
  }

  v30 = 0;
LABEL_5:
  v31 = v30;
  while (v31 < *(v27 + 16))
  {
    v32 = *(v27 + 32 + 8 * v31);
    if (!*(v32 + 16))
    {
      goto LABEL_57;
    }

    v33 = *(v27 + 32 + 8 * v31);

    v34 = sub_1B6380EF4(0x746E756F63, 0xE500000000000000);
    if ((v35 & 1) == 0)
    {
      goto LABEL_58;
    }

    sub_1B629E3F0(*(v32 + 56) + 32 * v34, v83);
    sub_1B628E928(v83, v84);
    swift_dynamicCast();
    if (v82 > 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1B62B24C0(0, v29[2] + 1, 1, v29);
      }

      v36 = v29;
      v37 = v29[2];
      v38 = v36;
      v39 = v36[3];
      if (v37 >= v39 >> 1)
      {
        v38 = sub_1B62B24C0((v39 > 1), v37 + 1, 1, v38);
      }

      v30 = v31 + 1;
      v38[2] = v37 + 1;
      v40 = &v38[v37];
      v29 = v38;
      v40[4] = v32;
      if (v28 - 1 == v31)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    }

    ++v31;

    if (v28 == v31)
    {
      goto LABEL_17;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_1B63B8F50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B63BE814();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1B63B8FCC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t, uint64_t))
{
  v7 = *&v3[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v3;
  v9 = v3;

  v10 = v7;
  a3(inited, v9, a1, a2);

  swift_setDeallocating();
  v11 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_1B63B90B8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, char a6)
{
  if (a1 || !a2)
  {
    goto LABEL_13;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v19 = a4;
    v20 = a6;
    v21 = a3;
    v22 = a2;
    v23 = sub_1B63BF044();
    a2 = v22;
    a3 = v21;
    a6 = v20;
    a4 = v19;
    v24 = v23;
    a1 = 0;
    if (!v24)
    {
      goto LABEL_13;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    a4(a1);
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = a3;
    v8 = a6;
    v9 = a1;
    v10 = a4;
    v11 = MEMORY[0x1B8C92830](0);
  }

  else
  {
    if (!*(v6 + 16))
    {
      __break(1u);
      return;
    }

    v7 = a3;
    v8 = a6;
    v9 = a1;
    v10 = a4;
    v11 = *(a2 + 32);
  }

  v25 = v11;
  type metadata accessor for MapsSyncManagedFavoriteItem();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

    goto LABEL_12;
  }

  v13 = v12;
  v14 = *(v7 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  sub_1B62814B4();

  v15 = sub_1B629409C();
  LOBYTE(v14) = v16;

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();

    sub_1B6295C20(v15);
LABEL_12:
    a4 = v10;
    a1 = v9;
    goto LABEL_13;
  }

  sub_1B63B73A8(0, v8, v15);
  v17 = sub_1B63BF414();
  v18 = sub_1B63BEBC4();
  [v13 setValue:v17 forKey:v18];

  v10(0);
  sub_1B6295C20(v15);
}

uint64_t sub_1B63B934C(char *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = a1;
  v13 = a1;
  v14 = v11;
  a6(inited, v13, a5, v10);

  swift_setDeallocating();
  v15 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t sub_1B63B94C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t, uint64_t, id))
{
  v9 = *&v4[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C4B90;
  *(inited + 32) = v4;
  *(inited + 40) = a1;
  v11 = v4;

  v12 = a1;
  v13 = v9;
  a4(inited, v11, a2, a3, v12);

  swift_setDeallocating();
  v14 = *(inited + 16);
  return swift_arrayDestroy();
}

void sub_1B63B95C4(uint64_t a1, unint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, int a7)
{
  v101 = a6;
  v114 = a3;
  v12 = sub_1B63BEA04();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v88[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943848, &qword_1B63C7750);
  v16 = *(*(v116 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v116);
  v106 = &v88[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v88[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v96 = &v88[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v98 = &v88[-v26];
  v27 = MEMORY[0x1EEE9AC00](v25);
  v97 = &v88[-v28];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v102 = &v88[-v30];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v88[-v32];
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v88[-v34];
  if (a1)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v118 = sub_1B63A3248(a2);
  if (!v118)
  {
    goto LABEL_6;
  }

  v89 = a7;
  v90 = a5;
  v91 = a4;
  v36 = *(v114 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store);
  v37 = sub_1B62814B4();

  v38 = sub_1B629409C();
  LOBYTE(v36) = v39;

  if (v36)
  {

    v119 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9437D0, qword_1B63C3E50);
    swift_willThrowTypedImpl();
    sub_1B6295C20(v38);
    a4 = v91;
LABEL_6:
    a4(a1);
    return;
  }

  v94 = v38;
  v108 = v118 & 0xFFFFFFFFFFFFFF8;
  v103 = v20;
  if (v118 >> 62)
  {
    goto LABEL_54;
  }

  v40 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v104 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v105 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  swift_beginAccess();
  v113 = v40;
  if (v40)
  {
    v41 = 0;
    v111 = (v13 + 7);
    v112 = v118 & 0xC000000000000001;
    v110 = v13 + 6;
    v92 = (v13 + 4);
    v95 = (v13 + 1);
    v13 = &unk_1EB943680;
    v107 = v12;
    v93 = v35;
    while (1)
    {
      if (v112)
      {
        v43 = MEMORY[0x1B8C92830](v41, v118);
        v44 = (v41 + 1);
        if (__OFADD__(v41, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v100 = v37;
          sub_1B6284EAC(v43, &unk_1EB943680, qword_1B63C4070);
LABEL_29:
          v60 = 0;
          v13 = v98;
          v33 = v97;
          while (2)
          {
            if (v112)
            {
              v64 = MEMORY[0x1B8C92830](v60, v118);
            }

            else
            {
              if (v60 >= *(v108 + 16))
              {
                goto LABEL_53;
              }

              v64 = *(v118 + 8 * v60 + 32);
            }

            v65 = v64;
            v35 = (v60 + 1);
            if (__OFADD__(v60, 1))
            {
              goto LABEL_52;
            }

            v66 = [v64 identifier];
            v114 = v60 + 1;
            v115 = v65;
            if (v66)
            {
              v67 = v66;
              sub_1B63BE9E4();

              v68 = 0;
            }

            else
            {
              v68 = 1;
            }

            v109(v33, v68, 1, v12);
            v69 = v101;
            v70 = *(v101 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
            [v70 lock];
            v71 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
            swift_beginAccess();
            v35 = qword_1B63C4070;
            sub_1B628C510(v69 + v71, v13, &unk_1EB943680, qword_1B63C4070);
            [v70 unlock];
            v72 = *(v116 + 48);
            v73 = v106;
            sub_1B628C510(v33, v106, &unk_1EB943680, qword_1B63C4070);
            sub_1B628C510(v13, &v73[v72], &unk_1EB943680, qword_1B63C4070);
            v74 = v100;
            if (v100(v73, 1, v12) == 1)
            {
              sub_1B6284EAC(v13, &unk_1EB943680, qword_1B63C4070);
              sub_1B6284EAC(v33, &unk_1EB943680, qword_1B63C4070);
              v61 = v74(&v73[v72], 1, v12);
              v37 = v94;
              v62 = v115;
              v63 = v113;
              if (v61 == 1)
              {
                sub_1B6284EAC(v73, &unk_1EB943680, qword_1B63C4070);
LABEL_50:

                sub_1B63B73A8(v62, v89, v37);
                v85 = sub_1B63BF414();
                v86 = sub_1B63BEBC4();
                v87 = v117;
                [v117 setValue:v85 forKey:v86];

                v91(0);
                v84 = v37;
                goto LABEL_48;
              }

LABEL_31:
              sub_1B6284EAC(v73, &qword_1EB943848, &qword_1B63C7750);
            }

            else
            {
              v75 = v96;
              sub_1B628C510(v73, v96, &unk_1EB943680, qword_1B63C4070);
              v76 = v74(&v73[v72], 1, v12);
              v37 = v94;
              if (v76 == 1)
              {
                v35 = v98;
                sub_1B6284EAC(v98, &unk_1EB943680, qword_1B63C4070);
                v33 = v97;
                sub_1B6284EAC(v97, &unk_1EB943680, qword_1B63C4070);
                v77 = v75;
                v13 = v35;
                (*v95)(v77, v12);
                v63 = v113;
                v62 = v115;
                goto LABEL_31;
              }

              v78 = v99;
              (*v92)(v99, &v73[v72], v12);
              sub_1B63BD868();
              v79 = sub_1B63BEBB4();
              v80 = *v95;
              (*v95)(v78, v107);
              v35 = v98;
              sub_1B6284EAC(v98, &unk_1EB943680, qword_1B63C4070);
              v33 = v97;
              sub_1B6284EAC(v97, &unk_1EB943680, qword_1B63C4070);
              v81 = v75;
              v13 = v35;
              v80(v81, v107);
              v12 = v107;
              sub_1B6284EAC(v106, &unk_1EB943680, qword_1B63C4070);
              v63 = v113;
              v62 = v115;
              if (v79)
              {
                goto LABEL_50;
              }
            }

            ++v60;
            if (v114 == v63)
            {

              goto LABEL_47;
            }

            continue;
          }
        }
      }

      else
      {
        if (v41 >= *(v108 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v40 = sub_1B63BF044();
          goto LABEL_9;
        }

        v43 = *(v118 + 8 * v41 + 32);
        v44 = (v41 + 1);
        if (__OFADD__(v41, 1))
        {
          goto LABEL_27;
        }
      }

      v115 = v44;
      v117 = v43;
      v45 = [v43 identifier];
      if (v45)
      {
        v46 = v45;
        sub_1B63BE9E4();

        v47 = 0;
      }

      else
      {
        v47 = 1;
      }

      v109 = *v111;
      v109(v35, v47, 1, v12);
      v48 = v114;
      v49 = *(v114 + v105);
      [v49 lock];
      sub_1B628C510(v48 + v104, v33, &unk_1EB943680, qword_1B63C4070);
      [v49 unlock];
      v50 = *(v116 + 48);
      v51 = v103;
      sub_1B628C510(v35, v103, &unk_1EB943680, qword_1B63C4070);
      sub_1B628C510(v33, v51 + v50, &unk_1EB943680, qword_1B63C4070);
      v37 = *v110;
      if ((*v110)(v51, 1, v12) == 1)
      {
        break;
      }

      v52 = v33;
      v53 = v102;
      sub_1B628C510(v51, v102, &unk_1EB943680, qword_1B63C4070);
      v100 = v37;
      if ((v37)(v51 + v50, 1, v12) == 1)
      {
        v54 = v52;
        sub_1B6284EAC(v52, &unk_1EB943680, qword_1B63C4070);
        v35 = v93;
        sub_1B6284EAC(v93, &unk_1EB943680, qword_1B63C4070);
        v55 = v53;
        v33 = v54;
        (*v95)(v55, v12);
        v43 = v51;
LABEL_12:
        sub_1B6284EAC(v43, &qword_1EB943848, &qword_1B63C7750);
        goto LABEL_13;
      }

      v56 = v99;
      (*v92)(v99, v51 + v50, v12);
      sub_1B63BD868();
      v37 = sub_1B63BEBB4();
      v57 = *v95;
      (*v95)(v56, v107);
      v58 = v52;
      sub_1B6284EAC(v52, &unk_1EB943680, qword_1B63C4070);
      v35 = v93;
      sub_1B6284EAC(v93, &unk_1EB943680, qword_1B63C4070);
      v59 = v53;
      v33 = v58;
      v57(v59, v107);
      v12 = v107;
      sub_1B6284EAC(v51, &unk_1EB943680, qword_1B63C4070);
      if (v37)
      {
        goto LABEL_29;
      }

LABEL_13:

      ++v41;
      if (v115 == v113)
      {
        goto LABEL_47;
      }
    }

    sub_1B6284EAC(v33, &unk_1EB943680, qword_1B63C4070);
    sub_1B6284EAC(v35, &unk_1EB943680, qword_1B63C4070);
    v42 = (v37)(v51 + v50, 1, v12) == 1;
    v43 = v51;
    if (v42)
    {
      goto LABEL_28;
    }

    goto LABEL_12;
  }

LABEL_47:

  sub_1B634DB54();
  v82 = swift_allocError();
  *v83 = 2;
  (v91)();

  v84 = v94;
LABEL_48:
  sub_1B6295C20(v84);
}

uint64_t sub_1B63BA204(char *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, uint64_t, uint64_t, id))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *&a1[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B63C4B90;
  *(inited + 32) = a1;
  *(inited + 40) = a3;
  v15 = a1;
  v16 = a3;
  v17 = v15;
  v18 = v13;
  a7(inited, v17, a6, v12, v16);

  swift_setDeallocating();
  v19 = *(inited + 16);
  return swift_arrayDestroy();
}

uint64_t FavoriteItem.placeItemNote()()
{
  v1[14] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v3 = sub_1B63BEA04();
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B63BA428, 0, 0);
}

uint64_t sub_1B63BA428()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  [v5 lock];
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v4 + v6, v3, &unk_1EB943680, qword_1B63C4070);
  [v5 unlock];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B6284EAC(v0[15], &unk_1EB943680, qword_1B63C4070);
    v7 = v0[18];
    v8 = v0[15];

    v9 = v0[1];

    return v9(0, 0);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    v12 = sub_1B63BE9C4();
    *(inited + 56) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
    *(inited + 64) = sub_1B62B03CC(&qword_1EB943730, &qword_1EB943690, 0x1E696AFB0);
    *(inited + 32) = v12;
    v13 = sub_1B628E52C(0xD000000000000018, 0x80000001B63CCFF0, inited);
    v0[19] = v13;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v14 = v13;
    v15 = sub_1B62895F4(v13, 0, 0);
    v0[20] = v15;

    v16 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
    if (qword_1EDB0F2A0 != -1)
    {
      v19 = v16;
      swift_once();
      v16 = v19;
    }

    v0[21] = [v16 initWithStore_];
    v17 = v15;
    v18 = swift_task_alloc();
    v0[22] = v18;
    *v18 = v0;
    v18[1] = sub_1B63BA73C;

    return sub_1B628B2B4(v15);
  }
}

uint64_t sub_1B63BA73C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  v9 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v7 = sub_1B63BA9E4;
  }

  else
  {
    v7 = sub_1B63BA88C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B63BA88C()
{
  v1 = *(v0 + 184);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = *(v0 + 184);
    }

    result = sub_1B63BF044();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = *(v0 + 184);
    v11 = *(v0 + 152);

    v6 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, *(v0 + 184));
    v15 = *(v0 + 184);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 184) + 32);
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);

  v6 = sub_1B62D5984();
  v8 = v7;

LABEL_11:
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v12 = *(v0 + 144);
  v13 = *(v0 + 120);

  v14 = *(v0 + 8);

  return v14(v6, v8);
}

uint64_t sub_1B63BA9E4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);
  v7 = *(v0 + 192);

  return v6();
}

uint64_t sub_1B63BAC00(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B634EA3C;

  return FavoriteItem.placeItemNote()();
}

uint64_t FavoriteItem.setPlaceItemNote(_:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v6 = sub_1B63BEA04();
  v3[33] = v6;
  v7 = *(v6 - 8);
  v3[34] = v7;
  v8 = *(v7 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B63BADE8, 0, 0);
}

uint64_t sub_1B63BADE8()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
  v5 = *(v4 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v0[36] = v5;
  [v5 lock];
  v6 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  v0[37] = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
  swift_beginAccess();
  sub_1B628C510(v4 + v6, v3, &unk_1EB943680, qword_1B63C4070);
  [v5 unlock];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B6284EAC(v0[32], &unk_1EB943680, qword_1B63C4070);
    v7 = v0[35];
    v8 = v0[31];
    v9 = v0[32];
    v10 = v0[30];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[34] + 32))(v0[35], v0[32], v0[33]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943230, &qword_1B63C6870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B63C3D50;
    v14 = sub_1B63BE9C4();
    *(inited + 56) = sub_1B6281C60(0, &qword_1EB943690, 0x1E696AFB0);
    *(inited + 64) = sub_1B62B03CC(&qword_1EB943730, &qword_1EB943690, 0x1E696AFB0);
    *(inited + 32) = v14;
    v15 = sub_1B628E52C(0xD000000000000018, 0x80000001B63CCFF0, inited);
    v0[38] = v15;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v16 = v15;
    v17 = sub_1B62895F4(v15, 0, 0);
    v0[39] = v17;

    v18 = objc_allocWithZone(type metadata accessor for CollectionPlaceItemRequest());
    if (qword_1EDB0F2A0 != -1)
    {
      v21 = v18;
      swift_once();
      v18 = v21;
    }

    v0[40] = qword_1EDB0F2A8;
    v0[41] = [v18 initWithStore_];
    v19 = v17;
    v20 = swift_task_alloc();
    v0[42] = v20;
    *v20 = v0;
    v20[1] = sub_1B63BB118;

    return sub_1B628B2B4(v17);
  }
}

uint64_t sub_1B63BB118(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *(*v2 + 328);
  v6 = *(*v2 + 312);
  v9 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v7 = sub_1B63BB9F8;
  }

  else
  {
    v7 = sub_1B63BB268;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B63BB268()
{
  v1 = v0[43];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = v0[43];
    }

    result = sub_1B63BF044();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = v0[43];
    v12 = v0[36];
    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[29];
    v25 = v0[37];
    v26 = v0[28];
    v27 = v0[27];

    v16 = [objc_allocWithZone(type metadata accessor for CollectionPlaceItem()) init];
    v0[49] = v16;
    v17 = v16;
    [v12 lock];
    v18 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__createTime;
    swift_beginAccess();
    sub_1B628C510(v15 + v18, v14, &unk_1EB943210, &unk_1B63C3F50);
    [v12 unlock];
    sub_1B6396BEC(v14, 1);
    sub_1B6284EAC(v14, &unk_1EB943210, &unk_1B63C3F50);
    sub_1B62D6290(2);
    [v12 lock];
    sub_1B628C510(v15 + v25, v13, &unk_1EB943680, qword_1B63C4070);
    [v12 unlock];
    sub_1B62D50D4(v13);
    v19 = sub_1B6296C10();
    sub_1B62D0934(v19, v20);
    v21 = sub_1B6296250();
    v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
    [*&v17[OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock] lock];
    sub_1B62D67AC(*&v17[v22], v21, v17);
    [*&v17[v22] unlock];

    sub_1B62D5DB0(v27, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
    inited = swift_initStackObject();
    v0[50] = inited;
    *(inited + 16) = xmmword_1B63C3D70;
    *(inited + 32) = v17;
    v8 = swift_task_alloc();
    v0[51] = v8;
    *v8 = v0;
    v9 = sub_1B63BB7E8;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C92830](0, v0[43]);
    v24 = v0[43];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[43] + 32);
  }

  v0[45] = v3;
  v5 = v0[27];
  v4 = v0[28];

  sub_1B62D5DB0(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  inited = swift_initStackObject();
  v0[46] = inited;
  *(inited + 16) = xmmword_1B63C3D70;
  *(inited + 32) = v3;
  v7 = v3;
  v8 = swift_task_alloc();
  v0[47] = v8;
  *v8 = v0;
  v9 = sub_1B63BB5D8;
LABEL_11:
  v8[1] = v9;
  v23 = v0[40];

  return sub_1B637E4F8(inited);
}

uint64_t sub_1B63BB5D8()
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 384) = v0;

  swift_setDeallocating();
  v4 = *(v3 + 16);
  swift_arrayDestroy();
  if (v0)
  {
    v5 = sub_1B63BBAB0;
  }

  else
  {
    v5 = sub_1B63BB720;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63BB720()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 280);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 240);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B63BB7E8()
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 416) = v0;

  swift_setDeallocating();
  v4 = *(v3 + 16);
  swift_arrayDestroy();
  if (v0)
  {
    v5 = sub_1B63BBB70;
  }

  else
  {
    v5 = sub_1B63BB930;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B63BB930()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 280);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 240);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B63BB9F8()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 352);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B63BBAB0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  v3 = *(v0 + 384);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B63BBB70()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  v3 = *(v0 + 416);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B63BBDB8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1B63BEBD4();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B634FBD4;

  return FavoriteItem.setPlaceItemNote(_:)(a1, v7);
}

uint64_t sub_1B63BBE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1B628C510(a3, v25 - v11, &qword_1EB943830, &qword_1B63C5100);
  v13 = sub_1B63BED34();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B6284EAC(v12, &qword_1EB943830, &qword_1B63C5100);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B63BED24();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1B63BECF4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1B63BEC04() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1B6284EAC(a3, &qword_1EB943830, &qword_1B63C5100);

    return v23;
  }

LABEL_8:
  sub_1B6284EAC(a3, &qword_1EB943830, &qword_1B63C5100);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B63BC198(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B62AB2F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B63BC214(v6);
  return sub_1B63BF174();
}

void sub_1B63BC214(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B63BF334();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
        v6 = sub_1B63BECD4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B63BC418(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B63BC328(0, v2, 1, a1);
  }
}

void sub_1B63BC328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_1B63B7D68(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1B63BC418(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_20;
    }

    v98 = v6;
    v10 = *a3;
    v11 = *(*a3 + 8 * v7);
    v101 = *(*a3 + 8 * v9);
    v12 = v101;
    v102 = v11;
    v13 = v11;
    v14 = v12;
    v15 = sub_1B63B7D68(&v102, &v101);
    if (v4)
    {

      return;
    }

    v16 = v15;

    v17 = v9 + 2;
    v95 = v9;
    v18 = 8 * v9;
    v5 = v10 + v18 + 16;
    while (1)
    {
      v7 = v98;
      if (v98 == v17)
      {
        break;
      }

      v19 = *v5;
      v101 = *(v5 - 8);
      v20 = v101;
      v102 = v19;
      v21 = v19;
      v22 = v20;
      v23 = sub_1B63B7D68(&v102, &v101);

      ++v17;
      v5 += 8;
      if ((v16 ^ v23))
      {
        v7 = v17 - 1;
        break;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    v24 = v95;
    if (v7 < v95)
    {
      goto LABEL_124;
    }

    if (v95 < v7)
    {
      v25 = 8 * v7 - 8;
      v26 = v7;
      do
      {
        if (v24 != --v26)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v28 = *(v27 + v18);
          *(v27 + v18) = *(v27 + v25);
          *(v27 + v25) = v28;
        }

        ++v24;
        v25 -= 8;
        v18 += 8;
      }

      while (v24 < v26);
LABEL_18:
      v9 = v95;
      goto LABEL_20;
    }

    v9 = v95;
LABEL_20:
    v29 = a3[1];
    if (v7 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_120;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_133;
    }

    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v9 + a4 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v9 + a4;
    }

    if (v30 < v9)
    {
      goto LABEL_123;
    }

    if (v7 == v30)
    {
LABEL_133:
      if (v7 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = v9;
      v78 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v96 = v77;
      v79 = v77 - v7;
      v92 = v30;
      do
      {
        v80 = *(v78 + 8 * v7);
        v93 = v79;
        v99 = v5;
        do
        {
          v101 = *v5;
          v81 = v101;
          v102 = v80;
          v82 = v80;
          v83 = v81;
          v84 = sub_1B63B7D68(&v102, &v101);
          if (v4)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v5;
          v80 = *(v5 + 8);
          *v5 = v80;
          *(v5 + 8) = v86;
          v5 -= 8;
        }

        while (!__CFADD__(v79++, 1));
        ++v7;
        v5 = v99 + 8;
        v79 = v93 - 1;
      }

      while (v7 != v92);
      v7 = v92;
      v9 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B62B24E4(0, *(v8 + 2) + 1, 1, v8);
    }

    v32 = *(v8 + 2);
    v31 = *(v8 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = sub_1B62B24E4((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = &v8[16 * v32];
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    if (v33 >= 4)
    {
      v41 = &v8[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_106;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_107;
      }

      v48 = &v8[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_109;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_112;
      }

      if (v52 >= v44)
      {
        v70 = &v8[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_118;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v37 = *(v8 + 4);
      v38 = *(v8 + 5);
      v47 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      v40 = v47;
LABEL_49:
      if (v40)
      {
        goto LABEL_108;
      }

      v53 = &v8[16 * v33];
      v55 = *v53;
      v54 = *(v53 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v59 = &v8[16 * v36 + 32];
      v61 = *v59;
      v60 = *(v59 + 1);
      v47 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v47)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v57, v62))
      {
        goto LABEL_115;
      }

      if (v57 + v62 >= v39)
      {
        if (v39 < v62)
        {
          v36 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v63 = &v8[16 * v33];
    v65 = *v63;
    v64 = *(v63 + 1);
    v47 = __OFSUB__(v64, v65);
    v57 = v64 - v65;
    v58 = v47;
LABEL_63:
    if (v58)
    {
      goto LABEL_110;
    }

    v66 = &v8[16 * v36];
    v68 = *(v66 + 4);
    v67 = *(v66 + 5);
    v47 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v47)
    {
      goto LABEL_113;
    }

    if (v69 < v57)
    {
      goto LABEL_3;
    }

LABEL_70:
    v74 = v36 - 1;
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_125;
    }

    v5 = *&v8[16 * v74 + 32];
    v75 = *&v8[16 * v36 + 40];
    sub_1B63BCA74((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v36 + 32]), (*a3 + 8 * v75), v35);
    if (v4)
    {
      goto LABEL_100;
    }

    if (v75 < v5)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B63BCE9C(v8);
    }

    if (v74 >= *(v8 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v8[16 * v74];
    *(v76 + 4) = v5;
    *(v76 + 5) = v75;
    v103 = v8;
    sub_1B63BCE10(v36);
    v8 = v103;
    v33 = *(v103 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  v8 = sub_1B63BCE9C(v8);
LABEL_92:
  v103 = v8;
  v88 = *(v8 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*a3)
    {
      v89 = *&v8[16 * v88];
      v90 = *&v8[16 * v88 + 24];
      sub_1B63BCA74((*a3 + 8 * v89), (*a3 + 8 * *&v8[16 * v88 + 16]), (*a3 + 8 * v90), v5);
      if (v4)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1B63BCE9C(v8);
      }

      if (v88 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v8[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v103 = v8;
      sub_1B63BCE10(v88 - 1);
      v8 = v103;
      v88 = *(v103 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_1B63BCA74(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B63B7D68(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B63B7D68(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1B63BCE10(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B63BCE9C(v3);
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

uint64_t (*sub_1B63BCEB0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C92830](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B63BD8C0;
  }

  __break(1u);
  return result;
}

void (*sub_1B63BCF30(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8C92830](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B63BCFB0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B63BD010(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1B63BF044();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B63BD0B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B63BF044();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B63BF044();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B63BD814(&qword_1EB943840, &qword_1EB943838, &qword_1B63C7748);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943838, &qword_1B63C7748);
            v9 = sub_1B63BCF30(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MapsSyncManagedVisit();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B63BD244(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B63BF044();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B63BF044();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B63BD814(&unk_1EB943800, &unk_1EB943710, &qword_1B63C3EB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
            v9 = sub_1B63BCEB0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B63BD3E4(uint64_t a1)
{
  sub_1B63BF114();

  v16 = 0x80000001B63CD030;
  v2 = sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
  v3 = MEMORY[0x1B8C923A0](a1, v2);
  MEMORY[0x1B8C92330](v3);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(0xD00000000000001DLL, 0x80000001B63CD030);

  v15 = sub_1B63BD010(v4, sub_1B62903E4, sub_1B63BD244);
  sub_1B63BC198(&v15);
  v5 = v15;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1B63BF114();

  v15 = 0xD000000000000010;
  v16 = 0x80000001B63CC590;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1B8C92830](0, v5);
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;
  v8 = [v6 description];
  v9 = sub_1B63BEBD4();
  v11 = v10;

  MEMORY[0x1B8C92330](v9, v11);

  _sSo9OS_os_logC8MapsSyncE5debugyySSFZ_0(v15, v16);

  if ((v5 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B8C92830](0, v5);
  }

  else
  {
    v12 = *(v5 + 32);
  }

  v13 = v12;

  return v13;
}

uint64_t sub_1B63BD5E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B628CAA0;

  return sub_1B63BBDB8(v2, v3, v4);
}

uint64_t sub_1B63BD69C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B628E340;

  return sub_1B6282F1C(a1, v5);
}

uint64_t sub_1B63BD754()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B628E340;

  return sub_1B63BAC00(v2, v3);
}

uint64_t sub_1B63BD814(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1B63BD868()
{
  result = qword_1EDB0E5F8;
  if (!qword_1EDB0E5F8)
  {
    sub_1B63BEA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB0E5F8);
  }

  return result;
}

uint64_t sub_1B63BD8CC()
{
  type metadata accessor for MapsSyncObject();
  v0 = swift_dynamicCastMetatype();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = sub_1B63AA55C();
  v3 = *(v2 + 52);
  v4 = (*(v2 + 48) + 7) & 0x1FFFFFFF8;
  result = swift_allocObject();
  *(result + 16) = xmmword_1B63C3D50;
  *(result + 32) = v1;
  return result;
}

id sub_1B63BD9A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedUserRoute();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B63BD9F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MapsSyncManagedUserRoute();
  result = sub_1B63BF124();
  *a1 = result;
  return result;
}

void *MapsSyncMapItemWithClientAttributes<A>(_:mapItemStorage:)(void *a1, void *a2)
{
  v4 = sub_1B63BEA04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  if (a2)
  {
    (*(v5 + 56))(&v46 - v14, 1, 1, v4);
    type metadata accessor for FavoriteItem();
    v16 = swift_dynamicCastClass();
    v48 = a1;
    v46 = v8;
    if (v16)
    {
      v47 = v5;
      v17 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
      v18 = *(v16 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
      v19 = v16;
      v20 = a1;
      v21 = a2;
      [v18 lock];
      v22 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      swift_beginAccess();
      sub_1B628C510(v19 + v22, v13, &unk_1EB943680, qword_1B63C4070);
      [v18 unlock];
      sub_1B62B2C7C(v13, v15);
      v23 = *(v19 + v17);
      [v23 lock];
      LOWORD(v18) = *(v19 + OBJC_IVAR___MSFavoriteItem__type);
      [v23 unlock];

      v24 = sub_1B6296B88(v18);
      v25 = 0;
      if ((v24 & 0x10000) != 0)
      {
        v5 = v47;
      }

      else
      {
        v5 = v47;
        if (v24 < 7u)
        {
          v25 = dword_1B63C7844[v24 & 7];
        }
      }
    }

    else
    {
      type metadata accessor for HistoryPlaceItem();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        type metadata accessor for CollectionPlaceItem();
        v26 = swift_dynamicCastClass();
        if (!v26)
        {
          a2 = 0;
LABEL_21:
          sub_1B6284EAC(v15, &unk_1EB943680, qword_1B63C4070);
          return a2;
        }
      }

      v27 = *(v26 + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
      v28 = v26;
      v29 = a1;
      v30 = a2;
      [v27 lock];
      v31 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__identifier;
      swift_beginAccess();
      sub_1B628C510(v28 + v31, v13, &unk_1EB943680, qword_1B63C4070);
      [v27 unlock];

      sub_1B62B2C7C(v13, v15);
      v25 = 0;
    }

    v32 = a2;
    v33 = [v32 _clientAttributes];
    if (!v33)
    {
      v33 = [objc_allocWithZone(MEMORY[0x1E69A21B0]) init];
    }

    v34 = [objc_allocWithZone(MEMORY[0x1E69A21C8]) init];
    if (v34)
    {
      LODWORD(v47) = v25;
      if ((*(v5 + 48))(v15, 1, v4))
      {
        v35 = v34;
        v36 = 0;
      }

      else
      {
        v37 = v46;
        (*(v5 + 16))(v46, v15, v4);
        v38 = v34;
        sub_1B63BE9B4();
        (*(v5 + 8))(v37, v4);
        v36 = sub_1B63BEBC4();
      }

      [v34 setMapsSyncIdentifier_];

      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = v34;
      v41 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v41)
      {
        sub_1B63BEBD4();
        v41 = sub_1B63BEBC4();
      }

      [v40 setMapsSyncObjectType_];

      v25 = v47;
    }

    [v34 setSecondaryObjectType_];
    [v33 setMapsSyncAttributes_];
    v42 = objc_opt_self();
    v43 = v32;
    v44 = [v42 mapItemStorageForGEOMapItem:v43 clientAttributes:v33];

    if (v44)
    {

      a2 = v44;
    }

    goto LABEL_21;
  }

  return a2;
}

id MapsSyncCategoryForMapItem(mapItem:)(void *a1)
{
  swift_getObjectType();

  return sub_1B63BE2E4(a1);
}

uint64_t MapsSyncObjectIdentifierForMapItem(mapItem:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 _clientAttributes];
  if (v3 && (v4 = v3, v5 = [v3 mapsSyncAttributes], v4, v5) && (v6 = objc_msgSend(v5, sel_mapsSyncIdentifier), v5, v6))
  {
    sub_1B63BEBD4();

    sub_1B63BE9A4();
  }

  else
  {
    v8 = sub_1B63BEA04();
    v9 = *(*(v8 - 8) + 56);

    return v9(a2, 1, 1, v8);
  }
}

double sub_1B63BE0D0()
{
  result = *MEMORY[0x1E69A1670] + 20.0;
  *&qword_1EDB0E5F0 = result;
  return result;
}

double MapsSyncDeduplicationRadiusMeters.getter()
{
  if (qword_1EDB0E5E8 != -1)
  {
    swift_once();
  }

  return *&qword_1EDB0E5F0;
}

Swift::Bool __swiftcall MapsSyncIsHostedByMapsSyncDaemon()()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1B63BEBD4();
    v4 = v3;

    if (v2 == 0xD000000000000018 && 0x80000001B63CAAF0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1B63BF364();
    }
  }

  return v1 & 1;
}

id MapsSyncClassTypeForMapItem(mapItem:)(void *a1)
{
  result = [a1 _clientAttributes];
  if (result)
  {
    v2 = result;
    v3 = [result mapsSyncAttributes];

    if (!v3)
    {
      return 0;
    }

    v4 = [v3 mapsSyncObjectType];

    if (!v4)
    {
      return 0;
    }

    sub_1B63BEBD4();

    v5 = sub_1B63BEBC4();

    v6 = NSClassFromString(v5);

    if (v6)
    {
      return swift_getObjCClassMetadata();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1B63BE2E4(void *a1)
{
  v26 = sub_1B63BE844();
  v23 = *(v26 - 8);
  v2 = *(v23 + 64);
  v3 = MEMORY[0x1EEE9AC00](v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v32 = MEMORY[0x1E69E7CD0];
  v8 = [a1 _place];
  v9 = [v8 firstBusiness];

  v10 = [v9 localizedCategories];
  if (!v10)
  {
    sub_1B6281C60(0, &qword_1EB942B88, 0x1E695DF70);
    v10 = MEMORY[0x1B8C925C0](MEMORY[0x1E69E7CC0]);
  }

  sub_1B63BEEE4();

  sub_1B63BE834();
  if (!v31)
  {
LABEL_16:
    (*(v23 + 8))(v7, v26);
    v30 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943328, &unk_1B63C4B40);
    sub_1B6349C10();
    sub_1B6349C74();
    v21 = sub_1B63BEC74();

    return v21;
  }

  v11 = sub_1B6281C60(0, &qword_1EB943330, 0x1E69A1BD0);
  v24 = (v23 + 8);
  v25 = v11;
  while (1)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v12 = v7;
    v13 = v28;
    v14 = [v28 localizedNames];
    if (!v14)
    {
      sub_1B6281C60(0, &qword_1EB942B88, 0x1E695DF70);
      v14 = MEMORY[0x1B8C925C0](MEMORY[0x1E69E7CC0]);
    }

    sub_1B63BEEE4();

    sub_1B63BE834();
    if (v29)
    {
      break;
    }

LABEL_5:
    (*v24)(v5, v26);

    v7 = v12;
LABEL_6:
    sub_1B63BE834();
    if (!v31)
    {
      goto LABEL_16;
    }
  }

  sub_1B6281C60(0, qword_1EB943338, 0x1E69A1E68);
  while ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_1B63BE834();
    if (!v29)
    {
      goto LABEL_5;
    }
  }

  v15 = v27;
  result = [v27 name];
  if (result)
  {
    v17 = result;
    v18 = sub_1B63BEBD4();
    v20 = v19;

    sub_1B62CD684(&v27, v18, v20);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1B63BE6F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSyncManagedVehicle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}